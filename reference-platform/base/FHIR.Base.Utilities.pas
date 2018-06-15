unit FHIR.Base.Utilities;

{
Copyright (c) 2018+, Health Intersections Pty Ltd
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
  SysUtils, Classes, ZLib,
  FHIR.Support.Base, FHIR.Support.Utilities, FHIR.Support.Json, FHIR.Web.Parsers, FHIR.Web.Fetcher,
  FHIR.Base.Objects, FHIR.Base.Lang;

function mimeTypeToFormat(mt : String; def : TFHIRFormat = ffUnspecified) : TFHIRFormat;
function mimeTypeListToFormat(mt : String; def : TFHIRFormat = ffUnspecified) : TFHIRFormat;
Function RecogniseFHIRFormat(Const sName, lang : String): TFHIRFormat;
Function FhirGUIDToString(aGuid : TGuid):String;
function IsId(s : String) : boolean;
function isHistoryURL(url : String) : boolean;
function isVersionUrl(url, t : String) : boolean;
procedure splitHistoryUrl(var url : String; var history : String);
procedure RemoveBOM(var s : String);
function CustomResourceNameIsOk(name : String) : boolean;
function Path(const parts : array of String) : String;
function UrlPath(const parts : array of String) : String;

function ZCompressBytes(const s: TBytes): TBytes;
function ZDecompressBytes(const s: TBytes): TBytes;
function TryZDecompressBytes(const s: TBytes): TBytes;


implementation

function mimeTypeListToFormat(mt : String; def : TFHIRFormat = ffUnspecified) : TFHIRFormat;
var
  ctl : TFslList<TMimeContentType>;
  ct : TMimeContentType;
begin
  result := ffUnspecified;
  ctl := TMimeContentType.parseList(mt);
  try
    for ct in ctl do
    begin
      if      (ct.base = 'application/json') or (ct.base = 'application/fhir+json') or (ct.base = 'application/json+fhir') then result := ffJson
      else if (ct.base = 'application/xml') or (ct.base = 'application/fhir+xml') or (ct.base = 'application/xml+fhir') then result := ffXml
      else if (ct.base = 'application/x-ndjson') or (ct.base = 'application/fhir+ndjson') then result := ffNDJson
      else if (ct.base = 'text/turtle') or (ct.base = 'application/fhir+turtle') then result := ffTurtle

      else if (ct.base = 'text/json') then result := ffJson
      else if (ct.base = 'text/html') then result := ffXhtml
      else if (ct.base = 'text/xml') then result := ffXml
      else if (ct.base = 'application/x-zip-compressed') or (ct.base = 'application/zip') then result := ffXhtml
      else if (ct.base = 'text/plain') then result := ffText

      else if StringExistsInsensitive(ct.base, 'json') then result := ffJson
      else if StringExistsInsensitive(ct.base, 'xml') then result := ffXml
      else if StringExistsInsensitive(ct.base, 'html') then result := ffXhtml
      else if StringExistsInsensitive(ct.base, 'text') then result := ffText
      else if StringExistsInsensitive(ct.base, 'rdf') then result := ffTurtle
      else if StringExistsInsensitive(ct.base, 'turtle') then result := ffTurtle
      else if StringExistsSensitive(ct.base, '*/*') Then result := ffXhtml;
      if result <> ffUnspecified then
        break;
    end;
  finally
    ctl.Free;
  end;
  if result = ffUnspecified then
    result := def;
end;

function mimeTypeToFormat(mt : String; def : TFHIRFormat = ffUnspecified) : TFHIRFormat;
var
  ct : TMimeContentType;
begin
  result := def;
  ct := TMimeContentType.parseSingle(mt);
  try
    if      (ct.base = 'application/json') or (ct.base = 'application/fhir+json') or (ct.base = 'application/json+fhir') then result := ffJson
    else if (ct.base = 'application/xml') or (ct.base = 'application/fhir+xml') or (ct.base = 'application/xml+fhir') then result := ffXml
    else if (ct.base = 'application/x-ndjson') or (ct.base = 'application/fhir+ndjson') then result := ffNDJson
    else if (ct.base = 'text/turtle') or (ct.base = 'application/fhir+turtle') then result := ffTurtle

    else if (ct.base = 'text/json') then result := ffJson
    else if (ct.base = 'text/html') then result := ffXhtml
    else if (ct.base = 'text/xml') then result := ffXml
    else if (ct.base = 'application/x-zip-compressed') or (ct.base = 'application/zip') then result := ffXhtml
    else if (ct.base = 'text/plain') then result := ffText

    else if StringExistsInsensitive(ct.base, 'json') then result := ffJson
    else if StringExistsInsensitive(ct.base, 'xml') then result := ffXml
    else if StringExistsInsensitive(ct.base, 'html') then result := ffXhtml
    else if StringExistsInsensitive(ct.base, 'text') then result := ffText
    else if StringExistsInsensitive(ct.base, 'rdf') then result := ffTurtle
    else if StringExistsInsensitive(ct.base, 'turtle') then result := ffTurtle
    else if StringExistsSensitive(ct.base, '*/*') Then result := ffXhtml;
  finally
    ct.Free;
  end;
end;

Function RecogniseFHIRFormat(Const sName, lang : String): TFHIRFormat;
Begin
  if (sName = '.xml') or (sName = 'xml') or (sName = '.xsd') or (sName = 'xsd') Then
    result := ffXml
  else if (sName = '.json') or (sName = 'json') then
    result := ffJson
  else if sName = '' then
    result := ffUnspecified
  else
    raise ERestfulException.create('FHIR.Base.Objects.RecogniseFHIRFormat', HTTP_ERR_BAD_REQUEST, etStructure, 'Unknown format '+sName, lang);
End;

Function FhirGUIDToString(aGuid : TGuid):String;
begin
  result := Copy(GUIDToString(aGuid), 2, 34).ToLower;
end;


function IsId(s : String) : boolean;
var
  i : integer;
begin
  result := length(s) in [1..ID_LENGTH];
  if result then
    for i := 1 to length(s) do
      result := result and CharInset(s[i], ['0'..'9', 'a'..'z', 'A'..'Z', '-', '.', '_']);
end;



function isHistoryURL(url : String) : boolean;
begin
  result := url.Contains('/_history/') and IsId(url.Substring(url.IndexOf('/_history/')+10));
end;

procedure splitHistoryUrl(var url : String; var history : String);
begin
  history := url.Substring(url.IndexOf('/_history/')+10);
  url := url.Substring(0, url.IndexOf('/_history/'));
end;

procedure RemoveBOM(var s : String);
begin
  if s.startsWith(#$FEFF) then
    s := s.substring(1);
end;

function CustomResourceNameIsOk(name : String) : boolean;
var
  fetcher : TInternetFetcher;
  json : TJsonObject;
  stream : TFileStream;
  n : TJsonNode;
begin
  result := false;
  fetcher := TInternetFetcher.create;
  try
    fetcher.URL := 'http://www.healthintersections.com.au/resource-policy.json';
    fetcher.Fetch;
//    fetcher.Buffer.SaveToFileName('c:\temp\test.json');
    stream := TFileStream.Create('c:\temp\test.json', fmOpenRead + fmShareDenyWrite);
    try
//      fetcher.Buffer.SaveToStream(stream);
//      stream.Position := 0;
      json := TJSONParser.Parse(stream);
      try
        for n in json.arr['prefixes'] do
          if name.StartsWith(TJsonString(n).value) then
            exit(true);
        for n in json.arr['names'] do
          if name = TJsonString(n).value then
            exit(true);
      finally
        json.Free;
      end;
    finally
      stream.Free;
    end;
  finally
    fetcher.Free;
  end;
end;


function Path(const parts : array of String) : String;
var
  i : integer;
begin
  if length(parts) = 0 then
    result := ''
  else
    result := parts[0];
  for i := 1 to high(parts) do
    result := IncludeTrailingPathDelimiter(result) + parts[i];
end;

function IsSlash(const S: string; Index: Integer): Boolean;
begin
  Result := (Index >= Low(string)) and (Index <= High(S)) and (S[Index] = '/') and (ByteType(S, Index) = mbSingleByte);
end;

function IncludeTrailingSlash(const S: string): string;
begin
  Result := S;
  if not IsSlash(Result, High(Result)) then
    Result := Result + PathDelim;
end;

function IncludeTrailingURLSlash(const S: string): string;
begin
  Result := S;
  if not IsSlash(Result, High(Result)) then
    Result := Result + '/';
end;

function UrlPath(const parts : array of String) : String;
var
  i : integer;
begin
  if length(parts) = 0 then
    result := ''
  else
    result := parts[0];
  for i := 1 to high(parts) do
    result := IncludeTrailingURLSlash(result) + parts[i];
end;



function ZCompressBytes(const s: TBytes): TBytes;
begin
  ZCompress(s, result);
end;

function TryZDecompressBytes(const s: TBytes): TBytes;
begin
  try
    result := ZDecompressBytes(s);
  except
    result := s;
  end;
end;

function ZDecompressBytes(const s: TBytes): TBytes;
  {$IFNDEF WIN64}
var
  buffer: Pointer;
  size  : Integer;
  {$ENDIF}
begin
  {$IFDEF WIN64}
  ZDecompress(s, result);
  {$ELSE}
  ZDecompress(@s[0],Length(s),buffer,size);

  SetLength(result,size);
  Move(buffer^,result[0],size);

  FreeMem(buffer);
  {$ENDIF}
end;


function isVersionUrl(url, t : String) : boolean;
begin
  result := (url.Length = (44 + t.Length)) and
    url.StartsWith('http://hl7.org/fhir/') and
    url.EndsWith('/StructureDefinition/'+t) and
    StringArrayExistsSensitive(PF_CONST, url.Substring(20, 3));
end;


end.
