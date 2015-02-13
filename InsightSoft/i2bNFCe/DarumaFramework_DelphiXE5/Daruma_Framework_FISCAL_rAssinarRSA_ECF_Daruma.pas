unit Daruma_Framework_FISCAL_rAssinarRSA_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_AssinarRSA_ECF_Daruma = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edt_CaminhoArqAssinado: TEdit;
    BT_Procura_ArqAssinado: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Edt_CaminhoChavePrivada: TEdit;
    Label2: TLabel;
    Btn_chaveprivada: TButton;
    MM_EAD: TMemo;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
    procedure BT_Procura_ArqAssinadoClick(Sender: TObject);
    procedure Btn_chaveprivadaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_AssinarRSA_ECF_Daruma: TFR_FISCAL_AssinarRSA_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_AssinarRSA_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
   close();
end;

procedure TFR_FISCAL_AssinarRSA_ECF_Daruma.BT_ENVIARClick(Sender: TObject);
var
    Str_CaminhoArqAssinar, Str_CaminhoChavePublica: AnsiString;
    Str_EAD:AnsiString;
begin
	 SetLength (Str_EAD,256);
   Str_CaminhoArqAssinar:= AnsiString(Edt_CaminhoArqAssinado.text);
   Str_CaminhoChavePublica:= AnsiString(Edt_CaminhoChavePrivada.text);
   Int_Retorno := rAssinarRSA_ECF_Daruma(Str_CaminhoArqAssinar,Str_CaminhoChavePublica,AnsiString(Str_EAD));
   MM_EAD.Lines.Text := '';
   MM_EAD.Lines.Text := Trim(Str_EAD);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_AssinarRSA_ECF_Daruma.BT_Procura_ArqAssinadoClick(
  Sender: TObject);
Var Str_pathDestinoArq :AnsiString;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathDestinoArq:= DLG_SelecionaDiretorio.FileName;
   Edt_CaminhoArqAssinado.Text:= Str_pathDestinoArq ;
end;

procedure TFR_FISCAL_AssinarRSA_ECF_Daruma.Btn_chaveprivadaClick(
  Sender: TObject);
Var Str_pathChavePrivada :AnsiString;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathChavePrivada:= DLG_SelecionaDiretorio.FileName;
   Edt_CaminhoChavePrivada.Text:= Str_pathChavePrivada;
end;

end.
