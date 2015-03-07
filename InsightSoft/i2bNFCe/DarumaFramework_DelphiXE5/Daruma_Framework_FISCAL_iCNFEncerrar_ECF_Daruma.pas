unit Daruma_Framework_FISCAL_iCNFEncerrar_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCNFEncerrar_ECF_Daruma = class(TForm)
    Label3: TLabel;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Edt_Info_Adicional: TEdit;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCNFEncerrar_ECF_Daruma: TFR_FISCAL_iCNFEncerrar_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCNFEncerrar_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_iCNFEncerrar_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var  Str_Informacao_Adicional: AnsiString;
Begin
   Str_Informacao_Adicional := AnsiString(Edt_Info_Adicional.Text);
   Int_Retorno:= iCNFEncerrar_ECF_Daruma(Str_Informacao_Adicional);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.