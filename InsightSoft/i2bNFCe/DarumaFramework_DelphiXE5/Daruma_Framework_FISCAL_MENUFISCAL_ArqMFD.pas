unit Daruma_Framework_FISCAL_MENUFISCAL_ArqMFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFR_FISCAL_MENUFISCAL_ArqMFD = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    LBL_IntervaloInicial: TLabel;
    LBL_IntervaloFinal: TLabel;
    CBX_Tipo: TComboBox;
    DTP_DataInicial: TDateTimePicker;
    DTP_DataFinal: TDateTimePicker;
    BTN_GerarRelatorio: TButton;
    BT_FECHAR: TButton;
    EDT_Inicial: TEdit;
    EDT_Final: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edt_DestinoArq_Atocotepe: TEdit;
    BT_Procura_DestinoArqAtocotepe: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    procedure CBX_TipoClick(Sender: TObject);
    procedure BT_Procura_DestinoArqAtocotepeClick(Sender: TObject);
    procedure BTN_GerarRelatorioClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_MENUFISCAL_ArqMFD: TFR_FISCAL_MENUFISCAL_ArqMFD;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_MENUFISCAL_ArqMFD.CBX_TipoClick(Sender: TObject);
begin
      If ((CBX_Tipo.ItemIndex = 0) or (CBX_Tipo.ItemIndex = 1)) then
        begin
           EDT_Inicial.Visible:= true;
           EDT_Final.Visible:= true;
           EDT_Inicial.SetFocus;
           LBL_IntervaloInicial.Caption:= CBX_Tipo.Text + ' Inicial:';
           LBL_IntervaloFinal.Caption:= CBX_Tipo.Text + ' Final:';
        end
        else
        begin
           EDT_Inicial.Visible:= false;
           EDT_Final.Visible:= false;
           DTP_DataInicial.Visible:= true;
           DTP_DataFinal.Visible:= true;
           LBL_IntervaloInicial.Caption:= CBX_Tipo.Text + ' Inicial:';
           LBL_IntervaloFinal.Caption:= CBX_Tipo.Text + ' Final:';
           DTP_DataInicial.SetFocus;
        end;
end;

procedure TFR_FISCAL_MENUFISCAL_ArqMFD.BT_Procura_DestinoArqAtocotepeClick(
  Sender: TObject);
var spathAto: AnsiString;
  begin
   DLG_SelecionaDiretorio.Execute;
   spathAto:= ExtractFilePath(DLG_SelecionaDiretorio.FileName);
   Edt_DestinoArq_Atocotepe.Text:= spathAto;
end;

procedure TFR_FISCAL_MENUFISCAL_ArqMFD.BTN_GerarRelatorioClick(
  Sender: TObject);
var sRelatorio, sTipo, sDataIni, sDataFim, sInicio, sFim, sArquivoAtocotepe: AnsiString;
begin
   SRelatorio:= 'MFD';
   sArquivoAtocotepe:= AnsiString(Edt_DestinoArq_Atocotepe.Text);
      if sArquivoAtocotepe <> '' then
         Begin
            Int_Retorno:= regAlterarValor_Daruma('ECF\Atocotepe\LocalArquivos',sArquivoAtocotepe);
       end;

   sTipo:= AnsiString(CBX_Tipo.Text);
   If (sTipo = 'COO') then
     begin
        sInicio:= AnsiString(EDT_Inicial.Text);
        sFim:= AnsiString(EDT_Final.Text);
        Int_Retorno:= rGerarRelatorio_ECF_Daruma(sRelatorio,sTipo,sInicio,sFim);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end
      else
      begin
        sDataIni:= AnsiString(DateTimeToStr(DTP_DataInicial.Date));
        sDataFim:= AnsiString(DateTimeToStr(DTP_DataFinal.Date));
        sDataIni:= AnsiString(StringReplace(sDataIni,'/','',[rfReplaceAll]));
        sDataFim:= AnsiString(StringReplace(sDataFim,'/','',[rfReplaceAll]));
        sDataIni:= AnsiString(copy(sDataIni,1,8));
        sDataFim:= AnsiString(copy(sDataFim,1,8));
        Int_Retorno:= rGerarRelatorio_ECF_Daruma(sRelatorio,sTipo,sDataIni,sDataFim);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;

end;

procedure TFR_FISCAL_MENUFISCAL_ArqMFD.BT_FECHARClick(Sender: TObject);
begin
  close();
end;

end.
