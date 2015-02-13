unit Daruma_Framework_FISCAL_rVerificarGTCodificado_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rVerificarGTCodificado_ECF_Daruma = class(TForm)
    Edt_GTCodificado: TEdit;
    Label1: TLabel;
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
  FR_FISCAL_rVerificarGTCodificado_ECF_Daruma: TFR_FISCAL_rVerificarGTCodificado_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rVerificarGTCodificado_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close();
end;

procedure TFR_FISCAL_rVerificarGTCodificado_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_GT_Codificado: AnsiString;
begin

   Str_GT_Codificado:= AnsiString(Edt_GTCodificado.Text);
	 Int_Retorno := rVerificarGTCodificado_ECF_Daruma(Str_GT_Codificado);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
