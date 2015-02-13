unit Daruma_Framework_FISCAL_iCNFReceberSemDesc_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCNFReceberSemDesc_ECF_Daruma = class(TForm)
    CMB_IndiceTotalizador: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edt_ValorRecebimento: TEdit;
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
  FR_FISCAL_iCNFReceberSemDesc_ECF_Daruma: TFR_FISCAL_iCNFReceberSemDesc_ECF_Daruma;

implementation
uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCNFReceberSemDesc_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
  close;
end;

procedure TFR_FISCAL_iCNFReceberSemDesc_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Indice, Str_Valor :AnsiString;
begin
   Str_Indice:= AnsiString(CMB_IndiceTotalizador.Text);
   Str_Valor:= AnsiString(Edt_ValorRecebimento.Text);
   Int_Retorno:= iCNFReceberSemDesc_ECF_Daruma(Str_Indice, Str_Valor);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
