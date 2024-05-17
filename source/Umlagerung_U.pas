unit Umlagerung_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, System.ImageList, Vcl.ImgList, cxImageList, cxLabel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxCalc, cxSpinEdit,
  cxCurrencyEdit, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPSDBBasedXplorer, dxPScxCommon, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, cxMemo, ppComm, ppEndUsr,
  ppCtrls, ppPrnabl, ppClass, ppBarCod, ppBands, ppCache, ppDB, ppDesignLayer,
  ppParameter, ppProd, ppReport, ppRelatv, ppDBPipe, shellapi, cxCalendar,
  Datasnap.DBClient, dxBarBuiltInMenu, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxCore, dxGalleryControl, dxColorGallery, dxColorEdit, cxGeometry,
  dxFramedControl, cxGroupBox, dxPanel, ppVar;

type
  TUmlagerung_T = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TableView: TcxGridDBTableView;
    GridLevel: TcxGridLevel;
    Grid: TcxGrid;
    DataSource: TDataSource;
    TableViewkArtikel: TcxGridDBColumn;
    TableViewcArtNr: TcxGridDBColumn;
    TableViewcName: TcxGridDBColumn;
    TableViewFBA: TcxGridDBColumn;
    TableViewFBABestand: TcxGridDBColumn;
    TableViewFBABestandaktuell: TcxGridDBColumn;
    TableViewFbmBestand: TcxGridDBColumn;
    TableViewFBAEingang: TcxGridDBColumn;
    TableViewReserviert: TcxGridDBColumn;
    TableViewDefekt: TcxGridDBColumn;
    TableViewFBA030T: TcxGridDBColumn;
    TableViewFBA3060T: TcxGridDBColumn;
    TableViewFBA6090T: TcxGridDBColumn;
    TableViewFBM030T: TcxGridDBColumn;
    TableViewFBM3060T: TcxGridDBColumn;
    TableViewUmlagMenge: TcxGridDBColumn;
    TableViewUmlagDatum: TcxGridDBColumn;
    TableViewAmaBestAlter: TcxGridDBColumn;
    TableViewAmaPreis: TcxGridDBColumn;
    cxImageList: TcxImageList;
    qHersteller: TFDQuery;
    PopupMenu: TPopupMenu;
    pmRefresh: TMenuItem;
    TableViewid: TcxGridDBColumn;
    TableViewu: TcxGridDBColumn;
    TableViewp: TcxGridDBColumn;
    FDQuery: TFDQuery;
    dsHersteller: TDataSource;
    dsWarengruppe: TDataSource;
    qWarengruppe: TFDQuery;
    qArtike: TFDQuery;
    dsArtike: TDataSource;
    FDTable: TFDTable;
    FDTableu: TBooleanField;
    FDTablep: TBooleanField;
    FDTablekArtikel: TIntegerField;
    FDTablecArtNr: TWideStringField;
    FDTablecName: TWideStringField;
    FDTableFBA: TWideStringField;
    FDTableFBABestand: TIntegerField;
    FDTableFBABestandaktuell: TIntegerField;
    FDTableFbmBestand: TIntegerField;
    FDTableFBAEingang: TIntegerField;
    FDTableReserviert: TIntegerField;
    FDTableDefekt: TIntegerField;
    FDTableFBA030T: TIntegerField;
    FDTableFBA3060T: TIntegerField;
    FDTableFBA6090T: TIntegerField;
    FDTableFBM030T: TIntegerField;
    FDTableFBM3060T: TIntegerField;
    FDTableUmlagMenge: TIntegerField;
    FDTableAmaBestAlter: TIntegerField;
    FDTableAmaPreis: TFloatField;
    FDTablekWarengruppe: TIntegerField;
    FDTablekHersteller: TIntegerField;
    FDTablekVaterArtikel: TIntegerField;
    FDTableUMenge: TIntegerField;
    TableViewUMenge: TcxGridDBColumn;
    Panel3: TPanel;
    Label1: TLabel;
    edtCountChecked: TcxTextEdit;
    edtSumme: TcxTextEdit;
    Label2: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    qReportA4: TFDQuery;
    dsReportA4: TDataSource;
    ppDBreportA4: TppDBPipeline;
    ppReport39x39: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBBarCode1: TppDBBarCode;
    ppDBText1: TppDBText;
    ppReportA4: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    dsReport39x39: TDataSource;
    qReport39x39: TFDQuery;
    ppDBPipeline39: TppDBPipeline;
    StyleHeader: TcxStyle;
    FDTablecBarcode: TWideStringField;
    FDTableid: TFMTBCDField;
    FDTableUmlagDatum: TDateField;
    FDQuery1: TFDQuery;
    cxGridPopupMenu1: TcxGridPopupMenu;
    pmGridHeader: TPopupMenu;
    setColor: TMenuItem;
    kArtikel: TcxStyle;
    cArtNr: TcxStyle;
    cName: TcxStyle;
    FBA: TcxStyle;
    U_Menge: TcxStyle;
    FBA_Bestand: TcxStyle;
    FBA_Bestand_aktuell: TcxStyle;
    Fbm_Bestand: TcxStyle;
    FBA_Eingang: TcxStyle;
    Reserviert: TcxStyle;
    Defekt: TcxStyle;
    FBA_0_30T: TcxStyle;
    FBA_30_60T: TcxStyle;
    FBA_60_90T: TcxStyle;
    FBM_0_30T: TcxStyle;
    FBM_30_60T: TcxStyle;
    UmlagMenge: TcxStyle;
    UmlagDatum: TcxStyle;
    AmaBestAlter: TcxStyle;
    AmaPreis: TcxStyle;
    id: TcxStyle;
    u: TcxStyle;
    p: TcxStyle;
    dxColorGallery1: TdxColorGallery;
    pmColorGallery: TPopupMenu;
    MenuItem1: TMenuItem;
    ClearColor: TMenuItem;
    ContentEven: TcxStyle;
    dxPanel1: TdxPanel;
    btnDataLoad: TcxButton;
    cxGroupBox1: TcxGroupBox;
    btnSelectClear: TcxButton;
    cxButton1: TcxButton;
    bntCheckedAllClear: TcxButton;
    btnU: TcxButton;
    btnUclear: TcxButton;
    btnPClear: TcxButton;
    btnP: TcxButton;
    cxGroupBox2: TcxGroupBox;
    btnHersteller: TcxButton;
    btnWarengruppe: TcxButton;
    btnArtike: TcxButton;
    cbArtikel: TcxLookupComboBox;
    cbWarengruppe: TcxLookupComboBox;
    cbHersteller: TcxLookupComboBox;
    lblHersteller: TcxLabel;
    lblWarengruppe: TcxLabel;
    lblArtike: TcxLabel;
    btnAnlieferungTage: TcxButton;
    AnlieferungTage: TcxSpinEdit;
    cxGroupBox3: TcxGroupBox;
    btnPrint39: TcxButton;
    bntPrintA4: TcxButton;
    cxGroupBox4: TcxGroupBox;
    edtUMenge: TcxSpinEdit;
    btnUMengeClear: TcxButton;
    btnUMenge: TcxButton;
    cxGroupBox5: TcxGroupBox;
    cxButton2: TcxButton;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    btnNeuerPreis: TcxButton;
    edtNeuerPreis: TcxCalcEdit;
    btnUbertragen: TcxButton;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    cxStyleMenge: TcxStyle;
    FDTableRQty: TIntegerField;
    TableViewKarton: TcxGridDBColumn;
    TableViewRQty: TcxGridDBColumn;
    TableViewDatum: TcxGridDBColumn;
    TableViewVPEMenge: TcxGridDBColumn;
    FDTableDatum: TDateField;
    FDTableKarton: TFloatField;
    FDTableVPEMenge: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure btnDataLoadClick(Sender: TObject);
    procedure pmRefreshClick(Sender: TObject);
    procedure cbHerstellerPropertiesEditValueChanged(Sender: TObject);
    procedure btnHerstellerClick(Sender: TObject);
    procedure btnWarengruppeClick(Sender: TObject);
    procedure btnArtikeClick(Sender: TObject);
    procedure btnUClick(Sender: TObject);
    procedure FDTableAfterPost(DataSet: TDataSet);
    procedure btnUMengeClick(Sender: TObject);
    procedure TableViewUMengePropertiesEditValueChanged(Sender: TObject);
    procedure bntPrintA4Click(Sender: TObject);
    procedure btnPrint39Click(Sender: TObject);
    procedure btnUbertragenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure setColorClick(Sender: TObject);
    procedure dxColorGallery1ItemClick(Sender: TObject;
      AItem: TdxGalleryControlItem);
    procedure cxGridPopupMenu1Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer; var AllowPopup: Boolean);
    procedure MenuItem1Click(Sender: TObject);
    procedure ClearColorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TableViewkArtikelGetStoredProperties(
      Sender: TcxCustomGridTableItem; AProperties: TStrings);
    procedure TableViewkArtikelGetStoredPropertyValue(
      Sender: TcxCustomGridTableItem; const AName: string; var AValue: Variant);
    procedure TableViewcArtNrSetStoredPropertyValue(
      Sender: TcxCustomGridTableItem; const AName: string;
      const AValue: Variant);
    procedure btnSelectClearClick(Sender: TObject);
    procedure btnUMengeClearClick(Sender: TObject);
    procedure btnUclearClick(Sender: TObject);
    procedure TableViewpPropertiesEditValueChanged(Sender: TObject);
    procedure bntCheckedAllClearClick(Sender: TObject);
    procedure btnPClick(Sender: TObject);
    procedure btnPClearClick(Sender: TObject);
    procedure TableViewCanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure btnAnlieferungTageClick(Sender: TObject);
    procedure btnNeuerPreisClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure TableViewUMengeStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
    FCurRowIndex:Integer;
    FTopRowIndex :Integer;

    procedure GridUmlagerungRefresh();
    procedure UmlagerungDataLoad();
    procedure TableFilter();
    function ExistsCheckedRow(): boolean;

    function CountCheckedRow(): integer;
    function SummeCheckedRow(): integer;

    procedure SetCheckCount(); //anzahl
    procedure setSumme();

    /// <summary>
    ///  SaveMark - сохранение идентификаторов выбранных записей в базу данных
    ///  AGridColumn - колонка по которой работает сохранение (колонки U или P)
    ///</summary>
    procedure SaveMark(AGridColumn: TcxGridDBColumn);


    procedure SetUChecked(FChecked:boolean; AGridColumn: TcxGridDBColumn);

    /// <summary>
    ///  JTLExport - экспорт в JTL
    ///  SqlName  - наименование запроса для получения данных
    ///  Template - шаблон для экспорта в JTL
    ///</summary>
    procedure JTLExport(SqlName:string; Template: string);
  public
    { Public declarations }

    /// <summary>
    ///  SaveGridState - сохранение состояния таблицы
    ///</summary>
    procedure SaveGridState();
    /// <summary>
    ///  RestoreGridState - восстановление состояния таблицы
    ///</summary>
    procedure RestoreGridState();
  end;

var
  Umlagerung_T: TUmlagerung_T;

  CurColumn: TcxGridColumn; //TcxGridDBColumn;

implementation

{$R *.dfm}

uses DataBaseU, dm, SqlListU, MTLogger, UtilsRegistry, ExportQueryU;

procedure TUmlagerung_T.bntCheckedAllClearClick(Sender: TObject);
var i:Integer;
begin
    TableView.ViewData.BeginUpdate();

    with TableView.DataController do
    begin
        for i := 0 to FilteredRecordCount - 1 do
        begin
            TableView.DataController.Values[FilteredRecordIndex[i], TableViewu.Index]:= False;
        end;
    end;

    FDQuery.Close;   // [Umlagerung]
    FDQuery.SQL.Text := ' update Umlagerung.[dbo].[pArtikel] set u = 0';
    FDQuery.ExecSQL;

    TableView.ViewData.EndUpdate();
    SetCheckCount;
end;

procedure TUmlagerung_T.bntPrintA4Click(Sender: TObject);
begin
  SaveMark(TableViewp);

  qReporta4.Close;
  qReporta4.Open;

  ppReportA4.PrintReport;
end;

procedure TUmlagerung_T.btnAnlieferungTageClick(Sender: TObject);
begin
  GridUmlagerungRefresh;
end;

procedure TUmlagerung_T.btnArtikeClick(Sender: TObject);
begin
  cbArtikel.ItemIndex := -1;
  TableFilter;
end;

procedure TUmlagerung_T.btnDataLoadClick(Sender: TObject);
begin
  UmlagerungDataLoad;
end;

procedure TUmlagerung_T.btnHerstellerClick(Sender: TObject);
begin
  cbHersteller.ItemIndex := -1;
  TableFilter;
end;

procedure TUmlagerung_T.btnNeuerPreisClick(Sender: TObject);
var i: integer; FParams:string;
begin
  //if edtUMenge.Value > 0 then
  FParams := '';
  begin
    TableView.Controller.BeginUpdate;
    TableView.ViewData.BeginUpdate();

    if TableView.Controller.SelectedRecordCount > 0 then
    begin
      with TableView.Controller do
      begin
        for i := 0 to SelectedRecordCount - 1 do
        begin
            TableView.DataController.Values[SelectedRows[i].RecordIndex, TableViewAmaPreis.Index] := edtNeuerPreis.Value;
            FParams := FParams + vartostr(TableView.DataController.Values[SelectedRows[i].RecordIndex, TableViewid.Index]) + ',';
        end;
      end;
    end
    else
    begin
     TableView.ViewData.EndUpdate();
     TableView.Controller.EndUpdate;
      exit
    end;

    if FParams.Length > 0 then
    begin
      FDQuery.Close;
      FDQuery.SQL.Text:= 'Update p set p.[AmaPreis] = :u from [Umlagerung].[dbo].pArtikel p where p.ID in (' + FParams + '0)';
      FDQuery.ParamByName('u').Value := edtNeuerPreis.Value;
      FDQuery.ExecSQL;
    end;

    TableView.ViewData.EndUpdate();
    TableView.Controller.EndUpdate;
    setSumme
  end;

end;

procedure TUmlagerung_T.btnPClearClick(Sender: TObject);
begin
    SetUChecked(false, TableViewp); SetCheckCount;
end;

procedure TUmlagerung_T.btnPClick(Sender: TObject);
begin
    SetUChecked(true, TableViewp); SetCheckCount;
end;

procedure TUmlagerung_T.btnPrint39Click(Sender: TObject);
var I:integer; listParam: string;
begin
  SaveMark(TableViewp);

  qReport39x39.Close;
  qReport39x39.Open;

  ppReport39x39.PrintReport;
end;

procedure TUmlagerung_T.btnSelectClearClick(Sender: TObject);
begin
  if TableView.Controller.SelectedRecordCount > 0 then
  begin
    TableView.Controller.ClearSelection;
  end;
end;

procedure TUmlagerung_T.JTLExport(SqlName, Template: string);
var d, p: string; fileName:String;
begin
  logger.Info('SqlName: ' + SqlName);
  logger.Info('Template: ' + Template);
  //SaveMark(TableViewu);
  FDQuery.Close;
  FDQuery.SQL.Text:= SqlList[SqlName];
  FDQuery.open;

  fileName := ExportDataSetToCSV(FDQuery, regLoad(Template) + '.csv');

  logger.Info(fileName);
  if fileName <> '' then
  begin
    fileName := ExtractFileDir(Application.ExeName) + '\' + fileName;

    d := regLoad('JTLEXEPath');
    p := ' --server='+regLoad('Server')+
         ' --database='+regLoad('Base')+
         ' --dbuser='+regLoad('User')+
         ' --dbpass='+regLoad('Password')+
         ' --templateid='+regLoad(Template)+
         ' --inputfile="'+fileName+'"';

    logger.Info('программа');
    logger.Info(d);
    logger.Info('параметры');
    logger.Info(p);

    ShellExecute(Handle, nil, pwidechar(d), pwidechar(p), nil, SW_Show);
  end;
end;

procedure TUmlagerung_T.btnUbertragenClick(Sender: TObject);
begin
  JTLExport('JTLExport', 'JTLTemplate');

  UmlagerungDataLoad;
end;

procedure TUmlagerung_T.SetUChecked(FChecked: boolean; AGridColumn: TcxGridDBColumn);//TableView
var i: integer; fBool:boolean;  FParams:string;
begin
   FParams:='';
   TableView.ViewData.BeginUpdate();
   if TableView.Controller.SelectedRecordCount > 0 then
   begin
     with TableView.Controller do
     begin
       for i := 0 to SelectedRecordCount - 1 do
       begin
         TableView.DataController.Values[SelectedRows[i].RecordIndex, AGridColumn.Index]:= FChecked;    //TableViewu

         FParams := FParams + vartostr(TableView.DataController.Values[SelectedRows[i].RecordIndex, TableViewid.Index]) + ',';
       end;
     end;
   end
   else
   if TableView.DataController.FilteredRecordCount  > 0 then
   begin
     with TableView.DataController do
     begin
       for i := 0 to FilteredRecordCount - 1 do
       begin
         TableView.DataController.Values[FilteredRecordIndex[i], AGridColumn.Index]:= FChecked;
         FParams := FParams + vartostr(TableView.DataController.Values[FilteredRecordIndex[i], TableViewid.Index]) + ',';
       end;
     end;
   end;
   TableView.ViewData.EndUpdate();

   logger.Info(FParams.Length.ToString);

   if FParams.Length > 0 then
   begin
     FDQuery.Close;
     FDQuery.SQL.Text:= 'Update p set p.' + AGridColumn.DataBinding.FieldName + '= :u from [Umlagerung].[dbo].pArtikel p where p.ID in (' + FParams + '0)';
     FDQuery.ParamByName('u').Value := FChecked;
     FDQuery.ExecSQL;
   end;
end;

procedure TUmlagerung_T.btnUClick(Sender: TObject);
var i: integer; fBool:boolean;  FParams:string;
begin
  SetUChecked(true, TableViewu); SetCheckCount;
end;

procedure TUmlagerung_T.btnUclearClick(Sender: TObject);
begin
  SetUChecked(False, TableViewu); SetCheckCount;
end;


procedure TUmlagerung_T.btnUMengeClearClick(Sender: TObject);
begin
  FDQuery.Close;
  FDQuery.SQL.Text := 'Update Umlagerung.[dbo].[pArtikel] set [U-Menge] = 0';
  FDQuery.ExecSQL;

  GridUmlagerungRefresh();
end;

procedure TUmlagerung_T.btnUMengeClick(Sender: TObject);
var i: integer;
begin
  //if edtUMenge.Value > 0 then
  begin
    TableView.Controller.BeginUpdate;
    TableView.ViewData.BeginUpdate();


    if TableView.Controller.SelectedRecordCount > 0 then
    begin
      with TableView.Controller do
      begin
        for i := 0 to SelectedRecordCount - 1 do
        begin
          if TableView.DataController.Values[SelectedRows[i].RecordIndex, TableViewU.Index] then
            TableView.DataController.Values[SelectedRows[i].RecordIndex, TableViewUMenge.Index] := edtUMenge.Value;
        end;
      end;
    end
    else
    if TableView.DataController.FilteredRecordCount  > 0 then
    begin
      with TableView.DataController do
      begin
        for i := 0 to FilteredRecordCount - 1 do
        begin
          if TableView.DataController.Values[FilteredRecordIndex[i], TableViewU.Index] then
            TableView.DataController.Values[FilteredRecordIndex[i], TableViewUMenge.Index] := edtUMenge.Value;
        end;
      end;
    end;

    SaveMark(TableViewu);

    FDQuery.Close;   // [Umlagerung]
    FDQuery.SQL.Text := ' update p set p.[U-Menge] = :UMenge ' +
                        '   from Umlagerung.[dbo].[pArtikel] p ' +
                        '  inner join Umlagerung.[dbo].tMark t (nolock) on t.id = p.id  ' +
                        '  where p.[u] = 1';
    FDQuery.ParamByName('UMenge').Value := edtUMenge.Value;
    FDQuery.ExecSQL;

    TableView.ViewData.EndUpdate();
    TableView.Controller.EndUpdate;
    setSumme
  end;
end;

procedure TUmlagerung_T.btnWarengruppeClick(Sender: TObject);
begin
  cbWarengruppe.ItemIndex := -1;
  TableFilter;
end;

procedure TUmlagerung_T.cbHerstellerPropertiesEditValueChanged(Sender: TObject);
begin
   TableFilter;
end;

procedure TUmlagerung_T.ClearColorClick(Sender: TObject);
begin
  CurColumn.Styles.Content.Color := clDefault;
end;

function TUmlagerung_T.CountCheckedRow: integer;
begin
   FDQuery.Close;   // [Umlagerung]
   FDQuery.SQL.Text := 'select count(1) from Umlagerung.[dbo].[pArtikel] (nolock) where [u] = 1';
   FDQuery.Open;

   result:= FDQuery.Fields.Fields[0].AsInteger;
end;

procedure TUmlagerung_T.cxButton1Click(Sender: TObject);
var i:Integer;
begin
    TableView.ViewData.BeginUpdate();

    with TableView.DataController do
    begin
        for i := 0 to FilteredRecordCount - 1 do
        begin
            TableView.DataController.Values[FilteredRecordIndex[i], TableViewp.Index]:= False;
        end;
    end;

    FDQuery.Close;   // [Umlagerung]
    FDQuery.SQL.Text := ' update Umlagerung.[dbo].[pArtikel] set p=0';
    FDQuery.ExecSQL;

    TableView.ViewData.EndUpdate();
    SetCheckCount;
end;

procedure TUmlagerung_T.cxButton2Click(Sender: TObject);
begin
  //
  JTLExport('JTLExport2', 'JTLTemplate2');
end;

procedure TUmlagerung_T.cxGridPopupMenu1Popup(ASenderMenu: TComponent;
  AHitTest: TcxCustomGridHitTest; X, Y: Integer; var AllowPopup: Boolean);
begin
   CurColumn := (TcxGridDBColumn(TcxGridColumnHeaderHitTest(AHitTest).Column));

   dxColorGallery1.Hide;
   dxColorGallery1.Left := Mouse.CursorPos.X + ScreenToClient(self.FDesignSize).X;
end;

procedure TUmlagerung_T.dxColorGallery1ItemClick(Sender: TObject;
  AItem: TdxGalleryControlItem);
begin
  CurColumn.Styles.Content.Color := dxColorGallery1.ColorValue;
  dxColorGallery1.Hide;
end;

function TUmlagerung_T.ExistsCheckedRow: boolean;
var i: integer;
begin
   FDQuery.Close;   // [Umlagerung]
   FDQuery.SQL.Text := 'select 1 from Umlagerung.[dbo].[pArtikel] (nolock) where [u] = 1';
   FDQuery.Open;

   result:=  FDQuery.Fields.Fields[0].AsInteger = 1;
end;

procedure TUmlagerung_T.FDTableAfterPost(DataSet: TDataSet);
begin
  setCheckCount;
  setSumme;
end;

procedure TUmlagerung_T.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveGridState
end;

procedure TUmlagerung_T.FormCreate(Sender: TObject);
begin
  RestoreGridState;

  AnlieferungTage.Value := 7;
end;

procedure TUmlagerung_T.SaveGridState;
var
  AStoreKey, ASaveViewName: string;
  I: Integer;
  AOptions: TcxGridStorageOptions;
begin
  //The path to the layout
  AStoreKey := 'Software\Umlagerung\Grid';
  //The name to refer to the stored settings
  ASaveViewName := 'TableView Layout';
  AOptions := [];

  TableView.StoreToRegistry(AStoreKey, True, AOptions, ASaveViewName);
end;

procedure TUmlagerung_T.SaveMark(AGridColumn: TcxGridDBColumn);
var i : Integer;
var  FParams: string;
begin
  FParams := '';
  //if FParams = '' then
  begin
    if TableView.Controller.SelectedRecordCount > 0 then
    begin
      with TableView.Controller do
      begin
        for i := 0 to SelectedRecordCount - 1 do
        begin
          if TableView.DataController.Values[SelectedRows[i].RecordIndex, AGridColumn.Index] then
            FParams := FParams + vartostr(TableView.DataController.Values[SelectedRows[i].RecordIndex, TableViewid.Index]) + ',';
        end;
      end;
    end
    else
    if TableView.DataController.FilteredRecordCount  > 0 then
    begin
      with TableView.DataController do
      begin
        for i := 0 to FilteredRecordCount - 1 do
        begin
          if TableView.DataController.Values[FilteredRecordIndex[i], AGridColumn.Index] then
            FParams := FParams + vartostr(TableView.DataController.Values[FilteredRecordIndex[i], TableViewid.Index]) + ',';
        end;
      end;
    end;
  end;

  FDQuery.Close;
  logger.Info(FParams.Length.ToString);
  logger.Info(FParams);

  if FParams.Length > 0 then
  begin
    FDQuery.SQL.Text:= 'exec Umlagerung.[dbo].SaveMark @Params = :Params';
    FDQuery.ParamByName('Params').Value := FParams;
  end
  else
  begin
    FDQuery.SQL.Text := ' delete Umlagerung.[dbo].tMark from Umlagerung.[dbo].tMark (rowlock)';
  end;
  FDQuery.ExecSQL;
end;


procedure TUmlagerung_T.RestoreGridState;
var
  AStoreKey, ASaveViewName: string;
  I: Integer;
  AOptions: TcxGridStorageOptions;
begin
  //The path to the layout
  AStoreKey := 'Software\Umlagerung\Grid';
  //The name to refer to the stored settings
  ASaveViewName := 'TableView Layout';
  AOptions := [];

  TableView.RestoreFromRegistry(AStoreKey, False, False, AOptions, ASaveViewName);
end;

procedure TUmlagerung_T.FormShow(Sender: TObject);
begin
  GridUmlagerungRefresh
end;


procedure TUmlagerung_T.GridUmlagerungRefresh;
begin
  TableFilter;
  TableView.BeginUpdate();
  if  FDTable.Connection.Connected then
  begin
    qHersteller.Open;
    qWarengruppe.Open;
    qArtike.Open;

    FDTable.Close;
    FDTable.Open;

    setCheckCount();
    setSumme();

    FDTable.First;
  end;
  TableView.EndUpdate();
end;

procedure TUmlagerung_T.MenuItem1Click(Sender: TObject);
begin
  dxColorGallery1.Hide;
end;

procedure TUmlagerung_T.pmRefreshClick(Sender: TObject);
begin
  GridUmlagerungRefresh
end;

procedure TUmlagerung_T.SetCheckCount;
begin
  edtCountChecked.EditValue :=  CountCheckedRow;
end;

procedure TUmlagerung_T.setColorClick(Sender: TObject);
begin
  dxColorGallery1.Show;
end;

procedure TUmlagerung_T.setSumme;
begin
  edtSumme.EditValue :=  SummeCheckedRow();
end;

function TUmlagerung_T.SummeCheckedRow: integer;
begin
   FDQuery.Close;   // [Umlagerung]
   FDQuery.SQL.Text := ' select isnull((select sum([U-Menge]) from Umlagerung.[dbo].[pArtikel] (nolock)/* where [u] = 1*/), 0)';
   FDQuery.Open;

   result:= FDQuery.Fields[0].Value;
end;

procedure TUmlagerung_T.TableFilter;
var filter: string;
begin
  filter:='';
  if cbHersteller.ItemIndex >= 0 then  filter:= filter + ' and kHersteller = ' + string(cbHersteller.ILookupData.CurrentKey);
  if cbWarengruppe.ItemIndex >= 0 then  filter:= filter + ' and kWarengruppe = ' + string(cbWarengruppe.ILookupData.CurrentKey);
  if cbArtikel.ItemIndex >= 0 then  filter:= filter + ' and kVaterArtikel = ' + string(cbArtikel.ILookupData.CurrentKey);

  if AnlieferungTage.Value >= 0 then  filter:= filter + ' and UmlagDatum < {d ' +  FormatDateTime('yyy-mm-dd', Now() - AnlieferungTage.Value) + '}';

  logger.Info('filter: ' + filter);

  if filter <> '' then
  begin
     filter:= '1=1' + filter;

     FDTable.Filter := filter;
     FDTable.Filtered := True;
  end
  else
    FDTable.Filtered := False;
end;

procedure TUmlagerung_T.TableViewkArtikelGetStoredProperties(
  Sender: TcxCustomGridTableItem; AProperties: TStrings);
begin
  AProperties.Add('ContentColor');  // добавляем свойство для сохранения в регистр
end;

procedure TUmlagerung_T.TableViewkArtikelGetStoredPropertyValue(
  Sender: TcxCustomGridTableItem; const AName: string; var AValue: Variant);
begin
  if AName = 'ContentColor' then // присваиваем значение свойства
    if Sender is TcxCustomGridTableItem then
    begin
      AValue := TcxCustomGridTableItem(Sender).Styles.Content.Color;
      Exit;
    end;
end;

procedure TUmlagerung_T.TableViewCanFocusRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  FCurRowIndex:= ARecord.Index;
  FTopRowIndex:= TableView.Controller.TopRowIndex;
end;

procedure TUmlagerung_T.TableViewcArtNrSetStoredPropertyValue(
  Sender: TcxCustomGridTableItem; const AName: string; const AValue: Variant);
begin
  if AName = 'ContentColor' then  // начитка пользовательского свойства
    if Sender is TcxCustomGridTableItem then
    begin
      TcxCustomGridTableItem(Sender).Styles.Content.Color:= AValue;
      Exit;
    end;
end;

procedure TUmlagerung_T.TableViewpPropertiesEditValueChanged(Sender: TObject);
begin
    TableViewp.DataBinding.DataController.Post();
end;

procedure TUmlagerung_T.TableViewUMengePropertiesEditValueChanged(Sender: TObject);
begin
  TableViewUMenge.DataBinding.DataController.Post();
  TableView.Controller.TopRowIndex := FTopRowIndex ;
  TableView.Controller.FocusedRowIndex  := FCurRowIndex;
end;

procedure TUmlagerung_T.TableViewUMengeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (Sender.DataController.Values[ARecord.RecordIndex, AItem.Index] >
      Sender.DataController.Values[ARecord.RecordIndex, TableViewFbmBestand.Index])
  then
    AStyle := cxStyleMenge;
end;

procedure TUmlagerung_T.UmlagerungDataLoad;
begin
  FDQuery.Close;
  FDQuery.SQL.Text:= SqlList['ArtikelLoad'];
  FDQuery.ExecSQL;

  GridUmlagerungRefresh;
end;

end.
