// ************************************************************************
// ***************************** OldCEF4Delphi ****************************
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
//        Copyright � 2018 Salvador D�az Fau. All rights reserved.
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

unit uCEFTypes;

{$IFNDEF CPUX64}
  {$ALIGN ON}
  {$MINENUMSIZE 4}
{$ENDIF}

{$I cef.inc}

interface

uses
  {$IFDEF DELPHI16_UP}
  {$IFDEF MSWINDOWS}WinApi.Windows,{$ENDIF} System.Math;
  {$ELSE}
  Windows, Math;
  {$ENDIF}

type
  PCefStringWide = ^TCefStringWide;
  PCefDictionaryValue = ^TCefDictionaryValue;
  PCefListValue = ^TCefListValue;
  PCefBrowser = ^TCefBrowser;
  PCefValue = ^TCefValue;
  PCefBinaryValue = ^TCefBinaryValue;
  PCefSchemeRegistrar = ^TCefSchemeRegistrar;
  PCefCommandLine = ^TCefCommandLine;
  PCefBase = ^TCefBase;
  PCefWindowInfo = ^TCefWindowInfo;
  PCefSettings = ^TCefSettings;
  PCefStringUtf8 = ^TCefStringUtf8;
  PCefStringUtf16 = ^TCefStringUtf16;
  PCefStringUserFreeWide = ^TCefStringUserFreeWide;
  PCefStringUserFreeUtf8 = ^TCefStringUserFreeUtf8;
  PCefStringUserFreeUtf16 = ^TCefStringUserFreeUtf16;
  PCefMainArgs = ^TCefMainArgs;
  PCefColor = ^TCefColor;
  PCefBrowserHost = ^TCefBrowserHost;
  PCefClient = ^TCefClient;
  PCefPrintHandler = ^TCefPrintHandler;
  PCefResourceBundleHandler = ^TCefResourceBundleHandler;
  PCefBrowserProcessHandler = ^TCefBrowserProcessHandler;
  PCefContextMenuHandler = ^TCefContextMenuHandler;
  PCefAccessibilityHandler = ^TCefAccessibilityHandler;
  PCefFrame = ^TCefFrame;
  PCefApp = ^TCefApp;
  PCefStringVisitor = ^TCefStringVisitor;
  PCefRequest = ^TCefRequest;
  PCefPostData = ^TCefPostData;
  PCefPostDataElementArray = ^TCefPostDataElementArray;
  PCefPostDataElement = ^TCefPostDataElement;
  PPCefPostDataElement = ^PCefPostDataElement;
  PCefv8Context = ^TCefv8Context;
  PCefTask = ^TCefTask;
  PCefv8Value = ^TCefv8Value;
  PCefTime = ^TCefTime;
  PCefV8Exception = ^TCefV8Exception;
  PCefv8Handler = ^TCefv8Handler;
  PPCefV8Value = ^PCefV8ValueArray;
  PCefDomVisitor = ^TCefDomVisitor;
  PCefDomDocument = ^TCefDomDocument;
  PCefDomNode = ^TCefDomNode;
  PCefContextMenuParams = ^TCefContextMenuParams;
  PCefMenuModel = ^TCefMenuModel;
  PCefRunContextMenuCallback = ^TCefRunContextMenuCallback;
  PCefDialogHandler = ^TCefDialogHandler;
  PCefFileDialogCallback = ^TCefFileDialogCallback;
  PCefDisplayHandler = ^TCefDisplayHandler;
  PCefDownloadHandler = ^TCefDownloadHandler;
  PCefDownloadItem = ^TCefDownloadItem;
  PCefBeforeDownloadCallback = ^TCefBeforeDownloadCallback;
  PCefDownloadItemCallback = ^TCefDownloadItemCallback;
  PCefDragHandler = ^TCefDragHandler;
  PCefDragData = ^TCefDragData;
  PCefDraggableRegionArray = ^TCefDraggableRegionArray;
  PCefDraggableRegion = ^TCefDraggableRegion;
  PCefRect = ^TCefRect;
  PCefPoint = ^TCefPoint;
  PCefSize = ^TCefSize;
  PCefRectArray = ^TCefRectArray;
  PCefStreamWriter = ^TCefStreamWriter;
  PCefFindHandler = ^TCefFindHandler;
  PCefFocusHandler = ^TCefFocusHandler;
  PCefJsDialogHandler = ^TCefJsDialogHandler;
  PCefJsDialogCallback = ^TCefJsDialogCallback;
  PCefKeyboardHandler = ^TCefKeyboardHandler;
  PCefKeyEvent = ^TCefKeyEvent;
  PCefLifeSpanHandler = ^TCefLifeSpanHandler;
  PCefPopupFeatures = ^TCefPopupFeatures;
  PCefBrowserSettings = ^TCefBrowserSettings;
  PCefLoadHandler = ^TCefLoadHandler;
  PCefRenderHandler = ^TCefRenderHandler;
  PCefScreenInfo = ^TCefScreenInfo;
  PCefRenderProcessHandler = ^TCefRenderProcessHandler;
  PCefCursorInfo = ^TCefCursorInfo;
  PCefV8StackTrace = ^TCefV8StackTrace;
  PCefV8StackFrame = ^TCefV8StackFrame;
  PCefProcessMessage = ^TCefProcessMessage;
  PCefRequestHandler = ^TCefRequestHandler;
  PCefRequestCallback = ^TCefRequestCallback;
  PCefResourceHandler = ^TCefResourceHandler;
  PCefResponse = ^TCefResponse;
  PCefResponseFilter = ^TCefResponseFilter;
  PCefAuthCallback = ^TCefAuthCallback;
  PCefSslInfo = ^TCefSslInfo;
  PCefSslCertPrincipal = ^TCefSslCertPrincipal;
  PCefCallback = ^TCefCallback;
  PCefCookie = ^TCefCookie;
  PCefRequestContext = ^TCefRequestContext;
  PCefRequestContextHandler = ^TCefRequestContextHandler;
  PCefCompletionCallback = ^TCefCompletionCallback;
  PCefCookieManager = ^TCefCookieManager;
  PCefSchemeHandlerFactory = ^TCefSchemeHandlerFactory;
  PCefResolveCallback = ^TCefResolveCallback;
  PCefWebPluginInfo = ^TCefWebPluginInfo;
  PCefPluginPolicy = ^TCefPluginPolicy;
  PCefCookieVisitor = ^TCefCookieVisitor;
  PCefSetCookieCallback = ^TCefSetCookieCallback;
  PCefDeleteCookiesCallback = ^TCefDeleteCookiesCallback;
  PCefRunFileDialogCallback = ^TCefRunFileDialogCallback;
  PCefPdfPrintSettings = ^TCefPdfPrintSettings;
  PCefPdfPrintCallback = ^TCefPdfPrintCallback;
  PCefNavigationEntryVisitor = ^TCefNavigationEntryVisitor;
  PCefNavigationEntry = ^TCefNavigationEntry;
  PCefMouseEvent = ^TCefMouseEvent;
  PCefPrintSettings = ^TCefPrintSettings;
  PCefPrintDialogCallback = ^TCefPrintDialogCallback;
  PCefPrintJobCallback = ^TCefPrintJobCallback;
  PCefUrlParts = ^TCefUrlParts;
  PCefJsonParserError = ^TCefJsonParserError;
  PCefStreamReader = ^TCefStreamReader;
  PCefReadHandler = ^TCefReadHandler;
  PCefWriteHandler = ^TCefWriteHandler;
  PCefV8Accessor = ^TCefV8Accessor;
  PCefXmlReader = ^TCefXmlReader;
  PCefZipReader = ^TCefZipReader;
  PCefUrlRequestClient = ^TCefUrlRequestClient;
  PCefUrlRequest = ^TCefUrlRequest;
  PCefWebPluginInfoVisitor = ^TCefWebPluginInfoVisitor;
  PCefWebPluginUnstableCallback = ^TCefWebPluginUnstableCallback;
  PCefTaskRunner = ^TCefTaskRunner;
  PCefEndTracingCallback = ^TCefEndTracingCallback;
  PCefRequestContextSettings = ^TCefRequestContextSettings;
  PCefResourceBundle = ^TCefResourceBundle;
  PCefGetGeolocationCallback = ^TCefGetGeolocationCallback;
  PCefGeoposition = ^TCefGeoposition;
  PCefGeolocationHandler = ^TCefGeolocationHandler;
  PCefGeolocationCallback = ^TCefGeolocationCallback;
  PCefPageRange = ^TCefPageRange;


  TCefWindowHandle                 = HWND;        // /include/internal/cef_types_win.h (cef_window_handle_t)
  TCefCursorHandle                 = HCURSOR;     // /include/internal/cef_types_win.h (cef_cursor_handle_t)
  TCefEventHandle                  = PMsg;        // /include/internal/cef_types_win.h (cef_event_handle_t)
  TCefTextInputContext             = Pointer;     // /include/internal/cef_types_win.h (cef_text_input_context_t)
  TCefPlatformThreadId             = DWORD;       // /include/internal/cef_thread_internal.h (cef_platform_thread_id_t)
  TCefPlatformThreadHandle         = DWORD;       // /include/internal/cef_thread_internal.h (cef_platform_thread_handle_t)
  TCefTransitionType               = Cardinal;    // /include/internal/cef_types.h (cef_transition_type_t)
  TCefColor                        = Cardinal;    // /include/internal/cef_types.h (cef_color_t)
  TCefErrorCode                    = Integer;     // /include/internal/cef_types.h (cef_errorcode_t)
  TCefCertStatus                   = Integer;     // /include/internal/cef_types.h (cef_cert_status_t)
  TCefSSLVersion                   = integer;     // /include/internal/cef_types.h (cef_ssl_version_t)
  TCefStringList                   = Pointer;     // /include/internal/cef_string_list.h (cef_string_list_t)
  TCefStringMap                    = Pointer;     // /include/internal/cef_string_map.h (cef_string_map_t)
  TCefStringMultimap               = Pointer;     // /include/internal/cef_string_multimap.h (cef_string_multimap_t)
  TCefUriUnescapeRule              = Integer;     // /include/internal/cef_types.h (cef_uri_unescape_rule_t)
  TCefDomEventCategory             = Integer;     // /include/internal/cef_types.h (cef_dom_event_category_t)
  TCefEventFlags                   = Cardinal;    // /include/internal/cef_types.h (cef_event_flags_t)
  TCefDragOperations               = Cardinal;    // /include/internal/cef_types.h (cef_drag_operations_mask_t)
  TCefDragOperation                = Cardinal;    // /include/internal/cef_types.h (cef_drag_operations_mask_t)
  TCefV8AccessControls             = Cardinal;    // /include/internal/cef_types.h (cef_v8_accesscontrol_t)
  TCefV8PropertyAttributes         = Cardinal;    // /include/internal/cef_types.h (cef_v8_propertyattribute_t)
  TCefUrlRequestFlags              = Cardinal;    // /include/internal/cef_types.h (cef_urlrequest_flags_t)
  TCefContextMenuTypeFlags         = Cardinal;    // /include/internal/cef_types.h (cef_context_menu_type_flags_t)
  TCefContextMenuMediaStateFlags   = Cardinal;    // /include/internal/cef_types.h (cef_context_menu_media_state_flags_t)
  TCefContextMenuEditStateFlags    = Cardinal;    // /include/internal/cef_types.h (cef_context_menu_edit_state_flags_t)
  TCefJsonWriterOptions            = Cardinal;    // /include/internal/cef_types.h (cef_json_writer_options_t)
  //TCefSSLContentStatus             = Cardinal;    // /include/internal/cef_types.h (cef_ssl_content_status_t)
  TCefLogSeverity                  = Cardinal;    // /include/internal/cef_types.h (cef_log_severity_t)

{$IFNDEF DELPHI12_UP}
  NativeUInt  = Cardinal;
  PNativeUInt = ^NativeUInt;
  NativeInt   = Integer;
  uint16      = Word;
  ustring     = type WideString;
  rbstring    = type AnsiString;
{$ELSE}
  ustring  = type string;
  rbstring = type RawByteString;
  {$IFNDEF DELPHI15_UP}
  NativeUInt  = Cardinal;
  PNativeUInt = ^NativeUInt;
  {$ENDIF}
{$ENDIF}

  Char16  = WideChar;
  PChar16 = PWideChar;

  // /include/internal/cef_string_types.h (cef_string_wide_t)
  TCefStringWide = record
    str    : PWideChar;
    length : NativeUInt;
    dtor   : procedure(str: PWideChar); stdcall;
  end;

  // /include/internal/cef_string_types.h (cef_string_utf8_t)
  TCefStringUtf8 = record
    str    : PAnsiChar;
    length : NativeUInt;
    dtor   : procedure(str: PAnsiChar); stdcall;
  end;

  // /include/internal/cef_string_types.h (cef_string_utf16_t)
  TCefStringUtf16 = record
    str    : PChar16;
    length : NativeUInt;
    dtor   : procedure(str: PChar16); stdcall;
  end;

  TCefStringUserFreeWide  = type TCefStringWide;
  TCefStringUserFreeUtf8  = type TCefStringUtf8;
  TCefStringUserFreeUtf16 = type TCefStringUtf16;

  TCefChar = Char16;
  PCefChar = PChar16;
  TCefStringUserFree = TCefStringUserFreeUtf16;
  PCefStringUserFree = PCefStringUserFreeUtf16;
  TCefString = TCefStringUtf16;
  PCefString = PCefStringUtf16;

  TFileVersionInfo = record
    MajorVer : uint16;
    MinorVer : uint16;
    Release  : uint16;
    Build    : uint16;
  end;

  TCefProcessType = (ptBrowser, ptRenderer, ptZygote, ptGPU, ptOther);

  TCefAplicationStatus = (asLoading,
                          asLoaded,
                          asInitialized,
                          asShuttingDown,
                          asUnloaded,
                          asErrorMissingFiles,
                          asErrorDLLVersion,
                          asErrorLoadingLibrary,
                          asErrorInitializingLibrary,
                          asErrorExecutingProcess);

  TCefProxyScheme = (psHTTP, psSOCKS4, psSOCKS5);

  TCefWebRTCHandlingPolicy = (
    hpDefault,
    hpDefaultPublicAndPrivateInterfaces,
    hpDefaultPublicInterfaceOnly,
    hpDisableNonProxiedUDP
  );

  TCefContextSafetyImplementation = (csiDefault, csiManyContexts, csiDisabled);

  // /include/internal/cef_types_win.h (cef_main_args_t)
  TCefMainArgs = record
    instance : HINST;
  end;

  // /include/internal/cef_types.h (cef_rect_t)
  TCefRect = record
    x      : Integer;
    y      : Integer;
    width  : Integer;
    height : Integer;
  end;
  TCefRectArray = array[0..(High(Integer) div SizeOf(TCefRect))-1] of TCefRect;

  // /include/internal/cef_types.h (cef_point_t)
  TCefPoint = record
    x  : Integer;
    y  : Integer;
  end;

  // /include/internal/cef_types.h (cef_size_t)
  TCefSize = record
    width  : Integer;
    height : Integer;
  end;

  // /include/internal/cef_types.h (cef_range_t)

  // /include/internal/cef_types.h (cef_page_range_t) {new}
  TCefPageRange = record
    from  : Integer;
    to_   : Integer;
  end;
  TCefPageRangeArray = array of TCefPageRange;

  // /include/internal/cef_types.h (cef_cursor_info_t)
  TCefCursorInfo = record
    hotspot            : TCefPoint;
    image_scale_factor : Single;
    buffer             : Pointer;
    size               : TCefSize;
  end;

  // /include/internal/cef_types.h (cef_urlparts_t)
  TCefUrlParts = record
    spec      : TCefString;
    scheme    : TCefString;
    username  : TCefString;
    password  : TCefString;
    host      : TCefString;
    port      : TCefString;
    origin    : TCefString;
    path      : TCefString;
    query     : TCefString;
  end;

  TUrlParts = record
    spec     : ustring;
    scheme   : ustring;
    username : ustring;
    password : ustring;
    host     : ustring;
    port     : ustring;
    origin   : ustring;
    path     : ustring;
    query    : ustring;
  end;

  // /include/internal/cef_types.h (cef_json_parser_error_t)
  TCefJsonParserError = (
    JSON_NO_ERROR = 0,
    JSON_INVALID_ESCAPE,
    JSON_SYNTAX_ERROR,
    JSON_UNEXPECTED_TOKEN,
    JSON_TRAILING_COMMA,
    JSON_TOO_MUCH_NESTING,
    JSON_UNEXPECTED_DATA_AFTER_ROOT,
    JSON_UNSUPPORTED_ENCODING,
    JSON_UNQUOTED_DICTIONARY_KEY,
    JSON_PARSE_ERROR_COUNT
  );

  // /include/internal/cef_types.h (cef_state_t)
  TCefState = (
    STATE_DEFAULT = 0,
    STATE_ENABLED,
    STATE_DISABLED
  );

  // /include/internal/cef_types.h (cef_scale_factor_t)
  TCefScaleFactor = (
    SCALE_FACTOR_NONE = 0,
    SCALE_FACTOR_100P,
    SCALE_FACTOR_125P,
    SCALE_FACTOR_133P,
    SCALE_FACTOR_140P,
    SCALE_FACTOR_150P,
    SCALE_FACTOR_180P,
    SCALE_FACTOR_200P,
    SCALE_FACTOR_250P,
    SCALE_FACTOR_300P
  );

  // /include/internal/cef_types.h (cef_value_type_t)
  TCefValueType = (
    VTYPE_INVALID = 0,
    VTYPE_NULL,
    VTYPE_BOOL,
    VTYPE_INT,
    VTYPE_DOUBLE,
    VTYPE_STRING,
    VTYPE_BINARY,
    VTYPE_DICTIONARY,
    VTYPE_LIST
  );

  // /include/internal/cef_types.h (cef_referrer_policy_t)
  TCefReferrerPolicy = (
    REFERRER_POLICY_ALWAYS,
    REFERRER_POLICY_DEFAULT,
    REFERRER_POLICY_NO_REFERRER_WHEN_DOWNGRADE,
    REFERRER_POLICY_NEVER,
    REFERRER_POLICY_ORIGIN,
    REFERRER_POLICY_ORIGIN_WHEN_CROSS_ORIGIN
  );

  // /include/internal/cef_types.h (cef_postdataelement_type_t)
  TCefPostDataElementType = (
    PDE_TYPE_EMPTY  = 0,
    PDE_TYPE_BYTES,
    PDE_TYPE_FILE
  );

  // /include/internal/cef_types.h (cef_resource_type_t)
  TCefResourceType = (
    RT_MAIN_FRAME,
    RT_SUB_FRAME,
    RT_STYLESHEET,
    RT_SCRIPT,
    RT_IMAGE,
    RT_FONT_RESOURCE,
    RT_SUB_RESOURCE,
    RT_OBJECT,
    RT_MEDIA,
    RT_WORKER,
    RT_SHARED_WORKER,
    RT_PREFETCH,
    RT_FAVICON,
    RT_XHR,
    RT_PING,
    RT_SERVICE_WORKER,
    RT_CSP_REPORT,
    RT_PLUGIN_RESOURCE
  );

  // /include/internal/cef_types.h (cef_dom_document_type_t)
  TCefDomDocumentType = (
    DOM_DOCUMENT_TYPE_UNKNOWN = 0,
    DOM_DOCUMENT_TYPE_HTML,
    DOM_DOCUMENT_TYPE_XHTML,
    DOM_DOCUMENT_TYPE_PLUGIN
  );

  // /include/internal/cef_types.h (cef_dom_node_type_t)
  TCefDomNodeType = (
    DOM_NODE_TYPE_UNSUPPORTED = 0,
    DOM_NODE_TYPE_ELEMENT,
    DOM_NODE_TYPE_ATTRIBUTE,
    DOM_NODE_TYPE_TEXT,
    DOM_NODE_TYPE_CDATA_SECTION,
    DOM_NODE_TYPE_PROCESSING_INSTRUCTIONS,
    DOM_NODE_TYPE_COMMENT,
    DOM_NODE_TYPE_DOCUMENT,
    DOM_NODE_TYPE_DOCUMENT_TYPE,
    DOM_NODE_TYPE_DOCUMENT_FRAGMENT
  );

  // /include/internal/cef_types.h (cef_context_menu_media_type_t)
  TCefContextMenuMediaType = (
    CM_MEDIATYPE_NONE,
    CM_MEDIATYPE_IMAGE,
    CM_MEDIATYPE_VIDEO,
    CM_MEDIATYPE_AUDIO,
    CM_MEDIATYPE_FILE,
    CM_MEDIATYPE_PLUGIN
  );

  // /include/internal/cef_types.h (cef_menu_item_type_t)
  TCefMenuItemType = (
    MENUITEMTYPE_NONE,
    MENUITEMTYPE_COMMAND,
    MENUITEMTYPE_CHECK,
    MENUITEMTYPE_RADIO,
    MENUITEMTYPE_SEPARATOR,
    MENUITEMTYPE_SUBMENU
  );

  // /include/internal/cef_types.h (cef_file_dialog_mode_t)
  TCefFileDialogMode = (
    FILE_DIALOG_OPEN,
    FILE_DIALOG_OPEN_MULTIPLE,
    FILE_DIALOG_OPEN_FOLDER,
    FILE_DIALOG_SAVE,
    FILE_DIALOG_TYPE_MASK = $FF,
    FILE_DIALOG_OVERWRITEPROMPT_FLAG = $01000000,
    FILE_DIALOG_HIDEREADONLY_FLAG = $02000000
  );

  // /include/internal/cef_types.h (cef_focus_source_t)
  TCefFocusSource = (
    FOCUS_SOURCE_NAVIGATION = 0,
    FOCUS_SOURCE_SYSTEM
  );

  // /include/internal/cef_types.h (cef_jsdialog_type_t)
  TCefJsDialogType = (
    JSDIALOGTYPE_ALERT = 0,
    JSDIALOGTYPE_CONFIRM,
    JSDIALOGTYPE_PROMPT
  );

  // /include/internal/cef_types.h (cef_key_event_type_t)
  TCefKeyEventType = (
    KEYEVENT_RAWKEYDOWN = 0,
    KEYEVENT_KEYDOWN,
    KEYEVENT_KEYUP,
    KEYEVENT_CHAR
  );

  // /include/internal/cef_types.h (cef_window_open_disposition_t)
  TCefWindowOpenDisposition = (
    WOD_UNKNOWN,
    WOD_SUPPRESS_OPEN, {new}
    WOD_CURRENT_TAB,
    WOD_SINGLETON_TAB,
    WOD_NEW_FOREGROUND_TAB,
    WOD_NEW_BACKGROUND_TAB,
    WOD_NEW_POPUP,
    WOD_NEW_WINDOW,
    WOD_SAVE_TO_DISK,
    WOD_OFF_THE_RECORD,
    WOD_IGNORE_ACTION
  );

  // /include/internal/cef_types.h (cef_paint_element_type_t)
  TCefPaintElementType = (
    PET_VIEW,
    PET_POPUP
  );

  // /include/internal/cef_types.h (cef_cursor_type_t)
  TCefCursorType = (
    CT_POINTER = 0,
    CT_CROSS,
    CT_HAND,
    CT_IBEAM,
    CT_WAIT,
    CT_HELP,
    CT_EASTRESIZE,
    CT_NORTHRESIZE,
    CT_NORTHEASTRESIZE,
    CT_NORTHWESTRESIZE,
    CT_SOUTHRESIZE,
    CT_SOUTHEASTRESIZE,
    CT_SOUTHWESTRESIZE,
    CT_WESTRESIZE,
    CT_NORTHSOUTHRESIZE,
    CT_EASTWESTRESIZE,
    CT_NORTHEASTSOUTHWESTRESIZE,
    CT_NORTHWESTSOUTHEASTRESIZE,
    CT_COLUMNRESIZE,
    CT_ROWRESIZE,
    CT_MIDDLEPANNING,
    CT_EASTPANNING,
    CT_NORTHPANNING,
    CT_NORTHEASTPANNING,
    CT_NORTHWESTPANNING,
    CT_SOUTHPANNING,
    CT_SOUTHEASTPANNING,
    CT_SOUTHWESTPANNING,
    CT_WESTPANNING,
    CT_MOVE,
    CT_VERTICALTEXT,
    CT_CELL,
    CT_CONTEXTMENU,
    CT_ALIAS,
    CT_PROGRESS,
    CT_NODROP,
    CT_COPY,
    CT_NONE,
    CT_NOTALLOWED,
    CT_ZOOMIN,
    CT_ZOOMOUT,
    CT_GRAB,
    CT_GRABBING,
    CT_CUSTOM
  );

  // /include/internal/cef_types.h (cef_navigation_type_t)
  TCefNavigationType = (
    NAVIGATION_LINK_CLICKED,
    NAVIGATION_FORM_SUBMITTED,
    NAVIGATION_BACK_FORWARD,
    NAVIGATION_RELOAD,
    NAVIGATION_FORM_RESUBMITTED,
    NAVIGATION_OTHER
  );

  // /include/internal/cef_types.h (cef_process_id_t)
  TCefProcessId = (
    PID_BROWSER,
    PID_RENDERER
  );

  // /include/internal/cef_types.h (cef_thread_id_t)
  TCefThreadId = (
    TID_UI,
    TID_DB,
    TID_FILE,
    TID_FILE_USER_BLOCKING,
    TID_PROCESS_LAUNCHER,
    TID_CACHE,
    TID_IO,
    TID_RENDERER
  );

  // /include/internal/cef_types.h (cef_mouse_button_type_t)
  TCefMouseButtonType = (
    MBT_LEFT,
    MBT_MIDDLE,
    MBT_RIGHT
  );

  // /include/internal/cef_types.h (cef_return_value_t)
  TCefReturnValue = (
    RV_CANCEL = 0,
    RV_CONTINUE,
    RV_CONTINUE_ASYNC
  );

  // /include/internal/cef_types.h (cef_urlrequest_status_t)
  TCefUrlRequestStatus = (
    UR_UNKNOWN = 0,
    UR_SUCCESS,
    UR_IO_PENDING,
    UR_CANCELED,
    UR_FAILED
  );

  // /include/internal/cef_types.h (cef_termination_status_t)
  TCefTerminationStatus = (
    TS_ABNORMAL_TERMINATION,
    TS_PROCESS_WAS_KILLED,
    TS_PROCESS_CRASHED
  );

  // /include/internal/cef_types.h (cef_path_key_t)
  TCefPathKey = (
    PK_DIR_CURRENT,
    PK_DIR_EXE,
    PK_DIR_MODULE,
    PK_DIR_TEMP,
    PK_FILE_EXE,
    PK_FILE_MODULE,
    PK_LOCAL_APP_DATA,
    PK_USER_DATA
  );

  // /include/internal/cef_types.h (cef_storage_type_t)
  TCefStorageType = (
    ST_LOCALSTORAGE = 0,
    ST_SESSIONSTORAGE
  );

  // /include/internal/cef_types.h (cef_response_filter_status_t)
  TCefResponseFilterStatus = (
    RESPONSE_FILTER_NEED_MORE_DATA,
    RESPONSE_FILTER_DONE,
    RESPONSE_FILTER_ERROR
  );

  // /include/internal/cef_types.h (cef_plugin_policy_t)
  TCefPluginPolicy = (
    PLUGIN_POLICY_ALLOW,
    PLUGIN_POLICY_DETECT_IMPORTANT,
    PLUGIN_POLICY_BLOCK,
    PLUGIN_POLICY_DISABLE
  );

  // /include/internal/cef_types.h (cef_pdf_print_margin_type_t)
  TCefPdfPrintMarginType = (
    PDF_PRINT_MARGIN_DEFAULT,
    PDF_PRINT_MARGIN_NONE,
    PDF_PRINT_MARGIN_MINIMUM,
    PDF_PRINT_MARGIN_CUSTOM
  );

  // /include/internal/cef_types.h (cef_color_model_t)
  TCefColorModel = (
    COLOR_MODEL_UNKNOWN,
    COLOR_MODEL_GRAY,
    COLOR_MODEL_COLOR,
    COLOR_MODEL_CMYK,
    COLOR_MODEL_CMY,
    COLOR_MODEL_KCMY,
    COLOR_MODEL_CMY_K,
    COLOR_MODEL_BLACK,
    COLOR_MODEL_GRAYSCALE,
    COLOR_MODEL_RGB,
    COLOR_MODEL_RGB16,
    COLOR_MODEL_RGBA,
    COLOR_MODEL_COLORMODE_COLOR,
    COLOR_MODEL_COLORMODE_MONOCHROME,
    COLOR_MODEL_HP_COLOR_COLOR,
    COLOR_MODEL_HP_COLOR_BLACK,
    COLOR_MODEL_PRINTOUTMODE_NORMAL,
    COLOR_MODEL_PRINTOUTMODE_NORMAL_GRAY,
    COLOR_MODEL_PROCESSCOLORMODEL_CMYK,
    COLOR_MODEL_PROCESSCOLORMODEL_GREYSCALE,
    COLOR_MODEL_PROCESSCOLORMODEL_RGB
  );

  // /include/internal/cef_types.h (cef_duplex_mode_t)
  TCefDuplexMode = (
    DUPLEX_MODE_UNKNOWN = -1,
    DUPLEX_MODE_SIMPLEX,
    DUPLEX_MODE_LONG_EDGE,
    DUPLEX_MODE_SHORT_EDGE
  );

  // /include/internal/cef_types.h (cef_json_parser_options_t)
  TCefJsonParserOptions = (
    JSON_PARSER_RFC = 0,
    JSON_PARSER_ALLOW_TRAILING_COMMAS = 1 shl 0
  );

  // /include/internal/cef_types.h (cef_xml_encoding_type_t)
  TCefXmlEncodingType = (
    XML_ENCODING_NONE = 0,
    XML_ENCODING_UTF8,
    XML_ENCODING_UTF16LE,
    XML_ENCODING_UTF16BE,
    XML_ENCODING_ASCII
  );

  // /include/internal/cef_types.h (cef_xml_node_type_t)
  TCefXmlNodeType = (
    XML_NODE_UNSUPPORTED = 0,
    XML_NODE_PROCESSING_INSTRUCTION,
    XML_NODE_DOCUMENT_TYPE,
    XML_NODE_ELEMENT_START,
    XML_NODE_ELEMENT_END,
    XML_NODE_ATTRIBUTE,
    XML_NODE_TEXT,
    XML_NODE_CDATA,
    XML_NODE_ENTITY_REFERENCE,
    XML_NODE_WHITESPACE,
    XML_NODE_COMMENT
  );

  // /include/internal/cef_types.h (cef_dom_event_phase_t)
  TCefDomEventPhase = (
    DOM_EVENT_PHASE_UNKNOWN = 0,
    DOM_EVENT_PHASE_CAPTURING,
    DOM_EVENT_PHASE_AT_TARGET,
    DOM_EVENT_PHASE_BUBBLING
  );

  // /include/internal/cef_types.h (cef_geoposition_error_code_t)
  TCefGeopositionErrorCode = (
    GEOPOSITON_ERROR_NONE,
    GEOPOSITON_ERROR_PERMISSION_DENIED,
    GEOPOSITON_ERROR_POSITION_UNAVAILABLE,
    GEOPOSITON_ERROR_TIMEOUT
  );

  // /include/internal/cef_time.h (cef_time_t)
  TCefTime = record
    year         : Integer;
    month        : Integer;
    day_of_week  : Integer;
    day_of_month : Integer;
    hour         : Integer;
    minute       : Integer;
    second       : Integer;
    millisecond  : Integer;
  end;

  // /include/internal/cef_types.h (cef_settings_t)
  TCefSettings = record
    size                           : NativeUInt;
    single_process                 : Integer;
    no_sandbox                     : Integer;
    browser_subprocess_path        : TCefString;
    framework_dir_path             : TCefString;
    multi_threaded_message_loop    : Integer;
    windowless_rendering_enabled   : Integer;
    command_line_args_disabled     : Integer;
    cache_path                     : TCefString;
    user_data_path                 : TCefString;
    persist_session_cookies        : Integer;
    persist_user_preferences       : Integer;
    user_agent                     : TCefString;
    product_version                : TCefString;
    locale                         : TCefString;
    log_file                       : TCefString;
    log_severity                   : TCefLogSeverity;
    javascript_flags               : TCefString;
    resources_dir_path             : TCefString;
    locales_dir_path               : TCefString;
    pack_loading_disabled          : Integer;
    remote_debugging_port          : Integer;
    uncaught_exception_stack_size  : Integer;
    context_safety_implementation  : Integer;
    ignore_certificate_errors      : Integer;
    background_color               : TCefColor;
    accept_language_list           : TCefString;
  end;

  // /include/internal/cef_types_win.h (cef_window_info_t)
  TCefWindowInfo = record
    ex_style                      : DWORD;
    window_name                   : TCefString;
    style                         : DWORD;
    x                             : Integer;
    y                             : Integer;
    width                         : Integer;
    height                        : Integer;
    parent_window                 : TCefWindowHandle;
    menu                          : HMENU;
    windowless_rendering_enabled  : Integer;
    transparent_painting_enabled  : Integer;
    window                        : TCefWindowHandle;
  end;

  // /include/internal/cef_types.h (cef_draggable_region_t)
  TCefDraggableRegion = record
    bounds    : TCefRect;
    draggable : Integer;
  end;

  TCefDraggableRegionArray = array[0..(High(Integer) div SizeOf(TCefDraggableRegion))-1]  of TCefDraggableRegion;

  // /include/internal/cef_types.h (cef_key_event_t)
  TCefKeyEvent = record
    kind                    : TCefKeyEventType;  // called 'type' in the original CEF3 source code
    modifiers               : TCefEventFlags;
    windows_key_code        : Integer;
    native_key_code         : Integer;
    is_system_key           : Integer;
    character               : WideChar;
    unmodified_character    : WideChar;
    focus_on_editable_field : Integer;
  end;

  // /include/internal/cef_types.h (cef_popup_features_t)
  TCefPopupFeatures = record
    x                  : Integer;
    xSet               : Integer;
    y                  : Integer;
    ySet               : Integer;
    width              : Integer;
    widthSet           : Integer;
    height             : Integer;
    heightSet          : Integer;
    menuBarVisible     : Integer;
    statusBarVisible   : Integer;
    toolBarVisible     : Integer;
    locationBarVisible : Integer;
    scrollbarsVisible  : Integer;
    resizable          : Integer;
    fullscreen         : Integer;
    dialog             : Integer;
    additionalFeatures : TCefStringList;
  end;

  // /include/internal/cef_types.h (cef_browser_settings_t)
  TCefBrowserSettings = record
    size                            : NativeUInt;
    windowless_frame_rate           : Integer;
    standard_font_family            : TCefString;
    fixed_font_family               : TCefString;
    serif_font_family               : TCefString;
    sans_serif_font_family          : TCefString;
    cursive_font_family             : TCefString;
    fantasy_font_family             : TCefString;
    default_font_size               : Integer;
    default_fixed_font_size         : Integer;
    minimum_font_size               : Integer;
    minimum_logical_font_size       : Integer;
    default_encoding                : TCefString;
    remote_fonts                    : TCefState;
    javascript                      : TCefState;
    javascript_open_windows         : TCefState;
    javascript_close_windows        : TCefState;
    javascript_access_clipboard     : TCefState;
    javascript_dom_paste            : TCefState;
    caret_browsing                  : TCefState;
    plugins                         : TCefState;
    universal_access_from_file_urls : TCefState;
    file_access_from_file_urls      : TCefState;
    web_security                    : TCefState;
    image_loading                   : TCefState;
    image_shrink_standalone_to_fit  : TCefState;
    text_area_resize                : TCefState;
    tab_to_links                    : TCefState;
    local_storage                   : TCefState;
    databases                       : TCefState;
    application_cache               : TCefState;
    webgl                           : TCefState;
    background_color                : TCefColor;
    accept_language_list            : TCefString;
  end;

  // /include/internal/cef_types.h (cef_screen_info_t)
  TCefScreenInfo = record
    device_scale_factor : Single;
    depth               : Integer;
    depth_per_component : Integer;
    is_monochrome       : Integer;
    rect                : TCefRect;
    available_rect      : TCefRect;
  end;

  // /include/internal/cef_types.h (cef_request_context_settings_t)
  TCefRequestContextSettings = record
    size                           : NativeUInt;
    cache_path                     : TCefString;
    persist_session_cookies        : Integer;
    persist_user_preferences       : Integer;
    ignore_certificate_errors      : Integer;
    accept_language_list           : TCefString;
  end;

  // /include/internal/cef_types.h (cef_cookie_t)
  TCefCookie = record
    name        : TCefString;
    value       : TCefString;
    domain      : TCefString;
    path        : TCefString;
    secure      : Integer;
    httponly    : Integer;
    creation    : TCefTime;
    last_access : TCefTime;
    has_expires : Integer;
    expires     : TCefTime;
  end;

  TCookie = record
    name        : ustring;
    value       : ustring;
    domain      : ustring;
    path        : ustring;
    creation    : TDateTime;
    last_access : TDateTime;
    expires     : TDateTime;
    secure      : boolean;
    httponly    : boolean;
    has_expires : boolean;
  end;

  // /include/internal/cef_types.h (cef_pdf_print_settings_t)
  TCefPdfPrintSettings = record
    header_footer_title   : TCefString;
    header_footer_url     : TCefString;
    page_width            : Integer;
    page_height           : Integer;
    margin_top            : double;
    margin_right          : double;
    margin_bottom         : double;
    margin_left           : double;
    margin_type           : TCefPdfPrintMarginType;
    header_footer_enabled : Integer;
    selection_only        : Integer;
    landscape             : Integer;
    backgrounds_enabled   : Integer;
  end;

  // /include/internal/cef_types.h (cef_mouse_event_t)
  TCefMouseEvent = record
    x         : Integer;
    y         : Integer;
    modifiers : TCefEventFlags;
  end;

  // /include/internal/cef_types.h (cef_geoposition_t)
  TCefGeoposition = record
    latitude          : Double;
    longitude         : Double;
    altitude          : Double;
    accuracy          : Double;
    altitude_accuracy : Double;
    heading           : Double;
    speed             : Double;
    timestamp         : TCefTime;
    error_code        : TCefGeopositionErrorCode;
    error_message     : TCefString;
  end;

  // /include/capi/cef_base_capi.h (cef_base_t)
  TCefBase = record
    size        : NativeUInt;
    add_ref     : procedure(self: PCefBase); stdcall;
    release     : function(self: PCefBase): Integer; stdcall;
    has_one_ref : function(self: PCefBase): Integer; stdcall;
  end;

  // /include/capi/cef_stream_capi.h (cef_stream_writer_t)
  TCefStreamWriter = record
    base      : TCefBase;
    write     : function(self: PCefStreamWriter; const ptr: Pointer; size, n: NativeUInt): NativeUInt; stdcall;
    seek      : function(self: PCefStreamWriter; offset: Int64; whence: Integer): Integer; stdcall;
    tell      : function(self: PCefStreamWriter): Int64; stdcall;
    flush     : function(self: PCefStreamWriter): Integer; stdcall;
    may_block : function(self: PCefStreamWriter): Integer; stdcall;
  end;

  // /include/capi/cef_geolocation_capi.h (cef_get_geolocation_callback_t)
  TCefGetGeolocationCallback = record
    base: TCefBase;
    on_location_update: procedure(self: PCefGetGeolocationCallback; const position: Pcefgeoposition); stdcall;
  end;

  // /include/capi/cef_geolocation_handler_capi.h (cef_geolocation_handler_t)
  TCefGeolocationHandler = record
    base: TCefBase;
    on_request_geolocation_permission: function(self: PCefGeolocationHandler; browser: PCefBrowser; const requesting_url: PCefString; request_id: Integer; callback: PCefGeolocationCallback): Integer; stdcall;
    on_cancel_geolocation_permission: procedure(self: PCefGeolocationHandler; browser: PCefBrowser; request_id: Integer); stdcall;
  end;

  // /include/capi/cef_geolocation_handler_capi.h (cef_geolocation_callback_t)
  TCefGeolocationCallback = record
    base: TCefBase;
    cont: procedure(self: PCefGeolocationCallback; allow: Integer); stdcall;
  end;

  // /include/capi/cef_ssl_info_capi.h (cef_sslcert_principal_t)
  TCefSslCertPrincipal = record
    base                        : TCefBase;
    get_display_name            : function(self: PCefSslCertPrincipal): PCefStringUserfree; stdcall;
    get_common_name             : function(self: PCefSslCertPrincipal): PCefStringUserfree; stdcall;
    get_locality_name           : function(self: PCefSslCertPrincipal): PCefStringUserfree; stdcall;
    get_state_or_province_name  : function(self: PCefSslCertPrincipal): PCefStringUserfree; stdcall;
    get_country_name            : function(self: PCefSslCertPrincipal): PCefStringUserfree; stdcall;
    get_street_addresses        : procedure(self: PCefSslCertPrincipal; addresses: TCefStringList); stdcall;
    get_organization_names      : procedure(self: PCefSslCertPrincipal; names: TCefStringList); stdcall;
    get_organization_unit_names : procedure(self: PCefSslCertPrincipal; names: TCefStringList); stdcall;
    get_domain_components       : procedure(self: PCefSslCertPrincipal; components: TCefStringList); stdcall;
  end;

  // /include/capi/cef_ssl_info_capi.h (cef_sslinfo_t)
  TCefSslInfo = record
    base                        : TCefBase;
    get_cert_status             : function(self: PCefSslInfo): TCefCertStatus; stdcall;
    is_cert_status_error        : function(self: PCefSslInfo): Integer; stdcall;
    is_cert_status_minor_error  : function(self: PCefSslInfo): Integer; stdcall;
    get_subject                 : function(self: PCefSslInfo): PCefSslCertPrincipal; stdcall;
    get_issuer                  : function(self: PCefSslInfo): PCefSslCertPrincipal; stdcall;
    get_serial_number           : function(self: PCefSslInfo): PCefBinaryValue; stdcall;
    get_valid_start             : function(self: PCefSslInfo): TCefTime; stdcall;
    get_valid_expiry            : function(self: PCefSslInfo): TCefTime; stdcall;
    get_derencoded              : function(self: PCefSslInfo): PCefBinaryValue; stdcall;
    get_pemencoded              : function(self: PCefSslInfo): PCefBinaryValue; stdcall;
    get_issuer_chain_size       : function(self: PCefSslInfo): NativeUInt; stdcall;
    get_derencoded_issuer_chain : procedure(self: PCefSslInfo; var chainCount: NativeUInt; var chain: PCefBinaryValue); stdcall;
    get_pemencoded_issuer_chain : procedure(self: PCefSslInfo; var chainCount: NativeUInt; var chain: PCefBinaryValue); stdcall;
  end;

  // /include/capi/cef_context_menu_handler_capi.h (cef_run_context_menu_callback_t)
  TCefRunContextMenuCallback = record
    base   : TCefBase;
    cont   : procedure(self: PCefRunContextMenuCallback; command_id: Integer; event_flags: TCefEventFlags); stdcall;
    cancel : procedure(self: PCefRunContextMenuCallback); stdcall;
  end;

  // /include/capi/cef_dialog_handler_capi.h (cef_file_dialog_callback_t)
  TCefFileDialogCallback = record
    base   : TCefBase;
    cont   : procedure(self: PCefFileDialogCallback; selected_accept_filter: Integer; file_paths: TCefStringList); stdcall;
    cancel : procedure(self: PCefFileDialogCallback); stdcall;
  end;

  // /include/capi/cef_dialog_handler_capi.h (cef_dialog_handler_t)
  TCefDialogHandler = record
    base           : TCefBase;
    on_file_dialog : function(self: PCefDialogHandler; browser: PCefBrowser; mode: TCefFileDialogMode; const title, default_file_path: PCefString; accept_filters: TCefStringList; selected_accept_filter: Integer; callback: PCefFileDialogCallback): Integer; stdcall;
  end;

  // /include/capi/cef_display_handler_capi.h (cef_display_handler_t)
  TCefDisplayHandler = record
    base                      : TCefBase;
    on_address_change         : procedure(self: PCefDisplayHandler; browser: PCefBrowser; frame: PCefFrame; const url: PCefString); stdcall;
    on_title_change           : procedure(self: PCefDisplayHandler; browser: PCefBrowser; const title: PCefString); stdcall;
    on_favicon_urlchange      : procedure(self: PCefDisplayHandler; browser: PCefBrowser; icon_urls: TCefStringList); stdcall;
    on_fullscreen_mode_change : procedure(self: PCefDisplayHandler; browser: PCefBrowser; fullscreen: Integer); stdcall;
    on_tooltip                : function(self: PCefDisplayHandler; browser: PCefBrowser; text: PCefString): Integer; stdcall;
    on_status_message         : procedure(self: PCefDisplayHandler; browser: PCefBrowser; const value: PCefString); stdcall;
    on_console_message        : function(self: PCefDisplayHandler; browser: PCefBrowser; const message_, source: PCefString; line: Integer): Integer; stdcall;
  end;

  // /include/capi/cef_download_handler_capi.h (cef_download_handler_t)
  TCefDownloadHandler = record
    base                : TCefBase;
    on_before_download  : procedure(self: PCefDownloadHandler; browser: PCefBrowser; download_item: PCefDownloadItem; const suggested_name: PCefString; callback: PCefBeforeDownloadCallback); stdcall;
    on_download_updated : procedure(self: PCefDownloadHandler; browser: PCefBrowser; download_item: PCefDownloadItem; callback: PCefDownloadItemCallback); stdcall;
  end;

  // /include/capi/cef_drag_handler_capi.h (cef_drag_handler_t)
  TCefDragHandler = record
    base                         : TCefBase;
    on_drag_enter                : function(self: PCefDragHandler; browser: PCefBrowser; dragData: PCefDragData; mask: TCefDragOperations): Integer; stdcall;
    on_draggable_regions_changed : procedure(self: PCefDragHandler; browser: PCefBrowser; regionsCount: NativeUInt; regions: PCefDraggableRegionArray); stdcall;
  end;

  // /include/capi/cef_find_handler_capi.h (cef_find_handler_t)
  TCefFindHandler = record
    base           : TCefBase;
    on_find_result : procedure(self: PCefFindHandler; browser: PCefBrowser; identifier, count: Integer; const selection_rect: PCefRect; active_match_ordinal, final_update: Integer); stdcall;
  end;

  // /include/capi/cef_focus_handler_capi.h (cef_focus_handler_t)
  TCefFocusHandler = record
    base          : TCefBase;
    on_take_focus : procedure(self: PCefFocusHandler; browser: PCefBrowser; next: Integer); stdcall;
    on_set_focus  : function(self: PCefFocusHandler; browser: PCefBrowser; source: TCefFocusSource): Integer; stdcall;
    on_got_focus  : procedure(self: PCefFocusHandler; browser: PCefBrowser); stdcall;
  end;

  // /include/capi/cef_jsdialog_handler_capi.h (cef_jsdialog_handler_t)
  TCefJsDialogHandler = record
    base                    : TCefBase;
    on_jsdialog             : function(self: PCefJsDialogHandler; browser: PCefBrowser; const origin_url, accept_lang: PCefString; dialog_type: TCefJsDialogType; const message_text, default_prompt_text: PCefString; callback: PCefJsDialogCallback; suppress_message: PInteger): Integer; stdcall;
    on_before_unload_dialog : function(self: PCefJsDialogHandler; browser: PCefBrowser; const message_text: PCefString; is_reload: Integer; callback: PCefJsDialogCallback): Integer; stdcall;
    on_reset_dialog_state   : procedure(self: PCefJsDialogHandler; browser: PCefBrowser); stdcall;
    on_dialog_closed        : procedure(self: PCefJsDialogHandler; browser: PCefBrowser); stdcall;
  end;

  // /include/capi/cef_jsdialog_handler_capi.h (cef_jsdialog_callback_t)
  TCefJsDialogCallback = record
    base : TCefBase;
    cont : procedure(self: PCefJsDialogCallback; success: Integer; const user_input: PCefString); stdcall;
  end;

  // /include/capi/cef_keyboard_handler_capi.h (cef_keyboard_handler_t)
  TCefKeyboardHandler = record
    base             : TCefBase;
    on_pre_key_event : function(self: PCefKeyboardHandler; browser: PCefBrowser; const event: PCefKeyEvent; os_event: TCefEventHandle; is_keyboard_shortcut: PInteger): Integer; stdcall;
    on_key_event     : function(self: PCefKeyboardHandler; browser: PCefBrowser; const event: PCefKeyEvent; os_event: TCefEventHandle): Integer; stdcall;
  end;

  // /include/capi/cef_life_span_handler_capi.h (cef_life_span_handler_t)
  TCefLifeSpanHandler = record
    base              : TCefBase;
    on_before_popup   : function(self: PCefLifeSpanHandler; browser: PCefBrowser; frame: PCefFrame; const target_url, target_frame_name: PCefString; target_disposition: TCefWindowOpenDisposition; user_gesture: Integer; const popupFeatures: PCefPopupFeatures; windowInfo: PCefWindowInfo; var client: PCefClient; settings: PCefBrowserSettings; no_javascript_access: PInteger): Integer; stdcall;
    on_after_created  : procedure(self: PCefLifeSpanHandler; browser: PCefBrowser); stdcall;
    {new} run_modal         : function(self: PCefLifeSpanHandler; browser: PCefBrowser): Integer; stdcall;
    do_close          : function(self: PCefLifeSpanHandler; browser: PCefBrowser): Integer; stdcall;
    on_before_close   : procedure(self: PCefLifeSpanHandler; browser: PCefBrowser); stdcall;
  end;

  // /include/capi/cef_load_handler_capi.h (cef_load_handler_t)
  TCefLoadHandler = record
    base                    : TCefBase;
    on_loading_state_change : procedure(self: PCefLoadHandler; browser: PCefBrowser; isLoading, canGoBack, canGoForward: Integer); stdcall;
    on_load_start           : procedure(self: PCefLoadHandler; browser: PCefBrowser; frame: PCefFrame); stdcall;
    on_load_end             : procedure(self: PCefLoadHandler; browser: PCefBrowser; frame: PCefFrame; httpStatusCode: Integer); stdcall;
    on_load_error           : procedure(self: PCefLoadHandler; browser: PCefBrowser; frame: PCefFrame; errorCode: TCefErrorCode; const errorText, failedUrl: PCefString); stdcall;
  end;

  // /include/capi/cef_render_handler_capi.h (cef_render_handler_t)
  TCefRenderHandler = record
    base                              : TCefBase;
    get_root_screen_rect              : function(self: PCefRenderHandler; browser: PCefBrowser; rect: PCefRect): Integer; stdcall;
    get_view_rect                     : function(self: PCefRenderHandler; browser: PCefBrowser; rect: PCefRect): Integer; stdcall;
    get_screen_point                  : function(self: PCefRenderHandler; browser: PCefBrowser; viewX, viewY: Integer; screenX, screenY: PInteger): Integer; stdcall;
    get_screen_info                   : function(self: PCefRenderHandler; browser: PCefBrowser; screen_info: PCefScreenInfo): Integer; stdcall;
    on_popup_show                     : procedure(self: PCefRenderHandler; browser: PCefBrowser; show: Integer); stdcall;
    on_popup_size                     : procedure(self: PCefRenderHandler; browser: PCefBrowser; const rect: PCefRect); stdcall;
    on_paint                          : procedure(self: PCefRenderHandler; browser: PCefBrowser; kind: TCefPaintElementType; dirtyRectsCount: NativeUInt; const dirtyRects: PCefRectArray; const buffer: Pointer; width, height: Integer); stdcall;
    on_cursor_change                  : procedure(self: PCefRenderHandler; browser: PCefBrowser; cursor: TCefCursorHandle; type_: TCefCursorType; const custom_cursor_info: PCefCursorInfo); stdcall;
    start_dragging                    : function(self: PCefRenderHandler; browser: PCefBrowser; drag_data: PCefDragData; allowed_ops: TCefDragOperations; x, y: Integer): Integer; stdcall;
    update_drag_cursor                : procedure(self: PCefRenderHandler; browser: PCefBrowser; operation: TCefDragOperation); stdcall;
    on_scroll_offset_changed          : procedure(self: PCefRenderHandler; browser: PCefBrowser; x, y: Double); stdcall;
  end;

  // /include/capi/cef_v8_capi.h (cef_v8stack_trace_t)
  TCefV8StackTrace = record
    base            : TCefBase;
    is_valid        : function(self: PCefV8StackTrace): Integer; stdcall;
    get_frame_count : function(self: PCefV8StackTrace): Integer; stdcall;
    get_frame       : function(self: PCefV8StackTrace; index: Integer): PCefV8StackFrame; stdcall;
  end;

  // /include/capi/cef_v8_capi.h (cef_v8stack_frame_t)
  TCefV8StackFrame = record
    base                          : TCefBase;
    is_valid                      : function(self: PCefV8StackFrame): Integer; stdcall;
    get_script_name               : function(self: PCefV8StackFrame): PCefStringUserFree; stdcall;
    get_script_name_or_source_url : function(self: PCefV8StackFrame): PCefStringUserFree; stdcall;
    get_function_name             : function(self: PCefV8StackFrame): PCefStringUserFree; stdcall;
    get_line_number               : function(self: PCefV8StackFrame): Integer; stdcall;
    get_column                    : function(self: PCefV8StackFrame): Integer; stdcall;
    is_eval                       : function(self: PCefV8StackFrame): Integer; stdcall;
    is_constructor                : function(self: PCefV8StackFrame): Integer; stdcall;
  end;

  // TCefStreamReader is used with ICefStreamReader and ICefCustomStreamReader !!!!
  // /include/capi/cef_stream_capi.h (cef_stream_reader_t)
  TCefStreamReader = record
    base      : TCefBase;
    read      : function(self: PCefStreamReader; ptr: Pointer; size, n: NativeUInt): NativeUInt; stdcall;
    seek      : function(self: PCefStreamReader; offset: Int64; whence: Integer): Integer; stdcall;
    tell      : function(self: PCefStreamReader): Int64; stdcall;
    eof       : function(self: PCefStreamReader): Integer; stdcall;
    may_block : function(self: PCefStreamReader): Integer; stdcall;
  end;

  // /include/capi/cef_stream_capi.h (cef_read_handler_t)
  TCefReadHandler = record
    base      : TCefBase;
    read      : function(self: PCefReadHandler; ptr: Pointer; size, n: NativeUInt): NativeUInt; stdcall;
    seek      : function(self: PCefReadHandler; offset: Int64; whence: Integer): Integer; stdcall;
    tell      : function(self: PCefReadHandler): Int64; stdcall;
    eof       : function(self: PCefReadHandler): Integer; stdcall;
    may_block : function(self: PCefReadHandler): Integer; stdcall;
  end;

  // /include/capi/cef_stream_capi.h (cef_write_handler_t)
  TCefWriteHandler = record
    base      : TCefBase;
    write     : function(self: PCefWriteHandler; const ptr: Pointer; size, n: NativeUInt): NativeUInt; stdcall;
    seek      : function(self: PCefWriteHandler; offset: Int64; whence: Integer): Integer; stdcall;
    tell      : function(self: PCefWriteHandler): Int64; stdcall;
    flush     : function(self: PCefWriteHandler): Integer; stdcall;
    may_block : function(self: PCefWriteHandler): Integer; stdcall;
  end;

  // /include/capi/cef_xml_reader_capi.h (cef_xml_reader_t)
  TCefXmlReader = record
    base                      : TCefBase;
    move_to_next_node         : function(self: PCefXmlReader): Integer; stdcall;
    close                     : function(self: PCefXmlReader): Integer; stdcall;
    has_error                 : function(self: PCefXmlReader): Integer; stdcall;
    get_error                 : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    get_type                  : function(self: PCefXmlReader): TCefXmlNodeType; stdcall;
    get_depth                 : function(self: PCefXmlReader): Integer; stdcall;
    get_local_name            : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    get_prefix                : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    get_qualified_name        : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    get_namespace_uri         : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    get_base_uri              : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    get_xml_lang              : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    is_empty_element          : function(self: PCefXmlReader): Integer; stdcall;
    has_value                 : function(self: PCefXmlReader): Integer; stdcall;
    get_value                 : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    has_attributes            : function(self: PCefXmlReader): Integer; stdcall;
    get_attribute_count       : function(self: PCefXmlReader): NativeUInt; stdcall;
    get_attribute_byindex     : function(self: PCefXmlReader; index: Integer): PCefStringUserFree; stdcall;
    get_attribute_byqname     : function(self: PCefXmlReader; const qualifiedName: PCefString): PCefStringUserFree; stdcall;
    get_attribute_bylname     : function(self: PCefXmlReader; const localName, namespaceURI: PCefString): PCefStringUserFree; stdcall;
    get_inner_xml             : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    get_outer_xml             : function(self: PCefXmlReader): PCefStringUserFree; stdcall;
    get_line_number           : function(self: PCefXmlReader): Integer; stdcall;
    move_to_attribute_byindex : function(self: PCefXmlReader; index: Integer): Integer; stdcall;
    move_to_attribute_byqname : function(self: PCefXmlReader; const qualifiedName: PCefString): Integer; stdcall;
    move_to_attribute_bylname : function(self: PCefXmlReader; const localName, namespaceURI: PCefString): Integer; stdcall;
    move_to_first_attribute   : function(self: PCefXmlReader): Integer; stdcall;
    move_to_next_attribute    : function(self: PCefXmlReader): Integer; stdcall;
    move_to_carrying_element  : function(self: PCefXmlReader): Integer; stdcall;
  end;

  // /include/capi/cef_zip_reader_capi.h (cef_zip_reader_t)
  TCefZipReader = record
    base                    : TCefBase;
    move_to_first_file      : function(self: PCefZipReader): Integer; stdcall;
    move_to_next_file       : function(self: PCefZipReader): Integer; stdcall;
    move_to_file            : function(self: PCefZipReader; const fileName: PCefString; caseSensitive: Integer): Integer; stdcall;
    close                   : function(Self: PCefZipReader): Integer; stdcall;
    get_file_name           : function(Self: PCefZipReader): PCefStringUserFree; stdcall;
    get_file_size           : function(Self: PCefZipReader): Int64; stdcall;
    get_file_last_modified  : function(Self: PCefZipReader): TCefTime; stdcall;
    open_file               : function(Self: PCefZipReader; const password: PCefString): Integer; stdcall;
    close_file              : function(Self: PCefZipReader): Integer; stdcall;
    read_file               : function(Self: PCefZipReader; buffer: Pointer; bufferSize: NativeUInt): Integer; stdcall;
    tell                    : function(Self: PCefZipReader): Int64; stdcall;
    eof                     : function(Self: PCefZipReader): Integer; stdcall;
  end;

  // /include/capi/cef_urlrequest_capi.h (cef_urlrequest_client_t)
  TCefUrlrequestClient = record
    base                  : TCefBase;
    on_request_complete   : procedure(self: PCefUrlRequestClient; request: PCefUrlRequest); stdcall;
    on_upload_progress    : procedure(self: PCefUrlRequestClient; request: PCefUrlRequest; current, total: Int64); stdcall;
    on_download_progress  : procedure(self: PCefUrlRequestClient; request: PCefUrlRequest; current, total: Int64); stdcall;
    on_download_data      : procedure(self: PCefUrlRequestClient; request: PCefUrlRequest; const data: Pointer; data_length: NativeUInt); stdcall;
    get_auth_credentials  : function(self: PCefUrlRequestClient; isProxy: Integer; const host: PCefString; port: Integer; const realm, scheme: PCefString; callback: PCefAuthCallback): Integer; stdcall;
  end;

  // /include/capi/cef_urlrequest_capi.h (cef_urlrequest_t)
  TCefUrlRequest = record
    base                : TCefBase;
    get_request         : function(self: PCefUrlRequest): PCefRequest; stdcall;
    get_client          : function(self: PCefUrlRequest): PCefUrlRequestClient; stdcall;
    get_request_status  : function(self: PCefUrlRequest): TCefUrlRequestStatus; stdcall;
    get_request_error   : function(self: PCefUrlRequest): TCefErrorcode; stdcall;
    get_response        : function(self: PCefUrlRequest): PCefResponse; stdcall;
    cancel              : procedure(self: PCefUrlRequest); stdcall;
  end;

  // /include/capi/cef_web_plugin_capi.h (cef_web_plugin_info_visitor_t)
  TCefWebPluginInfoVisitor = record
    base  : TCefBase;
    visit : function(self: PCefWebPluginInfoVisitor; info: PCefWebPluginInfo; count, total: Integer): Integer; stdcall;
  end;

  // /include/capi/cef_web_plugin_capi.h (cef_web_plugin_unstable_callback_t)
  TCefWebPluginUnstableCallback = record
    base        : TCefBase;
    is_unstable : procedure(self: PCefWebPluginUnstableCallback; const path: PCefString; unstable: Integer); stdcall;
  end;

  // /include/capi/cef_task_capi.h (cef_task_runner_t)
  TCefTaskRunner = record
    base                      : TCefBase;
    is_same                   : function(self, that: PCefTaskRunner): Integer; stdcall;
    belongs_to_current_thread : function(self: PCefTaskRunner): Integer; stdcall;
    belongs_to_thread         : function(self: PCefTaskRunner; threadId: TCefThreadId): Integer; stdcall;
    post_task                 : function(self: PCefTaskRunner; task: PCefTask): Integer; stdcall;
    post_delayed_task         : function(self: PCefTaskRunner; task: PCefTask; delay_ms: Int64): Integer; stdcall;
  end;

  // /include/capi/cef_trace_capi.h (cef_end_tracing_callback_t)
  TCefEndTracingCallback = record
    base                    : TCefBase;
    on_end_tracing_complete : procedure(self: PCefEndTracingCallback; const tracing_file: PCefString); stdcall;
  end;

  // /include/capi/cef_resource_bundle_capi.h (cef_resource_bundle_t)
  TCefResourceBundle = record
    base                        : TCefBase;
    get_localized_string        : function(self: PCefResourceBundle; string_id: Integer): PCefStringUserFree; stdcall;
    get_data_resource           : function(self: PCefResourceBundle; resource_id: Integer; var data: Pointer; var data_size: NativeUInt): Integer; stdcall;
    get_data_resource_for_scale : function(self: PCefResourceBundle; resource_id: Integer; scale_factor: TCefScaleFactor; var data: Pointer; var data_size: NativeUInt): Integer; stdcall;
  end;

  // /include/capi/cef_process_message_capi.h (cef_process_message_t)
  TCefProcessMessage = record
    base              : TCefBase;
    is_valid          : function(self: PCefProcessMessage): Integer; stdcall;
    is_read_only      : function(self: PCefProcessMessage): Integer; stdcall;
    copy              : function(self: PCefProcessMessage): PCefProcessMessage; stdcall;
    get_name          : function(self: PCefProcessMessage): PCefStringUserFree; stdcall;
    get_argument_list : function(self: PCefProcessMessage): PCefListValue; stdcall;
  end;

  // /include/capi/cef_render_process_handler_capi.h (cef_render_process_handler_t)
  TCefRenderProcessHandler = record
    base                        : TCefBase;
    on_render_thread_created    : procedure(self: PCefRenderProcessHandler; extra_info: PCefListValue); stdcall;
    on_web_kit_initialized      : procedure(self: PCefRenderProcessHandler); stdcall;
    on_browser_created          : procedure(self: PCefRenderProcessHandler; browser: PCefBrowser); stdcall;
    on_browser_destroyed        : procedure(self: PCefRenderProcessHandler; browser: PCefBrowser); stdcall;
    get_load_handler            : function(self: PCefRenderProcessHandler): PCefLoadHandler; stdcall;
    on_before_navigation        : function(self: PCefRenderProcessHandler; browser: PCefBrowser; frame: PCefFrame; request: PCefRequest; navigation_type: TCefNavigationType; is_redirect: Integer): Integer; stdcall;
    on_context_created          : procedure(self: PCefRenderProcessHandler; browser: PCefBrowser; frame: PCefFrame; context: PCefv8Context); stdcall;
    on_context_released         : procedure(self: PCefRenderProcessHandler; browser: PCefBrowser; frame: PCefFrame; context: PCefv8Context); stdcall;
    on_uncaught_exception       : procedure(self: PCefRenderProcessHandler; browser: PCefBrowser; frame: PCefFrame; context: PCefv8Context; exception: PCefV8Exception; stackTrace: PCefV8StackTrace); stdcall;
    on_focused_node_changed     : procedure(self: PCefRenderProcessHandler; browser: PCefBrowser; frame: PCefFrame; node: PCefDomNode); stdcall;
    on_process_message_received : function(self: PCefRenderProcessHandler; browser: PCefBrowser; source_process: TCefProcessId; message_: PCefProcessMessage): Integer; stdcall;
  end;

  // /include/capi/cef_request_handler_capi.h (cef_request_handler_t)
  TCefRequestHandler = record
    base                          : TCefBase;
    on_before_browse              : function(self: PCefRequestHandler; browser: PCefBrowser; frame: PCefFrame; request: PCefRequest; isRedirect: Integer): Integer; stdcall;
    on_open_urlfrom_tab           : function(self: PCefRequestHandler; browser:PCefBrowser; frame: PCefFrame; const target_url: PCefString; target_disposition: TCefWindowOpenDisposition; user_gesture: Integer): Integer; stdcall;
    on_before_resource_load       : function(self: PCefRequestHandler; browser: PCefBrowser; frame: PCefFrame; request: PCefRequest; callback: PCefRequestCallback): TCefReturnValue; stdcall;
    get_resource_handler          : function(self: PCefRequestHandler; browser: PCefBrowser; frame: PCefFrame; request: PCefRequest): PCefResourceHandler; stdcall;
    on_resource_redirect          : procedure(self: PCefRequestHandler; browser: PCefBrowser; frame: PCefFrame; request: PCefRequest; new_url: PCefString); stdcall;
    on_resource_response          : function(self: PCefRequestHandler; browser: PCefBrowser; frame: PCefFrame; request: PCefRequest; response: PCefResponse): Integer; stdcall;
    get_resource_response_filter  : function(self: PCefRequestHandler; browser: PCefBrowser; frame: PCefFrame; request: PCefRequest; response: PCefResponse): PCefResponseFilter; stdcall;
    on_resource_load_complete     : procedure(self: PCefRequestHandler; browser: PCefBrowser; frame: PCefFrame; request: PCefRequest; response: PCefResponse; status: TCefUrlRequestStatus; received_content_length: Int64); stdcall;
    get_auth_credentials          : function(self: PCefRequestHandler; browser: PCefBrowser; frame: PCefFrame; isProxy: Integer; const host: PCefString; port: Integer; const realm, scheme: PCefString; callback: PCefAuthCallback): Integer; stdcall;
    on_quota_request              : function(self: PCefRequestHandler; browser: PCefBrowser; const origin_url: PCefString; new_size: Int64; callback: PCefRequestCallback): Integer; stdcall;
    on_protocol_execution         : procedure(self: PCefRequestHandler; browser: PCefBrowser; const url: PCefString; allow_os_execution: PInteger); stdcall;
    on_certificate_error          : function(self: PCefRequestHandler; browser: PCefBrowser; cert_error: TCefErrorcode; const request_url: PCefString; ssl_info: PCefSslInfo; callback: PCefRequestCallback): Integer; stdcall;
    on_plugin_crashed             : procedure(self: PCefRequestHandler; browser: PCefBrowser; const plugin_path: PCefString); stdcall;
    on_render_view_ready          : procedure(self: PCefRequestHandler; browser: PCefBrowser); stdcall;
    on_render_process_terminated  : procedure(self: PCefRequestHandler; browser: PCefBrowser; status: TCefTerminationStatus); stdcall;
  end;

  // /include/capi/cef_request_handler_capi.h (cef_request_callback_t)
  TCefRequestCallback = record
    base   : TCefBase;
    cont   : procedure(self: PCefRequestCallback; allow: Integer); stdcall;
    cancel : procedure(self: PCefRequestCallback); stdcall;
  end;

  // /include/capi/cef_resource_handler_capi.h (cef_resource_handler_t)
  TCefResourceHandler = record
    base                  : TCefBase;
    process_request       : function(self: PCefResourceHandler; request: PCefRequest; callback: PCefCallback): Integer; stdcall;
    get_response_headers  : procedure(self: PCefResourceHandler; response: PCefResponse; response_length: PInt64; redirectUrl: PCefString); stdcall;
    read_response         : function(self: PCefResourceHandler; data_out: Pointer; bytes_to_read: Integer; bytes_read: PInteger; callback: PCefCallback): Integer; stdcall;
    can_get_cookie        : function(self: PCefResourceHandler; const cookie: PCefCookie): Integer; stdcall;
    can_set_cookie        : function(self: PCefResourceHandler; const cookie: PCefCookie): Integer; stdcall;
    cancel                : procedure(self: PCefResourceHandler); stdcall;
  end;

  // /include/capi/cef_response_capi.h (cef_response_t)
  TCefResponse = record
    base            : TCefBase;
    is_read_only    : function(self: PCefResponse): Integer; stdcall;
    get_status      : function(self: PCefResponse): Integer; stdcall;
    set_status      : procedure(self: PCefResponse; status: Integer); stdcall;
    get_status_text : function(self: PCefResponse): PCefStringUserFree; stdcall;
    set_status_text : procedure(self: PCefResponse; const statusText: PCefString); stdcall;
    get_mime_type   : function(self: PCefResponse): PCefStringUserFree; stdcall;
    set_mime_type   : procedure(self: PCefResponse; const mimeType: PCefString); stdcall;
    get_header      : function(self: PCefResponse; const name: PCefString): PCefStringUserFree; stdcall;
    get_header_map  : procedure(self: PCefResponse; headerMap: TCefStringMultimap); stdcall;
    set_header_map  : procedure(self: PCefResponse; headerMap: TCefStringMultimap); stdcall;
  end;

  // /include/capi/cef_response_filter_capi.h (cef_response_filter_t)
  TCefResponseFilter = record
    base        : TCefBase;
    init_filter : function(self: PCefResponseFilter): Integer; stdcall;
    filter      : function(self: PCefResponseFilter; data_in: Pointer; data_in_size: NativeUInt; var data_in_read: NativeUInt; data_out: Pointer; data_out_size : NativeUInt; var data_out_written: NativeUInt): TCefResponseFilterStatus; stdcall;
  end;

  // /include/capi/cef_auth_callback_capi.h (cef_auth_callback_t)
  TCefAuthCallback = record
    base   : TCefBase;
    cont   : procedure(self: PCefAuthCallback; const username, password: PCefString); stdcall;
    cancel : procedure(self: PCefAuthCallback); stdcall;
  end;

  // /include/capi/cef_callback_capi.h (cef_callback_t)
  TCefCallback = record
    base   : TCefBase;
    cont   : procedure(self: PCefCallback); stdcall;
    cancel : procedure(self: PCefCallback); stdcall;
  end;

  // /include/capi/cef_request_context_capi.h (cef_request_context_t)
  TCefRequestContext = record
    base                            : TCefBase;
    is_same                         : function(self, other: PCefRequestContext): Integer; stdcall;
    is_sharing_with                 : function(self, other: PCefRequestContext): Integer; stdcall;
    is_global                       : function(self: PCefRequestContext): Integer; stdcall;
    get_handler                     : function(self: PCefRequestContext): PCefRequestContextHandler; stdcall;
    get_cache_path                  : function(self: PCefRequestContext): PCefStringUserFree; stdcall;
    get_default_cookie_manager      : function(self: PCefRequestContext; callback: PCefCompletionCallback): PCefCookieManager; stdcall;
    register_scheme_handler_factory : function(self: PCefRequestContext; const scheme_name, domain_name: PCefString; factory: PCefSchemeHandlerFactory): Integer; stdcall;
    clear_scheme_handler_factories  : function(self: PCefRequestContext): Integer; stdcall;
    purge_plugin_list_cache         : procedure(self: PCefRequestContext; reload_pages: Integer); stdcall;
    has_preference                  : function(self: PCefRequestContext; const name: PCefString): Integer; stdcall;
    get_preference                  : function(self: PCefRequestContext; const name: PCefString): PCefValue; stdcall;
    get_all_preferences             : function(self: PCefRequestContext; include_defaults: Integer): PCefDictionaryValue; stdcall;
    can_set_preference              : function(self: PCefRequestContext; const name: PCefString): Integer; stdcall;
    set_preference                  : function(self: PCefRequestContext; const name: PCefString; value: PCefValue; error: PCefString): Integer; stdcall;
    clear_certificate_exceptions    : procedure(self: PCefRequestContext; callback: PCefCompletionCallback); stdcall;
    close_all_connections           : procedure(self: PCefRequestContext; callback: PCefCompletionCallback); stdcall;
    resolve_host                    : procedure(self: PCefRequestContext; const origin: PCefString; callback: PCefResolveCallback); stdcall;
    resolve_host_cached             : function(self: PCefRequestContext; const origin: PCefString; resolved_ips: TCefStringList): TCefErrorCode; stdcall;
  end;

  // /include/capi/cef_request_context_handler_capi.h (cef_request_context_handler_t)
  TCefRequestContextHandler = record
    base                            : TCefBase;
    get_cookie_manager              : function(self: PCefRequestContextHandler): PCefCookieManager; stdcall;
    on_before_plugin_load           : function(self: PCefRequestContextHandler; const mime_type, plugin_url : PCefString; const top_origin_url: PCefString; plugin_info: PCefWebPluginInfo; plugin_policy: PCefPluginPolicy): Integer; stdcall;
  end;

  // /include/capi/cef_callback_capi.h (cef_completion_callback_t)
  TCefCompletionCallback = record
    base        : TCefBase;
    on_complete : procedure(self: PCefCompletionCallback); stdcall;
  end;

  // /include/capi/cef_cookie_capi.h (cef_cookie_manager_t)
  TCefCookieManager = record
    base                  : TCefBase;
    set_supported_schemes : procedure(self: PCefCookieManager; schemes: TCefStringList; callback: PCefCompletionCallback); stdcall;
    visit_all_cookies     : function(self: PCefCookieManager; visitor: PCefCookieVisitor): Integer; stdcall;
    visit_url_cookies     : function(self: PCefCookieManager; const url: PCefString; includeHttpOnly: Integer; visitor: PCefCookieVisitor): Integer; stdcall;
    set_cookie            : function(self: PCefCookieManager; const url: PCefString; const cookie: PCefCookie; callback: PCefSetCookieCallback): Integer; stdcall;
    delete_cookies        : function(self: PCefCookieManager; const url, cookie_name: PCefString; callback: PCefDeleteCookiesCallback): Integer; stdcall;
    set_storage_path      : function(self: PCefCookieManager; const path: PCefString; persist_session_cookies: Integer; callback: PCefCompletionCallback): Integer; stdcall;
    flush_store           : function(self: PCefCookieManager; handler: PCefCompletionCallback): Integer; stdcall;
  end;

  // /include/capi/cef_scheme_capi.h (cef_scheme_handler_factory_t)
  TCefSchemeHandlerFactory = record
    base   : TCefBase;
    create : function(self: PCefSchemeHandlerFactory; browser: PCefBrowser; frame: PCefFrame; const scheme_name: PCefString; request: PCefRequest): PCefResourceHandler; stdcall;
  end;

  // /include/capi/cef_request_context_capi.h (cef_resolve_callback_t)
  TCefResolveCallback = record
    base                 : TCefBase;
    on_resolve_completed : procedure(self: PCefResolveCallback; result: TCefErrorCode; resolved_ips: TCefStringList); stdcall;
  end;

  // /include/capi/cef_web_plugin_capi.h (cef_web_plugin_info_t)
  TCefWebPluginInfo = record
    base            : TCefBase;
    get_name        : function(self: PCefWebPluginInfo): PCefStringUserFree; stdcall;
    get_path        : function(self: PCefWebPluginInfo): PCefStringUserFree; stdcall;
    get_version     : function(self: PCefWebPluginInfo): PCefStringUserFree; stdcall;
    get_description : function(self: PCefWebPluginInfo): PCefStringUserFree; stdcall;
  end;

  // /include/capi/cef_cookie_capi.h (cef_cookie_visitor_t)
  TCefCookieVisitor = record
    base  : TCefBase;
    visit : function(self: PCefCookieVisitor; const cookie: PCefCookie; count, total: Integer; deleteCookie: PInteger): Integer; stdcall;
  end;

  // /include/capi/cef_cookie_capi.h (cef_set_cookie_callback_t)
  TCefSetCookieCallback = record
    base        : TCefBase;
    on_complete : procedure(self: PCefSetCookieCallback; success: Integer); stdcall;
  end;

  // /include/capi/cef_cookie_capi.h (cef_delete_cookies_callback_t)
  TCefDeleteCookiesCallback = record
    base        : TCefBase;
    on_complete : procedure(self: PCefDeleteCookiesCallback; num_deleted: Integer); stdcall;
  end;

  // /include/capi/cef_browser_capi.h (cef_run_file_dialog_callback_t)
  TCefRunFileDialogCallback = record
    base                     : TCefBase;
    on_file_dialog_dismissed : procedure(self: PCefRunFileDialogCallback; selected_accept_filter: Integer; file_paths: TCefStringList); stdcall;
  end;

  // /include/capi/cef_browser_capi.h (cef_pdf_print_callback_t)
  TCefPdfPrintCallback = record
    base                  : TCefBase;
    on_pdf_print_finished : procedure(self: PCefPdfPrintCallback; const path: PCefString; ok: Integer); stdcall;
  end;

  // /include/capi/cef_browser_capi.h (cef_navigation_entry_visitor_t)
  TCefNavigationEntryVisitor = record
    base  : TCefBase;
    visit : function(self: PCefNavigationEntryVisitor; entry: PCefNavigationEntry; current, index, total: Integer): Integer; stdcall;
  end;

  // /include/capi/cef_navigation_entry_capi.h (cef_navigation_entry_t)
  TCefNavigationEntry = record
    base                  : TCefBase;
    is_valid              : function(self: PCefNavigationEntry): Integer; stdcall;
    get_url               : function(self: PCefNavigationEntry): PCefStringUserFree; stdcall;
    get_display_url       : function(self: PCefNavigationEntry): PCefStringUserFree; stdcall;
    get_original_url      : function(self: PCefNavigationEntry): PCefStringUserFree; stdcall;
    get_title             : function(self: PCefNavigationEntry): PCefStringUserFree; stdcall;
    get_transition_type   : function(self: PCefNavigationEntry): TCefTransitionType; stdcall;
    has_post_data         : function(self: PCefNavigationEntry): Integer; stdcall;
    get_completion_time   : function(self: PCefNavigationEntry): TCefTime; stdcall;
    get_http_status_code  : function(self: PCefNavigationEntry): Integer; stdcall;
  end;

  // /include/capi/cef_print_settings_capi.h (cef_print_settings_t)
  TCefPrintSettings = record
    base                        : TCefBase;
    is_valid                    : function(self: PCefPrintSettings): Integer; stdcall;
    is_read_only                : function(self: PCefPrintSettings): Integer; stdcall;
    copy                        : function(self: PCefPrintSettings): PCefPrintSettings; stdcall;
    set_orientation             : procedure(self: PCefPrintSettings; landscape: Integer); stdcall;
    is_landscape                : function(self: PCefPrintSettings): Integer; stdcall;
    set_printer_printable_area  : procedure(self: PCefPrintSettings; const physical_size_device_units: PCefSize; const printable_area_device_units: PCefRect; landscape_needs_flip: Integer); stdcall;
    set_device_name             : procedure(self: PCefPrintSettings; const name: PCefString); stdcall;
    get_device_name             : function(self: PCefPrintSettings): PCefStringUserFree; stdcall;
    set_dpi                     : procedure(self: PCefPrintSettings; dpi: Integer); stdcall;
    get_dpi                     : function(self: PCefPrintSettings): Integer; stdcall;
    set_page_ranges             : procedure(self: PCefPrintSettings; rangesCount: NativeUInt; ranges: PCefPageRange); stdcall;
    get_page_ranges_count       : function(self: PCefPrintSettings): NativeUInt; stdcall;
    get_page_ranges             : procedure(self: PCefPrintSettings; rangesCount: PNativeUInt; ranges: PCefPageRange); stdcall;
    set_selection_only          : procedure(self: PCefPrintSettings; selection_only: Integer); stdcall;
    is_selection_only           : function(self: PCefPrintSettings): Integer; stdcall;
    set_collate                 : procedure(self: PCefPrintSettings; collate: Integer); stdcall;
    will_collate                : function(self: PCefPrintSettings): Integer; stdcall;
    set_color_model             : procedure(self: PCefPrintSettings; model: TCefColorModel); stdcall;
    get_color_model             : function(self: PCefPrintSettings): TCefColorModel; stdcall;
    set_copies                  : procedure(self: PCefPrintSettings; copies: Integer); stdcall;
    get_copies                  : function(self: PCefPrintSettings): Integer; stdcall;
    set_duplex_mode             : procedure(self: PCefPrintSettings; mode: TCefDuplexMode); stdcall;
    get_duplex_mode             : function(self: PCefPrintSettings): TCefDuplexMode; stdcall;
  end;

  // /include/capi/cef_print_handler_capi.h (cef_print_dialog_callback_t)
  TCefPrintDialogCallback = record
    base   : TCefBase;
    cont   : procedure(self: PCefPrintDialogCallback; settings: PCefPrintSettings); stdcall;
    cancel : procedure(self: PCefPrintDialogCallback); stdcall;
  end;

  // /include/capi/cef_print_handler_capi.h (cef_print_job_callback_t)
  TCefPrintJobCallback = record
    base : TCefBase;
    cont : procedure(self: PCefPrintJobCallback); stdcall;
  end;

  // /include/capi/cef_print_handler_capi.h (cef_print_handler_t)
  TCefPrintHandler = record
    base                : TCefBase;
    on_print_start      : procedure(self: PCefPrintHandler; browser: PCefBrowser); stdcall;
    on_print_settings   : procedure(self: PCefPrintHandler; settings: PCefPrintSettings; get_defaults: Integer); stdcall;
    on_print_dialog     : function(self: PCefPrintHandler; has_selection: Integer; callback: PCefPrintDialogCallback): Integer; stdcall;
    on_print_job        : function(self: PCefPrintHandler; const document_name, pdf_file_path: PCefString; callback: PCefPrintJobCallback): Integer; stdcall;
    on_print_reset      : procedure(self: PCefPrintHandler); stdcall;
    get_pdf_paper_size  : function(self: PCefPrintHandler; device_units_per_inch: Integer): TCefSize; stdcall;
  end;

  // /include/capi/cef_drag_data_capi.h (cef_drag_data_t)
  TCefDragData = record
    base                  : TCefBase;
    clone                 : function(self: PCefDragData): PCefDragData; stdcall;
    is_read_only          : function(self: PCefDragData): Integer; stdcall;
    is_link               : function(self: PCefDragData): Integer; stdcall;
    is_fragment           : function(self: PCefDragData): Integer; stdcall;
    is_file               : function(self: PCefDragData): Integer; stdcall;
    get_link_url          : function(self: PCefDragData): PCefStringUserFree; stdcall;
    get_link_title        : function(self: PCefDragData): PCefStringUserFree; stdcall;
    get_link_metadata     : function(self: PCefDragData): PCefStringUserFree; stdcall;
    get_fragment_text     : function(self: PCefDragData): PCefStringUserFree; stdcall;
    get_fragment_html     : function(self: PCefDragData): PCefStringUserFree; stdcall;
    get_fragment_base_url : function(self: PCefDragData): PCefStringUserFree; stdcall;
    get_file_name         : function(self: PCefDragData): PCefStringUserFree; stdcall;
    get_file_contents     : function(self: PCefDragData; writer: PCefStreamWriter): NativeUInt; stdcall;
    get_file_names        : function(self: PCefDragData; names: TCefStringList): Integer; stdcall;
    set_link_url          : procedure(self: PCefDragData; const url: PCefString); stdcall;
    set_link_title        : procedure(self: PCefDragData; const title: PCefString); stdcall;
    set_link_metadata     : procedure(self: PCefDragData; const data: PCefString); stdcall;
    set_fragment_text     : procedure(self: PCefDragData; const text: PCefString); stdcall;
    set_fragment_html     : procedure(self: PCefDragData; const html: PCefString); stdcall;
    set_fragment_base_url : procedure(self: PCefDragData; const base_url: PCefString); stdcall;
    reset_file_contents   : procedure(self: PCefDragData); stdcall;
    add_file              : procedure(self: PCefDragData; const path, display_name: PCefString); stdcall;
  end;

  // /include/capi/cef_command_line_capi.h (cef_command_line_t)
  TCefCommandLine = record
    base                      : TCefBase;
    is_valid                  : function(self: PCefCommandLine): Integer; stdcall;
    is_read_only              : function(self: PCefCommandLine): Integer; stdcall;
    copy                      : function(self: PCefCommandLine): PCefCommandLine; stdcall;
    init_from_argv            : procedure(self: PCefCommandLine; argc: Integer; const argv: PPAnsiChar); stdcall;
    init_from_string          : procedure(self: PCefCommandLine; const command_line: PCefString); stdcall;
    reset                     : procedure(self: PCefCommandLine); stdcall;
    get_argv                  : procedure(self: PCefCommandLine; argv: TCefStringList); stdcall;
    get_command_line_string   : function(self: PCefCommandLine): PCefStringUserFree; stdcall;
    get_program               : function(self: PCefCommandLine): PCefStringUserFree; stdcall;
    set_program               : procedure(self: PCefCommandLine; const program_: PCefString); stdcall;
    has_switches              : function(self: PCefCommandLine): Integer; stdcall;
    has_switch                : function(self: PCefCommandLine; const name: PCefString): Integer; stdcall;
    get_switch_value          : function(self: PCefCommandLine; const name: PCefString): PCefStringUserFree; stdcall;
    get_switches              : procedure(self: PCefCommandLine; switches: TCefStringMap); stdcall;
    append_switch             : procedure(self: PCefCommandLine; const name: PCefString); stdcall;
    append_switch_with_value  : procedure(self: PCefCommandLine; const name, value: PCefString); stdcall;
    has_arguments             : function(self: PCefCommandLine): Integer; stdcall;
    get_arguments             : procedure(self: PCefCommandLine; arguments: TCefStringList); stdcall;
    append_argument           : procedure(self: PCefCommandLine; const argument: PCefString); stdcall;
    prepend_wrapper           : procedure(self: PCefCommandLine; const wrapper: PCefString); stdcall;
  end;

  // /include/capi/cef_scheme_capi.h (cef_scheme_registrar_t)
  TCefSchemeRegistrar = record
    base              : TCefBase;
    add_custom_scheme : function(self: PCefSchemeRegistrar; const scheme_name: PCefString; is_standard, is_local, is_display_isolated : Integer): Integer; stdcall;
  end;

  // /include/capi/cef_values_capi.h (cef_binary_value_t)
  TCefBinaryValue = record
    base      : TCefBase;
    is_valid  : function(self: PCefBinaryValue): Integer; stdcall;
    is_owned  : function(self: PCefBinaryValue): Integer; stdcall;
    is_same   : function(self, that: PCefBinaryValue):Integer; stdcall;
    is_equal  : function(self, that: PCefBinaryValue): Integer; stdcall;
    copy      : function(self: PCefBinaryValue): PCefBinaryValue; stdcall;
    get_size  : function(self: PCefBinaryValue): NativeUInt; stdcall;
    get_data  : function(self: PCefBinaryValue; buffer: Pointer; buffer_size, data_offset: NativeUInt): NativeUInt; stdcall;
  end;

  // /include/capi/cef_values_capi.h (cef_value_t)
  TCefValue = record
    base            : TCefBase;
    is_valid        : function(self: PCefValue): Integer; stdcall;
    is_owned        : function(self: PCefValue): Integer; stdcall;
    is_read_only    : function(self: PCefValue): Integer; stdcall;
    is_same         : function(self, that: PCefValue): Integer; stdcall;
    is_equal        : function(self, that: PCefValue): Integer; stdcall;
    copy            : function(self: PCefValue): PCefValue; stdcall;
    get_type        : function(self: PCefValue): TCefValueType; stdcall;
    get_bool        : function(self: PCefValue): Integer; stdcall;
    get_int         : function(self: PCefValue): Integer; stdcall;
    get_double      : function(self: PCefValue): Double; stdcall;
    get_string      : function(self: PCefValue): PCefStringUserFree; stdcall;
    get_binary      : function(self: PCefValue): PCefBinaryValue; stdcall;
    get_dictionary  : function(self: PCefValue): PCefDictionaryValue; stdcall;
    get_list        : function(self: PCefValue): PCefListValue; stdcall;
    set_null        : function(self: PCefValue): Integer; stdcall;
    set_bool        : function(self: PCefValue; value: Integer): Integer; stdcall;
    set_int         : function(self: PCefValue; value: Integer): Integer; stdcall;
    set_double      : function(self: PCefValue; value: Double): Integer; stdcall;
    set_string      : function(self: PCefValue; const value: PCefString): Integer; stdcall;
    set_binary      : function(self: PCefValue; value: PCefBinaryValue): Integer; stdcall;
    set_dictionary  : function(self: PCefValue; value: PCefDictionaryValue): Integer; stdcall;
    set_list        : function(self: PCefValue; value: PCefListValue): Integer; stdcall;
  end;

  // /include/capi/cef_values_capi.h (cef_dictionary_value_t)
  TCefDictionaryValue = record
    base            : TCefBase;
    is_valid        : function(self: PCefDictionaryValue): Integer; stdcall;
    is_owned        : function(self: PCefDictionaryValue): Integer; stdcall;
    is_read_only    : function(self: PCefDictionaryValue): Integer; stdcall;
    is_same         : function(self, that: PCefDictionaryValue): Integer; stdcall;
    is_equal        : function(self, that: PCefDictionaryValue): Integer; stdcall;
    copy            : function(self: PCefDictionaryValue; exclude_empty_children: Integer): PCefDictionaryValue; stdcall;
    get_size        : function(self: PCefDictionaryValue): NativeUInt; stdcall;
    clear           : function(self: PCefDictionaryValue): Integer; stdcall;
    has_key         : function(self: PCefDictionaryValue; const key: PCefString): Integer; stdcall;
    get_keys        : function(self: PCefDictionaryValue; const keys: TCefStringList): Integer; stdcall;
    remove          : function(self: PCefDictionaryValue; const key: PCefString): Integer; stdcall;
    get_type        : function(self: PCefDictionaryValue; const key: PCefString): TCefValueType; stdcall;
    get_value       : function(self: PCefDictionaryValue; const key: PCefString): PCefValue; stdcall;
    get_bool        : function(self: PCefDictionaryValue; const key: PCefString): Integer; stdcall;
    get_int         : function(self: PCefDictionaryValue; const key: PCefString): Integer; stdcall;
    get_double      : function(self: PCefDictionaryValue; const key: PCefString): Double; stdcall;
    get_string      : function(self: PCefDictionaryValue; const key: PCefString): PCefStringUserFree; stdcall;
    get_binary      : function(self: PCefDictionaryValue; const key: PCefString): PCefBinaryValue; stdcall;
    get_dictionary  : function(self: PCefDictionaryValue; const key: PCefString): PCefDictionaryValue; stdcall;
    get_list        : function(self: PCefDictionaryValue; const key: PCefString): PCefListValue; stdcall;
    set_value       : function(self: PCefDictionaryValue; const key: PCefString; value: PCefValue): Integer; stdcall;
    set_null        : function(self: PCefDictionaryValue; const key: PCefString): Integer; stdcall;
    set_bool        : function(self: PCefDictionaryValue; const key: PCefString; value: Integer): Integer; stdcall;
    set_int         : function(self: PCefDictionaryValue; const key: PCefString; value: Integer): Integer; stdcall;
    set_double      : function(self: PCefDictionaryValue; const key: PCefString; value: Double): Integer; stdcall;
    set_string      : function(self: PCefDictionaryValue; const key: PCefString; value: PCefString): Integer; stdcall;
    set_binary      : function(self: PCefDictionaryValue; const key: PCefString; value: PCefBinaryValue): Integer; stdcall;
    set_dictionary  : function(self: PCefDictionaryValue; const key: PCefString; value: PCefDictionaryValue): Integer; stdcall;
    set_list        : function(self: PCefDictionaryValue; const key: PCefString; value: PCefListValue): Integer; stdcall;
  end;

  // /include/capi/cef_values_capi.h (cef_list_value_t)
  TCefListValue = record
    base            : TCefBase;
    is_valid        : function(self: PCefListValue): Integer; stdcall;
    is_owned        : function(self: PCefListValue): Integer; stdcall;
    is_read_only    : function(self: PCefListValue): Integer; stdcall;
    is_same         : function(self, that: PCefListValue): Integer; stdcall;
    is_equal        : function(self, that: PCefListValue): Integer; stdcall;
    copy            : function(self: PCefListValue): PCefListValue; stdcall;
    set_size        : function(self: PCefListValue; size: NativeUInt): Integer; stdcall;
    get_size        : function(self: PCefListValue): NativeUInt; stdcall;
    clear           : function(self: PCefListValue): Integer; stdcall;
    remove          : function(self: PCefListValue; index: Integer): Integer; stdcall;
    get_type        : function(self: PCefListValue; index: Integer): TCefValueType; stdcall;
    get_value       : function(self: PCefListValue; index: Integer): PCefValue; stdcall;
    get_bool        : function(self: PCefListValue; index: Integer): Integer; stdcall;
    get_int         : function(self: PCefListValue; index: Integer): Integer; stdcall;
    get_double      : function(self: PCefListValue; index: Integer): Double; stdcall;
    get_string      : function(self: PCefListValue; index: Integer): PCefStringUserFree; stdcall;
    get_binary      : function(self: PCefListValue; index: Integer): PCefBinaryValue; stdcall;
    get_dictionary  : function(self: PCefListValue; index: Integer): PCefDictionaryValue; stdcall;
    get_list        : function(self: PCefListValue; index: Integer): PCefListValue; stdcall;
    set_value       : function(self: PCefListValue; index: Integer; value: PCefValue): Integer; stdcall;
    set_null        : function(self: PCefListValue; index: Integer): Integer; stdcall;
    set_bool        : function(self: PCefListValue; index: Integer; value: Integer): Integer; stdcall;
    set_int         : function(self: PCefListValue; index: Integer; value: Integer): Integer; stdcall;
    set_double      : function(self: PCefListValue; index: Integer; value: Double): Integer; stdcall;
    set_string      : function(self: PCefListValue; index: Integer; value: PCefString): Integer; stdcall;
    set_binary      : function(self: PCefListValue; index: Integer; value: PCefBinaryValue): Integer; stdcall;
    set_dictionary  : function(self: PCefListValue; index: Integer; value: PCefDictionaryValue): Integer; stdcall;
    set_list        : function(self: PCefListValue; index: Integer; value: PCefListValue): Integer; stdcall;
  end;

  // /include/capi/cef_string_visitor_capi.h (cef_string_visitor_t)
  TCefStringVisitor = record
    base  : TCefBase;
    visit : procedure(self: PCefStringVisitor; const str: PCefString); stdcall;
  end;

  TCefPostDataElementArray = array[0..(High(Integer) div SizeOf(PCefPostDataElement)) - 1] of PCefPostDataElement;

  // /include/capi/cef_request_capi.h (cef_post_data_element_t)
  TCefPostDataElement = record
    base            : TCefBase;
    is_read_only    : function(self: PCefPostDataElement): Integer; stdcall;
    set_to_empty    : procedure(self: PCefPostDataElement); stdcall;
    set_to_file     : procedure(self: PCefPostDataElement; const fileName: PCefString); stdcall;
    set_to_bytes    : procedure(self: PCefPostDataElement; size: NativeUInt; const bytes: Pointer); stdcall;
    get_type        : function(self: PCefPostDataElement): TCefPostDataElementType; stdcall;
    get_file        : function(self: PCefPostDataElement): PCefStringUserFree; stdcall;
    get_bytes_count : function(self: PCefPostDataElement): NativeUInt; stdcall;
    get_bytes       : function(self: PCefPostDataElement; size: NativeUInt; bytes: Pointer): NativeUInt; stdcall;
  end;

  // /include/capi/cef_request_capi.h (cef_post_data_t)
  TCefPostData = record
    base                  : TCefBase;
    is_read_only          : function(self: PCefPostData):Integer; stdcall;
    has_excluded_elements : function(self: PCefPostData): Integer; stdcall;
    get_element_count     : function(self: PCefPostData): NativeUInt; stdcall;
    get_elements          : procedure(self: PCefPostData; elementsCount: PNativeUInt; elements: PCefPostDataElementArray); stdcall;
    remove_element        : function(self: PCefPostData; element: PCefPostDataElement): Integer; stdcall;
    add_element           : function(self: PCefPostData; element: PCefPostDataElement): Integer; stdcall;
    remove_elements       : procedure(self: PCefPostData); stdcall;
  end;

  // /include/capi/cef_request_capi.h (cef_request_t)
  TCefRequest = record
    base                        : TCefBase;
    is_read_only                : function(self: PCefRequest): Integer; stdcall;
    get_url                     : function(self: PCefRequest): PCefStringUserFree; stdcall;
    set_url                     : procedure(self: PCefRequest; const url: PCefString); stdcall;
    get_method                  : function(self: PCefRequest): PCefStringUserFree; stdcall;
    set_method                  : procedure(self: PCefRequest; const method: PCefString); stdcall;
    set_referrer                : procedure(self: PCefRequest; const referrer_url: PCefString; policy: TCefReferrerPolicy); stdcall;
    get_referrer_url            : function(self: PCefRequest): PCefStringUserFree; stdcall;
    get_referrer_policy         : function(self: PCefRequest): TCefReferrerPolicy; stdcall;
    get_post_data               : function(self: PCefRequest): PCefPostData; stdcall;
    set_post_data               : procedure(self: PCefRequest; postData: PCefPostData); stdcall;
    get_header_map              : procedure(self: PCefRequest; headerMap: TCefStringMultimap); stdcall;
    set_header_map              : procedure(self: PCefRequest; headerMap: TCefStringMultimap); stdcall;
    set_                        : procedure(self: PCefRequest; const url, method: PCefString; postData: PCefPostData; headerMap: TCefStringMultimap); stdcall;
    get_flags                   : function(self: PCefRequest): Integer; stdcall;
    set_flags                   : procedure(self: PCefRequest; flags: Integer); stdcall;
    get_first_party_for_cookies : function(self: PCefRequest): PCefStringUserFree; stdcall;
    set_first_party_for_cookies : procedure(self: PCefRequest; const url: PCefString); stdcall;
    get_resource_type           : function(self: PCefRequest): TCefResourceType; stdcall;
    get_transition_type         : function(self: PCefRequest): TCefTransitionType; stdcall;
    get_identifier              : function(self: PCefRequest): UInt64; stdcall;
  end;

  // /include/capi/cef_task_capi.h (cef_task_t)
  TCefTask = record
    base    : TCefBase;
    execute : procedure(self: PCefTask); stdcall;
  end;

  // /include/capi/cef_dom_capi.h (cef_domvisitor_t)
  TCefDomVisitor = record
    base  : TCefBase;
    visit : procedure(self: PCefDomVisitor; document: PCefDomDocument); stdcall;
  end;

  // /include/capi/cef_menu_model_capi.h (cef_menu_model_t)
  TCefMenuModel = record
    base                  : TCefBase;
    clear                 : function(self: PCefMenuModel): Integer; stdcall;
    get_count             : function(self: PCefMenuModel): Integer; stdcall;
    add_separator         : function(self: PCefMenuModel): Integer; stdcall;
    add_item              : function(self: PCefMenuModel; command_id: Integer; const text: PCefString): Integer; stdcall;
    add_check_item        : function(self: PCefMenuModel; command_id: Integer; const text: PCefString): Integer; stdcall;
    add_radio_item        : function(self: PCefMenuModel; command_id: Integer; const text: PCefString; group_id: Integer): Integer; stdcall;
    add_sub_menu          : function(self: PCefMenuModel; command_id: Integer; const text: PCefString): PCefMenuModel; stdcall;
    insert_separator_at   : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    insert_item_at        : function(self: PCefMenuModel; index, command_id: Integer; const text: PCefString): Integer; stdcall;
    insert_check_item_at  : function(self: PCefMenuModel; index, command_id: Integer; const text: PCefString): Integer; stdcall;
    insert_radio_item_at  : function(self: PCefMenuModel; index, command_id: Integer; const text: PCefString; group_id: Integer): Integer; stdcall;
    insert_sub_menu_at    : function(self: PCefMenuModel; index, command_id: Integer; const text: PCefString): PCefMenuModel; stdcall;
    remove                : function(self: PCefMenuModel; command_id: Integer): Integer; stdcall;
    remove_at             : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    get_index_of          : function(self: PCefMenuModel; command_id: Integer): Integer; stdcall;
    get_command_id_at     : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    set_command_id_at     : function(self: PCefMenuModel; index, command_id: Integer): Integer; stdcall;
    get_label             : function(self: PCefMenuModel; command_id: Integer): PCefStringUserFree; stdcall;
    get_label_at          : function(self: PCefMenuModel; index: Integer): PCefStringUserFree; stdcall;
    set_label             : function(self: PCefMenuModel; command_id: Integer; const text: PCefString): Integer; stdcall;
    set_label_at          : function(self: PCefMenuModel; index: Integer; const text: PCefString): Integer; stdcall;
    get_type              : function(self: PCefMenuModel; command_id: Integer): TCefMenuItemType; stdcall;
    get_type_at           : function(self: PCefMenuModel; index: Integer): TCefMenuItemType; stdcall;
    get_group_id          : function(self: PCefMenuModel; command_id: Integer): Integer; stdcall;
    get_group_id_at       : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    set_group_id          : function(self: PCefMenuModel; command_id, group_id: Integer): Integer; stdcall;
    set_group_id_at       : function(self: PCefMenuModel; index, group_id: Integer): Integer; stdcall;
    get_sub_menu          : function(self: PCefMenuModel; command_id: Integer): PCefMenuModel; stdcall;
    get_sub_menu_at       : function(self: PCefMenuModel; index: Integer): PCefMenuModel; stdcall;
    is_visible            : function(self: PCefMenuModel; command_id: Integer): Integer; stdcall;
    is_visible_at         : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    set_visible           : function(self: PCefMenuModel; command_id, visible: Integer): Integer; stdcall;
    set_visible_at        : function(self: PCefMenuModel; index, visible: Integer): Integer; stdcall;
    is_enabled            : function(self: PCefMenuModel; command_id: Integer): Integer; stdcall;
    is_enabled_at         : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    set_enabled           : function(self: PCefMenuModel; command_id, enabled: Integer): Integer; stdcall;
    set_enabled_at        : function(self: PCefMenuModel; index, enabled: Integer): Integer; stdcall;
    is_checked            : function(self: PCefMenuModel; command_id: Integer): Integer; stdcall;
    is_checked_at         : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    set_checked           : function(self: PCefMenuModel; command_id, checked: Integer): Integer; stdcall;
    set_checked_at        : function(self: PCefMenuModel; index, checked: Integer): Integer; stdcall;
    has_accelerator       : function(self: PCefMenuModel; command_id: Integer): Integer; stdcall;
    has_accelerator_at    : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    set_accelerator       : function(self: PCefMenuModel; command_id, key_code, shift_pressed, ctrl_pressed, alt_pressed: Integer): Integer; stdcall;
    set_accelerator_at    : function(self: PCefMenuModel; index, key_code, shift_pressed, ctrl_pressed, alt_pressed: Integer): Integer; stdcall;
    remove_accelerator    : function(self: PCefMenuModel; command_id: Integer): Integer; stdcall;
    remove_accelerator_at : function(self: PCefMenuModel; index: Integer): Integer; stdcall;
    get_accelerator       : function(self: PCefMenuModel; command_id: Integer; key_code, shift_pressed, ctrl_pressed, alt_pressed: PInteger): Integer; stdcall;
    get_accelerator_at    : function(self: PCefMenuModel; index: Integer; key_code, shift_pressed, ctrl_pressed, alt_pressed: PInteger): Integer; stdcall;
  end;

  // /include/capi/cef_context_menu_handler_capi.h (cef_context_menu_params_t)
  TCefContextMenuParams = record
    base                        : TCefBase;
    get_xcoord                  : function(self: PCefContextMenuParams): Integer; stdcall;
    get_ycoord                  : function(self: PCefContextMenuParams): Integer; stdcall;
    get_type_flags              : function(self: PCefContextMenuParams): TCefContextMenuTypeFlags; stdcall;
    get_link_url                : function(self: PCefContextMenuParams): PCefStringUserFree; stdcall;
    get_unfiltered_link_url     : function(self: PCefContextMenuParams): PCefStringUserFree; stdcall;
    get_source_url              : function(self: PCefContextMenuParams): PCefStringUserFree; stdcall;
    has_image_contents          : function(self: PCefContextMenuParams): Integer; stdcall;
    get_page_url                : function(self: PCefContextMenuParams): PCefStringUserFree; stdcall;
    get_frame_url               : function(self: PCefContextMenuParams): PCefStringUserFree; stdcall;
    get_frame_charset           : function(self: PCefContextMenuParams): PCefStringUserFree; stdcall;
    get_media_type              : function(self: PCefContextMenuParams): TCefContextMenuMediaType; stdcall;
    get_media_state_flags       : function(self: PCefContextMenuParams): TCefContextMenuMediaStateFlags; stdcall;
    get_selection_text          : function(self: PCefContextMenuParams): PCefStringUserFree; stdcall;
    get_misspelled_word         : function(self: PCefContextMenuParams): PCefStringUserFree; stdcall;
    get_dictionary_suggestions  : function(self: PCefContextMenuParams; suggestions: TCefStringList): Integer; stdcall;
    is_editable                 : function(self: PCefContextMenuParams): Integer; stdcall;
    is_spell_check_enabled      : function(self: PCefContextMenuParams): Integer; stdcall;
    get_edit_state_flags        : function(self: PCefContextMenuParams): TCefContextMenuEditStateFlags; stdcall;
    is_custom_menu              : function(self: PCefContextMenuParams): Integer; stdcall;
    is_pepper_menu              : function(self: PCefContextMenuParams): Integer; stdcall;
  end;

  // /include/capi/cef_download_item_capi.h (cef_download_item_t)
  TCefDownloadItem = record
    base                    : TCefBase;
    is_valid                : function(self: PCefDownloadItem): Integer; stdcall;
    is_in_progress          : function(self: PCefDownloadItem): Integer; stdcall;
    is_complete             : function(self: PCefDownloadItem): Integer; stdcall;
    is_canceled             : function(self: PCefDownloadItem): Integer; stdcall;
    get_current_speed       : function(self: PCefDownloadItem): Int64; stdcall;
    get_percent_complete    : function(self: PCefDownloadItem): Integer; stdcall;
    get_total_bytes         : function(self: PCefDownloadItem): Int64; stdcall;
    get_received_bytes      : function(self: PCefDownloadItem): Int64; stdcall;
    get_start_time          : function(self: PCefDownloadItem): TCefTime; stdcall;
    get_end_time            : function(self: PCefDownloadItem): TCefTime; stdcall;
    get_full_path           : function(self: PCefDownloadItem): PCefStringUserFree; stdcall;
    get_id                  : function(self: PCefDownloadItem): Cardinal; stdcall;
    get_url                 : function(self: PCefDownloadItem): PCefStringUserFree; stdcall;
    get_original_url        : function(self: PCefDownloadItem): PCefStringUserFree; stdcall;
    get_suggested_file_name : function(self: PCefDownloadItem): PCefStringUserFree; stdcall;
    get_content_disposition : function(self: PCefDownloadItem): PCefStringUserFree; stdcall;
    get_mime_type           : function(self: PCefDownloadItem): PCefStringUserFree; stdcall;
  end;

  // /include/capi/cef_download_handler_capi.h (cef_before_download_callback_t)
  TCefBeforeDownloadCallback = record
    base : TCefBase;
    cont : procedure(self: PCefBeforeDownloadCallback; const download_path: PCefString; show_dialog: Integer); stdcall;
  end;

  // /include/capi/cef_download_handler_capi.h (cef_download_item_callback_t)
  TCefDownloadItemCallback = record
    base   : TCefBase;
    cancel : procedure(self: PCefDownloadItemCallback); stdcall;
    pause  : procedure(self: PCefDownloadItemCallback); stdcall;
    resume : procedure(self: PCefDownloadItemCallback); stdcall;
  end;

  // /include/capi/cef_dom_capi.h (cef_domnode_t)
  TCefDomNode = record
    base                          : TCefBase;
    get_type                      : function(self: PCefDomNode): TCefDomNodeType; stdcall;
    is_text                       : function(self: PCefDomNode): Integer; stdcall;
    is_element                    : function(self: PCefDomNode): Integer; stdcall;
    is_editable                   : function(self: PCefDomNode): Integer; stdcall;
    is_form_control_element       : function(self: PCefDomNode): Integer; stdcall;
    get_form_control_element_type : function(self: PCefDomNode): PCefStringUserFree; stdcall;
    is_same                       : function(self, that: PCefDomNode): Integer; stdcall;
    get_name                      : function(self: PCefDomNode): PCefStringUserFree; stdcall;
    get_value                     : function(self: PCefDomNode): PCefStringUserFree; stdcall;
    set_value                     : function(self: PCefDomNode; const value: PCefString): Integer; stdcall;
    get_as_markup                 : function(self: PCefDomNode): PCefStringUserFree; stdcall;
    get_document                  : function(self: PCefDomNode): PCefDomDocument; stdcall;
    get_parent                    : function(self: PCefDomNode): PCefDomNode; stdcall;
    get_previous_sibling          : function(self: PCefDomNode): PCefDomNode; stdcall;
    get_next_sibling              : function(self: PCefDomNode): PCefDomNode; stdcall;
    has_children                  : function(self: PCefDomNode): Integer; stdcall;
    get_first_child               : function(self: PCefDomNode): PCefDomNode; stdcall;
    get_last_child                : function(self: PCefDomNode): PCefDomNode; stdcall;
    get_element_tag_name          : function(self: PCefDomNode): PCefStringUserFree; stdcall;
    has_element_attributes        : function(self: PCefDomNode): Integer; stdcall;
    has_element_attribute         : function(self: PCefDomNode; const attrName: PCefString): Integer; stdcall;
    get_element_attribute         : function(self: PCefDomNode; const attrName: PCefString): PCefStringUserFree; stdcall;
    get_element_attributes        : procedure(self: PCefDomNode; attrMap: TCefStringMap); stdcall;
    set_element_attribute         : function(self: PCefDomNode; const attrName, value: PCefString): Integer; stdcall;
    get_element_inner_text        : function(self: PCefDomNode): PCefStringUserFree; stdcall;
  end;

  // /include/capi/cef_dom_capi.h (cef_domdocument_t)
  TCefDomDocument = record
    base                        : TCefBase;
    get_type                    : function(self: PCefDomDocument): TCefDomDocumentType; stdcall;
    get_document                : function(self: PCefDomDocument): PCefDomNode; stdcall;
    get_body                    : function(self: PCefDomDocument): PCefDomNode; stdcall;
    get_head                    : function(self: PCefDomDocument): PCefDomNode; stdcall;
    get_title                   : function(self: PCefDomDocument): PCefStringUserFree; stdcall;
    get_element_by_id           : function(self: PCefDomDocument; const id: PCefString): PCefDomNode; stdcall;
    get_focused_node            : function(self: PCefDomDocument): PCefDomNode; stdcall;
    has_selection               : function(self: PCefDomDocument): Integer; stdcall;
    get_selection_start_offset  : function(self: PCefDomDocument): Integer; stdcall;
    get_selection_end_offset    : function(self: PCefDomDocument): Integer; stdcall;
    get_selection_as_markup     : function(self: PCefDomDocument): PCefStringUserFree; stdcall;
    get_selection_as_text       : function(self: PCefDomDocument): PCefStringUserFree; stdcall;
    get_base_url                : function(self: PCefDomDocument): PCefStringUserFree; stdcall;
    get_complete_url            : function(self: PCefDomDocument; const partialURL: PCefString): PCefStringUserFree; stdcall;
  end;

  PCefV8ValueArray = array[0..(High(Integer) div SizeOf(Pointer)) - 1] of PCefV8Value;

  // /include/capi/cef_v8_capi.h (cef_v8handler_t)
  TCefv8Handler = record
    base    : TCefBase;
    execute : function(self: PCefv8Handler; const name: PCefString; obj: PCefv8Value; argumentsCount: NativeUInt; const arguments: PPCefV8Value; var retval: PCefV8Value; var exception: TCefString): Integer; stdcall;
  end;

  // /include/capi/cef_v8_capi.h (cef_v8exception_t)
  TCefV8Exception = record
    base                      : TCefBase;
    get_message               : function(self: PCefV8Exception): PCefStringUserFree; stdcall;
    get_source_line           : function(self: PCefV8Exception): PCefStringUserFree; stdcall;
    get_script_resource_name  : function(self: PCefV8Exception): PCefStringUserFree; stdcall;
    get_line_number           : function(self: PCefV8Exception): Integer; stdcall;
    get_start_position        : function(self: PCefV8Exception): Integer; stdcall;
    get_end_position          : function(self: PCefV8Exception): Integer; stdcall;
    get_start_column          : function(self: PCefV8Exception): Integer; stdcall;
    get_end_column            : function(self: PCefV8Exception): Integer; stdcall;
  end;

  // /include/capi/cef_v8_capi.h (cef_v8value_t)
  TCefv8Value = record
    base                                : TCefBase;
    is_valid                            : function(self: PCefv8Value): Integer; stdcall;
    is_undefined                        : function(self: PCefv8Value): Integer; stdcall;
    is_null                             : function(self: PCefv8Value): Integer; stdcall;
    is_bool                             : function(self: PCefv8Value): Integer; stdcall;
    is_int                              : function(self: PCefv8Value): Integer; stdcall;
    is_uint                             : function(self: PCefv8Value): Integer; stdcall;
    is_double                           : function(self: PCefv8Value): Integer; stdcall;
    is_date                             : function(self: PCefv8Value): Integer; stdcall;
    is_string                           : function(self: PCefv8Value): Integer; stdcall;
    is_object                           : function(self: PCefv8Value): Integer; stdcall;
    is_array                            : function(self: PCefv8Value): Integer; stdcall;
    is_function                         : function(self: PCefv8Value): Integer; stdcall;
    is_same                             : function(self, that: PCefv8Value): Integer; stdcall;
    get_bool_value                      : function(self: PCefv8Value): Integer; stdcall;
    get_int_value                       : function(self: PCefv8Value): Integer; stdcall;
    get_uint_value                      : function(self: PCefv8Value): Cardinal; stdcall;
    get_double_value                    : function(self: PCefv8Value): Double; stdcall;
    get_date_value                      : function(self: PCefv8Value): TCefTime; stdcall;
    get_string_value                    : function(self: PCefv8Value): PCefStringUserFree; stdcall;
    is_user_created                     : function(self: PCefv8Value): Integer; stdcall;
    has_exception                       : function(self: PCefv8Value): Integer; stdcall;
    get_exception                       : function(self: PCefv8Value): PCefV8Exception; stdcall;
    clear_exception                     : function(self: PCefv8Value): Integer; stdcall;
    will_rethrow_exceptions             : function(self: PCefv8Value): Integer; stdcall;
    set_rethrow_exceptions              : function(self: PCefv8Value; rethrow: Integer): Integer; stdcall;
    has_value_bykey                     : function(self: PCefv8Value; const key: PCefString): Integer; stdcall;
    has_value_byindex                   : function(self: PCefv8Value; index: Integer): Integer; stdcall;
    delete_value_bykey                  : function(self: PCefv8Value; const key: PCefString): Integer; stdcall;
    delete_value_byindex                : function(self: PCefv8Value; index: Integer): Integer; stdcall;
    get_value_bykey                     : function(self: PCefv8Value; const key: PCefString): PCefv8Value; stdcall;
    get_value_byindex                   : function(self: PCefv8Value; index: Integer): PCefv8Value; stdcall;
    set_value_bykey                     : function(self: PCefv8Value; const key: PCefString; value: PCefv8Value; attribute: TCefV8PropertyAttributes): Integer; stdcall;
    set_value_byindex                   : function(self: PCefv8Value; index: Integer; value: PCefv8Value): Integer; stdcall;
    set_value_byaccessor                : function(self: PCefv8Value; const key: PCefString; settings: Integer; attribute: TCefV8PropertyAttributes): Integer; stdcall;
    get_keys                            : function(self: PCefv8Value; keys: TCefStringList): Integer; stdcall;
    set_user_data                       : function(self: PCefv8Value; user_data: PCefBase): Integer; stdcall;
    get_user_data                       : function(self: PCefv8Value): PCefBase; stdcall;
    get_externally_allocated_memory     : function(self: PCefv8Value): Integer; stdcall;
    adjust_externally_allocated_memory  : function(self: PCefv8Value; change_in_bytes: Integer): Integer; stdcall;
    get_array_length                    : function(self: PCefv8Value): Integer; stdcall;
    get_function_name                   : function(self: PCefv8Value): PCefStringUserFree; stdcall;
    get_function_handler                : function(self: PCefv8Value): PCefv8Handler; stdcall;
    execute_function                    : function(self: PCefv8Value; obj: PCefv8Value; argumentsCount: NativeUInt; const arguments: PPCefV8Value): PCefv8Value; stdcall;
    execute_function_with_context       : function(self: PCefv8Value; context: PCefv8Context; obj: PCefv8Value; argumentsCount: NativeUInt; const arguments: PPCefV8Value): PCefv8Value; stdcall;
  end;

  // /include/capi/cef_v8_capi.h (cef_v8context_t)
  TCefV8Context = record
    base            : TCefBase;
    get_task_runner : function(self: PCefv8Context): PCefTaskRunner; stdcall;
    is_valid        : function(self: PCefv8Context): Integer; stdcall;
    get_browser     : function(self: PCefv8Context): PCefBrowser; stdcall;
    get_frame       : function(self: PCefv8Context): PCefFrame; stdcall;
    get_global      : function(self: PCefv8Context): PCefv8Value; stdcall;
    enter           : function(self: PCefv8Context): Integer; stdcall;
    exit            : function(self: PCefv8Context): Integer; stdcall;
    is_same         : function(self, that: PCefv8Context): Integer; stdcall;
    eval            : function(self: PCefv8Context; const code: PCefString; var retval: PCefv8Value; var exception: PCefV8Exception): Integer; stdcall;
  end;

  // /include/capi/cef_v8_capi.h (cef_v8accessor_t)
  TCefV8Accessor = record
    base : TCefBase;
    get  : function(self: PCefV8Accessor; const name: PCefString; obj: PCefv8Value; out retval: PCefv8Value; exception: PCefString): Integer; stdcall;
    put  : function(self: PCefV8Accessor; const name: PCefString; obj, value: PCefv8Value; exception: PCefString): Integer; stdcall;
  end;

  // /include/capi/cef_frame_capi.h (cef_frame_t)
  TCefFrame = record
    base                : TCefBase;
    is_valid            : function(self: PCefFrame): Integer; stdcall;
    undo                : procedure(self: PCefFrame); stdcall;
    redo                : procedure(self: PCefFrame); stdcall;
    cut                 : procedure(self: PCefFrame); stdcall;
    copy                : procedure(self: PCefFrame); stdcall;
    paste               : procedure(self: PCefFrame); stdcall;
    del                 : procedure(self: PCefFrame); stdcall;
    select_all          : procedure(self: PCefFrame); stdcall;
    view_source         : procedure(self: PCefFrame); stdcall;
    get_source          : procedure(self: PCefFrame; visitor: PCefStringVisitor); stdcall;
    get_text            : procedure(self: PCefFrame; visitor: PCefStringVisitor); stdcall;
    load_request        : procedure(self: PCefFrame; request: PCefRequest); stdcall;
    load_url            : procedure(self: PCefFrame; const url: PCefString); stdcall;
    load_string         : procedure(self: PCefFrame; const stringVal, url: PCefString); stdcall;
    execute_java_script : procedure(self: PCefFrame; const code, script_url: PCefString; start_line: Integer); stdcall;
    is_main             : function(self: PCefFrame): Integer; stdcall;
    is_focused          : function(self: PCefFrame): Integer; stdcall;
    get_name            : function(self: PCefFrame): PCefStringUserFree; stdcall;
    get_identifier      : function(self: PCefFrame): Int64; stdcall;
    get_parent          : function(self: PCefFrame): PCefFrame; stdcall;
    get_url             : function(self: PCefFrame): PCefStringUserFree; stdcall;
    get_browser         : function(self: PCefFrame): PCefBrowser; stdcall;
    get_v8context       : function(self: PCefFrame): PCefv8Context; stdcall;
    visit_dom           : procedure(self: PCefFrame; visitor: PCefDomVisitor); stdcall;
  end;

  // /include/capi/cef_accessibility_handler_capi.h (cef_accessibility_handler_t)
  TCefAccessibilityHandler = record
    base                             : TCefBase;
    on_accessibility_tree_change     : procedure(self: PCefAccessibilityHandler; value: PCefValue); stdcall;
    on_accessibility_location_change : procedure(self: PCefAccessibilityHandler; value: PCefValue); stdcall;
  end;

  // /include/capi/cef_context_menu_handler_capi.h (cef_context_menu_handler_t)
  TCefContextMenuHandler = record
    base                      : TCefBase;
    on_before_context_menu    : procedure(self: PCefContextMenuHandler; browser: PCefBrowser; frame: PCefFrame; params: PCefContextMenuParams; model: PCefMenuModel); stdcall;
    run_context_menu          : function(self: PCefContextMenuHandler; browser: PCefBrowser; frame: PCefFrame; params: PCefContextMenuParams; model: PCefMenuModel; callback: PCefRunContextMenuCallback): Integer; stdcall;
    on_context_menu_command   : function(self: PCefContextMenuHandler; browser: PCefBrowser; frame: PCefFrame; params: PCefContextMenuParams; command_id: Integer; event_flags: TCefEventFlags): Integer; stdcall;
    on_context_menu_dismissed : procedure(self: PCefContextMenuHandler; browser: PCefBrowser; frame: PCefFrame); stdcall;
  end;

  // /include/capi/cef_client_capi.h (cef_client_t)
  TCefClient = record
    base                        : TCefBase;
    get_context_menu_handler    : function(self: PCefClient): PCefContextMenuHandler; stdcall;
    get_dialog_handler          : function(self: PCefClient): PCefDialogHandler; stdcall;
    get_display_handler         : function(self: PCefClient): PCefDisplayHandler; stdcall;
    get_download_handler        : function(self: PCefClient): PCefDownloadHandler; stdcall;
    get_drag_handler            : function(self: PCefClient): PCefDragHandler; stdcall;
    get_find_handler            : function(self: PCefClient): PCefFindHandler; stdcall;
    get_focus_handler           : function(self: PCefClient): PCefFocusHandler; stdcall;
    get_geolocation_handler     : function(self: PCefClient): PCefGeolocationHandler; stdcall;
    get_jsdialog_handler        : function(self: PCefClient): PCefJsDialogHandler; stdcall;
    get_keyboard_handler        : function(self: PCefClient): PCefKeyboardHandler; stdcall;
    get_life_span_handler       : function(self: PCefClient): PCefLifeSpanHandler; stdcall;
    get_load_handler            : function(self: PCefClient): PCefLoadHandler; stdcall;
    get_render_handler          : function(self: PCefClient): PCefRenderHandler; stdcall;
    get_request_handler         : function(self: PCefClient): PCefRequestHandler; stdcall;
    on_process_message_received : function(self: PCefClient; browser: PCefBrowser; source_process: TCefProcessId; message: PCefProcessMessage): Integer; stdcall;
  end;

  // /include/capi/cef_browser_capi.h (cef_browser_host_t)
  TCefBrowserHost = record
    base                              : TCefBase;
    get_browser                       : function(self: PCefBrowserHost): PCefBrowser; stdcall;
    close_browser                     : procedure(self: PCefBrowserHost; force_close: Integer); stdcall;
    set_focus                         : procedure(self: PCefBrowserHost; focus: Integer); stdcall;
    set_window_visibility             : procedure(self: PCefBrowserHost; visible: Integer); stdcall;
    get_window_handle                 : function(self: PCefBrowserHost): TCefWindowHandle; stdcall;
    get_opener_window_handle          : function(self: PCefBrowserHost): TCefWindowHandle; stdcall;
    get_client                        : function(self: PCefBrowserHost): PCefClient; stdcall;
    get_request_context               : function(self: PCefBrowserHost): PCefRequestContext; stdcall;
    get_zoom_level                    : function(self: PCefBrowserHost): Double; stdcall;
    set_zoom_level                    : procedure(self: PCefBrowserHost; zoomLevel: Double); stdcall;
    run_file_dialog                   : procedure(self: PCefBrowserHost; mode: TCefFileDialogMode; const title, default_file_path: PCefString; accept_filters: TCefStringList; selected_accept_filter: Integer; callback: PCefRunFileDialogCallback); stdcall;
    start_download                    : procedure(self: PCefBrowserHost; const url: PCefString); stdcall;
    print                             : procedure(self: PCefBrowserHost); stdcall;
    print_to_pdf                      : procedure(self: PCefBrowserHost; const path: PCefString; const settings: PCefPdfPrintSettings; callback: PCefPdfPrintCallback); stdcall;
    find                              : procedure(self: PCefBrowserHost; identifier: Integer; const searchText: PCefString; forward, matchCase, findNext: Integer); stdcall;
    stop_finding                      : procedure(self: PCefBrowserHost; clearSelection: Integer); stdcall;
    show_dev_tools                    : procedure(self: PCefBrowserHost; const windowInfo: PCefWindowInfo; client: PCefClient; const settings: PCefBrowserSettings; const inspect_element_at: PCefPoint); stdcall;
    close_dev_tools                   : procedure(self: PCefBrowserHost); stdcall;
    get_navigation_entries            : procedure(self: PCefBrowserHost; visitor: PCefNavigationEntryVisitor; current_only: Integer); stdcall;
    set_mouse_cursor_change_disabled  : procedure(self: PCefBrowserHost; disabled: Integer); stdcall;
    is_mouse_cursor_change_disabled   : function(self: PCefBrowserHost): Integer; stdcall;
    replace_misspelling               : procedure(self: PCefBrowserHost; const word: PCefString); stdcall;
    add_word_to_dictionary            : procedure(self: PCefBrowserHost; const word: PCefString); stdcall;
    is_window_rendering_disabled      : function(self: PCefBrowserHost): Integer; stdcall;
    was_resized                       : procedure(self: PCefBrowserHost); stdcall;
    was_hidden                        : procedure(self: PCefBrowserHost; hidden: Integer); stdcall;
    notify_screen_info_changed        : procedure(self: PCefBrowserHost); stdcall;
    invalidate                        : procedure(self: PCefBrowserHost; kind: TCefPaintElementType); stdcall;
    send_key_event                    : procedure(self: PCefBrowserHost; const event: PCefKeyEvent); stdcall;
    send_mouse_click_event            : procedure(self: PCefBrowserHost; const event: PCefMouseEvent; kind: TCefMouseButtonType; mouseUp, clickCount: Integer); stdcall;
    send_mouse_move_event             : procedure(self: PCefBrowserHost; const event: PCefMouseEvent; mouseLeave: Integer); stdcall;
    send_mouse_wheel_event            : procedure(self: PCefBrowserHost; const event: PCefMouseEvent; deltaX, deltaY: Integer); stdcall;
    send_focus_event                  : procedure(self: PCefBrowserHost; setFocus: Integer); stdcall;
    send_capture_lost_event           : procedure(self: PCefBrowserHost); stdcall;
    notify_move_or_resize_started     : procedure(self: PCefBrowserHost); stdcall;
    get_windowless_frame_rate         : function(self: PCefBrowserHost): Integer; stdcall;
    set_windowless_frame_rate         : procedure(self: PCefBrowserHost; frame_rate: Integer); stdcall;
    get_nstext_input_context                  : function(self: PCefBrowserHost): TCefTextInputContext; stdcall;
    handle_key_event_before_text_input_client : procedure(self: PCefBrowserHost; keyEvent: TCefEventHandle); stdcall;
    handle_key_event_after_text_input_client  : procedure(self: PCefBrowserHost; keyEvent: TCefEventHandle); stdcall;
    drag_target_drag_enter            : procedure(self: PCefBrowserHost; drag_data: PCefDragData; const event: PCefMouseEvent; allowed_ops: TCefDragOperations); stdcall;
    drag_target_drag_over             : procedure(self: PCefBrowserHost; const event: PCefMouseEvent; allowed_ops: TCefDragOperations); stdcall;
    drag_target_drag_leave            : procedure(self: PCefBrowserHost); stdcall;
    drag_target_drop                  : procedure(self: PCefBrowserHost; event: PCefMouseEvent); stdcall;
    drag_source_ended_at              : procedure(self: PCefBrowserHost; x, y: Integer; op: TCefDragOperation); stdcall;
    drag_source_system_drag_ended     : procedure(self: PCefBrowserHost); stdcall;
  end;

  // /include/capi/cef_browser_capi.h (cef_browser_t)
  TCefBrowser = record
    base                  : TCefBase;
    get_host              : function(self: PCefBrowser): PCefBrowserHost; stdcall;
    can_go_back           : function(self: PCefBrowser): Integer; stdcall;
    go_back               : procedure(self: PCefBrowser); stdcall;
    can_go_forward        : function(self: PCefBrowser): Integer; stdcall;
    go_forward            : procedure(self: PCefBrowser); stdcall;
    is_loading            : function(self: PCefBrowser): Integer; stdcall;
    reload                : procedure(self: PCefBrowser); stdcall;
    reload_ignore_cache   : procedure(self: PCefBrowser); stdcall;
    stop_load             : procedure(self: PCefBrowser); stdcall;
    get_identifier        : function(self: PCefBrowser): Integer; stdcall;
    is_same               : function(self, that: PCefBrowser): Integer; stdcall;
    is_popup              : function(self: PCefBrowser): Integer; stdcall;
    has_document          : function(self: PCefBrowser): Integer; stdcall;
    get_main_frame        : function(self: PCefBrowser): PCefFrame; stdcall;
    get_focused_frame     : function(self: PCefBrowser): PCefFrame; stdcall;
    get_frame_byident     : function(self: PCefBrowser; identifier: Int64): PCefFrame; stdcall;
    get_frame             : function(self: PCefBrowser; const name: PCefString): PCefFrame; stdcall;
    get_frame_count       : function(self: PCefBrowser): NativeUInt; stdcall;
    get_frame_identifiers : procedure(self: PCefBrowser; var identifiersCount: NativeUInt; var identifiers: Int64); stdcall;
    get_frame_names       : procedure(self: PCefBrowser; names: TCefStringList); stdcall;
    send_process_message  : function(self: PCefBrowser; target_process: TCefProcessId; message: PCefProcessMessage): Integer; stdcall;
  end;

  // /include/capi/cef_resource_bundle_handler_capi.h (cef_resource_bundle_handler_t)
  TCefResourceBundleHandler = record
    base                        : TCefBase;
    get_localized_string        : function(self: PCefResourceBundleHandler; string_id: Integer; string_val: PCefString): Integer; stdcall;
    get_data_resource           : function(self: PCefResourceBundleHandler; resource_id: Integer; var data: Pointer; var data_size: NativeUInt): Integer; stdcall;
    get_data_resource_for_scale : function(self: PCefResourceBundleHandler; resource_id: Integer; scale_factor: TCefScaleFactor; var data: Pointer; var data_size: NativeUInt): Integer; stdcall;
  end;

  // /include/capi/cef_browser_process_handler_capi.h (cef_browser_process_handler_t)
  TCefBrowserProcessHandler = record
    base                              : TCefBase;
    on_context_initialized            : procedure(self: PCefBrowserProcessHandler); stdcall;
    on_before_child_process_launch    : procedure(self: PCefBrowserProcessHandler; command_line: PCefCommandLine); stdcall;
    on_render_process_thread_created  : procedure(self: PCefBrowserProcessHandler; extra_info: PCefListValue); stdcall;
    get_print_handler                 : function(self: PCefBrowserProcessHandler): PCefPrintHandler; stdcall;
    //on_schedule_message_pump_work     : procedure(self: PCefBrowserProcessHandler; delay_ms: Int64); stdcall;
  end;

  // /include/capi/cef_app_capi.h (cef_app_t)
  TCefApp = record
    base                              : TCefBase;
    on_before_command_line_processing : procedure(self: PCefApp; const process_type: PCefString; command_line: PCefCommandLine); stdcall;
    on_register_custom_schemes        : procedure(self: PCefApp; registrar: PCefSchemeRegistrar); stdcall;
    get_resource_bundle_handler       : function(self: PCefApp): PCefResourceBundleHandler; stdcall;
    get_browser_process_handler       : function(self: PCefApp): PCefBrowserProcessHandler; stdcall;
    get_render_process_handler        : function(self: PCefApp): PCefRenderProcessHandler; stdcall;
  end;

implementation

end.
