unit FHIR.Tests.FullServer;

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
interface

uses
  Windows, Sysutils, Classes, IniFiles,
  DUnitX.TestFramework, IdHttp, IdSSLOpenSSL,
  FHIR.Support.Base, FHIR.Support.Utilities, FHIR.Support.Json,

  FHIR.Web.Fetcher,
  FHIR.Snomed.Importer, FHIR.Snomed.Services, FHIR.Snomed.Expressions, FHIR.Tx.RxNorm, FHIR.Tx.Unii,
  FHIR.Loinc.Importer, FHIR.Loinc.Services,
  FHIR.Ucum.Services,
  FHIR.Database.Manager, FHIR.Database.ODBC, FHIR.Database.Dialects, FHIR.Database.SQLite,
  FHIR.Base.Factory, FHIR.Cache.PackageManager, FHIR.Base.Parser, FHIR.Base.Lang, FHIR.Javascript.Base, FHIR.Client.Base, FHIR.Base.PathEngine,

  FHIR.R4.Factory, FHIR.R4.IndexInfo, FHIR.R4.Resources, FHIR.R4.Types, FHIR.R4.Json, FHIR.Server.IndexingR4, FHIR.Server.SubscriptionsR4, FHIR.Server.OperationsR4,
  FHIR.R4.Validator, FHIR.R4.Context, FHIR.Server.ValidatorR4, FHIR.R4.Javascript, FHIR.R4.Client, FHIR.R4.Utilities, FHIR.R4.PathEngine,

  FHIR.Tools.Indexing, FHIR.Version.Client,
  FHIR.Tx.Manager, FHIR.Tx.Server,
  FHIR.Server.Storage, FHIR.Server.Ini, FHIR.Server.Version,
  FHIR.Server.Web, FHIR.Server.DBInstaller, FHIR.Server.Database, FHIR.Base.Objects,
  FHIR.Server.Constants, FHIR.Server.Context, FHIR.Server.Utilities, FHIR.Server.WebSource,
  FHIR.Scim.Server, FHIR.CdsHooks.Service, FHIR.Server.Javascript, FHIR.Server.Factory,
  FHIR.Server.Indexing, FHIR.Server.Subscriptions;

Type
  TFullTestServerFactory = class (TFHIRServerFactory)
  public
    function makeIndexes : TFHIRIndexBuilder; override;
    function makeValidator: TFHIRValidatorV; override;
    function makeIndexer : TFHIRIndexManager; override;
    function makeEngine(validatorContext : TFHIRWorkerContextWithFactory; ucum : TUcumServiceImplementation) : TFHIRPathEngineV; override;
    function makeSubscriptionManager(ServerContext : TFslObject) : TSubscriptionManager; override;

    procedure setTerminologyServer(validatorContext : TFHIRWorkerContextWithFactory; server : TFslObject{TTerminologyServer}); override;
  end;

  [TextFixture]
  TFullServerTests = Class (TObject)
  private
    FIni : TFHIRServerIniFile;
    FSettings : TFHIRServerSettings;
    FDatabases : TFslMap<TFslDBManager>;
    FTerminologies : TCommonTerminologies;
    FWebServer : TFhirWebServer;
    FEndPoint : TFhirWebServerEndpoint;
    FClientJson : TFhirClient;

    function parseJson(s : String) : TFHIRResource;
    procedure ConnectToDatabases();
    function connectToDatabase(s : String; details : TFHIRServerIniComplex) : TFslDBManager;
    Procedure checkDatabase(db : TFslDBManager; factory : TFHIRFactory; serverFactory : TFHIRServerFactory);
    procedure LoadTerminologies;
    procedure InitialiseRestServer;
    procedure registerJs(sender: TObject; js: TJsHost);
  public
    [SetupFixture] procedure Setup;
    [TearDownFixture] procedure TearDown;

    [TestCase] Procedure TestStarted;
    [TestCase] Procedure TestCapabilityStatement;
    [TestCase] Procedure TestPatientRead;
    [TestCase] Procedure TestPatientReadFail;
    [TestCase] Procedure TestPatientSearch;
    [TestCase] Procedure TestSystemSearch;
    [TestCase] Procedure TestPatientVRead;
    [TestCase] Procedure TestPatientHistoryI;
    [TestCase] Procedure TestPatientHistoryT;
    [TestCase] Procedure TestSystemHistory;

    [TestCase] Procedure TestPatientUpdate;
    [TestCase] Procedure TestPatientDelete;
    [TestCase] Procedure TestPatientCreate;
//    [TestCase] Procedure TestBatch;
//    [TestCase] Procedure TestTransaction;
    [TestCase] Procedure TestObservationPatchJson;
    [TestCase] Procedure TestObservationPatchNative;

    [TestCase] Procedure TestValueSetExpand1;
    [TestCase] Procedure TestValueSetExpand2;
    [TestCase] Procedure TestValueSetValidate;

  end;

implementation

{ TFullTestServerFactory }

function TFullTestServerFactory.makeValidator: TFHIRValidatorV;
begin
  result := TFHIRValidator4.Create(TFHIRServerWorkerContextR4.Create(TFHIRFactoryR4.create));
end;

function TFullTestServerFactory.makeEngine(validatorContext: TFHIRWorkerContextWithFactory; ucum: TUcumServiceImplementation): TFHIRPathEngineV;
begin
  result := TFHIRPathEngine4.Create(validatorContext as TFHIRWorkerContext4, ucum);
end;

function TFullTestServerFactory.makeIndexer : TFHIRIndexManager;
begin
  result := TFhirIndexManager4.Create;
end;

function TFullTestServerFactory.makeIndexes: TFHIRIndexBuilder;
begin
  result := TFHIRIndexBuilderR4.create;
end;

function TFullTestServerFactory.makeSubscriptionManager(ServerContext : TFslObject) : TSubscriptionManager;
begin
  result := TSubscriptionManagerR4.Create(ServerContext);
end;

procedure TFullTestServerFactory.setTerminologyServer(validatorContext : TFHIRWorkerContextWithFactory; server : TFslObject{TTerminologyServer});
begin
  TFHIRServerWorkerContextR4(ValidatorContext).TerminologyServer := (server as TTerminologyServer);
end;





{ TFullServerTests }

procedure TFullServerTests.registerJs(sender : TObject; js : TJsHost);
begin
  js.engine.registerFactory(FHIR.R4.Javascript.registerFHIRTypesDef, fhirVersionUnknown, TFHIRFactoryR4.create);
  js.engine.registerFactory(FHIR.R4.Javascript.registerFHIRTypes, fhirVersionRelease4, TFHIRFactoryR4.create);
end;

procedure TFullServerTests.checkDatabase(db: TFslDBManager; factory: TFHIRFactory; serverFactory: TFHIRServerFactory);
var
  ver : integer;
  conn : TFslDBConnection;
  dbi : TFHIRDatabaseInstaller;
  meta : TFslDBMetaData;
begin
  conn := Db.GetConnection('check version');
  try
    meta := conn.FetchMetaData;
    try
      if meta.HasTable('Config') then
      begin
        // db version check
        ver := conn.CountSQL('Select Value from Config where ConfigKey = 5');
        if (ver <> ServerDBVersion) then
        begin
          dbi := TFHIRDatabaseInstaller.create(conn, '', factory.link, serverfactory.link);
          try
            dbi.upgrade(ver);
          finally
            dbi.Free;
          end;
        end;
      end;
    finally
      meta.Free;
    end;
    conn.Release;
  except
    on e : Exception do
    begin
      conn.Error(e);
      raise;
    end;
  end;
end;

function TFullServerTests.connectToDatabase(s: String; details: TFHIRServerIniComplex): TFslDBManager;
var
  dbn, ddr : String;
begin
  dbn := details['database'];
  ddr := details['driver'];
  if details['type'] = 'mssql' then
  begin
    if ddr = '' then
      ddr := 'SQL Server Native Client 11.0';
    result := TFslDBOdbcManager.create(s, 100, 0, ddr, details['server'], dbn, details['username'], details['password']);
  end
  else if details['type'] = 'mysql' then
  begin
    result := TFslDBOdbcManager.create(s, 100, 0, ddr, details['server'], dbn, details['username'], details['password']);
  end
  else if details['type'] = 'SQLite' then
  begin
    result := TFslDBSQLiteManager.create(s, dbn, false);
  end
  else
    raise ELibraryException.Create('Unknown database type '+s);
end;

procedure TFullServerTests.ConnectToDatabases;
var
  s : String;
  details : TFHIRServerIniComplex;
begin
  for s in FIni.databases.keys do
  begin
    details := FIni.databases[s];
    if details['when-testing'] = 'true' then
      FDatabases.Add(s, connectToDatabase(s, details));
  end;
end;

procedure TFullServerTests.InitialiseRestServer;
var
  ctxt : TFHIRServerContext;
  store : TFHIRNativeStorageService;
  s : String;
  details : TFHIRServerIniComplex;
begin
  FWebServer := TFhirWebServer.create(FSettings.Link, 'Test-Server');
  FWebServer.OnRegisterJs := registerJs;
  FWebServer.loadConfiguration(FIni);
  FWebServer.SourceProvider := TFHIRWebServerSourceFolderProvider.Create(ProcessPath(ExtractFilePath(FIni.FileName), FIni.web['folder']));

  for s in FIni.endpoints.Keys do
  begin
    details := FIni.endpoints[s];
    if details['when-testing'] = 'true' then
    begin
      if details['version'] = 'r4' then
      begin
        store := TFHIRNativeStorageServiceR4.create(FDatabases[details['database']].link, TFHIRFactoryR4.Create);
      end
      else
        raise EFslException.Create('Cannot load end-point '+s+' version '+details['version']);

      try
        ctxt := TFHIRServerContext.Create(store.Link, TFullTestServerFactory.Create);
        try
          checkDatabase(store.DB, store.Factory, ctxt.ServerFactory);
          ctxt.Globals := FSettings.Link;
          store.ServerContext := ctxt;
          ctxt.TerminologyServer := TTerminologyServer.Create(store.DB.link, ctxt.factory.Link, FTerminologies.link);
          ctxt.Validate := true; // move to database config FIni.ReadBool(voVersioningNotApplicable, 'fhir', 'validate', true);

          store.Initialise();
          ctxt.userProvider := TSCIMServer.Create(store.db.link, FIni.admin['scim-salt'], FWebServer.host, FIni.admin['default-rights'], false);
          FEndPoint := FWebServer.registerEndPoint(s, details['path'], ctxt.Link, FIni);
        finally
          ctxt.Free;
        end;
      finally
        store.Free;
      end;
    end;
  end;
//      FWebServer.CDSHooksServer.registerService(TCDAHooksCodeViewService.create);
//      FWebServer.CDSHooksServer.registerService(TCDAHooksIdentifierViewService.create);
//      FWebServer.CDSHooksServer.registerService(TCDAHooksPatientViewService.create);
//      FWebServer.CDSHooksServer.registerService(TCDAHackingHealthOrderService.create);

  FWebServer.Start(true);
end;

procedure TFullServerTests.LoadTerminologies;
begin
  FTerminologies := TCommonTerminologies.Create(FSettings.link);
  FTerminologies.load(FIni, FDatabases, true);
end;

function TFullServerTests.parseJson(s: String): TFHIRResource;
var
  p : TFHIRJsonParser;
begin
  p := TFHIRJsonParser.Create(nil, 'en');
  try
    p.source := TStringStream.Create(s);
    try
      p.parse;
      result := p.resource.link as TFhirResource;
    finally
      p.source.Free;
    end;
  finally
    p.Free;
  end; 
end;

procedure TFullServerTests.Setup;
begin
  FIni := TFHIRServerIniFile.Create('C:\work\fhirserver\Exec\fhir.dev.local.ini');
  FSettings := TFHIRServerSettings.Create;
  FSettings.ForLoad := not FindCmdLineSwitch('noload');
  FSettings.load(FIni);
  FDatabases := TFslMap<TFslDBManager>.create('databases');

  ConnectToDatabases;
  LoadTerminologies;
  InitialiseRestServer;
  FClientJson := TFhirClients.makeIndy(FEndPoint.Context.ValidatorContext.Link as TFHIRWorkerContext, FEndpoint.ClientAddress(false), true);
end;

procedure TFullServerTests.TearDown;
begin
  FClientJson.Free;
  if FWebServer <> nil then
    FWebServer.Stop;
  FWebServer.Free;
  FTerminologies.Free;
  FDatabases.Free;
  FSettings.Free;
  FIni.Free;
end;

procedure TFullServerTests.TestCapabilityStatement;
var
  r : TFhirCapabilityStatement;
begin
  r := FClientJson.conformance(true) as TFhirCapabilityStatement;
  try
    Assert.IsTrue(r <> nil);
  finally
    r.Free;
  end;
end;

procedure TFullServerTests.TestObservationPatchJson;
var
  p : TJsonArray;
  r : TFHIRObservation;
begin
  p := TJsonParser.ParseNode('[ {"op":"replace","path":"/effectiveDateTime","value":"2019-01-23"} ]') as TJsonArray;
  try
    r := FClientJson.patchResource(frtObservation, 'example', p) as TFHIRObservation;
    try
      Assert.IsTrue(r.effective is TFHIRDateTime, 'Wrong type');
      Assert.IsTrue((r.effective as TFHIRDateTime).StringValue = '2019-01-23', 'Wrong value');      
    finally
      r.Free;
    end;
  finally
    p.Free;
  end;
end;

procedure TFullServerTests.TestObservationPatchNative;
var
  p : TFHIRParameters;
  r : TFHIRObservation;
begin
  p := parseJson(
    '{'+#13#10+
    '  "resourceType": "Parameters",'+#13#10+
    '  "parameter": ['+#13#10+
    '    {'+#13#10+
    '      "name": "operation",'+#13#10+
    '      "part": [ {"name":"type", "valueCode":"replace" },'+#13#10+
    '                {"name":"path", "valueString":"effective" },'+#13#10+
    '                {"name":"value", "valueDateTime":"2019-01-23" }'+#13#10+
    '              ]'+#13#10+
    '    }'+#13#10+
    '  ]'+#13#10+
    '}'+#13#10) as TFHIRParameters;
  try
    r := FClientJson.patchResource(frtObservation, 'example', p) as TFHIRObservation;
    try
      Assert.IsTrue(r.effective is TFHIRDateTime, 'Wrong type');
      Assert.IsTrue((r.effective as TFHIRDateTime).StringValue = '2019-01-23', 'Wrong value');      
    finally
      r.Free;
    end;
  finally
    p.Free;
  end;
end;

procedure TFullServerTests.TestPatientCreate;
var
  rb, ra : TFhirPatient;
  id : String;
begin
  rb := FClientJson.readResource(frtPatient, 'example') as TFHIRPatient;
  try
    rb.id := '';
    ra := FClientJson.createResource(rb, id) as TFhirPatient;
    try
      Assert.IsTrue(ra.id = id);
      Assert.IsTrue(ra.meta.lastUpdated <> rb.meta.lastUpdated);
    finally
      ra.free;
    end;
  finally
    rb.Free;
  end;
end;

procedure TFullServerTests.TestPatientDelete;
var
  rb : TFhirPatient;
  id : String;
begin
  rb := FClientJson.readResource(frtPatient, 'example') as TFHIRPatient;
  try
    rb.id := '';
    FClientJson.createResource(rb, id).free;
    FClientJson.readResource(frtPatient, id).free;
    FClientJson.DeleteResource(frtPatient, id);
    Assert.WillRaiseAny(procedure begin
      FClientJson.readResource(frtPatient, id);
    end);
  finally
    rb.Free;
  end;
end;

procedure TFullServerTests.TestPatientHistoryI;
var
  r : TFhirBundle;
begin
  r := FClientJson.historyInstance(frtPatient, 'example', true, nil);
  try
    Assert.IsTrue(r.entryList.Count > 0);
  finally
    r.Free;
  end;
end;

procedure TFullServerTests.TestPatientHistoryT;
var
  r : TFhirBundle;
begin
  r := FClientJson.historyType(frtPatient, true, nil);
  try
    Assert.IsTrue(r.entryList.Count > 0);
  finally
    r.Free;
  end;
end;

procedure TFullServerTests.TestPatientRead;
var
  r : TFhirPatient;
begin
  r := FClientJson.readResource(frtPatient, 'example') as TFHIRPatient;
  try
    Assert.IsTrue(r.id = 'example');
  finally
    r.Free;
  end;
end;

procedure TFullServerTests.TestPatientReadFail;
begin
  Assert.WillRaiseAny(procedure begin
    FClientJson.readResource(frtPatient, 'xxxxxxxxx');
  end);
end;

procedure TFullServerTests.TestPatientSearch;
var
  r : TFhirBundle;
begin
  r := FClientJson.search(frtPatient, true, 'name=peter') as TFHIRBundle;
  try
    Assert.IsTrue(r.entryList.Count > 0);
  finally
    r.Free;
  end;
end;

procedure TFullServerTests.TestPatientUpdate;
var
  rb, ra : TFhirPatient;
  d : TFslDateTime;
begin
  rb := FClientJson.readResource(frtPatient, 'example') as TFHIRPatient;
  try
    Assert.IsTrue(rb.meta.lastUpdated.notNull);
    d := rb.birthDate;
    rb.birthDate := d - 365;
    ra := FClientJson.updateResource(rb) as TFhirPatient;
    try
      Assert.IsTrue(ra.birthDate = rb.birthDate);
      Assert.IsTrue(ra.meta.lastUpdated <> rb.meta.lastUpdated);
    finally
      ra.free;
    end;
  finally
    rb.Free;
  end;
end;

procedure TFullServerTests.TestPatientVRead;
var
  r : TFhirPatient;
begin
  r := FClientJson.vreadResource(frtPatient, 'example', '1') as TFHIRPatient;
  try
    Assert.IsTrue(r.id = 'example');
  finally
    r.Free;
  end;
end;

procedure TFullServerTests.TestStarted;
begin
  Assert.IsTrue(FWebServer <> nil, 'not started succesfully');
end;

procedure TFullServerTests.TestSystemHistory;
var
  r : TFhirBundle;
begin
  r := FClientJson.historyType(frtNull, false, nil);
  try
    Assert.IsTrue(r.entryList.Count > 0);
  finally
    r.Free;
  end;
end;

procedure TFullServerTests.TestSystemSearch;
var
  r : TFhirBundle;
begin
  r := FClientJson.search(frtNull, false, 'text=peter') as TFHIRBundle;
  try
    Assert.IsTrue(r.entryList.Count = 50);
  finally
    r.Free;
  end;
end;

procedure TFullServerTests.TestValueSetExpand1;
var
  vs : TFHIRValueSet;
begin
  vs := FClientJson.operation(frtValueSet, 'account-status', 'expand', nil) as TFHIRValueSet;
  try
    Assert.IsTrue(vs.expansion <> nil);
  finally
    vs.Free;
  end;
end;

procedure TFullServerTests.TestValueSetExpand2;
var
  vs : TFHIRValueSet;
begin
  vs := FClientJson.operation(frtValueSet, 'bodysite-laterality', 'expand', nil) as TFHIRValueSet;
  try
    Assert.IsTrue(vs.expansion <> nil);
  finally
    vs.Free;
  end;
end;

procedure TFullServerTests.TestValueSetValidate;
var
  pIn, pOut : TFhirParameters;
begin
  pIn := TFhirParameters.Create;
  try
    pIn.AddParameter('system', 'http://hl7.org/fhir/audit-event-outcome');
    pIn.AddParameter('code', '4');
    pIn.AddParameter('display', 'something');
    pOut := FClientJson.operation(frtValueSet, 'validate-code', pIn) as TFhirParameters;
    try
      assert.IsTrue(pOut.bool['result']);
      assert.IsTrue(pOut.str['message'] <> '');
    finally
      pOut.Free;
    end;
  finally
    pIn.Free;
  end;
end;

initialization
  TDUnitX.RegisterTestFixture(TFullServerTests);
end.
