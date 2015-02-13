unit Daruma_Framework_FISCAL_rLerAliquotas_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rLerAliquotas_ECF_Daruma = class(TForm)
    MM_Aliquotas: TMemo;
    BT_FECHAR: TButton;
    BT_ENVIAR: TButton;
    Label1: TLabel;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rLerAliquotas_ECF_Daruma: TFR_FISCAL_rLerAliquotas_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rLerAliquotas_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
  close();
end;

procedure TFR_FISCAL_rLerAliquotas_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Aliquota: String;
begin
   SetLength (Str_Aliquota,160);
	 Int_Retorno := rLerAliquotas_ECF_Daruma(PAnsiChar(Str_Aliquota));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
	 MM_Aliquotas.Lines.Text := (Str_Aliquota);
end;

end.
