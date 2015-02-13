unit Daruma_Framework_FISCAL_iEstornarPagamento_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iEstornarPagamento_ECF_Daruma = class(TForm)
    Edt_FormaPagtoEstornar: TEdit;
    Edt_FormaPgtoEfetivado: TEdit;
    Edt_valor: TEdit;
    Edt_MsgLivre: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BT_FECHAR: TButton;
    BT_ENVIAR: TButton;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iEstornarPagamento_ECF_Daruma: TFR_FISCAL_iEstornarPagamento_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iEstornarPagamento_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_iEstornarPagamento_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
var Str_Formapgtoestornar, Str_Formapgtoefetivado, Str_valor, Str_MsgLivre : AnsiString;
begin
   Str_Formapgtoestornar:= AnsiString(Edt_FormaPagtoEstornar.Text);
   Str_Formapgtoefetivado:= AnsiString(Edt_FormaPgtoEfetivado.Text);
   Str_valor:= AnsiString(Edt_Valor.Text);
   Str_MsgLivre:= AnsiString(Edt_MsgLivre.Text);
  Int_Retorno:= iEstornarPagamento_ECF_Daruma(Str_Formapgtoestornar, Str_Formapgtoefetivado, Str_Valor, Str_MsgLivre);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
