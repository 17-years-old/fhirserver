unit FHIR.Server.Twilio;

interface

uses
  SysUtils, Classes,
  IdContext, IdCustomHTTPServer,
  FHIR.Support.Base, FHIR.Support.Utilities, FHIR.Support.Stream, FHIR.Support.Threads, FHIR.Support.Json,
  FHIR.Web.Parsers,
  FHIR.DataBase.Manager;


type
  TTwilioServer = class (TFslObject)
  private
    FLock : TFslLock;
    FDb : TFslDBManager;
    FKey : Integer;
    FResponse : String;

    procedure processTwilioPost(request: TIdHTTPRequestInfo; response: TIdHTTPResponseInfo);
    procedure processTwilioGet(request: TIdHTTPRequestInfo; response: TIdHTTPResponseInfo);
  public
    Constructor Create(Db : TFslDBManager; response : String);
    destructor Destroy; override;

    procedure sweep;
    procedure process(AContext: TIdContext; request: TIdHTTPRequestInfo; response: TIdHTTPResponseInfo);
  end;

implementation

{ TTwilioServer }

constructor TTwilioServer.Create(Db : TFslDBManager; response : String);
begin
  Inherited Create;
  FResponse := response;
  if FResponse = '' then
    FResponse := 'Thanks. Working...';
  FLock := TFslLock.Create('Twilio');
  FDb := db;
  FDB.connection('twilio', Procedure (conn : TFslDBConnection)
  begin
    FKey := conn.CountSQL('Select Max(TwilioKey) from Twilio');
  end
  );
end;

destructor TTwilioServer.Destroy;
begin
  FDB.Free;
  FLock.Free;
  inherited;
end;

procedure TTwilioServer.process(AContext: TIdContext; request: TIdHTTPRequestInfo; response: TIdHTTPResponseInfo);
begin
  if request.CommandType = hcPOST then
    processTwilioPost(request, response)
  else
    processTwilioGet(request, response);
end;

procedure TTwilioServer.processTwilioGet(request: TIdHTTPRequestInfo; response: TIdHTTPResponseInfo);
var
  pm : TParseMap;
  a : String;
  json, obj : TJsonObject;
  arr : TJsonArray;
begin
  pm := TParseMap.Create(request.UnparsedParams);
  try
    a := pm.GetVar('AccountSid');
    json := TJsonObject.Create;
    try
      arr := json.forceArr['messages'];
      FDB.connection('twilio', Procedure (conn : TFslDBConnection)
        begin
          conn.sql := 'Select SourceNum, CreatedDate, MsgBody from Twilio where AccountId = :a and Status = 1';
          conn.Prepare;
          conn.BindString('a', a);
          conn.Execute;
          while (conn.fetchNext) do
          begin
            obj := TJsonObject.Create;
            arr.add(obj);
            obj.vStr['from'] := conn.ColStringByName['SourceNum'];
            obj.vStr['date'] := conn.ColStringByName['CreatedDate'];
            obj.vStr['body'] := conn.ColBlobAsStringByName['MsgBody'];
          end;
          conn.Terminate;
          conn.sql := 'Update Twilio set Status = 2, DownloadedDate = getdate() where AccountId = :a';
          conn.Prepare;
          conn.BindString('a', a);
          conn.Execute;
          conn.Terminate;
        end);
      response.ResponseNo := 200;
      response.ResponseText := 'OK';
      response.ContentType := 'application/json';
      response.ContentText := TJsonWriterDirect.writeObjectStr(json);
    finally
      json.Free;
    end;
  finally
    pm.Free;
  end;

end;

procedure TTwilioServer.processTwilioPost(request: TIdHTTPRequestInfo; response: TIdHTTPResponseInfo);
var
  pm : TParseMap;
  tk : integer;
  a, f, b : String;
begin
  FLock.Lock;
  try
    Inc(FKey);
    tk := FKey;
  finally
    FLock.Unlock;
  end;

  pm := TParseMap.Create(request.UnparsedParams);
  try
    a := pm.GetVar('AccountSid');
    f := pm.GetVar('From');
    b := pm.GetVar('Body');
    FDB.connection('twilio', Procedure (conn : TFslDBConnection)
      begin
        conn.sql := 'Insert into Twilio (TwilioKey, AccountId, Status, SourceNum, CreatedDate, MsgBody) values (:k, :a, 1, :f, getDate(), :b)';
        conn.Prepare;
        conn.BindInteger('k', tk);
        conn.BindString('a', a);
        conn.BindString('f', f);
        conn.BindBlobFromString('b', b);
        conn.Execute;
        conn.Terminate;
      end);
    response.ResponseNo := 200;
    response.ResponseText := 'OK';
    response.ContentType := 'application/xml';
    response.ContentText := '<?xml version="1.0" encoding="UTF-8" ?><Response><Message>'+FResponse+'</Message></Response>';
  finally
    pm.Free;
  end;
end;

procedure TTwilioServer.sweep;
begin
  FDB.connection('twilio', Procedure (conn : TFslDBConnection)
    begin
      conn.ExecSQL('Delete from Twilio where DownloadedDate < DATEADD(day, -2, GETDATE())');
    end);
end;

end.
