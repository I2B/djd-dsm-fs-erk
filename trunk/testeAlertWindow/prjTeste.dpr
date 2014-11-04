program prjTeste;

uses
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {Form1},
  unTileControl in 'unTileControl.pas' {frmTileControl};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmTileControl, frmTileControl);
  Application.Run;
end.
