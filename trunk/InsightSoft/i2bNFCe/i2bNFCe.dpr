program i2bNFCe;

uses
  Vcl.Forms,
  unNFCPrincipal in 'Forms\unNFCPrincipal.pas' {frmNFCPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmNFCPrincipal, frmNFCPrincipal);
  Application.Run;
end.
