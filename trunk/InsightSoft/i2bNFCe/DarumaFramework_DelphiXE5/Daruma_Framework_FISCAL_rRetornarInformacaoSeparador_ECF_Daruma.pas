unit Daruma_Framework_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edt_Indice_Informacao: TEdit;
    MM_RetornoInformacao: TMemo;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Edt_VSignificativo: TEdit;
    procedure BT_ENVIARClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma: TFR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var
    Str_Indice: Ansistring;
    Str_VSignificativo:AnsiString;
    Str_Informacao: AnsiString;
begin
   Str_Indice:= Edt_Indice_Informacao.text;
   Str_VSignificativo:=Edt_VSignificativo.text;
   Str_Informacao:= StringOFChar(#0,1300);

   Int_Retorno := rRetornarInformacaoSeparador_ECF_Daruma(Str_Indice, Str_VSignificativo, Str_Informacao);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   MM_RetornoInformacao.Lines.Text := (Str_Informacao);
end;

procedure TFR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close();
end;

end.
