unit Daruma_Framework_FISCAL_rGerarRelatorioOffline_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFR_FISCAL_rGerarRelatorioOffline = class(TForm)
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
    GBX_Relatorio: TGroupBox;
    CHK_NFP: TCheckBox;
    CHK_NFPTDM: TCheckBox;
    CHK_MF: TCheckBox;
    CHK_MFD: TCheckBox;
    CHK_TDM: TCheckBox;
    CHK_Sintegra: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EDT_ArqMF: TEdit;
    Label2: TLabel;
    EDT_ArqMFD: TEdit;
    Label4: TLabel;
    EDT_ArqInf: TEdit;
    DLG_LocalizaArq: TOpenDialog;
    BT_Procura_ArqMF: TButton;
    BT_Procura_ARQMfd: TButton;
    BT_Procura_ArqInf: TButton;
    CHK_SPED: TCheckBox;
    procedure BT_Procura_ArqMFClick(Sender: TObject);
    procedure BT_Procura_ARQMfdClick(Sender: TObject);
    procedure BT_Procura_ArqInfClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBX_TipoClick(Sender: TObject);
    procedure BTN_GerarRelatorioClick(Sender: TObject);
    procedure CHK_SintegraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rGerarRelatorioOffline: TFR_FISCAL_rGerarRelatorioOffline;
  sDia,sMes,sAno: AnsiString;
  dDatai,dDataf: Tdatetime;

implementation

uses Daruma_Framework_FISCAL_Principal,
  Daruma_Framework_FISCAL_ParametrizacaoSintegra;
{$R *.dfm}

procedure TFR_FISCAL_rGerarRelatorioOffline.BT_Procura_ArqMFClick(
  Sender: TObject);
begin
   DLG_LocalizaArq.Execute;
   EDT_ArqMF.Text:= DLG_LocalizaArq.FileName;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.BT_Procura_ARQMfdClick(
  Sender: TObject);
begin
   DLG_LocalizaArq.Execute;
   EDT_ArqMFD.Text:= DLG_LocalizaArq.FileName;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.BT_Procura_ArqInfClick(
  Sender: TObject);
begin
   DLG_LocalizaArq.Execute;
   EDT_ArqInf.Text:= DLG_LocalizaArq.FileName;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.BT_FECHARClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.FormShow(Sender: TObject);
begin
   sDia:= formatdatetime('dd',date);
   sMes:= formatdatetime('mm',date);
   sAno:= formatdatetime('yyyy',date);
   dDatai:= strtodate(sDia+'/'+sMes+'/'+sAno);
   dDataf:= strtodate(sDia+'/'+sMes+'/'+sAno);
   DTP_DataInicial.Date:= dDatai;
   DTP_DataFinal.Date:= dDataf;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.CBX_TipoClick(Sender: TObject);
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

procedure TFR_FISCAL_rGerarRelatorioOffline.BTN_GerarRelatorioClick(
  Sender: TObject);
var
sRelatorio, sTipo,sDataIni,sDataFim,sInicio,sFim,sArquivo_MF,sArquivo_MFD,sArquivo_INF: String;
iTam:integer;
begin
   If CHK_NFP.Checked then      sRelatorio:= sRelatorio + 'NFP+';
   If CHK_NFPTDM.Checked then   sRelatorio:= sRelatorio +'NFPTDM+';
   If CHK_MF.Checked then       sRelatorio:= sRelatorio +'MF+';
   If CHK_MFD.Checked then      sRelatorio:= sRelatorio +'MFD+';
   If CHK_TDM.Checked then      sRelatorio:= sRelatorio +'TDM+';
   If CHK_Sintegra.Checked then sRelatorio:= sRelatorio +'SINTEGRA+';
   If CHK_SPED.Checked then sRelatorio:= sRelatorio +'SPED+';
   iTam:= length(sRelatorio);
   Delete( sRelatorio,iTam, 1 );

   sArquivo_MF:= PAnsiChar(EDT_ArqMF.Text);
   sArquivo_MFD:= PAnsiChar(EDT_ArqMFD.Text);
   sArquivo_INF:= PAnsiChar(EDT_ArqInf.Text);

   sTipo:= CBX_Tipo.Text;
   If ((sTipo = 'COO') or (sTipo = 'CRZ')) then
     begin
        sInicio:= PAnsiChar(EDT_Inicial.Text);
        sFim:= PAnsiChar(EDT_Final.Text);
        Int_Retorno:= rGerarRelatorioOffline_ECF_Daruma(PAnsiChar(sRelatorio),PAnsiChar(sTipo),PAnsiChar(sInicio),PAnsiChar(sFim),PAnsiChar(sArquivo_MF),PAnsiChar(sArquivo_MFD),PAnsiChar(sArquivo_Inf));
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end
      else
      begin
        sDataIni:= DateTimeToStr(DTP_DataInicial.Date);
        sDataFim:= DateTimeToStr(DTP_DataFinal.Date);
        sDataIni:= StringReplace(sDataIni,'/','',[rfReplaceAll]);
        sDataFim:= StringReplace(sDataFim,'/','',[rfReplaceAll]);
        sDataIni:= copy(sDataIni,1,8);
        sDataFim:= copy(sDataFim,1,8);
        Int_Retorno:= rGerarRelatorioOffline_ECF_Daruma(PAnsiChar(sRelatorio),PAnsiChar(sTipo),PAnsiChar(sDataIni),PAnsiChar(sDataFim),PAnsiChar(sArquivo_MF),PAnsiChar(sArquivo_MFD),PAnsiChar(sArquivo_Inf));
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;

end;

procedure TFR_FISCAL_rGerarRelatorioOffline.CHK_SintegraClick(
  Sender: TObject);
begin
   if CHK_Sintegra.State = cbChecked then
      begin
         FR_FISCAL_ParametrizacaoSintegra.show();
      end;
end;

end.
