program Umlagerung;

{$R *.dres}

uses
  Vcl.Forms,
  SqlListU in 'sql\SqlListU.pas',
  MainForm in 'source\MainForm.pas' {Form1},
  Settings_U in 'source\Settings_U.pas' {Settings_F},
  Umlagerung_U in 'source\Umlagerung_U.pas' {d},
  Prufen_U in 'source\Prufen_U.pas' {Prufen_F},
  ConnectionParamU in 'source\connection\ConnectionParamU.pas',
  dm in 'source\connection\dm.pas' {DataModule1: TDataModule},
  ExportQueryU in 'source\lib\ExportQueryU.pas',
  FileU in 'source\lib\FileU.pas',
  UtilsRegistry in 'source\lib\UtilsRegistry.pas',
  DataBaseU in 'source\db\DataBaseU.pas',
  MTLogger in 'source\logger\MTLogger.pas',
  MTUtils in 'source\logger\MTUtils.pas',
  TimeIntervals in 'source\logger\TimeIntervals.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Umlagerung';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
