unit Prufen_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomLayoutView, cxGridCardView,
  cxGridDBCardView, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, System.ImageList,
  Vcl.ImgList, cxImageList, Vcl.ExtCtrls;

type
  TPrufen_F = class(TForm)
    FDTable: TFDTable;
    DataSource: TDataSource;
    cxImageList: TcxImageList;
    PopupMenu: TPopupMenu;
    pmRefresh: TMenuItem;
    FDQuery: TFDQuery;
    FDTableid: TFMTBCDField;
    FDTablecName: TWideStringField;
    FDTableUMenge: TIntegerField;
    FDTableGescant: TIntegerField;
    FDTablecBarcode: TWideStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Grid: TcxGrid;
    TableView: TcxGridDBTableView;
    TableViewid: TcxGridDBColumn;
    TableViewcName: TcxGridDBColumn;
    TableViewcBarcode: TcxGridDBColumn;
    TableViewUMenge: TcxGridDBColumn;
    TableViewGescant: TcxGridDBColumn;
    GridDBCardView1: TcxGridDBCardView;
    GridLevel: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure pmRefreshClick(Sender: TObject);
    procedure TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure GridPrufenRefresh();
  public
    { Public declarations }
  end;

var
  Prufen_F: TPrufen_F;

const FColorGreen = $00B7FFB7;
const FColorRed = $009F9FFF;

implementation

{$R *.dfm}

uses dm, SqlListU;

{ TPrüfen_F }

procedure TPrufen_F.FormShow(Sender: TObject);
begin
  GridPrufenRefresh;
end;

procedure TPrufen_F.GridPrufenRefresh;
begin
  if  FDTable.Connection.Connected then
  begin
    FDQuery.Close;
    FDQuery.SQL.Text:= SqlList['CheckInsert'];
    FDQuery.ExecSQL;

    FDTable.Close;
    FDTable.Open;
  end
end;

procedure TPrufen_F.pmRefreshClick(Sender: TObject);
begin
  GridPrufenRefresh;
end;

procedure TPrufen_F.TableViewCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
//  if (AViewInfo.Item.Name = 'LagerbestandViewAmaBestand') then
//  begin
//    if(AViewInfo.GridRecord.Values[LagerbestandViewJtlBestand.Index] <> AViewInfo.GridRecord.Values[LagerbestandViewAmaBestand.Index]) then
//    begin
//      ACanvas.Brush.Color := FColorRed;
//    end
//    else
//    begin
//      if(AViewInfo.GridRecord.Values[LagerbestandViewColor.Index] = 1) then
//      begin
//        ACanvas.Brush.Color := FColorGreen;
//      end;
//    end;
//  end
//  else
//  begin
//    if(AViewInfo.GridRecord.Values[LagerbestandViewColor.Index] = 1) then
//    begin
//      ACanvas.Brush.Color := FColorGreen;
//    end;
//
//  end;
end;

end.
