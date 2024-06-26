﻿unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.AppEvnts,
  System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, Vcl.ComCtrls,


  Settings_U, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,
  Umlagerung_U, uLink_T, dxBarBuiltInMenu, cxPC, uDeleted_T;

type
  TForm1 = class(TForm)
    ApplicationEvents: TApplicationEvents;
    TrayIcon: TTrayIcon;
    cxImageList1: TcxImageList;
    cxPageControl1: TcxPageControl;
    tsUmlagerung: TcxTabSheet;
    tsLink: TcxTabSheet;
    tsSettings: TcxTabSheet;
    tsDeleted: TcxTabSheet;
    procedure TrayIconClick(Sender: TObject);
    procedure ApplicationEventsMinimize(Sender: TObject);
    procedure tsSettingsShow(Sender: TObject);
    procedure tsUmlagerungShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsLinkShow(Sender: TObject);
    procedure tsDeletedShow(Sender: TObject);
  private
    { Private declarations }

    procedure UmlagerungFormLoad();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  SettingForm: TSettings_F;
  Umlagerung: TUmlagerung_T;
  Link : TLink_T;
  Deleted: TDeleted_T;

implementation

{$R *.dfm}

uses UtilsRegistry;

procedure TForm1.ApplicationEventsMinimize(Sender: TObject);
begin
  if regLoad('OnTray')='True' then
  begin
    TrayIcon.Visible := True;
    Application.ShowMainForm:=False;
    ShowWindow(Handle, SW_HIDE);
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Umlagerung.SaveGridState();
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  tsUmlagerung.Visible:=False;
  tsUmlagerung.Visible:=true;
end;

procedure TForm1.UmlagerungFormLoad;
begin
  if not Assigned(Umlagerung) then
  begin
    Umlagerung := TUmlagerung_T.Create(Self);
    Umlagerung.BorderStyle := bsNone;
    Umlagerung.Parent := tsUmlagerung;
    Umlagerung.Align := alClient;
    Umlagerung.Show;
  end;
end;

procedure TForm1.TrayIconClick(Sender: TObject);
begin
  TrayIcon.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

procedure TForm1.tsUmlagerungShow(Sender: TObject);
begin
  UmlagerungFormLoad();
end;

procedure TForm1.tsDeletedShow(Sender: TObject);
begin
  if not Assigned(Deleted) then
  begin
    Deleted := TDeleted_T.Create(Self);
    Deleted.BorderStyle := bsNone;
    Deleted.Parent := tsDeleted;
    Deleted.Align := alClient;
    Deleted.Show;
  end;

  Deleted.Refresh;
end;

procedure TForm1.tsLinkShow(Sender: TObject);
begin
  if not Assigned(Link) then
  begin
    Link := TLink_T.Create(Self);
    Link.BorderStyle := bsNone;
    Link.Parent := tsLink;
    Link.Align := alClient;
    Link.Show;
  end;
end;

procedure TForm1.tsSettingsShow(Sender: TObject);
begin
  if not Assigned(Settings_F) then
  begin
    Settings_F := TSettings_F.Create(Self);
    Settings_F.BorderStyle := bsNone;
    Settings_F.Parent := tsSettings;
    Settings_F.Align := alClient;
    Settings_F.Show;
  end;
end;

end.
