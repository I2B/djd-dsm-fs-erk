unit Daruma_Framework_FISCAL_iCNFReceber_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCNFReceber_ECF_Daruma = class(TForm)
    CMB_IndiceTotalizador: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edt_ValorRecebimento: TEdit;
    Label3: TLabel;
    CMB_TipoAcrescDesc: TComboBox;
    Label4: TLabel;
    Edt_ValorDescAcresc: TEdit;
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
  FR_FISCAL_iCNFReceber_ECF_Daruma: TFR_FISCAL_iCNFReceber_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCNFReceber_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_iCNFReceber_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Indice, Str_Valor,Str_TipoDescAcresc, Str_ValorDescAcresc :AnsiString;
begin
   Str_Indice:= CMB_IndiceTotalizador.Text;
   Str_Valor:= Edt_ValorRecebimento.Text;
   Str_TipoDescAcresc:= CMB_TipoAcrescDesc.Text;
   Str_ValorDescAcresc:= Edt_ValorDescAcresc.Text;
   Int_Retorno:= iCNFReceber_ECF_Daruma(Str_Indice, Str_Valor,Str_TipoDescAcresc, Str_ValorDescAcresc);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
