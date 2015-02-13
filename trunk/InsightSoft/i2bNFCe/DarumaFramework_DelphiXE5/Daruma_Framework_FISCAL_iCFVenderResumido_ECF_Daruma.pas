unit Daruma_Framework_FISCAL_iCFVenderResumido_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFVenderResumido_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Edt_Aliquota: TEdit;
    Edt_ValorUnitario: TEdit;
    Edt_Codigo_Item: TEdit;
    Label8: TLabel;
    Edt_Descricao: TEdit;
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
  FR_FISCAL_iCFVenderResumido_ECF_Daruma: TFR_FISCAL_iCFVenderResumido_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFVenderResumido_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iCFVenderResumido_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Aliquota,Str_ValorUnit, Str_Codigo_Item, Str_Descricao : AnsiString;
begin
   Str_Aliquota := AnsiString(Edt_Aliquota.Text);
   Str_ValorUnit := AnsiString(Edt_ValorUnitario.Text);
   Str_Codigo_Item := AnsiString(Edt_Codigo_Item.Text);
   Str_Descricao := AnsiString(Edt_Descricao.Text);

   Int_Retorno := iCFVenderResumido_ECF_Daruma(Str_Aliquota, Str_ValorUnit, Str_Codigo_Item, Str_Descricao);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);


end;

end.
