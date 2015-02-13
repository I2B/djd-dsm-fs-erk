unit Daruma_Framework_FISCAL_iCFVender_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFVender_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edt_Aliquota: TEdit;
    Edt_Qtde: TEdit;
    Edt_ValorUnitario: TEdit;
    Edt_Valor_Desc_Acresc: TEdit;
    Edt_Codigo_Item: TEdit;
    Edt_Unidade_Medida: TEdit;
    Label8: TLabel;
    Edt_Descricao: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    CMB_TipoAcrescDesc: TComboBox;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCFVender_ECF_Daruma: TFR_FISCAL_iCFVender_ECF_Daruma;

implementation
uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFVender_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iCFVender_ECF_Daruma.BT_ENVIARClick(Sender: TObject);
Var Str_Qtde, Str_ValorUnit: AnsiString;
Var Str_Tipo_Desc_Acresc, Str_Valor_Desc_Acrec: AnsiString;
Var Str_Aliquota:AnsiString;
Var Str_Codigo_Item, Str_UnidadeMedida, Str_Descricao : AnsiString;
begin
   Str_Aliquota := Edt_Aliquota.Text;
   Str_Qtde := Edt_Qtde.Text;
   Str_ValorUnit := Edt_ValorUnitario.Text;
   Str_Tipo_Desc_Acresc := cmb_TipoAcrescDesc.Text;
   Str_Valor_Desc_Acrec := Edt_Valor_Desc_Acresc.Text;
   Str_Codigo_Item := Edt_Codigo_Item.Text;
   Str_UnidadeMedida := Edt_Unidade_Medida.Text;
   Str_Descricao := Edt_Descricao.Text;

   Int_Retorno := iCFVender_ECF_Daruma(Str_Aliquota, Str_Qtde, Str_ValorUnit, Str_Tipo_Desc_Acresc, Str_Valor_Desc_Acrec, Str_Codigo_Item, Str_UnidadeMedida, Str_Descricao);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
