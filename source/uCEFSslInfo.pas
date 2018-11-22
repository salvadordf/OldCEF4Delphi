// ************************************************************************
// **************************** OldCEF4Delphi *****************************
// ************************************************************************
//
// OldCEF4Delphi is based on DCEF3 which uses CEF3 to embed a chromium-based
// browser in Delphi applications.
//
// The original license of DCEF3 still applies to OldCEF4Delphi.
//
// For more information about OldCEF4Delphi visit :
//         https://www.briskbard.com/index.php?lang=en&pageid=cef
//
//        Copyright © 2018 Salvador Díaz Fau. All rights reserved.
//
// ************************************************************************
// ************ vvvv Original license and comments below vvvv *************
// ************************************************************************
(*
 *                       Delphi Chromium Embedded 3
 *
 * Usage allowed under the restrictions of the Lesser GNU General Public License
 * or alternatively the restrictions of the Mozilla Public License 1.1
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 *
 * Unit owner : Henri Gourvest <hgourvest@gmail.com>
 * Web site   : http://www.progdigy.com
 * Repository : http://code.google.com/p/delphichromiumembedded/
 * Group      : http://groups.google.com/group/delphichromiumembedded
 *
 * Embarcadero Technologies, Inc is not permitted to use or redistribute
 * this source code without explicit permission.
 *
 *)

unit uCEFSslInfo;

{$IFNDEF CPUX64}{$ALIGN ON}{$ENDIF}
{$MINENUMSIZE 4}

{$I cef.inc}

interface

uses
  {$IFDEF DELPHI16_UP}
  System.Classes, System.SysUtils,
  {$ELSE}
  Classes, SysUtils,
  {$ENDIF}
  uCEFBase, uCEFInterfaces, uCEFTypes;

type
  TCefSslInfoRef = class(TCefBaseRef, ICefSslInfo)
    protected
      function  GetCertStatus: TCefCertStatus;
      function  IsCertStatusError: Boolean;
      function  IsCertStatusMinorError: Boolean;
      function  GetSubject: ICefSslCertPrincipal;
      function  GetIssuer: ICefSslCertPrincipal;
      function  GetSerialNumber: ICefBinaryValue;
      function  GetValidStart: TCefTime;
      function  GetValidExpiry: TCefTime;
      function  GetDerEncoded: ICefBinaryValue;
      function  GetPemEncoded: ICefBinaryValue;
      function  GetIssuerChainSize: NativeUInt;
      procedure GetDEREncodedIssuerChain(chainCount: NativeUInt; var chain : TCefBinaryValueArray);
      procedure GetPEMEncodedIssuerChain(chainCount: NativeUInt; var chain : TCefBinaryValueArray);

    public
      class function UnWrap(data: Pointer): ICefSslInfo;
  end;

implementation

uses
  uCEFMiscFunctions, uCEFLibFunctions, uCEFBinaryValue, uCEFSslCertPrincipal;


function TCefSslInfoRef.GetCertStatus: TCefCertStatus;
begin
  Result := PCefSslInfo(FData).get_cert_status(FData);
end;

function TCefSslInfoRef.GetDerEncoded: ICefBinaryValue;
begin
  Result := TCefBinaryValueRef.UnWrap(PCefSslInfo(FData).get_derencoded(FData));
end;

function TCefSslInfoRef.GetIssuer: ICefSslCertPrincipal;
begin
  Result := TCefSslCertPrincipalRef.UnWrap(PCefSslInfo(FData).get_issuer(FData));
end;

function TCefSslInfoRef.GetIssuerChainSize: NativeUInt;
begin
  Result := PCefSslInfo(FData).get_issuer_chain_size(FData);
end;

function TCefSslInfoRef.GetPemEncoded: ICefBinaryValue;
begin
  Result := TCefBinaryValueRef.UnWrap(PCefSslInfo(FData).get_pemencoded(FData));
end;

function TCefSslInfoRef.GetSerialNumber: ICefBinaryValue;
begin
  Result := TCefBinaryValueRef.UnWrap(PCefSslInfo(FData).get_serial_number(FData));
end;

function TCefSslInfoRef.GetSubject: ICefSslCertPrincipal;
begin
  Result := TCefSslCertPrincipalRef.UnWrap(PCefSslInfo(FData).get_subject(FData));
end;

function TCefSslInfoRef.GetValidExpiry: TCefTime;
begin
  Result := PCefSslInfo(FData).get_valid_expiry(FData);
end;

function TCefSslInfoRef.GetValidStart: TCefTime;
begin
  Result := PCefSslInfo(FData).get_valid_start(FData);
end;

function TCefSslInfoRef.IsCertStatusError: Boolean;
begin
  Result := PCefSslInfo(FData).is_cert_status_error(FData) <> 0;
end;

function TCefSslInfoRef.IsCertStatusMinorError: Boolean;
begin
  Result := PCefSslInfo(FData).is_cert_status_minor_error(FData) <> 0;
end;

procedure TCefSslInfoRef.GetDEREncodedIssuerChain(chainCount: NativeUInt; var chain : TCefBinaryValueArray);
var
  TempArray : array of PCefBinaryValue;
  i : NativeUInt;
begin
  TempArray := nil;

  try
    try
      if (chainCount > 0) then
        begin
          SetLength(TempArray, chainCount);

          i := 0;
          while (i < chainCount) do
            begin
              TempArray[i] := nil;
              inc(i);
            end;

          PCefSslInfo(FData).get_derencoded_issuer_chain(FData, chainCount, TempArray[0]);

          if (chainCount > 0) then
            begin
              SetLength(chain, chainCount);

              i := 0;
              while (i < chainCount) do
                begin
                  chain[i] := TCefBinaryValueRef.UnWrap(TempArray[i]);
                  inc(i);
                end;
            end;
        end;
    except
      on e : exception do
        if CustomExceptionHandler('TCefSslInfoRef.GetDEREncodedIssuerChain', e) then raise;
    end;
  finally
    if (TempArray <> nil) then
      begin
        Finalize(TempArray);
        TempArray := nil;
      end;
  end;
end;

procedure TCefSslInfoRef.GetPEMEncodedIssuerChain(chainCount: NativeUInt; var chain : TCefBinaryValueArray);
var
  TempArray : array of PCefBinaryValue;
  i : NativeUInt;
begin
  TempArray := nil;

  try
    try
      if (chainCount > 0) then
        begin
          SetLength(TempArray, chainCount);

          i := 0;
          while (i < chainCount) do
            begin
              TempArray[i] := nil;
              inc(i);
            end;

          PCefSslInfo(FData).get_pemencoded_issuer_chain(FData, chainCount, TempArray[0]);

          if (chainCount > 0) then
            begin
              SetLength(chain, chainCount);

              i := 0;
              while (i < chainCount) do
                begin
                  chain[i] := TCefBinaryValueRef.UnWrap(TempArray[i]);
                  inc(i);
                end;
            end;
        end;
    except
      on e : exception do
        if CustomExceptionHandler('TCefSslInfoRef.GetPEMEncodedIssuerChain', e) then raise;
    end;
  finally
    if (TempArray <> nil) then
      begin
        Finalize(TempArray);
        TempArray := nil;
      end;
  end;
end;

class function TCefSslInfoRef.UnWrap(data: Pointer): ICefSslInfo;
begin
  if (data <> nil) then
    Result := Create(data) as ICefSslInfo
   else
    Result := nil;
end;

end.
