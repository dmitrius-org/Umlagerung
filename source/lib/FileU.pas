unit FileU;

interface

uses System.SysUtils, Vcl.Dialogs, System.StrUtils;


/// <summary>
///  GetFName - ��������� ������������ �����. ���� ���� ����������, �� �
///  ������������ ��������� ���������� �����
///</summary>
function GetFName(filename: string): string;


implementation


function GetFName(filename: string): string; var i: Integer;
var fn: string;
begin
  fn :=  StringReplace(ExtractFileName(filename), ExtractFileExt(filename), '', [rfReplaceAll, rfIgnoreCase]);

  if FileExists(filename) then
  begin
    while FileExists(filename) do
    begin
      inc(i);
      filename:=ExtractFilePath(filename) + fn + '(' + i.ToString + ')' + ExtractFileExt(filename);
    end;
  end;


  Result := filename;
end;

end.
