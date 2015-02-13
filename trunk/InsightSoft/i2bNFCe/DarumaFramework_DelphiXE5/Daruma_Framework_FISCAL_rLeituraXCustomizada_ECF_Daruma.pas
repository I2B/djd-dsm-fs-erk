unit Daruma_Framework_FISCAL_rLeituraXCustomizada_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rLeituraXCustomizada_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Edt_LocalArquivo: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rLeituraXCustomizada_ECF_Daruma: TFR_FISCAL_rLeituraXCustomizada_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rLeituraXCustomizada_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_rLeituraXCustomizada_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_LocalArquivo: AnsiString;
begin
   Str_LocalArquivo := AnsiString(Edt_LocalArquivo.Text);
   Int_Retorno := rLeituraXCustomizada_ECF_Daruma(Str_LocalArquivo);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
