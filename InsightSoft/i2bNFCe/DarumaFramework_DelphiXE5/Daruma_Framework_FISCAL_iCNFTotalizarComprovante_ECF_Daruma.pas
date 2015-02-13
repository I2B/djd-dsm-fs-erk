unit Daruma_Framework_FISCAL_iCNFTotalizarComprovante_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCNFTotalizarComprovante_ECF_Daruma = class(TForm)
    Label2: TLabel;
    Edt_ValorDescAcresc: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Label3: TLabel;
    CMB_TipoAcrescDesc: TComboBox;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCNFTotalizarComprovante_ECF_Daruma: TFR_FISCAL_iCNFTotalizarComprovante_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;
{$R *.dfm}

procedure TFR_FISCAL_iCNFTotalizarComprovante_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_iCNFTotalizarComprovante_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_TipoDescAcresc, Str_ValorDescAcresc :AnsiString;
begin
   Str_TipoDescAcresc:= AnsiString(CMB_TipoAcrescDesc.Text);
   Str_ValorDescAcresc:= AnsiString(Edt_ValorDescAcresc.Text);
   Int_Retorno:= iCNFTotalizarComprovante_ECF_Daruma(Str_TipoDescAcresc, Str_ValorDescAcresc);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
