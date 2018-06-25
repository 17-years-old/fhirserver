unit FHIR.Javascript.ObjectsTests;

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
  SysUtils, Classes, Generics.Collections,
  FHIR.Javascript,
  FHIR.Base.Factory, FHIR.Base.Common,
  {$IFDEF FHIR2}
  FHIR.R2.Tests.Worker, FHIR.R2.Resources, FHIR.R2.Types, FHIR.R2.Factory, FHIR.R2.Common, FHIR.R2.Utilities,
  {$ENDIF}
  {$IFDEF FHIR3}
  FHIR.R3.Tests.Worker, FHIR.R3.Resources, FHIR.R3.Types, FHIR.R3.Factory, FHIR.R3.Common, FHIR.R3.Utilities,
  {$ENDIF}
  {$IFDEF FHIR4}
  FHIR.R4.Tests.Worker, FHIR.R4.Resources, FHIR.R4.Types, FHIR.R4.Factory, FHIR.R4.Common, FHIR.R4.Utilities,
  {$ENDIF}
  FHIR.Javascript.Base,
  DUnitX.TestFramework;


Type
  [TextFixture]
  TFHIRJavascriptTests = Class (TObject)
  Private
    FLog : TStringList;
    FJs : TFHIRJavascript;
    procedure JSLog(sender : TJavascript; message : String);
    function makeFactory : TFHIRFactory;
  Published
    [SetUp]    Procedure Setup;
    [TearDown] Procedure TearDown;
    [TestCase] Procedure TestPatient;
    [TestCase] Procedure TestPatient2;
    [TestCase] Procedure TestObservation;
  End;

implementation

{ TJavascriptTests }

function TFHIRJavascriptTests.makeFactory: TFHIRFactory;
begin
  {$IFDEF FHIR2} result := TFHIRFactoryR2.Create; {$ENDIF}
  {$IFDEF FHIR3} result := TFHIRFactoryR3.Create; {$ENDIF}
  {$IFDEF FHIR4} result := TFHIRFactoryR4.Create; {$ENDIF}
end;

procedure TFHIRJavascriptTests.Setup;
begin
//  FJs := TFHIRJavascript.Create('C:\work\fhirserver\Exec\64\ChakraCore.dll', makeFactory, nil);
  FJs.OnLog := JSLog;
  FLog := TStringList.create;
end;

procedure TFHIRJavascriptTests.TearDown;
begin
  FJs.Free;
  FLog.free;
end;

procedure TFHIRJavascriptTests.JSLog(sender: TJavascript; message: String);
begin
  FLog.Add(message);
end;

procedure TFHIRJavascriptTests.TestPatient;
var
  pat : TFHIRPatient;
begin
  pat := fileToResource('C:\work\org.hl7.fhir\build\publish\patient-example.xml') as TFhirPatient;
  try
    FJs.execute(
      'function func(pat) {'+#13#10+
      ' console.log(pat.id);'+#13#10+
      ' console.log(pat.language);'+#13#10+
      ' pat.id = "t1";'+#13#10+
      ' console.log(pat.active);'+#13#10+
      ' pat.active = false;'+#13#10+
      ' console.log(pat.gender);'+#13#10+
      ' pat.gender = "female";'+#13#10+
      ' console.log(pat.birthDate);'+#13#10+
      ' pat.birthDate = "1992-03-04";'+#13#10+
      ' console.log(pat.text.status);'+#13#10+
      ' console.log(pat.identifier.length);'+#13#10+
      ' pat.text.status = "extensions";'+#13#10+
      '}'+#13#10,
      'test.js', 'func', [FJs.wrap(pat.Link, 'Patient', true)]);
    Assert.IsTrue(Flog.Text =
      'example'#13#10+
      'null'#13#10+
      'true'#13#10+
      'male'#13#10+
      '1974-12-25'#13#10+
      'generated'#13#10+
      '1'#13#10);
    Assert.IsTrue(pat.id = 't1');
    Assert.IsTrue(not pat.active);
    Assert.IsTrue(pat.gender = AdministrativeGenderFemale);
    Assert.IsTrue(pat.birthDate.toXML = '1992-03-04');
    Assert.IsTrue(pat.birthDateElement.extensionList.Count = 1);
    Assert.IsTrue(pat.text.status = NarrativeStatusExtensions);
  finally
    pat.Free;
  end;
end;

procedure TFHIRJavascriptTests.TestPatient2;
var
  pat : TFHIRPatient;
begin
  pat := fileToResource('C:\work\org.hl7.fhir\build\publish\patient-example.xml') as TFhirPatient;
  try
    FJs.execute(
      'function func(pat) {'+#13#10+
      ' console.log(pat.identifier[0].system);'+#13#10+
      ' pat.identifier.push({ "system" : "http://something", "value" : "v1"});'+#13#10+
      '}'+#13#10,
      'test.js', 'func', [FJs.wrap(pat.Link, 'Patient', true)]);
    Assert.IsTrue(Flog.Text =
      'urn:oid:1.2.36.146.595.217.0.1'#13#10);
    Assert.IsTrue(pat.identifierList.count = 2);
    Assert.IsTrue(pat.identifierList[1].system = 'http://something');

    FJs.execute(
      'function func(pat) {'+#13#10+
      ' pat.identifier.push(new Identifier({ "system" : "http://something-else", "value" : "v1"}));'+#13#10+
      '}'+#13#10,
      'test.js', 'func', [FJs.wrap(pat.Link, 'Patient', true)]);
    Assert.IsTrue(pat.identifierList.count = 3);
    Assert.IsTrue(pat.identifierList[2].system = 'http://something-else');

    FLog.Clear;
    FJs.execute(
      'function func(pat) {'+#13#10+
      ' pat.identifier = [{ "system" : "http://something-else-again", "value" : "v1"}];'+#13#10+
      ' console.log(pat.identifier.length);'+#13#10+
      '}'+#13#10,
      'test.js', 'func', [FJs.wrap(pat.Link, 'Patient', true)]);
    Assert.IsTrue(Flog.Text =
      '1'#13#10);
    Assert.IsTrue(pat.identifierList.count = 1);
    Assert.IsTrue(pat.identifierList[0].system = 'http://something-else-again');
  finally
    pat.Free;
  end;
end;

procedure TFHIRJavascriptTests.TestObservation;
var
  obs : TFhirObservation;
begin
  obs := fileToResource('C:\work\org.hl7.fhir\build\publish\observation-example.xml') as TFhirObservation;
  try
    FJs.execute(
      'function func(obs) {'+#13#10+
      ' console.log(obs.valueQuantity.value);'+#13#10+
      ' obs.valueQuantity.value = 3.120;'+#13#10+
      '}'+#13#10,
      'test.js', 'func', [FJs.wrap(obs.Link, obs.fhirType, true)]);
    Assert.IsTrue(Flog.Text =
      '185'#13#10);
    Assert.IsTrue((obs.value as TFHIRQuantity).value = '3.12');

    FJs.execute(
      'function func(obs) {'+#13#10+
      ' obs.valueQuantity.value = "3.120";'+#13#10+
      '}'+#13#10,
      'test.js', 'func', [FJs.wrap(obs.Link, obs.fhirType, true)]);
    Assert.IsTrue((obs.value as TFHIRQuantity).value = '3.120');

    FJs.execute(
      'function func(obs) {'+#13#10+
      ' obs.valueInteger = 3;'+#13#10+
      '}'+#13#10,
      'test.js', 'func', [FJs.wrap(obs.Link, obs.fhirType, true)]);
    Assert.IsTrue((obs.value as TFHIRInteger).value = '3');
  finally
    obs.Free;
  end;
end;

initialization
  TDUnitX.RegisterTestFixture(TFHIRJavascriptTests);
end.
