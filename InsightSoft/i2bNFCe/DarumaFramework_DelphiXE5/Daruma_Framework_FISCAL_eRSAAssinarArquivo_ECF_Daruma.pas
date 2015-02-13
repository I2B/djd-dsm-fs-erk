unit Daruma_Framework_FISCAL_eRSAAssinarArquivo_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_eRSAAssinarArquivo = class(TForm)
    btnEnviar: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edt_CaminhoArqAssinado: TEdit;
    BT_Procura_ArqAssinado: TButton;
    Edt_CaminhoChavePrivada: TEdit;
    Btn_chaveprivada: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    BT_FECHAR: TButton;
    procedure btnEnviarClick(Sender: TObject);
    procedure BT_Procura_ArqAssinadoClick(Sender: TObject);
    procedure Btn_chaveprivadaClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_eRSAAssinarArquivo: TFR_FISCAL_eRSAAssinarArquivo;

implementation

uses Daruma_Framework_FISCAL_Principal;
{$R *.dfm}

procedure TFR_FISCAL_eRSAAssinarArquivo.btnEnviarClick(Sender: TObject);
var
Str_CaminhoArqAssinar, Str_CaminhoChavePublica:String;
Int_Retorno:Integer;

begin
   Str_CaminhoArqAssinar:= AnsiString(Edt_CaminhoArqAssinado.text);
   Str_CaminhoChavePublica:= AnsiString(Edt_CaminhoChavePrivada.text);
   Int_Retorno := eRSAAssinarArquivo_ECF_Daruma (Str_CaminhoArqAssinar,Str_CaminhoChavePublica);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_eRSAAssinarArquivo.Btn_chaveprivadaClick(Sender: TObject);
Var Str_pathChavePrivada :AnsiString;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathChavePrivada:= DLG_SelecionaDiretorio.FileName;
   Edt_CaminhoChavePrivada.Text:= Str_pathChavePrivada;
end;

procedure TFR_FISCAL_eRSAAssinarArquivo.BT_FECHARClick(Sender: TObject);
begin
  close();
end;

procedure TFR_FISCAL_eRSAAssinarArquivo.BT_Procura_ArqAssinadoClick(
  Sender: TObject);
Var Str_pathDestinoArq :AnsiString;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathDestinoArq:= DLG_SelecionaDiretorio.FileName;
   Edt_CaminhoArqAssinado.Text:= Str_pathDestinoArq ;
end;

end.
