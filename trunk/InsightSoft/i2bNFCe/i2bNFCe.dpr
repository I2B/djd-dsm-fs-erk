program i2bNFCe;

uses
  Vcl.Forms,
  unNFCPrincipal in 'Forms\unNFCPrincipal.pas' {frmNFCPrincipal},
  unNFCPreVenda in 'Forms\unNFCPreVenda.pas' {frmNFCPreVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmNFCPrincipal, frmNFCPrincipal);
  Application.CreateForm(TfrmNFCPreVenda, frmNFCPreVenda);
  Application.Run;
end.
