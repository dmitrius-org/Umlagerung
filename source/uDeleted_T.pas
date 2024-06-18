unit uDeleted_T;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Menus, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList, cxDropDownEdit,
  cxDBLookupComboBox, cxColorComboBox;

type
  TDeleted_T = class(TForm)
    DataSource: TDataSource;
    FDQuery: TFDQuery;
    FDUpdateSQL: TFDUpdateSQL;
    Grid: TcxGrid;
    TableView: TcxGridDBTableView;
    GridLevel: TcxGridLevel;
    cxImageList: TcxImageList;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    TableViewParent: TcxGridDBColumn;
    AusgeblendeteArtikelneinblenden1: TMenuItem;
    procedure TableViewNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure Refresh1Click(Sender: TObject);
    procedure AusgeblendeteArtikelneinblenden1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh();
  end;

var
  Deleted_T: TDeleted_T;

implementation

{$R *.dfm}

uses dm;

procedure TDeleted_T.AusgeblendeteArtikelneinblenden1Click(Sender: TObject);
begin
  DataModule1.FDConnection.ExecSQL('delete from  Umlagerung.dbo.[tArtikelDeleted]');
  Refresh;
end;

procedure TDeleted_T.Refresh;
begin
  if FDQuery.Connection.Connected then
  begin
    FDQuery.close;
    FDQuery.open
  end;
end;

procedure TDeleted_T.Refresh1Click(Sender: TObject);
begin
  Refresh;
end;

procedure TDeleted_T.TableViewNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex = 16 then Refresh;  // кнопка обновить
end;

end.
