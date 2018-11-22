// ************************************************************************
// ***************************** OldCEF4Delphi *******************************
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

unit uCEFBase;

{$IFNDEF CPUX64}{$ALIGN ON}{$ENDIF}
{$MINENUMSIZE 4}

{$I cef.inc}

interface

uses
  {$IFDEF DELPHI16_UP}
  System.SysUtils,
  {$ELSE}
  SysUtils,
  {$ENDIF}
  uCEFInterfaces;

type
  TLoggingInterfacedObject = class(TInterfacedObject)
    protected
      function _AddRef: Integer; reintroduce; stdcall;
      function _Release: Integer; reintroduce; stdcall;
    public
      class function NewInstance: TObject; override;
  end;


  TCefBaseOwn = class({$IFDEF INTFLOG}TLoggingInterfacedObject{$ELSE}TInterfacedObject{$ENDIF}, ICefBase)
    protected
      FData: Pointer;

    public
      constructor CreateData(size: Cardinal; owned : boolean = False); virtual;
      destructor  Destroy; override;
      function    SameAs(aData : Pointer) : boolean;
      function    Wrap: Pointer;
  end;

  TCefBaseRef = class(TInterfacedObject, ICefBase)
    protected
      FData: Pointer;

    public
      constructor Create(data: Pointer); virtual;
      destructor  Destroy; override;
      function    SameAs(aData : Pointer) : boolean;
      function    Wrap: Pointer;
      class function UnWrap(data: Pointer): ICefBase;
  end;



implementation

uses
  uCEFTypes, uCEFMiscFunctions, uCEFConstants, uCEFApplication;


// ***********************************************
// ************ TCefBaseOwn ************
// ***********************************************


procedure cef_base_add_ref(self: PCefBase); stdcall;
var
  TempObject : TObject;
begin
  TempObject := CefGetObject(self);

  if (TempObject <> nil) and (TempObject is TCefBaseOwn) then
    TCefBaseOwn(TempObject)._AddRef;
end;

function cef_base_release_ref(self: PCefBase): Integer; stdcall;
var
  TempObject : TObject;
begin
  TempObject := CefGetObject(self);

  if (TempObject <> nil) and (TempObject is TCefBaseOwn) then
    Result := TCefBaseOwn(TempObject)._Release
   else
    Result := 0;
end;

function cef_base_has_one_ref(self: PCefBase): Integer; stdcall;
var
  TempObject : TObject;
begin
  TempObject := CefGetObject(self);

  if (TempObject <> nil) and (TempObject is TCefBaseOwn) then
    Result := Ord(TCefBaseOwn(TempObject).FRefCount = 1)
   else
    Result := Ord(False);
end;

procedure cef_base_add_ref_owned(self: PCefBase); stdcall;
begin
  //
end;

function cef_base_release_owned(self: PCefBase): Integer; stdcall;
begin
  Result := 1;
end;

function cef_base_has_one_ref_owned(self: PCefBase): Integer; stdcall;
begin
  Result := 1;
end;

constructor TCefBaseOwn.CreateData(size: Cardinal; owned : boolean);
begin
  GetMem(FData, size + SizeOf(Pointer));
  PPointer(FData)^ := Self;
  Inc(PByte(FData), SizeOf(Pointer));
  FillChar(FData^, size, 0);
  PCefBase(FData)^.size := size;

  if owned then
    begin
      PCefBase(FData)^.add_ref     := cef_base_add_ref_owned;
      PCefBase(FData)^.release     := cef_base_release_owned;
      PCefBase(FData)^.has_one_ref := cef_base_has_one_ref_owned;
    end
   else
    begin
      PCefBase(FData)^.add_ref     := cef_base_add_ref;
      PCefBase(FData)^.release     := cef_base_release_ref;
      PCefBase(FData)^.has_one_ref := cef_base_has_one_ref;
    end;
end;

destructor TCefBaseOwn.Destroy;
var
  TempPointer : pointer;
begin
  try
    if (FData <> nil) then
      begin
        TempPointer := FData;
        Dec(PByte(TempPointer), SizeOf(Pointer));
        FillChar(TempPointer^, SizeOf(Pointer) + SizeOf(TCefBase), 0);
        FreeMem(TempPointer);
      end;
  finally
    FData := nil;
    inherited Destroy;
  end;
end;

function TCefBaseOwn.SameAs(aData : Pointer) : boolean;
begin
  Result := (FData = aData);
end;

function TCefBaseOwn.Wrap: Pointer;
begin
  Result := FData;

  if (FData <> nil) and Assigned(PCefBase(FData)^.add_ref) then
    PCefBase(FData)^.add_ref(PCefBase(FData));
end;


// ***********************************************
// ************ TCefBaseRef ************
// ***********************************************


constructor TCefBaseRef.Create(data: Pointer);
begin
  Assert(data <> nil);
  FData := data;
end;

destructor TCefBaseRef.Destroy;
begin
  try
    if (FData <> nil) and assigned(PCefBase(FData)^.release) then
      begin
        {$IFDEF INTFLOG}
        CefDebugLog(ClassName + '.Destroy -> FRefCount = ' +
                    IntToStr(PCefBaseRefCounted(FData)^.release(PCefBaseRefCounted(FData))));
        {$ELSE}
        PCefBase(FData)^.release(PCefBase(FData));
        {$ENDIF}
      end;
  finally
    FData := nil;
    inherited Destroy;
  end;
end;

function TCefBaseRef.SameAs(aData : Pointer) : boolean;
begin
  Result := (FData = aData);
end;

class function TCefBaseRef.UnWrap(data: Pointer): ICefBase;
begin
  if (data <> nil) then
    Result := Create(data) as ICefBase
   else
    Result := nil;
end;

function TCefBaseRef.Wrap: Pointer;
begin
  Result := FData;

  if (FData <> nil) and Assigned(PCefBase(FData)^.add_ref) then
    begin
      PCefBase(FData)^.add_ref(PCefBase(FData));
      {$IFDEF INTFLOG}
      CefDebugLog(ClassName + '.Wrap');
      {$ENDIF}
    end;
end;


// ************************************************
// *********** TLoggingInterfacedObject ***********
// ************************************************


function TLoggingInterfacedObject._AddRef: Integer;
begin
  Result := inherited _AddRef;
  CefDebugLog(ClassName + '._AddRef -> FRefCount = ' + IntToStr(Result));
end;

function TLoggingInterfacedObject._Release: Integer;
begin
  CefDebugLog(ClassName + '._Release -> FRefCount = ' + IntToStr(pred(RefCount)));
  Result := inherited _Release;
end;

class function TLoggingInterfacedObject.NewInstance: TObject;
begin
  Result := inherited NewInstance;
  CefDebugLog(ClassName + '.NewInstance -> FRefCount = ' + IntToStr(TInterfacedObject(Result).RefCount));
end;

end.
