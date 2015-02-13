unit Daruma_Framework_FISCAL_eTEF_EsperarArquivo_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    edt_pathArquivoTEF: TEdit;
    Button2: TButton;
    RdgTravarTeclado: TRadioGroup;
    Edt_Tempo: TEdit;
    Enviar: TButton;
    Fechar: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    procedure FecharClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma: TFR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma.FecharClick(
  Sender: TObject);
begin
   close();
end;

procedure TFR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma.Button2Click(
  Sender: TObject);
  var Str_Diretorio: AnsiString;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_Diretorio:= ExtractFilePath(DLG_SelecionaDiretorio.FileName);
   edt_pathArquivoTEF.Text:= Str_Diretorio;

end;

procedure TFR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma.EnviarClick(
  Sender: TObject);
var Str_Path_Arquivo_Resp_TEF, Str_TempoEspera :AnsiString;
begin
   Str_Path_Arquivo_Resp_TEF := Trim(edt_pathArquivoTEF.text);
   Str_TempoEspera:= Edt_Tempo.text;
   if RdgTravarTeclado.ItemIndex = 0 then
     Begin
        Int_Retorno := eTEF_EsperarArquivo_ECF_Daruma(AnsiString(Str_Path_Arquivo_Resp_TEF), StrToInt(Str_TempoEspera), true);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
     end
     else begin
        Int_Retorno := eTEF_EsperarArquivo_ECF_Daruma(AnsiString(Str_Path_Arquivo_Resp_TEF),StrToInt(Str_TempoEspera), false);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
     end;
end;

end.
