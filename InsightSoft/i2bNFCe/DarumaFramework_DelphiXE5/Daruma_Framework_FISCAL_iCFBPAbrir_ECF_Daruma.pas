unit Daruma_Framework_FISCAL_iCFBPAbrir_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFBPAbrir_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Edt_Percurso: TEdit;
    Edt_Origem: TEdit;
    Edt_ECF_UF_Origem: TEdit;
    Edt_UF: TEdit;
    Edt_Poltrona: TEdit;
    Edt_DataHoraEmbarque: TEdit;
    Edt_Prestadora: TEdit;
    Edt_RGPassageiro: TEdit;
    Edt_NomePassageiro: TEdit;
    Edt_Destino: TEdit;
    Edt_Plataforma: TEdit;
    Edt_EnderecoPassageiro: TEdit;
    CMB_Modalidade: TComboBox;
    CMB_Categoria: TComboBox;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCFBPAbrir_ECF_Daruma: TFR_FISCAL_iCFBPAbrir_ECF_Daruma;

implementation
uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFBPAbrir_ECF_Daruma.BT_FecharClick(Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_iCFBPAbrir_ECF_Daruma.BT_EnviarClick(Sender: TObject);
Var
Str_Percurso: AnsiString;
Str_Origem: AnsiString;
Str_Destino: AnsiString;
Str_UF:AnsiString;
Str_Categoria: AnsiString;
Str_Modalidade: AnsiString;
Str_Plataforma: AnsiString;
Str_Poltrona: AnsiString;
Str_DataHora: AnsiString;
Str_Prestadora: AnsiString;
Str_RG_Passageiro: AnsiString;
Str_Nome_Passageiro: AnsiString;
Str_Endereco_Passageiro: AnsiString;
begin
Str_Percurso:= AnsiString(Edt_Percurso.Text);
Str_Origem:= AnsiString(Edt_Origem.Text);
Str_Destino:= AnsiString(Edt_Destino.Text);
Str_UF:= AnsiString(Edt_UF.Text);
Str_Categoria:= AnsiString(copy(CMB_Categoria.Text,1,1));
Str_Modalidade:= AnsiString(copy(CMB_Modalidade.Text,1,1));
Str_Plataforma:= AnsiString(Edt_Plataforma.Text);
Str_Poltrona:= AnsiString(Edt_Poltrona.Text);
Str_DataHora:= AnsiString(Edt_DataHoraEmbarque.Text);
Str_Prestadora:= AnsiString(Edt_Prestadora.Text);
Str_RG_Passageiro:= AnsiString(Edt_RGPassageiro.Text);
Str_Nome_Passageiro:= AnsiString(Edt_NomePassageiro.Text);
Str_Endereco_Passageiro:= AnsiString(Edt_EnderecoPassageiro.Text);
Int_Retorno:= iCFBPAbrir_ECF_Daruma(Str_Origem, Str_Destino, Str_UF,Str_Percurso, Str_Prestadora, Str_Plataforma, str_Poltrona, Str_Modalidade, Str_Categoria, Str_DataHora, Str_RG_Passageiro, Str_Nome_Passageiro, Str_Endereco_Passageiro);
FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
