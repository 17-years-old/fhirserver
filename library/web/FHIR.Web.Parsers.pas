unit FHIR.Web.Parsers;

{
Copyright (c) 2001-2013, Kestral Computing Pty Ltd (http://www.kestral.com.au)
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

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
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
  {$IFDEF MSWINDOWS} Windows, {$ENDIF}
  Classes, Generics.Collections,
  FHIR.Support.Base, FHIR.Support.Utilities;

const
  HTTPUtilAnonymousItemName = 'ANONYMOUS';
  { TMultiValList: any parsed items found without names will be collected under this name }

type
  TMultiValList = class(TFslObject)
  Private
    fItemList: TStringList;
    FSource: String;
  Public
    constructor Create; Override;
    destructor Destroy; Override;
    procedure addItem(itemname: String; const itemvalue: String);
    procedure RemoveItem(itemname: String);
    //      procedure StripEntries(starter : string);
    function retrieveItem(const itemname: String; index: Integer; var itemval: String): Boolean;
    function retrieveNumberedItem(itemnum: Integer; index: Integer; var itemval: String): Boolean;
    function retrieveNameIndex(itemname: String; var itemnum: Integer): Boolean;
    function getItemCount: Integer;
    function getValueCount(itemnum: Integer): Integer;
    function dumpList(const heading: String): String;
    function dumpFormList(starter: String): String;
    function dumpParameterList: String;
    function Textdump: String;
    procedure ParseAddItem(p: PChar; decodeflag: Boolean;
      itemnamestart, itemnamelen, itemvalstart, itemvallen: Integer);
    procedure Parse(const instr: String; decodeflag: Boolean; delimchar: Char);
    function VarName(index: Integer): String;
    property Source: String Read FSource;
    Function Count : Integer;
    function list(index : integer):TStringList;
  end;

  TCookieList = class(TMultiValList)
  Public
    constructor Create(const s: String);
  end;

  TParseMap = class(TMultiValList)
  Public
    constructor Create(const s: String; MimeDecode: Boolean = True);
    function Link : TParseMap; overload;
    function has(const n: String): Boolean;
    function GetVar(const n: String): String;
    function GetStringParameter(const Name, errdesc: String; compulsory: Boolean): String;
    function GetIntegerParameter(const Name, errdesc: String; compulsory: Boolean): Integer;
    property Value[const Name: String]: String Read GetVar; default;
  end;

  TMimeContentType = class (TFslObject)
  private
    FSource : String;
    FParams: TFslStringDictionary;
    FBase: String;
    function GetMain: String;
    function GetSub: String;
    procedure SetMain(const Value: String);
    procedure SetSub(const Value: String);
  public
    constructor Create; override;
    destructor Destroy; override;

    function link : TMimeContentType; overload;

    class function parseSingle(s : String) : TMimeContentType;
    class function parseList(s : String) : TFslList<TMimeContentType>;

    property source : String read FSource;
    property base : String read FBase write FBase;
    property main : String read GetMain write SetMain;
    property sub : String read GetSub write SetSub;

    function isValid : boolean;

    property Params : TFslStringDictionary read FParams;
    function hasParam(name : String) : boolean;
  end;

implementation

uses
  SysUtils;

const 
  unitname = 'FHIR.Web.Parsers';

  {------------------------------------------------------------------------------}
constructor TMultiValList.Create;
begin
  inherited Create;
  FItemList := TStringList.Create;
  FItemList.CaseSensitive := false;
end;

destructor TMultiValList.Destroy;
var 
  vallist: TStringList;
  i: Integer;
begin
  if FItemList <> NIL then
    begin
    for i := 0 to FItemList.Count - 1 do
      begin
      vallist := FItemList.Objects[i] as TStringList;
      if vallist <> NIL then 
        vallist.Free;
      end;
    FItemList.Free;
    FItemList := NIL;
    end;
  inherited Destroy;
end;

procedure TMultiValList.addItem(itemname: String; const itemvalue: String);
var 
  vallist: TStringList;
  tempint: Integer;
begin
  if not retrieveNameIndex(itemname, tempint) then
    begin
    itemname := itemname;
    vallist := TStringList.Create;
    FItemList.AddObject(itemname, vallist);
    end
  else
    vallist := FItemList.Objects[tempint] as TStringList;
  vallist.Add(itemvalue);
end;

procedure TMultiValList.RemoveItem(itemname: String);
var
  vallist: TStringList;
  tempint: Integer;
begin
  if retrieveNameIndex(itemname, tempint) then
    begin
    vallist := FItemList.Objects[tempint] as TStringList;
    vallist.Free;
    FItemList.Delete(tempint);
    end;
end;

function TMultiValList.retrieveItem(const itemname: String;
  index: Integer;
  var itemval: String): Boolean;
var 
  i: Integer;
begin
  Result := False;
  if retrieveNameIndex(itemname, i) then
    Result := retrieveNumberedItem(i, index, itemval);
end;


function TMultiValList.retrieveNumberedItem(itemnum: Integer;
  index: Integer;
  var itemval: String): Boolean;
var 
  vallist: TStringList;
begin
  Result := False;
  try
    vallist := FItemList.Objects[itemnum] as TStringList;
    if vallist <> NIL then
      begin
      if vallist.Count >= index then
        begin
        itemval := vallist.Strings[index];
        Result := True;
        end;
      end;
  except
    on e:
    Exception do
      Result := False;
    end;
end;

function TMultiValList.retrieveNameIndex(itemname: String; var itemnum: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;

  i := FItemList.indexOf(itemname);
  if i<>-1 then
    begin
    itemnum := i;
    Result := True;
    end;
end;

function TMultiValList.getItemCount: Integer;
begin
  Result := FItemList.Count;
end;

function TMultiValList.getValueCount(itemnum: Integer): Integer;
var 
  vallist: TStringList;
begin
  Result := 0;

  vallist := FItemList.Objects[itemnum] as TStringList;
  if vallist <> NIL then
    Result := vallist.Count;
end;


function TMultiValList.TextDump: String;
var 
  i, j: Integer;
  vallist: TStringList;
begin
  try
    Result := #13#10;
    for i := 0 to FItemList.Count - 1 do
      begin
      Result := Result + FItemList.Strings[i] + ':';
      try
        vallist := FItemList.Objects[i] as TStringList;
      except
        vallist := NIL;
        end;
      if vallist <> NIL then
        for j := 0 to vallist.Count - 1 do
          Result := Result + vallist.Strings[j] + '+'
      else
        Result := Result + '*** Error: no value list ***';
      Result := Result + #13#10;
      end;
  except
    Result := '*** Fatal Error while parsing parameters ***';
    end;
end;

function TMultiValList.dumpList(const heading: String): String;
var 
  i, j: Integer;
  vallist: TStringList;
begin
  try
    Result := '<TABLE><TR><TH COLSPAN=2>' + heading + '</TH></TR>' + '<TR><TH>Name</TH><TH>Value</TH></TR>';
    for i := 0 to FItemList.Count - 1 do
      begin
      Result := Result + '<TR><TH>' + '<PRE>' + FItemList.Strings[i] + '</PRE>' + '</TH>' + #13#10 + '<TD><PRE>';
      try
        vallist := FItemList.Objects[i] as TStringList;
      except
        vallist := NIL;
        end;
      if vallist <> NIL then
        for j := 0 to vallist.Count - 1 do
          Result := Result + vallist.Strings[j] + #13#10
      else
        Result := Result + '*** Error: no value list ***';
      Result := Result + '</PRE></TD></TR>';
      end;
    Result := Result + '</TABLE>' + #13#10;

  except
    Result := '*** Fatal Error while parsing parameters ***';
    end;
end;


function TMultiValList.dumpParameterList: String;
var 
  i: Integer;
  vallist: TStringList;
begin
  try
    Result := '';
    for i := 0 to FItemList.Count - 1 do
      begin
      Result := Result + FItemList.Strings[i] + '=';
      try
        vallist := FItemList.Objects[i] as TStringList;
      except
        vallist := NIL;
        end;
      if vallist <> NIL then
        Result := Result + vallist.Strings[0];
      if i < FItemList.Count - 1 then
        Result := Result + '&';
      end;
  except
    end;
end;

function TMultiValList.dumpFormList(starter: String): String;
var 
  i: Integer;
  vallist: TStringList;
begin
  try
    Result := '';
    for i := 0 to FItemList.Count - 1 do
      begin
      if (length(starter) = 0) or
        (AnsiStrIComp(PChar(copy(FItemList.Strings[i], 1, length(starter))),
        PChar(starter)) <> 0) then
        begin
        Result := Result + '<input type="hidden" name="' + FItemList.Strings[i] +
          '" value="';
        try
          vallist := FItemList.Objects[i] as TStringList;
        except
          vallist := NIL;
          end;
        if vallist <> NIL then
          Result := Result + vallist.Strings[0]
        else
          Result := Result + '*** Error: no value list ***';
        Result := Result + '" ><br>' + #13#10;
        end;
      end;
  except
    end;
end;

procedure TMultiValList.ParseAddItem(p: PChar; decodeflag: Boolean;
  itemnamestart, itemnamelen, itemvalstart, itemvallen: Integer);
var
  itemname, itemvalue: String;
  temppchar: PChar;
  tempint: Integer;
begin
  tempint := itemnamelen;
  if itemvallen > tempint then 
    tempint := itemvallen;
  GetMem(temppchar, (tempint + 1) * 2);

  try
    { set the name string: if we didn't get a name,
      use the anonymous string }
    if (itemnamelen > 0) then
      begin
      StrLCopy(temppchar, p + itemnamestart,
        itemnamelen);
      itemname := temppchar;
      end
    else
      itemname := HTTPUtilAnonymousItemName;

    if decodeflag then
      { when handling cookies, the name may
        be preceded by white space }
      itemname := DecodeMIME(TrimLeft(itemname))
    else
      itemname := itemname;

    { set the value string: if we didn't get
      a name, use an empty string }
    if (itemvallen > 0) then
      begin
      StrLCopy(temppchar, p + itemvalstart, itemvallen);
      itemvalue := temppchar;
      end
    else
      itemvalue := '';

    if decodeflag then
      { trim off the trailing newline that some browsers
        send. Can't do this with parameters, because
        the user might want this stuff }
      itemvalue := DecodeMimeURL(itemvalue)
    else
      itemvalue := itemvalue;

    addItem(itemname, itemvalue);

  finally
    Freemem(temppchar);
    end;
end;


procedure TMultiValList.Parse(const instr: String; decodeflag: Boolean; delimchar: Char);
var  
  cursor, len, itemnamestart, itemnamelen, itemvalstart, itemvallen: Integer;
begin
  FSource := inStr;
  
  len := Length(instr);
  cursor := 0;
  itemnamestart := 0;
  itemvalstart := 0;
  itemnamelen := 0;

  while cursor < len do
    begin
    if PChar(instr)[cursor] = delimchar then
      begin
      if itemNameLen = 0 then
        begin
        itemnamelen := cursor - itemnamestart;
        itemvalstart := cursor;
        end;
      itemvallen := cursor - itemvalstart;
      ParseaddItem(PChar(instr), decodeflag, itemnamestart, itemnamelen, itemvalstart, itemvallen);
      cursor := cursor + 1;
      { next item starts at the *next* character }
      itemnamestart := cursor;
      itemnamelen := 0;
      itemvalstart := cursor;
      end
    else if PChar(instr)[cursor] = '=' then
      begin
        { this signals the end of the item name;
          compute its length. The value starts at
          the *next* character }
      itemnamelen := cursor - itemnamestart;
      cursor := cursor + 1;
      itemvalstart := cursor;
      end
    else
      begin
      { examine the next character }
      cursor := cursor + 1;
      end;
    end;

  { the last item should have have ended without a
    delimiter. As in that case above, calculate the
    length of the value, and add the item. However,
    if zero items were present in the request, we
    don't want to add a spurious item; that's
    what the if statement is checking for }
  if cursor > itemvalstart then
    begin
    itemvallen := cursor - itemvalstart;
    ParseaddItem(PChar(instr), decodeflag, itemnamestart,
      itemnamelen, itemvalstart, itemvallen);
    end;
end;

function TMultiValList.VarName(index: Integer): String;
begin
  Result := FItemList[index];
end;

{-----------------------------------------------------------------------------}
constructor TCookieList.Create(const s: String);
begin
  inherited Create;
  Parse(s, True, ';');
end;

{-----------------------------------------------------------------------------}

constructor TParseMap.Create(const s: String; MimeDecode: Boolean = True);
begin
  inherited Create;
  Parse(StringTrimWhitespaceRight(s), MimeDecode, '&');
end;

function TParseMap.has(const n: String): Boolean;
var 
  i: Integer;
begin
  Result := retrieveNameIndex(n, i);
end;

// only return first variable
function TParseMap.GetVar(const n: String): String;
var 
  i, c: Integer;
  s: String;
begin
  Result := '';
  if retrieveNameIndex(n, i) then
    begin
    c := getValueCount(i);
    for i := 0 to c - 1 do
      begin
      retrieveitem(n, i, s);
      if Result = '' then 
        Result := s 
      else 
        Result := Result + ';' + s;
      end;
    end;
end;

function TParseMap.Link: TParseMap;
begin
  result := TParseMap(inherited Link);
end;

{procedure TParseMap.ParseIt(const f:string);
var i,j,k,l,m:integer;
    s,fn,fv:string;
begin
  l := length(f);
  i := 1;
  while i<l do
    begin
    j := i;
    while (i<=l) and (f[i] <> '&') and (f[i] <> #13) and (f[i] <> #10) do inc(i);
    s := copy(f, j, i-j);
    k := pos('=', s);
    if k = 0 then
      begin
      fn := s;
      fv := '';
      end
    else
      begin
      fn := copy(s, 1, k-1);
      fv := copy(s, k+1, length(s)-k);
      end;
    fv := MimeDeCode(fv);
    m := indexof(fn);
    if m = -1 then
      begin
      add(fn);
      fVarList.add(fv);
      end
    else
      FVarlist[m] := FVarList[m]+';'+fv;
    inc(i);
    end;
end;

function TParseMap.GetVar(const n:string):string;
var i:integer;
begin
  i := indexof(n);
  if i = -1 then
    result := ''
  else
    result := FVarList[i];
end;

function TParseMap.VarExists(const n:string):boolean;
begin
  result := (indexof(n) <> -1);
end;
}

function TParseMap.GetStringParameter(const Name, errdesc: String; compulsory: Boolean): String;
begin
  if has(Name) then
    Result := GetVar(Name)
  else if compulsory then
    raise EWebException.create(errdesc + ' not found')
  else
    Result := '';
end;

function TParseMap.GetIntegerParameter(const Name, errdesc: String; compulsory: Boolean): Integer;
begin
  if has(Name) then
    Result := StrToIntDef(GetVar(Name), 0)
  else if compulsory then
    raise EWebException.create(errdesc + ' not found')
  else
    Result := 0;
end;

function TMultiValList.Count: Integer;
begin
  result := fItemList.count;
end;

function TMultiValList.list(index: integer): TStringList;
begin
  result := TStringList(FItemList.Objects[index]);
end;

{ TMimeContentType }

constructor TMimeContentType.Create;
begin
  inherited;
  FParams := TFslStringDictionary.create;
end;

destructor TMimeContentType.Destroy;
begin
  FParams.Free;
  inherited;
end;

function TMimeContentType.GetMain: String;
begin
  if FBase.Contains('/') then
    result := FBase.Substring(0, FBase.IndexOf('/'))
  else
    result := FBase;
end;

function TMimeContentType.GetSub: String;
begin
  if FBase.Contains('/') then
    result := FBase.Substring(FBase.IndexOf('/')+1)
  else
    result := '';
end;

function TMimeContentType.hasParam(name: String): boolean;
begin
  result := FParams.ContainsKey(name);
end;

function TMimeContentType.isValid: boolean;
begin
  result := (StringArrayExistsSensitive(['application', 'audio', 'font', 'example', 'image', 'message', 'model', 'multipart', 'text', 'video'], main) or main.StartsWith('x-'))
    and (sub <> '');
end;

function TMimeContentType.link: TMimeContentType;
begin
  result := TMimeContentType(inherited link);
end;

procedure TMimeContentType.SetMain(const Value: String);
begin
  if FBase.Contains('/') then
    FBase := Value+'/'+sub
  else
    FBase := Value;
end;

procedure TMimeContentType.SetSub(const Value: String);
begin
  if FBase.Contains('/') then
    FBase := Main+'/'+value
  else
    FBase := 'application/'+Value;
end;

class function TMimeContentType.parseList(s : String): TFslList<TMimeContentType>;
var
  e : String;
begin
  result := TFslList<TMimeContentType>.create;
  try
    for e in s.Split([',']) do
      result.add(parseSingle(e));
    result.link;
  finally
    result.Free;
  end;
end;

class function TMimeContentType.parseSingle(s : String): TMimeContentType;
var
  p : string;
begin
  result := TMimeContentType.Create;
  try
    result.FSource := s;
    for p in s.Split([';']) do
    begin
      if result.FBase = '' then
      begin
        if (p = 'xml') then
          result.FBase := 'application/fhir+xml'
        else if (p = 'json') then
          result.FBase := 'application/fhir+json'
        else if (p = 'ttl') then
          result.FBase := 'application/fhir+ttl'
        else
          result.FBase := p;
      end
      else
        result.FParams.Add(p.Substring(0, p.IndexOf('=')), p.Substring(p.IndexOf('=')+1));
    end;
    result.link;
  finally
    result.Free;
  end;
end;


end.
