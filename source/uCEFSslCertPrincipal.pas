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

unit uCEFSslCertPrincipal;

{$IFNDEF CPUX64}
  {$ALIGN ON}
  {$MINENUMSIZE 4}
{$ENDIF}

{$I cef.inc}

interface

uses
  {$IFDEF DELPHI16_UP}
  System.Classes,
  {$ELSE}
  Classes,
  {$ENDIF}
  uCEFBase, uCEFInterfaces, uCEFTypes;

type
  TCefSslCertPrincipalRef = class(TCefBaseRef, ICefSslCertPrincipal)
    protected
      function  GetDisplayName: ustring;
      function  GetCommonName: ustring;
      function  GetLocalityName: ustring;
      function  GetStateOrProvinceName: ustring;
      function  GetCountryName: ustring;
      procedure GetStreetAddresses(var addresses: TStrings);
      procedure GetOrganizationNames(var names: TStrings);
      procedure GetOrganizationUnitNames(var names: TStrings);
      procedure GetDomainComponents(var components: TStrings);
    public
      class function UnWrap(data: Pointer): ICefSslCertPrincipal;
  end;

implementation

uses
  uCEFMiscFunctions, uCEFLibFunctions, uCEFStringList;


function TCefSslCertPrincipalRef.GetCommonName: ustring;
begin
  Result := CefStringFreeAndGet(PCefSslCertPrincipal(FData).get_common_name(PCefSslCertPrincipal(FData)));
end;

function TCefSslCertPrincipalRef.GetCountryName: ustring;
begin
  Result := CefStringFreeAndGet(PCefSslCertPrincipal(FData).get_country_name(PCefSslCertPrincipal(FData)));
end;

function TCefSslCertPrincipalRef.GetDisplayName: ustring;
begin
  Result := CefStringFreeAndGet(PCefSslCertPrincipal(FData).get_display_name(PCefSslCertPrincipal(FData)));
end;

procedure TCefSslCertPrincipalRef.GetDomainComponents(var components: TStrings);
var
  TempSL : ICefStringList;
begin
  if (components <> nil) then
    begin
      TempSL := TCefStringListOwn.Create;
      PCefSslCertPrincipal(FData).get_domain_components(PCefSslCertPrincipal(FData), TempSL.Handle);
      TempSL.CopyToStrings(components);
    end;
end;

function TCefSslCertPrincipalRef.GetLocalityName: ustring;
begin
  Result := CefStringFreeAndGet(PCefSslCertPrincipal(FData).get_locality_name(PCefSslCertPrincipal(FData)));
end;

procedure TCefSslCertPrincipalRef.GetOrganizationNames(var names: TStrings);
var
  TempSL : ICefStringList;
begin
  if (names <> nil) then
    begin
      TempSL := TCefStringListOwn.Create;
      PCefSslCertPrincipal(FData).get_organization_names(PCefSslCertPrincipal(FData), TempSL.Handle);
      TempSL.CopyToStrings(names);
    end;
end;

procedure TCefSslCertPrincipalRef.GetOrganizationUnitNames(var names: TStrings);
var
  TempSL : ICefStringList;
begin
  if (names <> nil) then
    begin
      TempSL := TCefStringListOwn.Create;
      PCefSslCertPrincipal(FData).get_organization_unit_names(PCefSslCertPrincipal(FData), TempSL.Handle);
      TempSL.CopyToStrings(names);
    end;
end;

function TCefSslCertPrincipalRef.GetStateOrProvinceName: ustring;
begin
  Result := CefStringFreeAndGet(PCefSslCertPrincipal(FData).get_state_or_province_name(FData));
end;

procedure TCefSslCertPrincipalRef.GetStreetAddresses(var addresses: TStrings);
var
  TempSL : ICefStringList;
begin
  if (addresses <> nil) then
    begin
      TempSL := TCefStringListOwn.Create;
      PCefSslCertPrincipal(FData).get_street_addresses(PCefSslCertPrincipal(FData), TempSL.Handle);
      TempSL.CopyToStrings(addresses);
    end;
end;

class function TCefSslCertPrincipalRef.UnWrap(data: Pointer): ICefSslCertPrincipal;
begin
  if (data <> nil) then
    Result := Create(data) as ICefSslCertPrincipal
   else
    Result := nil;
end;

end.
