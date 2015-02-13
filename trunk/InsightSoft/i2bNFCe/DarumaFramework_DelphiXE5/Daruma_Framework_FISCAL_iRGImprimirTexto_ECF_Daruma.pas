unit Daruma_Framework_FISCAL_iRGImprimirTexto_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iRGImprimirTexto_ECF_Daruma = class(TForm)
    Label1: TLabel;
    MM_Texto_Gerencial: TMemo;
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
  FR_FISCAL_iRGImprimirTexto_ECF_Daruma: TFR_FISCAL_iRGImprimirTexto_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iRGImprimirTexto_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_iRGImprimirTexto_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
var Str_Texto_Relatorio: PAnsiChar;
begin
   Str_Texto_Relatorio:= PAnsiChar(MM_Texto_Gerencial.Lines.Text);
   Int_Retorno:= iRGImprimirTexto_ECF_Daruma(Str_Texto_Relatorio);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
