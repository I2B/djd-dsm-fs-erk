unit Daruma_Framework_FISCAL_iCFTotalizarCupom_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFTotalizarCupom_ECF_Daruma = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Edt_ValorDescAcresc: TEdit;
    CMB_TipoAcrescDesc: TComboBox;
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
  FR_FISCAL_iCFTotalizarCupom_ECF_Daruma: TFR_FISCAL_iCFTotalizarCupom_ECF_Daruma;

implementation
uses Daruma_Framework_FISCAL_Principal;


{$R *.dfm}

procedure TFR_FISCAL_iCFTotalizarCupom_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
 Close;
end;

procedure TFR_FISCAL_iCFTotalizarCupom_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
var
str_tipoDescAcresc, str_ValorDescAcresc:AnsiString;

begin
 Str_TipoDescAcresc:= AnsiString(CMB_TipoAcrescDesc.Text);
   Str_ValorDescAcresc:= AnsiString(Edt_ValorDescAcresc.Text);
   Int_Retorno:= iCFTotalizarCupom_ECF_Daruma(Str_TipoDescAcresc, Str_ValorDescAcresc);
  FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;
end.
