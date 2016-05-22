unit base64;

interface

uses Windows, SysUtils, Classes;

function BinToStr(Binary: PByte; Len: Cardinal): String;
procedure StrToStream(Str: String; Stream: TStream);

implementation

const
  CRYPT_STRING_BASE64 = 1;

function CryptBinaryToString(pbBinary: PByte; cbBinary: DWORD; dwFlags: DWORD;
  pszString: PChar; var pcchString: DWORD): BOOL; stdcall;
  external 'Crypt32.dll' name 'CryptBinaryToStringA';

function CryptStringToBinary(pszString: PChar; cchString: DWORD; dwFlags: DWORD;
  pbBinary: PByte; var pcbBinary: DWORD; pdwSkip: PDWORD;
  pdwFlags: PDWORD): BOOL; stdcall;
  external 'Crypt32.dll' name 'CryptStringToBinaryA';

function BinToStr(Binary: PByte; Len: Cardinal): String;
var
  Count: DWORD;
begin
  Count:= 0;
  if CryptBinaryToString(Binary,Len,CRYPT_STRING_BASE64,nil,Count) then
  begin
    SetLength(Result,Count);
    if not CryptBinaryToString(Binary,Len,CRYPT_STRING_BASE64,PChar(Result),
      Count) then
      Result:= EmptyStr;
  end;
end;

procedure StrToStream(Str: String; Stream: TStream);
var
  Buffer: PByte;
  Count: DWORD;
begin
  Count:= 0;
  if CryptStringToBinary(PChar(Str),Length(Str),CRYPT_STRING_BASE64,nil,Count,
    nil,nil) then
  begin
    GetMem(Buffer,Count);
    try
      if CryptStringToBinary(PChar(Str),Length(Str),CRYPT_STRING_BASE64,Buffer,
        Count,nil,nil) then
        Stream.WriteBuffer(Buffer^,Count);
    finally
      FreeMem(Buffer);
    end;
  end;
end;

end.
