unit Settings_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxCheckBox,
  Vcl.ExtCtrls, cxGroupBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxSpinEdit, cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,
  Vcl.Menus, System.ImageList, Vcl.ImgList, cxImageList, Vcl.StdCtrls, cxButtons,

  DateUtils, cxButtonEdit, cxClasses, cxShellBrowserDialog, dxPSCore,
  dxPSFileBasedXplorer;

type
  TSettings_F = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edtServer: TcxTextEdit;
    edtBase: TcxTextEdit;
    edtUser: TcxTextEdit;
    edtPas: TcxTextEdit;
    cbOnTray: TcxCheckBox;
    Panel2: TPanel;
    cxImageList1: TcxImageList;
    btnTestConnect: TcxButton;
    cbOnLog: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    JTLPath: TcxButtonEdit;
    cxLabel1: TcxLabel;
    FileOpenDialog: TFileOpenDialog;
    edtJTLTemplate: TcxTextEdit;
    cxLabel2: TcxLabel;
    btnSave: TcxButton;
    cxLabel3: TcxLabel;
    edtJTLTemplate2: TcxTextEdit;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTestConnectClick(Sender: TObject);
    procedure JTLPathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }

    procedure ConfigSave();
    procedure ConfigLoad();

    /// <summary>
    ///  -
    ///</summary>


  public
    { Public declarations }
  end;

var
  Settings_F: TSettings_F;

implementation

{$R *.dfm}

uses UtilsRegistry, ConnectionParamU, DataBaseU, MTLogger;


procedure TSettings_F.btnSaveClick(Sender: TObject);
begin
  ConfigSave
end;

procedure TSettings_F.FormShow(Sender: TObject);
begin
  ConfigLoad;
end;


procedure TSettings_F.JTLPathPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if FileOpenDialog.execute then
  Begin
    JTLPath.Text:= FileOpenDialog.FileName;
  End;

end;

procedure TSettings_F.btnTestConnectClick(Sender: TObject);
begin
  if ((edtServer.Text='') or (edtBase.Text='') or (edtPas.Text='')) then
  begin
   //Заполните все поля
    MessageDlg('Füllen Sie alle Felder aus!',  mtWarning, [mbOK], 0);
    exit;
  end;

  if TConn.DbConnect(edtServer.Text, edtBase.Text, edtUser.Text, edtPas.Text) then
  begin
    MessageDlg('Datenbankverbindung: fertig',  TMsgDlgType.mtInformation, [mbOK], 0);


    CreateDataBase(TConn.Connection);
  end;
end;


procedure TSettings_F.ConfigLoad;
begin
  edtServer.Text := regLoad('Server');
  edtBase.Text := regLoad('Base');
  edtUser.Text := regLoad('User');
  edtPas.Text := regLoad('Password');

  JTLPath.Text := regLoad('JTLEXEPath');
  edtJTLTemplate.Text := regLoad('JTLTemplate');

  edtJTLTemplate2.Text := regLoad('JTLTemplate2');// Preisänderung bei Amazon Vorlage


  cbOnTray.Checked := regLoad('OnTray').ToBoolean;
  cbOnLog.Checked := regLoad('OnLog').ToBoolean;

end;


procedure TSettings_F.ConfigSave;
begin
  regSave('Server', edtServer.Text);
  regSave('Base', edtBase.Text);
  regSave('User', edtUser.Text);
  regSave('Password', edtPas.Text);

  regSave('OnTray', cbOnTray.Checked);
  regSave('OnLog', cbOnLog.Checked);

  logger.isActive := cbOnLog.Checked;

  regSave('JTLEXEPath', JTLPath.Text);
  regSave('JTLTemplate', edtJTLTemplate.Text);
  regSave('JTLTemplate2', edtJTLTemplate2.Text);


  MessageDlg('Vorgang abgeschlossen!',  TMsgDlgType.mtInformation, [mbOK], 0);
end;

end.
