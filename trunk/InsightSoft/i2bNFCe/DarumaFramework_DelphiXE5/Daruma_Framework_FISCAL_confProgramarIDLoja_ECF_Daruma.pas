unit Daruma_Framework_FISCAL_confProgramarIDLoja_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_confProgramarIDLoja_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Edt_ID_Loja: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
 
    procedure BT_ENVIARClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_confProgramarIDLoja_ECF_Daruma: TFR_FISCAL_confProgramarIDLoja_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_confProgramarIDLoja_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Identif_Loja : AnsiString;
begin
   Str_Identif_Loja:= AnsiString(Edt_Id_Loja.Text);
   Int_Retorno:= confProgramarIDLoja_ECF_Daruma(Str_Identif_Loja);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_confProgramarIDLoja_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
     close;
end;

end.
