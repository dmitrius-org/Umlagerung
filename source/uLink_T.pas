unit uLink_T;

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
  TLink_T = class(TForm)
    ToolBar1: TToolBar;
    DataSource: TDataSource;
    FDQuery: TFDQuery;
    FDUpdateSQL: TFDUpdateSQL;
    Grid: TcxGrid;
    TableView: TcxGridDBTableView;
    GridLevel: TcxGridLevel;
    cxImageList: TcxImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ActionList1: TActionList;
    acAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Delete1: TMenuItem;
    Delete2: TMenuItem;
    Refresh1: TMenuItem;
    FDQueryVermerkt: TWideStringField;
    TableViewLink: TcxGridDBColumn;
    actSave: TAction;
    ToolButton4: TToolButton;
    Save1: TMenuItem;
    ToolButton5: TToolButton;
    FDQueryParent: TWideStringField;
    TableViewParent: TcxGridDBColumn;
    FDQueryID: TFMTBCDField;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TableViewNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh();
  end;

var
  Link_T: TLink_T;

implementation

uses
  MTLogger;

{$R *.dfm}

procedure TLink_T.actRefreshExecute(Sender: TObject);
begin
  Refresh
end;

procedure TLink_T.FormShow(Sender: TObject);
begin
  Refresh;
end;

procedure TLink_T.Refresh;
begin
  if  FDQuery.Connection.Connected then
  begin

    FDQuery.close;
    FDQuery.open
  end;
end;

procedure TLink_T.TableViewNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex = 16 then Refresh;  // кнопка обновить
end;

end.
