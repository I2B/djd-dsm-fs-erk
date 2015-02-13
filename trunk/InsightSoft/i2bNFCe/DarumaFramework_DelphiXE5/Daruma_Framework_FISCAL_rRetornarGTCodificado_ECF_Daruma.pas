unit Daruma_Framework_FISCAL_rRetornarGTCodificado_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rRetornarGTCodificado_ECF_Daruma = class(TForm)
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
  FR_FISCAL_rRetornarGTCodificado_ECF_Daruma: TFR_FISCAL_rRetornarGTCodificado_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rRetornarGTCodificado_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
  close;
end;

procedure TFR_FISCAL_rRetornarGTCodificado_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_GT_Codificado: AnsiString;
begin
   SetLength (Str_GT_Codificado,38);
	 Int_Retorno := rRetornarGTCodificado_ECF_Daruma(AnsiString(Str_GT_Codificado));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
	 Edt_GTCodificado.Text := (Str_GT_Codificado);
end;

end.
