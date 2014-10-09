program prjTemp;

uses
  Vcl.Forms,
  unBase in 'HerancaVisual\unBase.pas' {frmBase},
  unGrid in 'HerancaVisual\unGrid.pas' {frmGrid},
  unCadastro in 'HerancaVisual\unCadastro.pas' {frmCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGrid, frmGrid);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.Run;
end.
