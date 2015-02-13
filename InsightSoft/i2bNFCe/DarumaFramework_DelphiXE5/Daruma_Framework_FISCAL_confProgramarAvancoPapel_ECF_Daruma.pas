unit Daruma_Framework_FISCAL_confProgramarAvancoPapel_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFR_FISCAL_confProgramarAvancoPapel_ECF_Daruma = class(TForm)
    Edt_Separacao_Entre_Linhas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RDG_Guilhotina: TRadioGroup;
    RDG_Cliche: TRadioGroup;
    Edt_Separacao_Entre_Documentos: TEdit;
    Edt_Linha_Aciona_Guilhotina: TEdit;
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
  FR_FISCAL_confProgramarAvancoPapel_ECF_Daruma: TFR_FISCAL_confProgramarAvancoPapel_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_confProgramarAvancoPapel_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_confProgramarAvancoPapel_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Separacao_Linhas, Str_Separacao_Documentos, Str_Linha_Aciona_Guilhotina, Str_Guilhotina, Str_Cliche : AnsiString;
begin
   Str_Separacao_Linhas:= AnsiString(Edt_Separacao_Entre_Linhas.Text);
   Str_Separacao_Documentos:= AnsiString(Edt_Separacao_Entre_Documentos.Text);
   Str_Linha_Aciona_Guilhotina:= AnsiString(Edt_Linha_Aciona_Guilhotina.Text);

   if Rdg_Guilhotina.ItemIndex = 0 then
     Begin
        Str_Guilhotina:= '0';
     end
     else begin
        Str_Guilhotina:= '1';
     end;

   if Rdg_Cliche.ItemIndex = 0 then
     Begin
        Str_Cliche:= '0';
     end
     else begin
        Str_Cliche:= '1';
     end;

   Int_Retorno:= confProgramarAvancoPapel_ECF_Daruma(Str_Separacao_Linhas, Str_Separacao_Documentos, Str_Linha_Aciona_Guilhotina, Str_Guilhotina, Str_Cliche);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
