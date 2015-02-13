unit Daruma_Framework_FISCAL_iCCDEstornar_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCCDEstornar_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edt_COO: TEdit;
    Edt_CPF: TEdit;
    Edt_Nome: TEdit;
    Edt_Endereco: TEdit;
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
  FR_FISCAL_iCCDEstornar_ECF_Daruma: TFR_FISCAL_iCCDEstornar_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCCDEstornar_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iCCDEstornar_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_COO,Str_CPF, Str_Nome, Str_Endereco:AnsiString;
Begin
   Str_COO := AnsiString(Edt_COO.Text);
   Str_CPF := AnsiString(Edt_CPF.Text);
   Str_Nome := AnsiString(Edt_Nome.Text);
   Str_Endereco := AnsiString(Edt_Endereco.Text);
   Int_Retorno:=  iCCDEstornar_ECF_Daruma(Str_COO, Str_CPF, Str_Nome, Str_Endereco);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
