unit Daruma_Framework_FISCAL_iSuprimento_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iSuprimento_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edt_Valor: TEdit;
    Edt_Mensagem: TEdit;
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
  FR_FISCAL_iSuprimento_ECF_Daruma: TFR_FISCAL_iSuprimento_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iSuprimento_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_iSuprimento_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
var Str_Valor, Str_Mensagem:AnsiString;
Begin
   Str_Valor := AnsiString(Edt_Valor.Text);
   Str_Mensagem := AnsiString(Edt_Mensagem.Text);
   Int_Retorno:= iSuprimento_ECF_Daruma(Str_Valor, Str_Mensagem);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
