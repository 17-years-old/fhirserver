unit JWTTests;

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


Interface

Uses
  SysUtils,
  FHIR.Support.Base, FHIR.Support.Utilities, FHIR.Support.Json, FHIR.Support.Certs,
  DUnitX.TestFramework;

Type
  [TextFixture]
  TJWTTests = Class (TObject)
  Private
  Published
    [SetUp] procedure Setup;
    [TestCase] procedure TestPacking;
    [TestCase] procedure TestUnpacking;
    [TestCase] procedure TestCert;
  End;

Implementation

uses
  IdSSLOpenSSLHeaders;

var
  gs : String;

{ TJWTTests }


procedure TJWTTests.Setup;
begin
  IdSSLOpenSSLHeaders.Load;
  LoadEAYExtensions;
end;

procedure TJWTTests.TestCert;
var
  jwk : TJWK;
  s: String;
begin
  jwk := TJWTUtils.loadKeyFromRSACert('C:\work\fhirserver\Exec\jwt-test.key.crt');
  try
    s := TJSONWriter.writeObjectStr(jwk.obj, true);
    Writeln(s);
    Assert.IsTrue(true);
  finally
    jwk.Free;
  end;
end;

procedure TJWTTests.TestPacking;
var
  jwk : TJWK;
  s : String;
  jwt : TJWT;
begin
  jwk := TJWK.create(TJSONParser.Parse('{"kty": "oct", "k": "AyM1SysPpbyDfgZld3umj1qzKObwVMkoqQ-EstJQLr_T-1qS0gZH75aKtMN3Yj0iPS4hcgUuTwjAzZr1Z9CAow"}'));
  try
    // this test is from the spec
    s := TJWTUtils.pack(
      '{"typ":"JWT",'+#13#10+' "alg":"HS256"}',
      '{"iss":"joe",'+#13#10+' "exp":1300819380,'+#13#10+' "http://example.com/is_root":true}',
      jwt_hmac_sha256, jwk);
    Assert.IsTrue(s = 'eyJ0eXAiOiJKV1QiLA0KICJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJqb2UiLA0KICJleHAiOjEzMDA4MTkzODAsDQogImh0dHA6Ly9leGFtcGxlLmNvbS9pc19yb290Ijp0cnVlfQ.dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk',
      'packing failed. expected '+#13#10+'eyJ0eXAiOiJKV1QiLA0KICJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJqb2UiLA0KICJleHAiOjEzMDA4MTkzODAsDQogImh0dHA6Ly9leGFtcGxlLmNvbS9pc19yb290Ijp0cnVlfQ.dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk, but got '+s);
  finally
    jwk.Free;
  end;

  jwk := TJWK.create(TJSONParser.Parse(
     '{"kty":"RSA", '+#13#10+
     '  "kid": "http://tools.ietf.org/html/draft-ietf-jose-json-web-signature-26#appendix-A.2.1", '+#13#10+
     '  "n":"ofgWCuLjybRlzo0tZWJjNiuSfb4p4fAkd_wWJcyQoTbji9k0l8W26mPddxHmfHQp-Vaw-4qPCJrcS2mJPMEzP1Pt0Bm4d4QlL-yRT-SFd2lZS-pCgNMsD1W_YpRPEwOWvG6b32690r2jZ47soMZo9wGzjb_7OMg0LOL-bSf63kpaSHSXndS5z5rexMdb'+'BYUsLA9e-KXBdQOS-UTo7WTBEMa2R2CapHg665xsmtdVMTBQY4uDZlxvb3qCo5ZwKh9kG4LT6_I5IhlJH7aGhyxXFvUK-DWNmoudF8NAco9_h9iaGNj8q2ethFkMLs91kzk2PAcDTW9gb54h4FRWyuXpoQ", '+#13#10+
     '  "e":"AQAB", '+#13#10+
     '  "d":"Eq5xpGnNCivDflJsRQBXHx1hdR1k6Ulwe2JZD50LpXyWPEAeP88vLNO97IjlA7_GQ5sLKMgvfTeXZx9SE-7YwVol2NXOoAJe46sui395IW_GO-pWJ1O0BkTGoVEn2bKVRUCgu-GjBVaYLU6f3l9kJfFNS3E0QbVdxzubSu3Mkqzjkn439X0M_V51gfpR'+'LI9JYanrC4D4qAdGcopV_0ZHHzQlBjudU2QvXt4ehNYTCBr6XCLQUShb1juUO1ZdiYoFaFQT5Tw8bGUl_x_jTj3ccPDVZFD9pIuhLhBOneufuBiB4cS98l2SR_RQyGWSeWjnczT0QU91p1DhOVRuOopznQ" '+#13#10+
     ' } '+#13#10
   ));
  try
    gs := TJWTUtils.pack(
      '{"alg":"RS256"}',
      '{"iss":"joe",'+#13#10+' "exp":1300819380,'+#13#10+' "http://example.com/is_root":true}',
      jwt_hmac_rsa256, jwk);
  finally
    jwk.Free;
  end;

  jwt := TJWT.create;
  try
    jwt.id := GUIDToString(CreateGUID);
    s := TJWTUtils.rsa_pack(jwt, jwt_hmac_rsa256, 'C:\work\fhirserver\Exec\jwt-test.key.key', 'fhirserver');
    Assert.isTrue(true);
  finally
    jwt.Free;
  end;
end;

var
  jwk : TJWKList;

procedure TJWTTests.TestUnpacking;
var
  jwt : TJWT;
begin
  // HS256 test from the spec
  jwk := TJWKList.create(TJSONParser.Parse('{"kty": "oct", "k": "AyM1SysPpbyDfgZld3umj1qzKObwVMkoqQ-EstJQLr_T-1qS0gZH75aKtMN3Yj0iPS4hcgUuTwjAzZr1Z9CAow"}'));
  try
    jwt := TJWTUtils.unpack('eyJ0eXAiOiJKV1QiLA0KICJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJqb2UiLA0KICJleHAiOjEzMDA4MTkzODAsDQogImh0dHA6Ly9leGFtcGxlLmNvbS9pc19yb290Ijp0cnVlfQ.dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk', true, jwk);
    try
      // inspect
      Assert.IsTrue(true);
    finally
      jwt.Free;
    end;
  finally
    jwk.Free;
  end;
   (*
  // from google
  jwk := TJWKList.create(TJSONParser.Parse(
    // as downloaded from google at the same time as the JWT below
    '{'+#13#10+
    ' "keys": ['+#13#10+
    '  {'+#13#10+
    '   "kty": "RSA",'+#13#10+
    '   "alg": "RS256",'+#13#10+
    '   "use": "sig",'+#13#10+
    '   "kid": "024806d09e6067ca21bc6e25219d15dd981ddf9d",'+#13#10+
    '   "n": "AKGBohjSehyKnx7t5HZGzLtNaFpbNBiCf9O6G/qUeOy8l7XBflg/79G+t23eP77dJ+iCPEoLU1R/3NKPAk6Y6hKbSIvuzLY+B877ozutOn/6H/DNWumVZKnkSpDa7A5nsCNSm63b7uJ4XO5W0NtueiXj855h8j+WLi9vP8UwXhmL",'+#13#10+
    '   "e": "AQAB"'+#13#10+
    '  },'+#13#10+
    '  {'+#13#10+
    '   "kty": "RSA",'+#13#10+
    '   "alg": "RS256",'+#13#10+
    '   "use": "sig",'+#13#10+
    '   "kid": "8140c5f1c9d0c738c1b6328528f7ab1f672f5ba0",'+#13#10+
    '   "n": "AMAxJozHjwYxXqcimf93scqnDKZrKm1O4+TSH4eTJyjM1NU1DnhRJ8xL8fJd/rZwBWgPCUNi34pYlLWwfzR/17diqPgGSMt+mBVKXo5HD7+9SfQPjH3Fw810BQpxslBuAPsSGaNcLvHPpUSJDB/NH2rTxw6YtQ/R3neo7Amcfn/d",'+#13#10+
    '   "e": "AQAB"'+#13#10+
    '  }'+#13#10+
    ' ]'+#13#10+
    '}'+#13#10
  ));
  try
    jwt := TJWTUtils.unpack('eyJhbGciOiJSUzI1NiIsImtpZCI6IjAyNDgwNmQwOWU2MDY3Y2EyMWJjNmUyNTIxOWQxNWRkOTgxZGRmOWQifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwic3ViIjoiMTExOTA0NjIwMDUzMzY0MzkyMjg2Ii'+'wiYXpwIjoiOTQwMDA2MzEwMTM4LmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiZW1haWwiOiJncmFoYW1lZ0BnbWFpbC5jb20iLCJhdF9oYXNoIjoidDg0MGJMS3FsRU'+'ZqUmQwLWlJS2dZUSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdWQiOiI5NDAwMDYzMTAxMzguYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJpYXQiOjE0MDIxODUxMjksImV'+'4cCI6MTQwMjE4OTAyOX0.Jybn06gURs7lcpCYaXBuszC7vacnWxwSwH_ffIDDu7bxOPo9fiVnRDCidKSLy4m0sAL1xxDHA5gXSZ9C6nj7abGqQ_LOrcPdTncuvYUPhF7mUq7fr3EPW-34PVkBSiOrjYdO6SOYyeP443WzPQRkhVJkRP4oQF-k0zXuwCkWlfc', true, jwk);
    try
      // inspect
      Assert.IsTrue(true);
    finally
      jwt.Free;
    end;
  finally
    jwk.free;
  end;

  // RS256 test from the spec (except the value is from above, because the sig doesn't match)
  jwk := TJWKList.create(TJSONParser.Parse(
     '{"kty":"RSA", '+#13#10+
     '  "kid": "http://tools.ietf.org/html/draft-ietf-jose-json-web-signature-26#appendix-A.2.1", '+#13#10+
     '  "n":"ofgWCuLjybRlzo0tZWJjNiuSfb4p4fAkd_wWJcyQoTbji9k0l8W26mPddxHmfHQp-Vaw-4qPCJrcS2mJPMEzP1Pt0Bm4d4QlL-yRT-SFd2lZS-pCgNMsD1W_YpRPEwOWvG6b32690r2jZ47soMZo9wGzjb_7OMg0LOL-bSf63kpaSHSXndS5z5rexMdbBYUsLA9e-KXBdQOS-UTo7WTBEMa2R2CapHg66'+'5xsmtdVMTBQY4uDZlxvb3qCo5ZwKh9kG4LT6_I5IhlJH7aGhyxXFvUK-DWNmoudF8NAco9_h9iaGNj8q2ethFkMLs91kzk2PAcDTW9gb54h4FRWyuXpoQ", '+#13#10+
     '  "e":"AQAB", '+#13#10+
     '  "d":"Eq5xpGnNCivDflJsRQBXHx1hdR1k6Ulwe2JZD50LpXyWPEAeP88vLNO97IjlA7_GQ5sLKMgvfTeXZx9SE-7YwVol2NXOoAJe46sui395IW_GO-pWJ1O0BkTGoVEn2bKVRUCgu-GjBVaYLU6f3l9kJfFNS3E0QbVdxzubSu3Mkqzjkn439X0M_V51gfpRLI9JYanrC4D4qAdGcopV_0ZHHzQlBjudU2QvX'+'t4ehNYTCBr6XCLQUShb1juUO1ZdiYoFaFQT5Tw8bGUl_x_jTj3ccPDVZFD9pIuhLhBOneufuBiB4cS98l2SR_RQyGWSeWjnczT0QU91p1DhOVRuOopznQ" '+#13#10+
     ' } '+#13#10
   ));
  try
    jwt := TJWTUtils.unpack(gs {'eyJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJqb2UiLA0KICJleHAiOjEzMDA4MTkzODAsDQogImh0dHA6Ly9leGFtcGxlLmNvbS9pc19yb290Ijp0cnVlfQ.LteI-Jtns1KTLm0-lnDU_gI8_QHDnnIfZCEB2dI-ix4YxLQjaOTVQolkaa-Y4Cie-mEd8c34vSWeeNRgVcXuJsZ_iVYywDWqUDpXY6KwdMx6kXZQ0-'+'mihsowKzrFbmhUWun2aGOx44w3wAxHpU5cqE55B0wx2v_f98zUojMp6mkje_pFRdgPmCIYTbym54npXz7goROYyVl8MEhi1HgKmkOVsihaVLfaf5rt3OMbK70Lup3RrkxFbneKslTQ3bwdMdl_Zk1vmjRklvjhmVXyFlEHZVAe4_4n_FYk6oq6UFFJDkEjrWo25B0lKC7XucZZ5b8NDr04xujyV4XaR11ZuQ'}, true, jwk);
    try
      // inspect
      Assert.IsTrue(true);
    finally
      jwt.Free;
    end;
  finally
    jwk.Free;
  end;
    *)
end;

initialization
  TDUnitX.RegisterTestFixture(TJWTTests);
End.

