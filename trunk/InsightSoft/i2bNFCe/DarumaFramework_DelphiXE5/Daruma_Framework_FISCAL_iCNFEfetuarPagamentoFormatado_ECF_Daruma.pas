unit Daruma_Framework_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma = class(TForm)
    Edt_Valor: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Edt_Forma_Pagamento: TEdit;
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
  FR_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma: TFR_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Forma_Pagamento, Str_Valor: AnsiString;
Begin
   Str_Forma_Pagamento := AnsiString(Edt_Forma_Pagamento.Text);
   Str_Valor := AnsiString(Edt_Valor.Text);
   Int_Retorno:= iCNFEfetuarPagamentoFormatado_ECF_Daruma(Str_Forma_Pagamento, Str_Valor);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
