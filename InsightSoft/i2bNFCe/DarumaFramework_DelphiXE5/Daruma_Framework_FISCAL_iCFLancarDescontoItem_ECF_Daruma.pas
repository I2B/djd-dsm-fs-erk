unit Daruma_Framework_FISCAL_iCFLancarDescontoItem_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFLancarDescontoItem_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edt_Numero_Item: TEdit;
    Edt_Valor_Desconto: TEdit;
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
  FR_FISCAL_iCFLancarDescontoItem_ECF_Daruma: TFR_FISCAL_iCFLancarDescontoItem_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFLancarDescontoItem_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iCFLancarDescontoItem_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var
   Str_Num_Item, Str_Tipo_Desconto, Str_Valor_Desconto: AnsiString;
begin
   Str_Num_Item := AnsiString(Edt_Numero_Item.Text);
   Str_Tipo_Desconto:= AnsiString(cmb_TipoAcrescDesc.Text);
   Str_Valor_Desconto := AnsiString(Edt_Valor_Desconto.Text);

   Int_Retorno := iCFLancarDescontoItem_ECF_Daruma(Str_Num_Item, Str_Tipo_Desconto, Str_Valor_Desconto);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
