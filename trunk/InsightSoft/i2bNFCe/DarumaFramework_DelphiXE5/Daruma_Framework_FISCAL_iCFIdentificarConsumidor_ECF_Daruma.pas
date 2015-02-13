unit Daruma_Framework_FISCAL_iCFIdentificarConsumidor_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFIdentificarConsumidor_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EDT_Documento: TEdit;
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
  FR_FISCAL_iCFIdentificarConsumidor_ECF_Daruma: TFR_FISCAL_iCFIdentificarConsumidor_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFIdentificarConsumidor_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iCFIdentificarConsumidor_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
var Str_Nome, Str_Endereco,Str_Documento: AnsiString;
begin
   Str_Nome:= AnsiString(EDT_NOME.Text);
   Str_Endereco:= AnsiString(EDT_ENDERECO.Text);
   Str_Documento:= AnsiString(EDT_Documento.Text);

   Int_Retorno := iCFIdentificarConsumidor_ECF_Daruma(Str_Nome, Str_Endereco,Str_Documento);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno)

end;

end.
