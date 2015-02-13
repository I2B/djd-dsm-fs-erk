unit Daruma_Framework_FISCAL_rCalcularMD5_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rCalcularMD5_ECF_Daruma = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edt_CaminhoArqMD5: TEdit;
    BT_ArqMD5: TButton;
    MM_MD5_ASCII: TMemo;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    MM_MD5_Hexa: TMemo;
    Label3: TLabel;
    procedure BT_ArqMD5Click(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rCalcularMD5_ECF_Daruma: TFR_FISCAL_rCalcularMD5_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rCalcularMD5_ECF_Daruma.BT_ArqMD5Click(
  Sender: TObject);
Var Str_pathArqMD5 :AnsiString;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathArqMD5:= DLG_SelecionaDiretorio.FileName;
   Edt_CaminhoArqMD5.Text:= Str_pathArqMD5;
end;

procedure TFR_FISCAL_rCalcularMD5_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close();
end;

procedure TFR_FISCAL_rCalcularMD5_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_MD5Hexa, Str_MD5Ascii: AnsiString;
Str_CaminhoArq:AnsiString;
begin

   SetLength (Str_MD5Hexa,50);
   SetLength (Str_MD5Ascii,50);
   Str_CaminhoArq:= AnsiString(Edt_CaminhoArqMD5.text);
   Int_Retorno := rCalcularMD5_ECF_Daruma(Str_CaminhoArq,Str_MD5Hexa,Str_MD5Ascii);
   MM_MD5_Hexa.Lines.Text := (Str_MD5Hexa);
   MM_MD5_Ascii.Lines.Text := (Str_MD5Ascii);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
