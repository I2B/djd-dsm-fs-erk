unit Daruma_Framework_FISCAL_confCFBPProgramarUF_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_confCFBPProgramarUF_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Edt_Uf_Origem: TEdit;
    Enviar: TButton;
    Fechar: TButton;
    procedure FecharClick(Sender: TObject);
    procedure EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_confCFBPProgramarUF_ECF_Daruma: TFR_FISCAL_confCFBPProgramarUF_ECF_Daruma;

implementation
uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_confCFBPProgramarUF_ECF_Daruma.FecharClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_confCFBPProgramarUF_ECF_Daruma.EnviarClick(
  Sender: TObject);
var
    Str_UfOrigem: AnsiString;
begin
   Str_UfOrigem := AnsiString(Trim(Edt_Uf_Origem.text));
   Int_Retorno := confCFBPProgramarUF_ECF_Daruma(Str_UfOrigem);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
