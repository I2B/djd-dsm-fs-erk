unit Daruma_Framework_FISCAL_iCNFAbrir_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCNFAbrir_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EDT_CPF_CNPJ: TEdit;
    EDT_NOME: TEdit;
    EDT_ENDERECO: TEdit;
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
  FR_FISCAL_iCNFAbrir_ECF_Daruma: TFR_FISCAL_iCNFAbrir_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCNFAbrir_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
    close;
end;

procedure TFR_FISCAL_iCNFAbrir_ECF_Daruma.BT_ENVIARClick(Sender: TObject);
var Str_CPF_CNPJ, Str_Nome, Str_Endereco: AnsiString;
begin
   Str_CPF_CNPJ:= AnsiString(EDT_CPF_CNPJ.Text);
   Str_Nome:= AnsiString(EDT_NOME.Text);
   Str_Endereco:= AnsiString(EDT_ENDERECO.Text);
   Int_Retorno := iCNFAbrir_ECF_Daruma(Str_CPF_CNPJ, Str_Nome, Str_Endereco);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
