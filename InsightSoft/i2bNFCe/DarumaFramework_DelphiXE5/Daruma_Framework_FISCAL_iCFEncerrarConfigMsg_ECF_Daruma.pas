unit Daruma_Framework_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Edt_Mensagem_Promocional: TEdit;
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
  FR_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma: TFR_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Mensagem: AnsiString;
Begin
   Str_Mensagem := AnsiString(Edt_Mensagem_Promocional.Text);
   Int_Retorno:=  iCFEncerrarConfigMsg_ECF_Daruma(Str_Mensagem);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
