unit Daruma_Framework_FISCAL_iCCDAbrirSimplificado_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCCDAbrirSimplificado_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edt_FormaPagto: TEdit;
    Edt_Parcelas: TEdit;
    Edt_DocOrigem: TEdit;
    Edt_Valor: TEdit;
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
  FR_FISCAL_iCCDAbrirSimplificado_ECF_Daruma: TFR_FISCAL_iCCDAbrirSimplificado_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCCDAbrirSimplificado_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_iCCDAbrirSimplificado_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_FormaPgto, Str_Parcelas, Str_DocOrigem, Str_Valor:AnsiString;
Begin
   Str_FormaPgto := AnsiString(Edt_FormaPagto.Text);
   Str_Parcelas := AnsiString(Edt_Parcelas.Text);
   Str_DocOrigem := AnsiString(Edt_DocOrigem.Text);
   Str_Valor := AnsiString(Edt_Valor.Text);
   Int_Retorno:= iCCDAbrirSimplificado_ECF_Daruma(Str_FormaPgto, Str_Parcelas, Str_DocOrigem, Str_Valor);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
