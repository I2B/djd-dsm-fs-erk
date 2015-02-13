unit Daruma_Framework_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    edt_pathArquivoTEF: TEdit;
    Button2: TButton;
    RdgTravarTeclado: TRadioGroup;
    btn_CupomFiscal: TButton;
    btn_TEF: TButton;
    btn_FecharDocumento: TButton;
    btn_Fechar: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    Label8: TLabel;
    Edt_FormaPagto: TEdit;
    Label9: TLabel;
    Edt_ValorPagto: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    procedure btn_FecharDocumentoClick(Sender: TObject);
    procedure btn_CupomFiscalClick(Sender: TObject);
    procedure btn_TEFClick(Sender: TObject);
    procedure btn_FecharClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma: TFR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma.btn_FecharDocumentoClick(
  Sender: TObject);
begin
   Int_Retorno:= iTEF_Fechar_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma.btn_CupomFiscalClick(
  Sender: TObject);
var
  Str_Forma_de_Pagamento: String;
  Str_Valor_Pagamento : String;
begin
   Str_Forma_de_Pagamento:= Edt_FormaPagto.text;
   Str_Valor_Pagamento := Edt_ValorPagto.Text;
   Int_Retorno:= iCFAbrirPadrao_ECF_Daruma();
   Int_Retorno := iCFVenderResumido_ECF_Daruma(PAnsiChar(AnsiString('II')), PAnsiChar(AnsiString('0,10')) , PAnsiChar(AnsiString('Produto Teste')), PAnsiChar(AnsiString('789567893456')));
   Int_Retorno:= iCFTotalizarCupomPadrao_ECF_Daruma();
   Int_Retorno:= iCFEfetuarPagamentoFormatado_ECF_Daruma(PAnsiChar(Str_Forma_de_Pagamento),PAnsiChar(Str_Valor_Pagamento));
   Int_Retorno:= iCFEncerrarPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma.btn_TEFClick(
  Sender: TObject);
var
    Str_Path_Arquivo_Resp_TEF: String;
    Str_Forma_de_Pagamento: String;
    Str_Valor_Pagamento : String;
    Str_Travar_Teclado: String;
begin
   Str_Path_Arquivo_Resp_TEF := Trim(edt_pathArquivoTEF.text);
   Str_Forma_de_Pagamento:= Edt_FormaPagto.text;
   Str_Valor_Pagamento := Edt_ValorPagto.text;
   if RdgTravarTeclado.ItemIndex = 0 then
     Begin
        Int_Retorno := iTEF_ImprimirRespostaCartao_ECF_Daruma(PAnsiChar(Str_Path_Arquivo_Resp_TEF),true, PAnsiChar(Str_Forma_de_Pagamento),PAnsiChar(Str_Valor_Pagamento));
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
     end
     else begin
        Int_Retorno := iTEF_ImprimirRespostaCartao_ECF_Daruma(PAnsiChar(Str_Path_Arquivo_Resp_TEF),false,PAnsiChar(Str_Forma_de_Pagamento), PAnsiChar(Str_Valor_Pagamento));
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
     end;

end;
procedure TFR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma.btn_FecharClick(
  Sender: TObject);
begin
close();
end;

procedure TFR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma.Button2Click(
  Sender: TObject);
  var Str_Diretorio: string;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_Diretorio:= ExtractFilePath(DLG_SelecionaDiretorio.FileName);
   edt_pathArquivoTEF.Text:= Str_Diretorio;
end;

end.
