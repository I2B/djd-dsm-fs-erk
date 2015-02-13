unit Daruma_Framework_FISCAL_iCFEncerrar_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFEncerrar_ECF_Daruma = class(TForm)
    cmb_TipoCupomAdic: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
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
  FR_FISCAL_iCFEncerrar_ECF_Daruma: TFR_FISCAL_iCFEncerrar_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFEncerrar_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_iCFEncerrar_ECF_Daruma.BT_ENVIARClick(Sender: TObject);
var sTipoCupomAdic, sMsgPromocional: AnsiString;
begin
      If (cmb_TipoCupomAdic.ItemIndex = 0) then
        begin
            sTipoCupomAdic:= '0';
            sMsgPromocional:= AnsiString(Edt_Mensagem_Promocional.text);
            Int_Retorno := iCFEncerrar_ECF_Daruma(sTipoCupomAdic,sMsgPromocional);
            FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
        end;
      If (cmb_TipoCupomAdic.ItemIndex = 1) then
        begin
            sTipoCupomAdic:= '1';
            sMsgPromocional:= AnsiString(Edt_Mensagem_Promocional.text);
            Int_Retorno := iCFEncerrar_ECF_Daruma(sTipoCupomAdic,sMsgPromocional);
            FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
        end;
      If (cmb_TipoCupomAdic.ItemIndex = 2) then
        begin
            sTipoCupomAdic:= '2';
            sMsgPromocional:= AnsiString(Edt_Mensagem_Promocional.text);
            Int_Retorno := iCFEncerrar_ECF_Daruma(sTipoCupomAdic,sMsgPromocional);
            FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
        end;
      If (cmb_TipoCupomAdic.ItemIndex = 3) then
        begin
            sTipoCupomAdic:= '3';
            sMsgPromocional:= AnsiString(Edt_Mensagem_Promocional.text);
            Int_Retorno := iCFEncerrar_ECF_Daruma(sTipoCupomAdic,sMsgPromocional);
            FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
        end;




end;

end.
