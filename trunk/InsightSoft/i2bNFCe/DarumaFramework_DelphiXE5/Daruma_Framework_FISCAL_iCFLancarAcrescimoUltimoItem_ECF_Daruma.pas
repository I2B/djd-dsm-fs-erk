unit Daruma_Framework_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edt_Valor_Acrescimo: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    CMB_TipoAcrescDesc: TComboBox;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma: TFR_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var
   Str_Tipo_Acrescimo, Str_Valor_Acrescimo: AnsiString;
begin
   Str_Tipo_Acrescimo := AnsiString(cmb_TipoAcrescDesc.Text);
   Str_Valor_Acrescimo := AnsiString(Edt_Valor_Acrescimo.Text);

   Int_Retorno := iCFLancarAcrescimoUltimoItem_ECF_Daruma(Str_Tipo_Acrescimo, Str_Valor_Acrescimo);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
