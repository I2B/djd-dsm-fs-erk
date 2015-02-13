unit Daruma_Framework_FISCAL_ParametrizacaoSintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_ParametrizacaoSintegra = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
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
    EDT_Municipio: TEdit;
    EDT_Fax: TEdit;
    EDT_Endereco: TEdit;
    EDT_Numero: TEdit;
    EDT_Complemento: TEdit;
    EDT_Bairro: TEdit;
    EDT_CEP: TEdit;
    EDT_Nome_Contato: TEdit;
    EDT_Telefone: TEdit;
    EDT_Desc_Convenio: TEdit;
    EDT_DescNatureza: TEdit;
    EDT_Desc_Finalidade: TEdit;
    CMB_Uf: TComboBox;
    Label1: TLabel;
    CMB_Cod_Convenio: TComboBox;
    CMB_NaturezaOp: TComboBox;
    CMB_CodFinalidade: TComboBox;
    BTN_Parametrizar: TButton;
    BTN_Voltar: TButton;
    procedure CMB_CodFinalidadeClick(Sender: TObject);
    procedure CMB_Cod_ConvenioClick(Sender: TObject);
    procedure BTN_VoltarClick(Sender: TObject);
    procedure CMB_NaturezaOpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTN_ParametrizarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_ParametrizacaoSintegra: TFR_FISCAL_ParametrizacaoSintegra;

implementation

uses Daruma_Framework_FISCAL_Principal,Daruma_Framework_FISCAL_rGerarRelatorioOffline_ECF_Daruma;


{$R *.dfm}

procedure TFR_FISCAL_ParametrizacaoSintegra.CMB_CodFinalidadeClick(
  Sender: TObject);
var sFinalidade: AnsiString;
begin
   sFinalidade:= AnsiString(CMB_CodFinalidade.Text);

   case  strtoint(sFinalidade) of
   1:EDT_Desc_Finalidade.Text:= 'Normal';
   2:EDT_Desc_Finalidade.Text:= 'Retificação total de arquivo';
   3:EDT_Desc_Finalidade.Text:= 'Retificação aditiva de arquivo';
   4:EDT_Desc_Finalidade.Text:= 'Retificação corretiva.';
   5:EDT_Desc_Finalidade.Text:= 'Desfazimento: arquivo de informação referente a operações/prestações não efetivadas.';
   else
      EDT_Desc_Finalidade.Text:= 'Opção Inválida';
      end;
end;

procedure TFR_FISCAL_ParametrizacaoSintegra.CMB_Cod_ConvenioClick(
  Sender: TObject);
var sConvenio: AnsiString;
begin
   sConvenio:= AnsiString(CMB_Cod_Convenio.Text);

   case  strtoint(sConvenio) of
   1:EDT_Desc_Convenio.Text:= 'Convênio ICMS 31/99';
   2:EDT_Desc_Convenio.Text:= 'Convênio ICMS 69/02 e 142/02';
   3:EDT_Desc_Convenio.Text:= 'Convênio ICMS 76/03 e 20/04';
   else
      EDT_Desc_Convenio.Text:= 'Opção Inválida';
      end;

end;

procedure TFR_FISCAL_ParametrizacaoSintegra.BTN_VoltarClick(
  Sender: TObject);
begin
  FR_FISCAL_ParametrizacaoSintegra.Close();
end;

procedure TFR_FISCAL_ParametrizacaoSintegra.CMB_NaturezaOpClick(
  Sender: TObject);
var sNatureza: AnsiString;
begin
   sNatureza:= AnsiString(CMB_NaturezaOp.Text);

   case  strtoint(sNatureza) of
   1:EDT_DescNatureza.Text:= 'Interestaduais somente com substituição tributária.';
   2:EDT_DescNatureza.Text:= 'Interestaduais com ou sem substituição tributária.';
   3:EDT_DescNatureza.Text:= 'Totalidade das operações do informante.';
   else
      EDT_Desc_Convenio.Text:= 'Opção Inválida';
      end;

end;

procedure TFR_FISCAL_ParametrizacaoSintegra.FormShow(Sender: TObject);
begin
      CMB_Uf.ItemIndex:= 24;
      CMB_CodFinalidade.ItemIndex:=0;
      EDT_Desc_Finalidade.Text:= 'Normal';
      CMB_Cod_Convenio.ItemIndex:=2;
      EDT_Desc_Convenio.Text:= 'Convênio ICMS 76/03 e 20/04';
      CMB_NaturezaOp.ItemIndex:=2;
      EDT_DescNatureza.Text:= 'Totalidade das operações do informante.'
end;

procedure TFR_FISCAL_ParametrizacaoSintegra.BTN_ParametrizarClick(
  Sender: TObject);
var sEndereco, //Tamanho da variavel [100]
    sNumero,  //Tamanho da variavel [10]
    sComplemento,//Tamanho da variavel [100]
    sBairro, //Tamanho da variavel [100]
    sMunicipio,//Tamanho da variavel [100]
    sUF,   //Tamanho da variavel [2]
    sCEP :AnsiString; //Tamanho da variavel [20]
var sTelefone,
    sFax, //Tamanho da variavel [20]
    sContatoNome, //Tamanho da variavel [50]
    sCodFinalidade, //Tamanho da variavel [1]
    sCodConvenio, //Tamanho da variavel [1]
    sCodNatureza, //Tamanho da variavel [1]
    sLocalArquivos:AnsiString; // Tamanho da variavel [100]
begin
   sEndereco:= AnsiString(EDT_Endereco.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Logradouro', sEndereco);

   sNumero:= AnsiString(EDT_Numero.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Numero', sNumero);

   sComplemento:= AnsiString(EDT_Complemento.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Complemento', sComplemento);

   sBairro:= AnsiString(EDT_Bairro.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Bairro', sBairro);

   sMunicipio:= AnsiString(EDT_Municipio.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Municipio', sMunicipio);

   sUF:= AnsiString(CMB_Uf.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('UF', sUF);

   sCEP:= AnsiString(EDT_Cep.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('CEP', sCEP);

   sTelefone:= AnsiString(EDT_Telefone.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Contato_Telefone', sTelefone);

   sFax:= AnsiString(EDT_Fax.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Fax', sFax);

   sContatoNome:= AnsiString(EDT_Nome_Contato.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Contato_Nome', sContatoNome);

   sCodFinalidade:= AnsiString(CMB_CodFinalidade.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Cod_Finalidade', sCodFinalidade);

   sCodConvenio:= AnsiString(CMB_Cod_Convenio.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Cod_Convenio', sCodConvenio);

   sCodNatureza:= AnsiString(CMB_NaturezaOp.Text);
   Int_Retorno:= regSintegra_ECF_Daruma('Cod_Natureza', sCodNatureza);

  FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

 end;


end.

