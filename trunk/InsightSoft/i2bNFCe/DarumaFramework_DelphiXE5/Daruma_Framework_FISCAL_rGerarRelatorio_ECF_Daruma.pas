unit Daruma_Framework_FISCAL_rGerarRelatorio_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFR_FISCAL_rGerarRelatorio = class(TForm)
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
    CHK_SPED: TCheckBox;
    CHK_EAD: TCheckBox;
    CHK_LMFC: TCheckBox;
    CHK_LMFS: TCheckBox;
    CHK_VIVANOTA: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edt_DestinoArq_Atocotepe: TEdit;
    BT_Procura_DestinoArqAtocotepe: TButton;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Edt_LocalChavePrivada: TEdit;
    Button1: TButton;
    Button2: TButton;
    GBox_Sped: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edt_AlqPis: TEdit;
    Edt_AlqCofins: TEdit;
    DLG_SelecionaDiretorio: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
    procedure BTN_GerarRelatorioClick(Sender: TObject);
    procedure CBX_TipoClick(Sender: TObject);
    procedure BT_Procura_DestinoArqAtocotepeClick(Sender: TObject);
    procedure BT_Procura_DestinoArqNFPClick(Sender: TObject);
    procedure CHK_SintegraClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CHK_SPEDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FR_FISCAL_rGerarRelatorio: TFR_FISCAL_rGerarRelatorio;
  sDia,sMes,sAno:Ansistring;
  dDatai,dDataf: Tdatetime;
  sRelatorio, spathAto, spathSintegra, spathNFP: Ansistring;

implementation

uses Daruma_Framework_FISCAL_Principal,
  Daruma_Framework_FISCAL_ParametrizacaoSintegra;

{$R *.dfm}

procedure TFR_FISCAL_rGerarRelatorio.FormShow(Sender: TObject);
begin
   sDia:= formatdatetime('dd',date);
   sMes:= formatdatetime('mm',date);
   sAno:= formatdatetime('yyyy',date);
   dDatai:= strtodate(sDia+'/'+sMes+'/'+sAno);
   dDataf:= strtodate(sDia+'/'+sMes+'/'+sAno);
   DTP_DataInicial.Date:= dDatai;
   DTP_DataFinal.Date:= dDataf;
end;

procedure TFR_FISCAL_rGerarRelatorio.BT_FECHARClick(Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_rGerarRelatorio.CBX_TipoClick(Sender: TObject);
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

procedure TFR_FISCAL_rGerarRelatorio.BTN_GerarRelatorioClick(
  Sender: TObject);
var
sTipo, sInicio, sFim, str_LocalArquivos, sArquivoSintegra, sArquivoNFP, sLocalChavePrivada: Ansistring;
iTam, Int_Confirma:integer;
Str_Valor_PIS: AnsiString;
Str_Valor_COFINS: AnsiString;

begin
   sLocalChavePrivada:= Edt_LocalChavePrivada.Text;
   sRelatorio:='';
   If CHK_NFP.Checked then      sRelatorio:= sRelatorio +'NFP+';
   If CHK_NFPTDM.Checked then   sRelatorio:= sRelatorio +'NFPTDM+';
   If CHK_MF.Checked then       sRelatorio:= sRelatorio +'MF+';
   If CHK_MFD.Checked then      sRelatorio:= sRelatorio +'MFD+';
   If CHK_TDM.Checked then      sRelatorio:= sRelatorio +'TDM+';
   If CHK_Sintegra.Checked then sRelatorio:= sRelatorio +'SINTEGRA+';
   If CHK_LMFC.Checked then sRelatorio:= sRelatorio +'LMFC+';
   If CHK_LMFS.Checked then sRelatorio:= sRelatorio +'LMFS+';
   If CHK_SPED.Checked then //sRelatorio:= sRelatorio +'SPED+';
   begin
     Str_Valor_PIS:= Trim(Edt_AlqPis.Text);
     Str_Valor_COFINS:= Trim(Edt_AlqCofins.Text);
     if ((Str_Valor_PIS = '') or  (Str_Valor_COFINS ='' )) Then
     begin
       sRelatorio:= sRelatorio +'SPED+';
     end
     else
       sRelatorio:= sRelatorio +'SPED[' + Str_Valor_PIS + ';' + Str_Valor_COFINS +']+';
     end;
  // end;

   If CHK_VIVANOTA.Checked then sRelatorio:= sRelatorio +'VIVANOTA+';
   If CHK_EAD.Checked then sRelatorio:= sRelatorio +'[EAD]'+Trim(sLocalChavePrivada) + '+';
   iTam:= length(sRelatorio);
   Delete( sRelatorio,iTam, 1 );


   str_LocalArquivos:= Edt_DestinoArq_Atocotepe.Text;
      if str_LocalArquivos <> '' then
         Begin
            Int_Retorno:= regAlterarValor_Daruma('START\LocalArquivosRelatorios',str_LocalArquivos);
       end;

   sTipo:= CBX_Tipo.Text;
   Int_Confirma:=6;
      //Verifica se o relatório é SINTEGRA ou SPED e tambem o tipo de intervalo
   if (((CHK_Sintegra.Checked=True) or (CHK_SPED.Checked=True)) and ((sTipo = 'COO') or (sTipo = 'CRZ'))) then
    Begin
      Int_Confirma:=Application.MessageBox ('Os relatórios SINTEGRA e SPED só podem ser gerados por periodo de Data, como foi selecionado o intervalo por COO ou CRZ esses dois relatórios não serão gerados. Deseja continuar ? ' , 'Daruma DLL Framework', mb_YesNo+mb_DefButton2+mb_IconQuestion);

  end;
  if(Int_Confirma<>6) then
  Begin
   Exit;
   end;


     If ((sTipo = 'COO') or (sTipo = 'CRZ')) then
     begin
        sInicio:= EDT_Inicial.Text;
        sFim:= EDT_Final.Text;
        Int_Retorno:= rGerarRelatorio_ECF_Daruma(sRelatorio,sTipo,sInicio,sFim);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end
      else
      begin
        Int_Retorno:= rGerarRelatorio_ECF_Daruma(sRelatorio,sTipo,FormatDateTime('ddMMyyyy',DTP_DataInicial.Date),FormatDateTime('ddMMyyyy',DTP_DataFinal.Date));
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;

end;
procedure TFR_FISCAL_rGerarRelatorio.BT_Procura_DestinoArqAtocotepeClick(
  Sender: TObject);
begin
   DLG_SelecionaDiretorio.Execute;
   spathAto:= ExtractFilePath(DLG_SelecionaDiretorio.FileName);
   Edt_DestinoArq_Atocotepe.Text:= spathAto;
end;


procedure TFR_FISCAL_rGerarRelatorio.BT_Procura_DestinoArqNFPClick(
  Sender: TObject);
begin
   DLG_SelecionaDiretorio.Execute;
   spathNFP:= AnsiString(ExtractFilePath(DLG_SelecionaDiretorio.FileName));

end;

procedure TFR_FISCAL_rGerarRelatorio.Button1Click(Sender: TObject);
begin
 DLG_SelecionaDiretorio.Execute;
   spathAto:= DLG_SelecionaDiretorio.FileName;
   Edt_LocalChavePrivada.Text:= spathAto;
end;

procedure TFR_FISCAL_rGerarRelatorio.Button2Click(Sender: TObject);
 var
sRelatorio, sTipo, sDataIni, sDataFim, sInicio, sFim, sArquivoAtocotepe, sArquivoSintegra, sArquivoNFP, sLocalChavePrivada, Str_Indice: Ansistring;
iTam, Int_Confirma:integer;
begin
  Str_Indice:='CF_Abrir+CF_Item';
 Str_Indice := InputBox('DarumaFramework', 'Entre com os índices desejados:',  '');

 //if InputQuery('DarumaFramework','Entre com os índices desejados: ', Str_Indice) then
 // begin
  sArquivoAtocotepe:= Edt_DestinoArq_Atocotepe.Text;
      if sArquivoAtocotepe <> '' then
         Begin
            Int_Retorno:= regAlterarValor_Daruma('START\LocalArquivosRelatorios',sArquivoAtocotepe);
       end;

   sTipo:= CBX_Tipo.Text;
   Int_Confirma:=6;
      //Verifica se o relatório é SINTEGRA ou SPED e tambem o tipo de intervalo
   if (((CHK_Sintegra.Checked=True) or (CHK_SPED.Checked=True)) and ((sTipo = 'COO') or (sTipo = 'CRZ'))) then
    Begin
      Int_Confirma:=Application.MessageBox ('Os relatórios SINTEGRA e SPED só podem ser gerados por periodo de Data, como foi selecionado o intervalo por COO ou CRZ esses dois relatórios não serão gerados. Deseja continuar ? ' , 'Daruma DLL Framework', mb_YesNo+mb_DefButton2+mb_IconQuestion);

  end;
  if(Int_Confirma<>6) then
  Begin
   Exit;
   end;


     If ((sTipo = 'COO') or (sTipo = 'CRZ')) then
     begin
        sInicio:= EDT_Inicial.Text;
        sFim:= EDT_Final.Text;
        Int_Retorno:= rGerarRelatorio_ECF_Daruma(Str_Indice,sTipo,sInicio,sFim);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end
      else
      begin
        Int_Retorno:= rGerarRelatorio_ECF_Daruma(sRelatorio,sTipo,FormatDateTime('ddMMyyyy',DTP_DataInicial.Date),FormatDateTime('ddMMyyyy',DTP_DataFinal.Date));
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;

end;



procedure TFR_FISCAL_rGerarRelatorio.CHK_SintegraClick(Sender: TObject);
begin
   if CHK_Sintegra.State = cbChecked then
      begin
         FR_FISCAL_ParametrizacaoSintegra.show();
      end;
end;

procedure TFR_FISCAL_rGerarRelatorio.CHK_SPEDClick(Sender: TObject);
begin
  if CHK_SPED.State = cbChecked then
  begin
     GBox_Sped.Visible := True;
  end
  else
  begin
     GBox_Sped.Visible:=False;
  end;
end;

end.
