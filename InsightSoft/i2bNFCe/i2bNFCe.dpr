program i2bNFCe;

uses
  Vcl.Forms,
  unNFCPrincipal in 'Forms\unNFCPrincipal.pas' {frmNFCPrincipal},
  unNFCPreVenda in 'Forms\unNFCPreVenda.pas' {frmNFCPreVenda},
  unI2BBD in '..\Framework\unI2BBD.pas',
  unI2BFuncoes in '..\Framework\unI2BFuncoes.pas',
  unI2BString in '..\Framework\unI2BString.pas',
  unF2 in '..\Framework\unF2.pas' {frmF2},
  unF2Cadastro in '..\Framework\unF2Cadastro.pas' {frmF2Cadastro},
  unDMNFC in 'Forms\unDMNFC.pas' {DMNFC: TDataModule},
  unDM in '..\i2bCadastro\Forms\unDM.pas' {DM: TDataModule},
  unNFCLogin in 'Forms\unNFCLogin.pas' {frmNFCLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMNFC, DMNFC);
  Application.CreateForm(TfrmNFCPrincipal, frmNFCPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
