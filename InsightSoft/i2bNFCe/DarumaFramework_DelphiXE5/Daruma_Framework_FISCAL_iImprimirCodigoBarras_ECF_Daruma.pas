unit Daruma_Framework_FISCAL_iImprimirCodigoBarras_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls;

type
  TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma = class(TForm)
    Rdg_CodigoBarras: TRadioGroup;
    Edt_CodigoBarras: TEdit;
    Label1: TLabel;
    MM_TextoLivre: TMemo;
    Label2: TLabel;
    CBX_CodVertical: TCheckBox;
    CBX_TextoAbaixoBarras: TCheckBox;
    Lbx_Largura: TListBox;
    Label3: TLabel;
    Label4: TLabel;
    Lbx_Altura: TListBox;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Btn_Limpar: TButton;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
    procedure Btn_LimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iImprimirCodigoBarras_ECF_Daruma: TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;
{$R *.dfm}

procedure TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
  close;
end;

procedure TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Tipo, Str_Codigo, Str_Largura, Str_Altura, Str_Posicao: AnsiString;
begin
   case  Rdg_CodigoBarras.ItemIndex of
   1: Str_Tipo:= '1';
   2: Str_Tipo:= '2';
   3: Str_Tipo:= '3';
   4: Str_Tipo:= '4';
   5: Str_Tipo:= '5';
   6: Str_Tipo:= '6';
   7: Str_Tipo:= '7';
   8: Str_Tipo:= '8';
   9: Str_Tipo:= '9';
  10: Str_Tipo:= '10';
  11: Str_Tipo:= '11';
end;
  Str_Codigo:= AnsiString(Edt_CodigoBarras.Text);
  Str_Largura:= AnsiString(Lbx_Largura.Items.Text);
  Str_Altura:= AnsiString(Lbx_Altura.Items.Text);
 Int_Retorno:= iImprimirCodigoBarras_ECF_Daruma(Str_Tipo,Str_Codigo, Str_Largura, Str_Altura, Str_Posicao);

    FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma.Btn_LimparClick(
  Sender: TObject);
begin
   MM_TextoLivre.Text:= '';
end;

procedure TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma.FormShow(
  Sender: TObject);
begin
    MM_TextoLivre.Enabled := false;
    Btn_Limpar.Enabled := false;
end;

end.
