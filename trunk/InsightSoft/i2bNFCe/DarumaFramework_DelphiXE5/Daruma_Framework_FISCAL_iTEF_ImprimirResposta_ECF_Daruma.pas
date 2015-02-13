unit Daruma_Framework_FISCAL_iTEF_ImprimirResposta_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma = class(TForm)
    btn_Fechar: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edt_pathArquivoTEF: TEdit;
    Button2: TButton;
    Label3: TLabel;
    RdgTravarTeclado: TRadioGroup;
    Label4: TLabel;
    btn_CupomFiscal: TButton;
    Label5: TLabel;
    Label6: TLabel;
    btn_TEF: TButton;
    btn_FecharDocumento: TButton;
    Label1: TLabel;
    Label7: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure btn_CupomFiscalClick(Sender: TObject);
    procedure btn_TEFClick(Sender: TObject);
    procedure btn_FecharClick(Sender: TObject);
    procedure btn_FecharDocumentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma: TFR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma.Button2Click(
  Sender: TObject);
  var Str_Diretorio: AnsiString;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_Diretorio:= ExtractFilePath(DLG_SelecionaDiretorio.FileName);
   edt_pathArquivoTEF.Text:= Str_Diretorio;
end;



procedure TFR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma.btn_CupomFiscalClick(
  Sender: TObject);
var
  Str_Forma_de_Pagamento: AnsiString;
begin
   Str_Forma_de_Pagamento:= '2';
   Int_Retorno:= iCFAbrirPadrao_ECF_Daruma();
   Int_Retorno := iCFVenderResumido_ECF_Daruma(PAnsiChar(AnsiString('II')), AnsiString('0,10') , AnsiString('Produto Teste'), AnsiString('789567893456'));
   Int_Retorno:= iCFTotalizarCupomPadrao_ECF_Daruma();
   Int_Retorno:= iCFEfetuarPagamentoFormatado_ECF_Daruma(AnsiString('2'),AnsiString('00000100'));
   Int_Retorno:= iCFEncerrarPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma.btn_TEFClick(
  Sender: TObject);
var
    Str_Path_Arquivo_Resp_TEF: AnsiString;
    Str_Forma_de_Pagamento: AnsiString;
    Str_Travar_Teclado: AnsiString;
begin
   Str_Path_Arquivo_Resp_TEF := Trim(edt_pathArquivoTEF.text);
   if RdgTravarTeclado.ItemIndex = 0 then
     Begin
        Int_Retorno := iTEF_ImprimirResposta_ECF_Daruma(Str_Path_Arquivo_Resp_TEF,true);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
     end
     else begin
        Int_Retorno := iTEF_ImprimirResposta_ECF_Daruma(Str_Path_Arquivo_Resp_TEF,false);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
     end;
end;

procedure TFR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma.btn_FecharClick(
  Sender: TObject);
begin
close();
end;

procedure TFR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma.btn_FecharDocumentoClick(
  Sender: TObject);
begin
   Int_Retorno:= iTEF_Fechar_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.

