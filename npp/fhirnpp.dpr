{
Copyright (c) 2017+, Health Intersections Pty Ltd (http://www.healthintersections.com.au)
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
library fhirnpp;

uses
  FastMM4 in '..\Libraries\FMM\FastMM4.pas',
  FastMM4Messages in '..\Libraries\FMM\FastMM4Messages.pas',
  SysUtils,
  Classes,
  Types,
  Windows,
  Messages,
  FHIR.Npp.Base in 'npplib\FHIR.Npp.Base.pas',
  FHIR.Npp.Scintilla in 'npplib\FHIR.Npp.Scintilla.pas',
  FHIR.Npp.Form in 'npplib\FHIR.Npp.Form.pas' {NppForm},
  FHIR.Npp.DockingForm in 'npplib\FHIR.Npp.DockingForm.pas' {NppDockingForm},
  FHIR.Npp.Plugin in 'FHIR.Npp.Plugin.pas',
  FHIR.Npp.Configuration in 'FHIR.Npp.Configuration.pas' {SettingForm},
  FHIR.Npp.Toolbox in 'FHIR.Npp.Toolbox.pas' {FHIRToolbox},
  FHIR.Npp.Settings in 'FHIR.Npp.Settings.pas' {SettingForm},
  FHIR.R3.Validator in '..\reference-platform\dstu3\FHIR.R3.Validator.pas',
  FHIR.Support.Base in '..\reference-platform\Support\FHIR.Support.Base.pas',
  FHIR.Support.Utilities in '..\reference-platform\Support\FHIR.Support.Utilities.pas',
  FHIR.Support.Collections in '..\reference-platform\Support\FHIR.Support.Collections.pas',
  FHIR.Support.Stream in '..\reference-platform\Support\FHIR.Support.Stream.pas',
  FHIR.Support.Json in '..\reference-platform\Support\FHIR.Support.Json.pas',
  FHIR.Base.Objects in '..\reference-platform\base\FHIR.Base.Objects.pas',
  FHIR.R3.Utilities in '..\reference-platform\dstu3\FHIR.R3.Utilities.pas',
  FHIR.Base.Scim in '..\reference-platform\base\FHIR.Base.Scim.pas',
  FHIR.R3.Resources in '..\reference-platform\dstu3\FHIR.R3.Resources.pas',
  FHIR.R3.Types in '..\reference-platform\dstu3\FHIR.R3.Types.pas',
  FHIR.R3.Constants in '..\reference-platform\dstu3\FHIR.R3.Constants.pas',
  FHIR.R3.Tags in '..\reference-platform\dstu3\FHIR.R3.Tags.pas',
  FHIR.Base.Lang in '..\reference-platform\base\FHIR.Base.Lang.pas',
  FHIR.R3.Xml in '..\reference-platform\dstu3\FHIR.R3.Xml.pas',
  FHIR.R3.Json in '..\reference-platform\dstu3\FHIR.R3.Json.pas',
  FHIR.R3.Turtle in '..\reference-platform\dstu3\FHIR.R3.Turtle.pas',
  FHIR.Base.Parser in '..\reference-platform\base\FHIR.Base.Parser.pas',
  FHIR.Web.WinInet in '..\reference-platform\Support\FHIR.Web.WinInet.pas',
  FHIR.R3.Profiles in '..\reference-platform\dstu3\FHIR.R3.Profiles.pas',
  FHIR.Npp.Validator in 'FHIR.Npp.Validator.pas',
  FHIR.Npp.Make in 'FHIR.Npp.Make.pas' {ResourceNewForm},
  FHIR.R3.Narrative in '..\reference-platform\dstu3\FHIR.R3.Narrative.pas',
  FHIR.Client.ServerDialog in '..\reference-platform\client\FHIR.Client.ServerDialog.pas' {EditRegisteredServerForm},
  FHIR.Web.Parsers in '..\reference-platform\Support\FHIR.Web.Parsers.pas',
  FHIR.Npp.Fetch in 'FHIR.Npp.Fetch.pas' {FetchResourceFrm},
  VirtualTrees in '..\..\Components\treeview\Source\VirtualTrees.pas',
  FHIR.R3.PathEngine in '..\reference-platform\dstu3\FHIR.R3.PathEngine.pas',
  FHIRPathDocumentation in 'FHIRPathDocumentation.pas' {FHIRPathDocumentationForm},
  PathDialogForms in 'PathDialogForms.pas' {PathDialogForm},
  ValidationOutcomes in 'ValidationOutcomes.pas' {ValidationOutcomeForm},
  FHIR.Npp.Visualiser in 'FHIR.Npp.Visualiser.pas' {FHIRVisualizer},
  FHIR.Npp.PathDebugger in 'FHIR.Npp.PathDebugger.pas' {FHIRPathDebuggerForm},
  FHIR.Npp.Welcome in 'FHIR.Npp.Welcome.pas' {FHIR.Npp.WelcomeForm},
  FHIR.Npp.Version in 'FHIR.Npp.Version.pas',
  UpgradePrompt in 'UpgradePrompt.pas' {UpgradePromptForm},
  FHIR.Npp.Utilities in 'FHIR.Npp.Utilities.pas',
  FHIR.CdsHooks.Utilities in '..\reference-platform\support\FHIR.CdsHooks.Utilities.pas',
  MarkdownDaringFireball in '..\..\markdown\source\MarkdownDaringFireball.pas',
  MarkdownProcessor in '..\..\markdown\source\MarkdownProcessor.pas',
  FHIR.Support.Shell in '..\reference-platform\Support\FHIR.Support.Shell.pas',
  CDSBrowserForm in 'CDSBrowserForm.pas' {CDSBrowser},
  FHIR.Web.Rdf in '..\reference-platform\support\FHIR.Web.Rdf.pas',
  FHIR.R3.ElementModel in '..\reference-platform\dstu3\FHIR.R3.ElementModel.pas',
  FHIR.Base.Xhtml in '..\reference-platform\base\FHIR.Base.Xhtml.pas',
  FHIR.Web.Fetcher in '..\reference-platform\support\FHIR.Web.Fetcher.pas',
  FHIR.R3.Context in '..\reference-platform\dstu3\FHIR.R3.Context.pas',
  FHIR.R3.MapUtilities in '..\reference-platform\dstu3\FHIR.R3.MapUtilities.pas',
  FHIR.Tools.DiffEngine in '..\reference-platform\tools\FHIR.Tools.DiffEngine.pas',
  ResDisplayForm in 'ResDisplayForm.pas' {ResourceDisplayForm},
  FHIR.Support.MXml in '..\reference-platform\support\FHIR.Support.MXml.pas',
  MarkdownCommonMark in '..\..\markdown\source\MarkdownCommonMark.pas',
  FHIR.Npp.CodeGen in 'FHIR.Npp.CodeGen.pas' {CodeGeneratorForm},
  FHIR.Tools.CodeGen in '..\reference-platform\tools\FHIR.Tools.CodeGen.pas',
  FHIR.Support.Turtle in '..\reference-platform\support\FHIR.Support.Turtle.pas',
  FHIR.CdsHooks.Client in '..\reference-platform\support\FHIR.CdsHooks.Client.pas',
  FHIR.Client.Registry in '..\reference-platform\client\FHIR.Client.Registry.pas',
  FHIR.Support.Signatures in '..\reference-platform\support\FHIR.Support.Signatures.pas',
  FHIR.Ucum.IFace in '..\reference-platform\support\FHIR.Ucum.IFace.pas',
  FHIR.R3.PathNode in '..\reference-platform\dstu3\FHIR.R3.PathNode.pas',
  FHIR.R3.ParserBase in '..\reference-platform\dstu3\FHIR.R3.ParserBase.pas',
  FHIR.R3.Base in '..\reference-platform\dstu3\FHIR.R3.Base.pas',
  FHIR.R3.Parser in '..\reference-platform\dstu3\FHIR.R3.Parser.pas',
  FHIR.Client.Base in '..\reference-platform\client\FHIR.Client.Base.pas',
  FHIR.R3.Client in '..\reference-platform\dstu3\FHIR.R3.Client.pas',
  FHIR.Client.HTTP in '..\reference-platform\client\FHIR.Client.HTTP.pas',
  FHIR.Client.Threaded in '..\reference-platform\client\FHIR.Client.Threaded.pas',
  FHIR.Support.Xml in '..\reference-platform\support\FHIR.Support.Xml.pas',
  FHIR.Support.Threads in '..\reference-platform\support\FHIR.Support.Threads.pas',
  FHIR.Support.Certs in '..\reference-platform\support\FHIR.Support.Certs.pas',
  FHIR.Web.GraphQL in '..\reference-platform\support\FHIR.Web.GraphQL.pas',
  FHIR.Support.MsXml in '..\reference-platform\support\FHIR.Support.MsXml.pas',
  FHIR.Base.Validator in '..\reference-platform\base\FHIR.Base.Validator.pas',
  FHIR.Base.Narrative in '..\reference-platform\base\FHIR.Base.Narrative.pas',
  FHIR.Base.Factory in '..\reference-platform\base\FHIR.Base.Factory.pas',
  FHIR.R3.Factory in '..\reference-platform\dstu3\FHIR.R3.Factory.pas',
  FHIR.Base.PathEngine in '..\reference-platform\base\FHIR.Base.PathEngine.pas',
  FHIR.R4.Constants in '..\reference-platform\r4\FHIR.R4.Constants.pas',
  FHIR.R4.Types in '..\reference-platform\r4\FHIR.R4.Types.pas',
  FHIR.R4.Base in '..\reference-platform\r4\FHIR.R4.Base.pas',
  FHIR.R4.ElementModel in '..\reference-platform\r4\FHIR.R4.ElementModel.pas',
  FHIR.R4.Resources in '..\reference-platform\r4\FHIR.R4.Resources.pas',
  FHIR.R4.Utilities in '..\reference-platform\r4\FHIR.R4.Utilities.pas',
  FHIR.R4.Context in '..\reference-platform\r4\FHIR.R4.Context.pas',
  FHIR.R4.PathNode in '..\reference-platform\r4\FHIR.R4.PathNode.pas',
  FHIR.R4.Profiles in '..\reference-platform\r4\FHIR.R4.Profiles.pas',
  FHIR.Base.Common in '..\reference-platform\base\FHIR.Base.Common.pas',
  FHIR.R3.Common in '..\reference-platform\dstu3\FHIR.R3.Common.pas',
  FHIR.R4.Common in '..\reference-platform\r4\FHIR.R4.Common.pas',
  FHIR.Cache.PackageManagerDialog in '..\reference-platform\cache\FHIR.Cache.PackageManagerDialog.pas' {PackageCacheForm},
  FHIR.Cache.PackageManager in '..\reference-platform\cache\FHIR.Cache.PackageManager.pas',
  FHIR.R2.Factory in '..\reference-platform\dstu2\FHIR.R2.Factory.pas',
  FHIR.R2.Types in '..\reference-platform\dstu2\FHIR.R2.Types.pas',
  FHIR.R2.Base in '..\reference-platform\dstu2\FHIR.R2.Base.pas',
  FHIR.R2.Utilities in '..\reference-platform\dstu2\FHIR.R2.Utilities.pas',
  FHIR.R2.Resources in '..\reference-platform\dstu2\FHIR.R2.Resources.pas',
  FHIR.R2.Constants in '..\reference-platform\dstu2\FHIR.R2.Constants.pas',
  FHIR.R2.Context in '..\reference-platform\dstu2\FHIR.R2.Context.pas',
  FHIR.R2.ElementModel in '..\reference-platform\dstu2\FHIR.R2.ElementModel.pas',
  FHIR.R2.Common in '..\reference-platform\dstu2\FHIR.R2.Common.pas',
  FHIR.R2.Profiles in '..\reference-platform\dstu2\FHIR.R2.Profiles.pas',
  FHIR.R2.Parser in '..\reference-platform\dstu2\FHIR.R2.Parser.pas',
  FHIR.R2.Xml in '..\reference-platform\dstu2\FHIR.R2.Xml.pas',
  FHIR.R2.ParserBase in '..\reference-platform\dstu2\FHIR.R2.ParserBase.pas',
  FHIR.R2.Json in '..\reference-platform\dstu2\FHIR.R2.Json.pas',
  FHIR.R2.Validator in '..\reference-platform\dstu2\FHIR.R2.Validator.pas',
  FHIR.R2.PathNode in '..\reference-platform\dstu2\FHIR.R2.PathNode.pas',
  FHIR.R2.PathEngine in '..\reference-platform\dstu2\FHIR.R2.PathEngine.pas',
  FHIR.R2.Narrative in '..\reference-platform\dstu2\FHIR.R2.Narrative.pas',
  FHIR.R2.Client in '..\reference-platform\dstu2\FHIR.R2.Client.pas',
  FHIR.R4.Factory in '..\reference-platform\r4\FHIR.R4.Factory.pas',
  FHIR.R4.Parser in '..\reference-platform\r4\FHIR.R4.Parser.pas',
  FHIR.R4.Xml in '..\reference-platform\r4\FHIR.R4.Xml.pas',
  FHIR.R4.ParserBase in '..\reference-platform\r4\FHIR.R4.ParserBase.pas',
  FHIR.R4.Json in '..\reference-platform\r4\FHIR.R4.Json.pas',
  FHIR.R4.Validator in '..\reference-platform\r4\FHIR.R4.Validator.pas',
  FHIR.R4.PathEngine in '..\reference-platform\r4\FHIR.R4.PathEngine.pas',
  FHIR.R4.Narrative in '..\reference-platform\r4\FHIR.R4.Narrative.pas',
  FHIR.R4.Client in '..\reference-platform\r4\FHIR.R4.Client.pas',
  FHIR.R4.Turtle in '..\reference-platform\r4\FHIR.R4.Turtle.pas',
  fhir.support.fpc in '..\reference-platform\support\fhir.support.fpc.pas',
  FHIR.Base.Utilities in '..\reference-platform\base\FHIR.Base.Utilities.pas',
  FHIR.Smart.Utilities in '..\reference-platform\client\FHIR.Smart.Utilities.pas',
  FHIR.Smart.Login in '..\reference-platform\client\FHIR.Smart.Login.pas',
  FHIR.Smart.LoginVCL in '..\reference-platform\client\FHIR.Smart.LoginVCL.pas' {SmartOnFhirLoginForm},
  FHIR.Ui.ColorSB in '..\Libraries\ui\FHIR.Ui.ColorSB.pas',
  FHIR.Support.Osx in '..\reference-platform\support\FHIR.Support.Osx.pas',
  FHIR.Npp.SaveAs in 'FHIR.Npp.SaveAs.pas' {SaveOnServerDialog},
  FHIR.Npp.Context in 'FHIR.Npp.Context.pas',
  FHIR.Cache.PackageBrowser in '..\reference-platform\cache\FHIR.Cache.PackageBrowser.pas' {PackageFinderForm},
  FHIR.Tx.Service in '..\Libraries\FHIR.Tx.Service.pas',
  YuStemmer in '..\Libraries\stem\YuStemmer.pas',
  DISystemCompat in '..\Libraries\stem\DISystemCompat.pas',
  FHIR.R3.Operations in '..\reference-platform\dstu3\FHIR.R3.Operations.pas',
  FHIR.R3.OpBase in '..\reference-platform\dstu3\FHIR.R3.OpBase.pas',
  FHIR.R4.Operations in '..\reference-platform\r4\FHIR.R4.Operations.pas',
  FHIR.R4.OpBase in '..\reference-platform\r4\FHIR.R4.OpBase.pas',
  FHIR.R2.Operations in '..\reference-platform\dstu2\FHIR.R2.Operations.pas',
  FHIR.R2.OpBase in '..\reference-platform\dstu2\FHIR.R2.OpBase.pas',
  FHIR.Tools.CodeSystemProvider in '..\reference-platform\tools\FHIR.Tools.CodeSystemProvider.pas',
  FHIR.Tools.ValueSets in '..\reference-platform\tools\FHIR.Tools.ValueSets.pas',
  FHIR.R3.AuthMap in '..\reference-platform\dstu3\FHIR.R3.AuthMap.pas',
  FHIR.R2.AuthMap in '..\reference-platform\dstu2\FHIR.R2.AuthMap.pas',
  FHIR.R4.AuthMap in '..\reference-platform\r4\FHIR.R4.AuthMap.pas';

{$R *.res}

{$Include 'npplib\FHIR.Npp.Include.pas'}

begin
  FHIRExeModuleName := 'fhirnpp.dll';

  { First, assign the procedure to the DLLProc variable }
  DllProc := @DLLEntryPoint;
  { Now invoke the procedure to reflect that the DLL is attaching to the process }
  DLLEntryPoint(DLL_PROCESS_ATTACH);
end.

