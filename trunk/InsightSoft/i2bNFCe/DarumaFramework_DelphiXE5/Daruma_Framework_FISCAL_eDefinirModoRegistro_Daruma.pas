unit Daruma_Framework_FISCAL_eDefinirModoRegistro_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_eDefinirModoRegistro_Daruma = class(TForm)
    cmb_TipoRegistro: TComboBox;
    Label1: TLabel;
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
  FR_FISCAL_eDefinirModoRegistro_Daruma: TFR_FISCAL_eDefinirModoRegistro_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_eDefinirModoRegistro_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_eDefinirModoRegistro_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Int_TipoRegistro:Integer;
begin
    case cmb_TipoRegistro.ItemIndex of
				 0: Int_TipoRegistro:= 0;
				 1: Int_TipoRegistro:= 1;
				 2: Int_TipoRegistro:= 2;
         end;
     Int_Retorno := eDefinirModoRegistro_Daruma(Int_TipoRegistro);
   	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
