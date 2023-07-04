{*******************************************************}
{                                                       }
{       Модуль экспрта FDQuery                          }
{                                                       }
{       04.05.2022                                      }
{                                                       }
{*******************************************************}

unit ExportQueryU;

interface


uses   SysUtils, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.BatchMove, Data.DB, Classes,
  FireDAC.Comp.BatchMove.Text, FireDAC.Comp.BatchMove.DataSet,
  ComObj, System.Variants;

    /// <summary>
    ///  ExportToMSExcel - экспорт таблицы в Excel.
    ///</summary>
    function ExportToMSExcel(DataQuery: TFDQuery; FileName: string): string;
    /// <summary>
    ///  ExportToMSExcel - экспорт таблицы в csv.
    ///</summary>
    function ExportDataSetToCSV(ADataset: TFDQuery; FileName: String): string;

implementation

uses
  FileU;

function ExportToMSExcel(DataQuery: TFDQuery; FileName: string): string;
var
  i,j,index: Integer;
  ExcelApp, sheet: OleVariant;
  fn:string;
begin
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.WorkBooks.Add(-4167);
  ExcelApp.WorkBooks[1].WorkSheets[1].name := 'Export';
  sheet:=ExcelApp.WorkBooks[1].WorkSheets['Export'];

  index:=1; //Загоняем с первой строки

  {Заголовок}
  for i:=1 to DataQuery.FieldCount do
  begin
    sheet.cells[index, i]:= DataQuery.fields[i-1].FieldName;
  end;
  inc(index);
  DataQuery.Last;
  DataQuery.First;
  for i:=1 to  DataQuery.RecordCount do
  begin
    for j:=1 to DataQuery.FieldCount do
      sheet.cells[index, j]:=DataQuery.fields[j-1].Text;
    inc(index);
    DataQuery.Next;
  end;

  fn:=GetFName(FileName);
  Sheet.SaveAs(GetFName(FileName));

  ExcelApp.Quit; //Quit excel
  ExcelApp := Unassigned;  //to be sure that no hidden excel in memory
  Sheet := Unassigned;
  result:=fn;
end;


function ExportDataSetToCSV(ADataset: TFDQuery; FileName: String): string;
var
  List: TStringList;
  S, fn: String;
  I: Integer;
begin
  List := TStringList.Create;
  try
    fn:=GetFName(FileName);
    ADataset.First;
    S:='';


    for i:=0 to ADataset.FieldCount-1 do
    begin
       if S > '' then S := S + ';';
       S := S + '"' + ADataset.Fields[I].FieldName + '"';
    end;
    List.Add(S);

    while not ADataset.Eof do
    begin
      S:='';
      for I := 0 to ADataset.FieldCount - 1 do
      begin
        if S > '' then
          S := S + ';';

        S := S + '"' + ADataset.Fields[I].Text + '"';

       // ShowMessage(DataSet.Fields[I].Value);
      end;
      List.Add(S);
      ADataset.Next;
    end;

    List.SaveToFile(fn);
    Result:=fn;
  finally
    List.Free;
  end;
end;



end.
