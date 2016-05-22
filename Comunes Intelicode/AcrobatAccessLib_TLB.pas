unit AcrobatAccessLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 31855 $
// File generated on 17/04/2013 10:34:44 a.m. from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\Adobe\Reader 10.0\Reader\plug_ins\Accessibility.api (1)
// LIBID: {C523F390-9C83-11D3-9094-00104BD0D535}
// LCID: 0
// Helpfile: 
// HelpString: Acrobat Access 3.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Error creating palette bitmap of (TAccessible) : Server C:\Program Files (x86)\Adobe\Reader 10.0\Reader\plug_ins\Accessibility.api contains no icons
//   Error creating palette bitmap of (TPDDom) : Server C:\Program Files (x86)\Adobe\Reader 10.0\Reader\plug_ins\Accessibility.api contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AcrobatAccessLibMajorVersion = 3;
  AcrobatAccessLibMinorVersion = 0;

  LIBID_AcrobatAccessLib: TGUID = '{C523F390-9C83-11D3-9094-00104BD0D535}';

  IID_IAccessible: TGUID = '{618736E0-3C3D-11CF-810C-00AA00389B71}';
  IID_IOleWindow: TGUID = '{00000114-0000-0000-C000-000000000046}';
  IID_IAccID: TGUID = '{81F9B44F-BA3A-4F5D-9B51-090C74A9B3A4}';
  IID_IProtDoc: TGUID = '{36DE898D-AD48-40A5-B4B2-123F916BFBAB}';
  IID_IGetPDDomNode: TGUID = '{F9F2FE81-F764-4BD0-AFA5-5DE841DDB625}';
  IID_ISelectText: TGUID = '{B4848E37-7C66-40A6-9F66-D3A9BC8F4636}';
  IID_IPDDomNode: TGUID = '{5007373A-20D7-458F-9FFB-ABC900E3A831}';
  CLASS_Accessible: TGUID = '{C523F39F-9C83-11D3-9094-00104BD0D535}';
  IID_IPDDomElement: TGUID = '{198F17AE-B921-4308-9543-288D426A5C2B}';
  IID_IPDDomWord: TGUID = '{03C2AEA5-BEFA-4C84-A187-C9245AC784F6}';
  IID_IPDDomNodeExt: TGUID = '{4A894040-247E-4AFF-BB08-3489E9905235}';
  IID_IPDDomDocument: TGUID = '{00FFD6C4-1A94-44BC-AD3E-8AC18552E3E6}';
  IID_IPDDomGroupInfo: TGUID = '{35ADDC4B-B470-45F9-B29C-B6845949A4FE}';
  IID_IPDDomGlobalOptions: TGUID = '{C37B1794-B61E-402B-9C7C-B073DE579AC1}';
  CLASS_PDDom: TGUID = '{ECAF4D9D-B473-4EC5-86F4-3DBB46F3F31A}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum __MIDL___MIDL_itf_AcrobatAccess_0000_0009_0001
type
  __MIDL___MIDL_itf_AcrobatAccess_0000_0009_0001 = TOleEnum;
const
  IPDDOM_OPT_CLIPPEDLOCATION = $00000001;
  IPDDOM_OPT_RELATIVELOCATION = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IAccessible = interface;
  IAccessibleDisp = dispinterface;
  IOleWindow = interface;
  IAccID = interface;
  IAccIDDisp = dispinterface;
  IProtDoc = interface;
  IProtDocDisp = dispinterface;
  IGetPDDomNode = interface;
  IGetPDDomNodeDisp = dispinterface;
  ISelectText = interface;
  ISelectTextDisp = dispinterface;
  IPDDomNode = interface;
  IPDDomNodeDisp = dispinterface;
  IPDDomElement = interface;
  IPDDomElementDisp = dispinterface;
  IPDDomWord = interface;
  IPDDomWordDisp = dispinterface;
  IPDDomNodeExt = interface;
  IPDDomNodeExtDisp = dispinterface;
  IPDDomDocument = interface;
  IPDDomDocumentDisp = dispinterface;
  IPDDomGroupInfo = interface;
  IPDDomGroupInfoDisp = dispinterface;
  IPDDomGlobalOptions = interface;
  IPDDomGlobalOptionsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Accessible = IAccessible;
  PDDom = IPDDomNode;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  wireHWND = ^_RemotableHandle; 
  PInteger1 = ^Integer; {*}


  __MIDL_IWinTypes_0009 = record
    case Integer of
      0: (hInproc: Integer);
      1: (hRemote: Integer);
  end;

  _RemotableHandle = record
    fContext: Integer;
    u: __MIDL_IWinTypes_0009;
  end;

  IPDDomOptIds = __MIDL___MIDL_itf_AcrobatAccess_0000_0009_0001; 

// *********************************************************************//
// Interface: IAccessible
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {618736E0-3C3D-11CF-810C-00AA00389B71}
// *********************************************************************//
  IAccessible = interface(IDispatch)
    ['{618736E0-3C3D-11CF-810C-00AA00389B71}']
    function Get_accParent: IDispatch; safecall;
    function Get_accChildCount: Integer; safecall;
    function Get_accChild(varChild: OleVariant): IDispatch; safecall;
    function Get_accName(varChild: OleVariant): WideString; safecall;
    function Get_accValue(varChild: OleVariant): WideString; safecall;
    function Get_accDescription(varChild: OleVariant): WideString; safecall;
    function Get_accRole(varChild: OleVariant): OleVariant; safecall;
    function Get_accState(varChild: OleVariant): OleVariant; safecall;
    function Get_accHelp(varChild: OleVariant): WideString; safecall;
    function Get_accHelpTopic(out pszHelpFile: WideString; varChild: OleVariant): Integer; safecall;
    function Get_accKeyboardShortcut(varChild: OleVariant): WideString; safecall;
    function Get_accFocus: OleVariant; safecall;
    function Get_accSelection: OleVariant; safecall;
    function Get_accDefaultAction(varChild: OleVariant): WideString; safecall;
    procedure accSelect(flagsSelect: Integer; varChild: OleVariant); safecall;
    procedure accLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer; varChild: OleVariant); safecall;
    function accNavigate(navDir: Integer; varStart: OleVariant): OleVariant; safecall;
    function accHitTest(xLeft: Integer; yTop: Integer): OleVariant; safecall;
    procedure accDoDefaultAction(varChild: OleVariant); safecall;
    procedure Set_accName(varChild: OleVariant; const pszName: WideString); safecall;
    procedure Set_accValue(varChild: OleVariant; const pszValue: WideString); safecall;
    property accParent: IDispatch read Get_accParent;
    property accChildCount: Integer read Get_accChildCount;
    property accChild[varChild: OleVariant]: IDispatch read Get_accChild;
    property accName[varChild: OleVariant]: WideString read Get_accName write Set_accName;
    property accValue[varChild: OleVariant]: WideString read Get_accValue write Set_accValue;
    property accDescription[varChild: OleVariant]: WideString read Get_accDescription;
    property accRole[varChild: OleVariant]: OleVariant read Get_accRole;
    property accState[varChild: OleVariant]: OleVariant read Get_accState;
    property accHelp[varChild: OleVariant]: WideString read Get_accHelp;
    property accHelpTopic[out pszHelpFile: WideString; varChild: OleVariant]: Integer read Get_accHelpTopic;
    property accKeyboardShortcut[varChild: OleVariant]: WideString read Get_accKeyboardShortcut;
    property accFocus: OleVariant read Get_accFocus;
    property accSelection: OleVariant read Get_accSelection;
    property accDefaultAction[varChild: OleVariant]: WideString read Get_accDefaultAction;
  end;

// *********************************************************************//
// DispIntf:  IAccessibleDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {618736E0-3C3D-11CF-810C-00AA00389B71}
// *********************************************************************//
  IAccessibleDisp = dispinterface
    ['{618736E0-3C3D-11CF-810C-00AA00389B71}']
    property accParent: IDispatch readonly dispid -5000;
    property accChildCount: Integer readonly dispid -5001;
    property accChild[varChild: OleVariant]: IDispatch readonly dispid -5002;
    property accName[varChild: OleVariant]: WideString dispid -5003;
    property accValue[varChild: OleVariant]: WideString dispid -5004;
    property accDescription[varChild: OleVariant]: WideString readonly dispid -5005;
    property accRole[varChild: OleVariant]: OleVariant readonly dispid -5006;
    property accState[varChild: OleVariant]: OleVariant readonly dispid -5007;
    property accHelp[varChild: OleVariant]: WideString readonly dispid -5008;
    property accHelpTopic[out pszHelpFile: WideString; varChild: OleVariant]: Integer readonly dispid -5009;
    property accKeyboardShortcut[varChild: OleVariant]: WideString readonly dispid -5010;
    property accFocus: OleVariant readonly dispid -5011;
    property accSelection: OleVariant readonly dispid -5012;
    property accDefaultAction[varChild: OleVariant]: WideString readonly dispid -5013;
    procedure accSelect(flagsSelect: Integer; varChild: OleVariant); dispid -5014;
    procedure accLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer; varChild: OleVariant); dispid -5015;
    function accNavigate(navDir: Integer; varStart: OleVariant): OleVariant; dispid -5016;
    function accHitTest(xLeft: Integer; yTop: Integer): OleVariant; dispid -5017;
    procedure accDoDefaultAction(varChild: OleVariant); dispid -5018;
  end;

// *********************************************************************//
// Interface: IOleWindow
// Flags:     (0)
// GUID:      {00000114-0000-0000-C000-000000000046}
// *********************************************************************//
  IOleWindow = interface(IUnknown)
    ['{00000114-0000-0000-C000-000000000046}']
    function GetWindow(out phwnd: wireHWND): HResult; stdcall;
    function ContextSensitiveHelp(fEnterMode: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IAccID
// Flags:     (320) Dual OleAutomation
// GUID:      {81F9B44F-BA3A-4F5D-9B51-090C74A9B3A4}
// *********************************************************************//
  IAccID = interface(IUnknown)
    ['{81F9B44F-BA3A-4F5D-9B51-090C74A9B3A4}']
    function get_accID: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAccIDDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {81F9B44F-BA3A-4F5D-9B51-090C74A9B3A4}
// *********************************************************************//
  IAccIDDisp = dispinterface
    ['{81F9B44F-BA3A-4F5D-9B51-090C74A9B3A4}']
    function get_accID: Integer; dispid 22;
  end;

// *********************************************************************//
// Interface: IProtDoc
// Flags:     (320) Dual OleAutomation
// GUID:      {36DE898D-AD48-40A5-B4B2-123F916BFBAB}
// *********************************************************************//
  IProtDoc = interface(IUnknown)
    ['{36DE898D-AD48-40A5-B4B2-123F916BFBAB}']
    function get_protDoc(clientData: Integer): IDispatch; safecall;
  end;

// *********************************************************************//
// DispIntf:  IProtDocDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {36DE898D-AD48-40A5-B4B2-123F916BFBAB}
// *********************************************************************//
  IProtDocDisp = dispinterface
    ['{36DE898D-AD48-40A5-B4B2-123F916BFBAB}']
    function get_protDoc(clientData: Integer): IDispatch; dispid 23;
  end;

// *********************************************************************//
// Interface: IGetPDDomNode
// Flags:     (320) Dual OleAutomation
// GUID:      {F9F2FE81-F764-4BD0-AFA5-5DE841DDB625}
// *********************************************************************//
  IGetPDDomNode = interface(IUnknown)
    ['{F9F2FE81-F764-4BD0-AFA5-5DE841DDB625}']
    function get_PDDomNode(varID: OleVariant): IPDDomNode; safecall;
  end;

// *********************************************************************//
// DispIntf:  IGetPDDomNodeDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {F9F2FE81-F764-4BD0-AFA5-5DE841DDB625}
// *********************************************************************//
  IGetPDDomNodeDisp = dispinterface
    ['{F9F2FE81-F764-4BD0-AFA5-5DE841DDB625}']
    function get_PDDomNode(varID: OleVariant): IPDDomNode; dispid 24;
  end;

// *********************************************************************//
// Interface: ISelectText
// Flags:     (320) Dual OleAutomation
// GUID:      {B4848E37-7C66-40A6-9F66-D3A9BC8F4636}
// *********************************************************************//
  ISelectText = interface(IUnknown)
    ['{B4848E37-7C66-40A6-9F66-D3A9BC8F4636}']
    procedure selectText(startID: Integer; startCharIndex: Integer; stopID: Integer; 
                         stopCharIndex: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISelectTextDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {B4848E37-7C66-40A6-9F66-D3A9BC8F4636}
// *********************************************************************//
  ISelectTextDisp = dispinterface
    ['{B4848E37-7C66-40A6-9F66-D3A9BC8F4636}']
    procedure selectText(startID: Integer; startCharIndex: Integer; stopID: Integer; 
                         stopCharIndex: Integer); dispid 23;
  end;

// *********************************************************************//
// Interface: IPDDomNode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5007373A-20D7-458F-9FFB-ABC900E3A831}
// *********************************************************************//
  IPDDomNode = interface(IDispatch)
    ['{5007373A-20D7-458F-9FFB-ABC900E3A831}']
    function GetParent: IPDDomNode; safecall;
    function GetType: Integer; safecall;
    function GetChildCount: Integer; safecall;
    function GetChild(index: Integer): IPDDomNode; safecall;
    function GetName: WideString; safecall;
    function GetValue: WideString; safecall;
    function IsSame(const node: IPDDomNode): Integer; safecall;
    function GetTextContent: WideString; safecall;
    procedure GetLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer); safecall;
    procedure GetFontInfo(out fontStatus: Integer; out pszName: WideString; out fontSize: Single; 
                          out fontFlags: Integer; out red: Single; out green: Single; 
                          out blue: Single); safecall;
    function GetFromID(const id: WideString): IPDDomNode; safecall;
    function GetIAccessible: IAccessible; safecall;
    procedure ScrollTo; safecall;
    function GetTextInLines(visibleOnly: Integer): IPDDomNode; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDDomNodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5007373A-20D7-458F-9FFB-ABC900E3A831}
// *********************************************************************//
  IPDDomNodeDisp = dispinterface
    ['{5007373A-20D7-458F-9FFB-ABC900E3A831}']
    function GetParent: IPDDomNode; dispid 1610743808;
    function GetType: Integer; dispid 1610743809;
    function GetChildCount: Integer; dispid 1610743810;
    function GetChild(index: Integer): IPDDomNode; dispid 1610743811;
    function GetName: WideString; dispid 1610743812;
    function GetValue: WideString; dispid 1610743813;
    function IsSame(const node: IPDDomNode): Integer; dispid 1610743814;
    function GetTextContent: WideString; dispid 1610743815;
    procedure GetLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer); dispid 1610743816;
    procedure GetFontInfo(out fontStatus: Integer; out pszName: WideString; out fontSize: Single; 
                          out fontFlags: Integer; out red: Single; out green: Single; 
                          out blue: Single); dispid 1610743817;
    function GetFromID(const id: WideString): IPDDomNode; dispid 1610743818;
    function GetIAccessible: IAccessible; dispid 1610743819;
    procedure ScrollTo; dispid 1610743820;
    function GetTextInLines(visibleOnly: Integer): IPDDomNode; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IPDDomElement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {198F17AE-B921-4308-9543-288D426A5C2B}
// *********************************************************************//
  IPDDomElement = interface(IPDDomNode)
    ['{198F17AE-B921-4308-9543-288D426A5C2B}']
    function GetTagName: WideString; safecall;
    function GetStdName: WideString; safecall;
    function GetID: WideString; safecall;
    function GetAttribute(const pszAttr: WideString; const pszOwner: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDDomElementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {198F17AE-B921-4308-9543-288D426A5C2B}
// *********************************************************************//
  IPDDomElementDisp = dispinterface
    ['{198F17AE-B921-4308-9543-288D426A5C2B}']
    function GetTagName: WideString; dispid 1610809344;
    function GetStdName: WideString; dispid 1610809345;
    function GetID: WideString; dispid 1610809346;
    function GetAttribute(const pszAttr: WideString; const pszOwner: WideString): WideString; dispid 1610809347;
    function GetParent: IPDDomNode; dispid 1610743808;
    function GetType: Integer; dispid 1610743809;
    function GetChildCount: Integer; dispid 1610743810;
    function GetChild(index: Integer): IPDDomNode; dispid 1610743811;
    function GetName: WideString; dispid 1610743812;
    function GetValue: WideString; dispid 1610743813;
    function IsSame(const node: IPDDomNode): Integer; dispid 1610743814;
    function GetTextContent: WideString; dispid 1610743815;
    procedure GetLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer); dispid 1610743816;
    procedure GetFontInfo(out fontStatus: Integer; out pszName: WideString; out fontSize: Single; 
                          out fontFlags: Integer; out red: Single; out green: Single; 
                          out blue: Single); dispid 1610743817;
    function GetFromID(const id: WideString): IPDDomNode; dispid 1610743818;
    function GetIAccessible: IAccessible; dispid 1610743819;
    procedure ScrollTo; dispid 1610743820;
    function GetTextInLines(visibleOnly: Integer): IPDDomNode; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IPDDomWord
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03C2AEA5-BEFA-4C84-A187-C9245AC784F6}
// *********************************************************************//
  IPDDomWord = interface(IPDDomNode)
    ['{03C2AEA5-BEFA-4C84-A187-C9245AC784F6}']
    function LastWordOfLine: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDDomWordDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03C2AEA5-BEFA-4C84-A187-C9245AC784F6}
// *********************************************************************//
  IPDDomWordDisp = dispinterface
    ['{03C2AEA5-BEFA-4C84-A187-C9245AC784F6}']
    function LastWordOfLine: Integer; dispid 1610809344;
    function GetParent: IPDDomNode; dispid 1610743808;
    function GetType: Integer; dispid 1610743809;
    function GetChildCount: Integer; dispid 1610743810;
    function GetChild(index: Integer): IPDDomNode; dispid 1610743811;
    function GetName: WideString; dispid 1610743812;
    function GetValue: WideString; dispid 1610743813;
    function IsSame(const node: IPDDomNode): Integer; dispid 1610743814;
    function GetTextContent: WideString; dispid 1610743815;
    procedure GetLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer); dispid 1610743816;
    procedure GetFontInfo(out fontStatus: Integer; out pszName: WideString; out fontSize: Single; 
                          out fontFlags: Integer; out red: Single; out green: Single; 
                          out blue: Single); dispid 1610743817;
    function GetFromID(const id: WideString): IPDDomNode; dispid 1610743818;
    function GetIAccessible: IAccessible; dispid 1610743819;
    procedure ScrollTo; dispid 1610743820;
    function GetTextInLines(visibleOnly: Integer): IPDDomNode; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IPDDomNodeExt
// Flags:     (320) Dual OleAutomation
// GUID:      {4A894040-247E-4AFF-BB08-3489E9905235}
// *********************************************************************//
  IPDDomNodeExt = interface(IUnknown)
    ['{4A894040-247E-4AFF-BB08-3489E9905235}']
    function GetState: Integer; safecall;
    function Navigate(navDir: Integer): IPDDomNode; safecall;
    procedure SetFocus; safecall;
    function GetIndex: Integer; safecall;
    procedure GetPageNum(out firstPage: Integer; out lastPage: Integer); safecall;
    procedure DoDefaultAction; safecall;
    procedure ScrollToEx(favorLeft: Integer; favorTop: Integer); safecall;
    procedure Relationship(const node: IPDDomNode; out pRel: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDDomNodeExtDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {4A894040-247E-4AFF-BB08-3489E9905235}
// *********************************************************************//
  IPDDomNodeExtDisp = dispinterface
    ['{4A894040-247E-4AFF-BB08-3489E9905235}']
    function GetState: Integer; dispid 1610678272;
    function Navigate(navDir: Integer): IPDDomNode; dispid 1610678273;
    procedure SetFocus; dispid 1610678274;
    function GetIndex: Integer; dispid 1610678275;
    procedure GetPageNum(out firstPage: Integer; out lastPage: Integer); dispid 1610678276;
    procedure DoDefaultAction; dispid 1610678277;
    procedure ScrollToEx(favorLeft: Integer; favorTop: Integer); dispid 1610678278;
    procedure Relationship(const node: IPDDomNode; out pRel: Integer); dispid 1610678279;
  end;

// *********************************************************************//
// Interface: IPDDomDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00FFD6C4-1A94-44BC-AD3E-8AC18552E3E6}
// *********************************************************************//
  IPDDomDocument = interface(IPDDomElement)
    ['{00FFD6C4-1A94-44BC-AD3E-8AC18552E3E6}']
    function GetFocusNode: IPDDomNode; safecall;
    function NextFocusNode(forward: Integer): IPDDomNode; safecall;
    procedure GetDocInfo(out fileName: WideString; out nPages: Integer; 
                         out firstVisiblePage: Integer; out lastVisiblePage: Integer; 
                         out status: Integer; out lang: WideString); safecall;
    procedure selectText(const startID: IPDDomWord; startCharIndex: Integer; 
                         const stopID: IPDDomWord; stopCharIndex: Integer); safecall;
    procedure GetTextSelection(out pSelection: WideString); safecall;
    procedure GetSelectionBounds(out pStart: IPDDomWord; out startIndex: Integer; 
                                 out pStop: IPDDomWord; var stopIndex: Integer); safecall;
    procedure GetCaret(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                       out pcyHeight: Integer; out node: IPDDomNode; out index: Integer); safecall;
    procedure SetCaret(const node: IPDDomWord; index: Integer); safecall;
    procedure GoToPage(pageNum: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDDomDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00FFD6C4-1A94-44BC-AD3E-8AC18552E3E6}
// *********************************************************************//
  IPDDomDocumentDisp = dispinterface
    ['{00FFD6C4-1A94-44BC-AD3E-8AC18552E3E6}']
    function GetFocusNode: IPDDomNode; dispid 1610874880;
    function NextFocusNode(forward: Integer): IPDDomNode; dispid 1610874881;
    procedure GetDocInfo(out fileName: WideString; out nPages: Integer; 
                         out firstVisiblePage: Integer; out lastVisiblePage: Integer; 
                         out status: Integer; out lang: WideString); dispid 1610874882;
    procedure selectText(const startID: IPDDomWord; startCharIndex: Integer; 
                         const stopID: IPDDomWord; stopCharIndex: Integer); dispid 1610874883;
    procedure GetTextSelection(out pSelection: WideString); dispid 1610874884;
    procedure GetSelectionBounds(out pStart: IPDDomWord; out startIndex: Integer; 
                                 out pStop: IPDDomWord; var stopIndex: Integer); dispid 1610874885;
    procedure GetCaret(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                       out pcyHeight: Integer; out node: IPDDomNode; out index: Integer); dispid 1610874886;
    procedure SetCaret(const node: IPDDomWord; index: Integer); dispid 1610874887;
    procedure GoToPage(pageNum: Integer); dispid 1610874888;
    function GetTagName: WideString; dispid 1610809344;
    function GetStdName: WideString; dispid 1610809345;
    function GetID: WideString; dispid 1610809346;
    function GetAttribute(const pszAttr: WideString; const pszOwner: WideString): WideString; dispid 1610809347;
    function GetParent: IPDDomNode; dispid 1610743808;
    function GetType: Integer; dispid 1610743809;
    function GetChildCount: Integer; dispid 1610743810;
    function GetChild(index: Integer): IPDDomNode; dispid 1610743811;
    function GetName: WideString; dispid 1610743812;
    function GetValue: WideString; dispid 1610743813;
    function IsSame(const node: IPDDomNode): Integer; dispid 1610743814;
    function GetTextContent: WideString; dispid 1610743815;
    procedure GetLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer); dispid 1610743816;
    procedure GetFontInfo(out fontStatus: Integer; out pszName: WideString; out fontSize: Single; 
                          out fontFlags: Integer; out red: Single; out green: Single; 
                          out blue: Single); dispid 1610743817;
    function GetFromID(const id: WideString): IPDDomNode; dispid 1610743818;
    function GetIAccessible: IAccessible; dispid 1610743819;
    procedure ScrollTo; dispid 1610743820;
    function GetTextInLines(visibleOnly: Integer): IPDDomNode; dispid 1610743821;
  end;

// *********************************************************************//
// Interface: IPDDomGroupInfo
// Flags:     (320) Dual OleAutomation
// GUID:      {35ADDC4B-B470-45F9-B29C-B6845949A4FE}
// *********************************************************************//
  IPDDomGroupInfo = interface(IUnknown)
    ['{35ADDC4B-B470-45F9-B29C-B6845949A4FE}']
    procedure GetGroupPosition(out groupSize: Integer; out position: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDDomGroupInfoDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {35ADDC4B-B470-45F9-B29C-B6845949A4FE}
// *********************************************************************//
  IPDDomGroupInfoDisp = dispinterface
    ['{35ADDC4B-B470-45F9-B29C-B6845949A4FE}']
    procedure GetGroupPosition(out groupSize: Integer; out position: Integer); dispid 24;
  end;

// *********************************************************************//
// Interface: IPDDomGlobalOptions
// Flags:     (320) Dual OleAutomation
// GUID:      {C37B1794-B61E-402B-9C7C-B073DE579AC1}
// *********************************************************************//
  IPDDomGlobalOptions = interface(IUnknown)
    ['{C37B1794-B61E-402B-9C7C-B073DE579AC1}']
    function GetOption(optId: IPDDomOptIds): OleVariant; safecall;
    procedure SetOption(optId: IPDDomOptIds; value: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDDomGlobalOptionsDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {C37B1794-B61E-402B-9C7C-B073DE579AC1}
// *********************************************************************//
  IPDDomGlobalOptionsDisp = dispinterface
    ['{C37B1794-B61E-402B-9C7C-B073DE579AC1}']
    function GetOption(optId: IPDDomOptIds): OleVariant; dispid 1;
    procedure SetOption(optId: IPDDomOptIds; value: OleVariant); dispid 2;
  end;

// *********************************************************************//
// The Class CoAccessible provides a Create and CreateRemote method to          
// create instances of the default interface IAccessible exposed by              
// the CoClass Accessible. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAccessible = class
    class function Create: IAccessible;
    class function CreateRemote(const MachineName: string): IAccessible;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAccessible
// Help String      : Accessible Class
// Default Interface: IAccessible
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAccessibleProperties= class;
{$ENDIF}
  TAccessible = class(TOleServer)
  private
    FIntf: IAccessible;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TAccessibleProperties;
    function GetServerProperties: TAccessibleProperties;
{$ENDIF}
    function GetDefaultInterface: IAccessible;
  protected
    procedure InitServerData; override;
    function Get_accParent: IDispatch;
    function Get_accChildCount: Integer;
    function Get_accChild(varChild: OleVariant): IDispatch;
    function Get_accName(varChild: OleVariant): WideString;
    function Get_accValue(varChild: OleVariant): WideString;
    function Get_accDescription(varChild: OleVariant): WideString;
    function Get_accRole(varChild: OleVariant): OleVariant;
    function Get_accState(varChild: OleVariant): OleVariant;
    function Get_accHelp(varChild: OleVariant): WideString;
    function Get_accHelpTopic(out pszHelpFile: WideString; varChild: OleVariant): Integer;
    function Get_accKeyboardShortcut(varChild: OleVariant): WideString;
    function Get_accFocus: OleVariant;
    function Get_accSelection: OleVariant;
    function Get_accDefaultAction(varChild: OleVariant): WideString;
    procedure Set_accName(varChild: OleVariant; const pszName: WideString);
    procedure Set_accValue(varChild: OleVariant; const pszValue: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IAccessible);
    procedure Disconnect; override;
    procedure accSelect(flagsSelect: Integer); overload;
    procedure accSelect(flagsSelect: Integer; varChild: OleVariant); overload;
    procedure accLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer); overload;
    procedure accLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer; varChild: OleVariant); overload;
    function accNavigate(navDir: Integer): OleVariant; overload;
    function accNavigate(navDir: Integer; varStart: OleVariant): OleVariant; overload;
    function accHitTest(xLeft: Integer; yTop: Integer): OleVariant;
    procedure accDoDefaultAction; overload;
    procedure accDoDefaultAction(varChild: OleVariant); overload;
    property DefaultInterface: IAccessible read GetDefaultInterface;
    property accParent: IDispatch read Get_accParent;
    property accChildCount: Integer read Get_accChildCount;
    property accChild[varChild: OleVariant]: IDispatch read Get_accChild;
    property accName[varChild: OleVariant]: WideString read Get_accName write Set_accName;
    property accValue[varChild: OleVariant]: WideString read Get_accValue write Set_accValue;
    property accDescription[varChild: OleVariant]: WideString read Get_accDescription;
    property accRole[varChild: OleVariant]: OleVariant read Get_accRole;
    property accState[varChild: OleVariant]: OleVariant read Get_accState;
    property accHelp[varChild: OleVariant]: WideString read Get_accHelp;
    property accHelpTopic[out pszHelpFile: WideString; varChild: OleVariant]: Integer read Get_accHelpTopic;
    property accKeyboardShortcut[varChild: OleVariant]: WideString read Get_accKeyboardShortcut;
    property accFocus: OleVariant read Get_accFocus;
    property accSelection: OleVariant read Get_accSelection;
    property accDefaultAction[varChild: OleVariant]: WideString read Get_accDefaultAction;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAccessibleProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAccessible
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAccessibleProperties = class(TPersistent)
  private
    FServer:    TAccessible;
    function    GetDefaultInterface: IAccessible;
    constructor Create(AServer: TAccessible);
  protected
    function Get_accParent: IDispatch;
    function Get_accChildCount: Integer;
    function Get_accChild(varChild: OleVariant): IDispatch;
    function Get_accName(varChild: OleVariant): WideString;
    function Get_accValue(varChild: OleVariant): WideString;
    function Get_accDescription(varChild: OleVariant): WideString;
    function Get_accRole(varChild: OleVariant): OleVariant;
    function Get_accState(varChild: OleVariant): OleVariant;
    function Get_accHelp(varChild: OleVariant): WideString;
    function Get_accHelpTopic(out pszHelpFile: WideString; varChild: OleVariant): Integer;
    function Get_accKeyboardShortcut(varChild: OleVariant): WideString;
    function Get_accFocus: OleVariant;
    function Get_accSelection: OleVariant;
    function Get_accDefaultAction(varChild: OleVariant): WideString;
    procedure Set_accName(varChild: OleVariant; const pszName: WideString);
    procedure Set_accValue(varChild: OleVariant; const pszValue: WideString);
  public
    property DefaultInterface: IAccessible read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPDDom provides a Create and CreateRemote method to          
// create instances of the default interface IPDDomNode exposed by              
// the CoClass PDDom. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPDDom = class
    class function Create: IPDDomNode;
    class function CreateRemote(const MachineName: string): IPDDomNode;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPDDom
// Help String      : PDDom Class
// Default Interface: IPDDomNode
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPDDomProperties= class;
{$ENDIF}
  TPDDom = class(TOleServer)
  private
    FIntf: IPDDomNode;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPDDomProperties;
    function GetServerProperties: TPDDomProperties;
{$ENDIF}
    function GetDefaultInterface: IPDDomNode;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDDomNode);
    procedure Disconnect; override;
    function GetParent: IPDDomNode;
    function GetType: Integer;
    function GetChildCount: Integer;
    function GetChild(index: Integer): IPDDomNode;
    function GetName: WideString;
    function GetValue: WideString;
    function IsSame(const node: IPDDomNode): Integer;
    function GetTextContent: WideString;
    procedure GetLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                          out pcyHeight: Integer);
    procedure GetFontInfo(out fontStatus: Integer; out pszName: WideString; out fontSize: Single; 
                          out fontFlags: Integer; out red: Single; out green: Single; 
                          out blue: Single);
    function GetFromID(const id: WideString): IPDDomNode;
    function GetIAccessible: IAccessible;
    procedure ScrollTo;
    function GetTextInLines(visibleOnly: Integer): IPDDomNode;
    property DefaultInterface: IPDDomNode read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPDDomProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPDDom
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPDDomProperties = class(TPersistent)
  private
    FServer:    TPDDom;
    function    GetDefaultInterface: IPDDomNode;
    constructor Create(AServer: TPDDom);
  protected
  public
    property DefaultInterface: IPDDomNode read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoAccessible.Create: IAccessible;
begin
  Result := CreateComObject(CLASS_Accessible) as IAccessible;
end;

class function CoAccessible.CreateRemote(const MachineName: string): IAccessible;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Accessible) as IAccessible;
end;

procedure TAccessible.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C523F39F-9C83-11D3-9094-00104BD0D535}';
    IntfIID:   '{618736E0-3C3D-11CF-810C-00AA00389B71}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAccessible.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IAccessible;
  end;
end;

procedure TAccessible.ConnectTo(svrIntf: IAccessible);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAccessible.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAccessible.GetDefaultInterface: IAccessible;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAccessible.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAccessibleProperties.Create(Self);
{$ENDIF}
end;

destructor TAccessible.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAccessible.GetServerProperties: TAccessibleProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAccessible.Get_accParent: IDispatch;
begin
    Result := DefaultInterface.accParent;
end;

function TAccessible.Get_accChildCount: Integer;
begin
    Result := DefaultInterface.accChildCount;
end;

function TAccessible.Get_accChild(varChild: OleVariant): IDispatch;
begin
    Result := DefaultInterface.accChild[varChild];
end;

function TAccessible.Get_accName(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accName[varChild];
end;

function TAccessible.Get_accValue(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accValue[varChild];
end;

function TAccessible.Get_accDescription(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accDescription[varChild];
end;

function TAccessible.Get_accRole(varChild: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.accRole[varChild];
end;

function TAccessible.Get_accState(varChild: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.accState[varChild];
end;

function TAccessible.Get_accHelp(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accHelp[varChild];
end;

function TAccessible.Get_accHelpTopic(out pszHelpFile: WideString; varChild: OleVariant): Integer;
begin
    Result := DefaultInterface.accHelpTopic[pszHelpFile, varChild];
end;

function TAccessible.Get_accKeyboardShortcut(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accKeyboardShortcut[varChild];
end;

function TAccessible.Get_accFocus: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.accFocus;
end;

function TAccessible.Get_accSelection: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.accSelection;
end;

function TAccessible.Get_accDefaultAction(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accDefaultAction[varChild];
end;

procedure TAccessible.Set_accName(varChild: OleVariant; const pszName: WideString);
  { Warning: The property accName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accName := pszName;
end;

procedure TAccessible.Set_accValue(varChild: OleVariant; const pszValue: WideString);
  { Warning: The property accValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accValue := pszValue;
end;

procedure TAccessible.accSelect(flagsSelect: Integer);
begin
  DefaultInterface.accSelect(flagsSelect, EmptyParam);
end;

procedure TAccessible.accSelect(flagsSelect: Integer; varChild: OleVariant);
begin
  DefaultInterface.accSelect(flagsSelect, varChild);
end;

procedure TAccessible.accLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                                  out pcyHeight: Integer);
begin
  DefaultInterface.accLocation(pxLeft, pyTop, pcxWidth, pcyHeight, EmptyParam);
end;

procedure TAccessible.accLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                                  out pcyHeight: Integer; varChild: OleVariant);
begin
  DefaultInterface.accLocation(pxLeft, pyTop, pcxWidth, pcyHeight, varChild);
end;

function TAccessible.accNavigate(navDir: Integer): OleVariant;
begin
  Result := DefaultInterface.accNavigate(navDir, EmptyParam);
end;

function TAccessible.accNavigate(navDir: Integer; varStart: OleVariant): OleVariant;
begin
  Result := DefaultInterface.accNavigate(navDir, varStart);
end;

function TAccessible.accHitTest(xLeft: Integer; yTop: Integer): OleVariant;
begin
  Result := DefaultInterface.accHitTest(xLeft, yTop);
end;

procedure TAccessible.accDoDefaultAction;
begin
  DefaultInterface.accDoDefaultAction(EmptyParam);
end;

procedure TAccessible.accDoDefaultAction(varChild: OleVariant);
begin
  DefaultInterface.accDoDefaultAction(varChild);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAccessibleProperties.Create(AServer: TAccessible);
begin
  inherited Create;
  FServer := AServer;
end;

function TAccessibleProperties.GetDefaultInterface: IAccessible;
begin
  Result := FServer.DefaultInterface;
end;

function TAccessibleProperties.Get_accParent: IDispatch;
begin
    Result := DefaultInterface.accParent;
end;

function TAccessibleProperties.Get_accChildCount: Integer;
begin
    Result := DefaultInterface.accChildCount;
end;

function TAccessibleProperties.Get_accChild(varChild: OleVariant): IDispatch;
begin
    Result := DefaultInterface.accChild[varChild];
end;

function TAccessibleProperties.Get_accName(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accName[varChild];
end;

function TAccessibleProperties.Get_accValue(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accValue[varChild];
end;

function TAccessibleProperties.Get_accDescription(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accDescription[varChild];
end;

function TAccessibleProperties.Get_accRole(varChild: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.accRole[varChild];
end;

function TAccessibleProperties.Get_accState(varChild: OleVariant): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.accState[varChild];
end;

function TAccessibleProperties.Get_accHelp(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accHelp[varChild];
end;

function TAccessibleProperties.Get_accHelpTopic(out pszHelpFile: WideString; varChild: OleVariant): Integer;
begin
    Result := DefaultInterface.accHelpTopic[pszHelpFile, varChild];
end;

function TAccessibleProperties.Get_accKeyboardShortcut(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accKeyboardShortcut[varChild];
end;

function TAccessibleProperties.Get_accFocus: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.accFocus;
end;

function TAccessibleProperties.Get_accSelection: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.accSelection;
end;

function TAccessibleProperties.Get_accDefaultAction(varChild: OleVariant): WideString;
begin
    Result := DefaultInterface.accDefaultAction[varChild];
end;

procedure TAccessibleProperties.Set_accName(varChild: OleVariant; const pszName: WideString);
  { Warning: The property accName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accName := pszName;
end;

procedure TAccessibleProperties.Set_accValue(varChild: OleVariant; const pszValue: WideString);
  { Warning: The property accValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.accValue := pszValue;
end;

{$ENDIF}

class function CoPDDom.Create: IPDDomNode;
begin
  Result := CreateComObject(CLASS_PDDom) as IPDDomNode;
end;

class function CoPDDom.CreateRemote(const MachineName: string): IPDDomNode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PDDom) as IPDDomNode;
end;

procedure TPDDom.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{ECAF4D9D-B473-4EC5-86F4-3DBB46F3F31A}';
    IntfIID:   '{5007373A-20D7-458F-9FFB-ABC900E3A831}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPDDom.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDDomNode;
  end;
end;

procedure TPDDom.ConnectTo(svrIntf: IPDDomNode);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPDDom.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPDDom.GetDefaultInterface: IPDDomNode;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPDDom.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPDDomProperties.Create(Self);
{$ENDIF}
end;

destructor TPDDom.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPDDom.GetServerProperties: TPDDomProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPDDom.GetParent: IPDDomNode;
begin
  Result := DefaultInterface.GetParent;
end;

function TPDDom.GetType: Integer;
begin
  Result := DefaultInterface.GetType;
end;

function TPDDom.GetChildCount: Integer;
begin
  Result := DefaultInterface.GetChildCount;
end;

function TPDDom.GetChild(index: Integer): IPDDomNode;
begin
  Result := DefaultInterface.GetChild(index);
end;

function TPDDom.GetName: WideString;
begin
  Result := DefaultInterface.GetName;
end;

function TPDDom.GetValue: WideString;
begin
  Result := DefaultInterface.GetValue;
end;

function TPDDom.IsSame(const node: IPDDomNode): Integer;
begin
  Result := DefaultInterface.IsSame(node);
end;

function TPDDom.GetTextContent: WideString;
begin
  Result := DefaultInterface.GetTextContent;
end;

procedure TPDDom.GetLocation(out pxLeft: Integer; out pyTop: Integer; out pcxWidth: Integer; 
                             out pcyHeight: Integer);
begin
  DefaultInterface.GetLocation(pxLeft, pyTop, pcxWidth, pcyHeight);
end;

procedure TPDDom.GetFontInfo(out fontStatus: Integer; out pszName: WideString; 
                             out fontSize: Single; out fontFlags: Integer; out red: Single; 
                             out green: Single; out blue: Single);
begin
  DefaultInterface.GetFontInfo(fontStatus, pszName, fontSize, fontFlags, red, green, blue);
end;

function TPDDom.GetFromID(const id: WideString): IPDDomNode;
begin
  Result := DefaultInterface.GetFromID(id);
end;

function TPDDom.GetIAccessible: IAccessible;
begin
  Result := DefaultInterface.GetIAccessible;
end;

procedure TPDDom.ScrollTo;
begin
  DefaultInterface.ScrollTo;
end;

function TPDDom.GetTextInLines(visibleOnly: Integer): IPDDomNode;
begin
  Result := DefaultInterface.GetTextInLines(visibleOnly);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPDDomProperties.Create(AServer: TPDDom);
begin
  inherited Create;
  FServer := AServer;
end;

function TPDDomProperties.GetDefaultInterface: IPDDomNode;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TAccessible, TPDDom]);
end;

end.
