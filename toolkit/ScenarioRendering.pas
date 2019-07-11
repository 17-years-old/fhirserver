unit ScenarioRendering;

{
Copyright (c) 2011+, HL7 and Health Intersections Pty Ltd (http://www.healthintersections.com.au)
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.
 * Neither the name of HL7 nor the names of its contributors may be used to
   endorse or promote products derived from this software without specific
   prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
}

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, JclSysUtils,
  {$IFDEF MSWINDOWS}
  winapi.shellapi, fmx.platform.win, winapi.windows,
  {$ENDIF}
  FHIR.Version.Utilities, FHIR.Base.Objects,FHIR.Version.Resources,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation, FDownloadForm, FMX.ScrollBox, FMX.Memo;

type
  TESRender = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button5: TButton;
    Button10: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RunInMemo(CommandLine: string; Work: string; parameters: string; Memo: TMemo);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    filename:String;
    ESRenderFolder:String;
    ESRootFolder:String;
    resource:TFHIRExampleScenario;
  end;

var
  ESRender: TESRender;

implementation

{$R *.fmx}



procedure TESRender.RunInMemo(CommandLine: string; Work: string; parameters: string; Memo: TMemo);
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array [0 .. 255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Memo.Text := '';
  with SA do
  begin
    nLength := SizeOf(SA);
    bInheritHandle := true;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine + ' ' + parameters), nil, nil, true, 0, nil, PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            memo.BeginUpdate;
            Memo.Text := Memo.Text + Buffer;
            Memo.SelLength := 0;
            Memo.SelStart := Length(Memo.Text) - 1;
            Memo.GoToTextEnd;
            memo.EndUpdate;
            Application.ProcessMessages();
            Memo.GoToTextEnd;
 //           memo.Dispatch();
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;



procedure TESRender.Button10Click(Sender: TObject);
{$IFDEF MSWINDOWS}
var
  str: string;
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  ExecuteFile, ParamString, StartInString: string;
{$ENDIF}
begin
{$IFDEF MSWINDOWS}
if directoryexists(edit1.text) then str:=edit1.text else  str := getCurrentDir;


  try
    deletefile(pchar(str+'\current.xml'));
  finally

  end;
  resourceToFile(resource, pchar(str+'\current.xml'), ffXml, OutputStylePretty);
  ExecuteFile := 'parse_all.bat';

  begin

    RunInMemo('cmd.exe /C parse_all.bat', str, '', Memo1);

    ShellExecute(0, 'open', pchar(str+'\output\pages\current.html'), '', '', SW_SHOWNORMAL);
  end;
{$ELSE}
  raise Exception.Create('Not done yet');
{$ENDIF}
end;

procedure TESRender.Button1Click(Sender: TObject);
var
  dir, folder: string;

begin
  if SelectDirectory('Select path to Example Scenario Render (contains License.md)', '', dir) then
  begin
    ESRenderFolder := dir;
    Edit1.Text := dir;
  end;

end;

procedure TESRender.Button2Click(Sender: TObject);
begin
    ShellExecute(0, 'open', 'C:\HL7\BEFHIR\exampleScenario\render\simpleRender\output\pages\current.html', '', '', SW_SHOWNORMAL);

end;

procedure TESRender.Button5Click(Sender: TObject);
var
  DownloadForm: TDownloadForm;
begin

  DownloadForm := TDownloadForm.create(self);
  DownloadForm.SourceURL := 'https://bitbucket.org/costateixeira/ig-builder/downloads/simpleESRender.zip';
  DownloadForm.localFileName := ESRenderFolder + '\render.zip';
  DownloadForm.UnzipLocation := ESRenderFolder;
  DownloadForm.Unzip := true;
  DownloadForm.ShowModal;


  DownloadForm.Close;
  DownloadForm.Destroy;


end;

end.
