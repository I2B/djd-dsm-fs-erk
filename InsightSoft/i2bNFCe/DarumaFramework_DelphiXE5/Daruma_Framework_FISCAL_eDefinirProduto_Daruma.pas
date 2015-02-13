unit Daruma_Framework_FISCAL_eDefinirProduto_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_eDefinirProduto_Daruma = class(TForm)
    cmb_produto: TComboBox;
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
  FR_FISCAL_eDefinirProduto_Daruma: TFR_FISCAL_eDefinirProduto_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_eDefinirProduto_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_eDefinirProduto_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Produto: AnsiString;
begin
     Str_Produto:= AnsiString(cmb_produto.Text);
     Int_Retorno := eDefinirProduto_Daruma(Str_Produto);
   	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
