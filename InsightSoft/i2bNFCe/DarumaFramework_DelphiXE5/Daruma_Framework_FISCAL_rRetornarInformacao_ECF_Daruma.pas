unit Daruma_Framework_FISCAL_rRetornarInformacao_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rRetornarInformacao_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edt_Indice_Informacao: TEdit;
    MM_RetornoInformacao: TMemo;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Label3: TLabel;
    Edt_VariavelRetorno: TEdit;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rRetornarInformacao_ECF_Daruma: TFR_FISCAL_rRetornarInformacao_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rRetornarInformacao_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_rRetornarInformacao_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Indice: AnsiString;
    Str_Informacao: AnsiString;
    Int_TamanhoRetorno:integer;
begin
   Int_TamanhoRetorno:= StrToInt(Edt_VariavelRetorno.Text);
   Str_Informacao:=AnsiString( StringOFChar(#0,Int_TamanhoRetorno));
   Str_Indice:= AnsiString(Edt_Indice_Informacao.text);
   Int_Retorno := rRetornarInformacao_ECF_Daruma(Str_Indice,Str_Informacao);
   //Int_Retorno := rRetornarInformacaoSeparador_ECF_Daruma(Str_Indice,'1',Str_Informacao);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   MM_RetornoInformacao.Lines.Text := (Str_Informacao);
end;

end.
