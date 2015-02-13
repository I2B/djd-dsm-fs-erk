unit Daruma_Framework_FISCAL_rGerarEspelhoMFD_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TFR_FISCAL_rGerarEspelhoMFD_ECF_Daruma = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    LBL_IntervaloInicial: TLabel;
    LBL_IntervaloFinal: TLabel;
    DTP_DataInicial: TDateTimePicker;
    DTP_DataFinal: TDateTimePicker;
    CBX_Tipo: TComboBox;
    EDT_Inicial: TEdit;
    EDT_Final: TEdit;
    DLG_SelecionaDiretorio: TOpenDialog;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edt_DestinoArq: TEdit;
    BT_Procura_DestinoArq: TButton;
    BT_FECHAR: TButton;
    BT_ENVIAR: TButton;
    Timer1: TTimer;
    procedure CBX_TipoClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
    procedure BT_Procura_DestinoArqClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rGerarEspelhoMFD_ECF_Daruma: TFR_FISCAL_rGerarEspelhoMFD_ECF_Daruma;
  path: AnsiString;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rGerarEspelhoMFD_ECF_Daruma.CBX_TipoClick(
  Sender: TObject);
begin
      If (CBX_Tipo.ItemIndex = 0) then
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

procedure TFR_FISCAL_rGerarEspelhoMFD_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_ParametroInicial, Str_ParametroFinal,sArquivo: AnsiString;
    sTipo, sTipo_EspelhoMFD, sDataIni,sDataFim,sDiaIni,sMesIni,sAnoIni, sDiaFim,sMesFim,sAnoFim: AnsiString;
    Str_TimeInicial:TTime;
    Str_TimeFinal: TTime;
    Str_TimeTotal: TTime;
begin
      sArquivo:= AnsiString(Edt_DestinoArq.Text);
      if sArquivo <> '' then
         Begin
            Int_Retorno:= regAlterarValor_Daruma('GERAL\LocalArquivos',sArquivo);
       end;

   sTipo:= AnsiString(CBX_Tipo.Text);
   If (sTipo = 'COO') then
     begin
        Str_ParametroInicial:= AnsiString(EDT_Inicial.Text);
        Str_ParametroFinal:= AnsiString(EDT_Final.Text);
        sTipo_EspelhoMFD:= '2'; //Download por COO
        Str_TimeInicial:= (Time);
        Int_Retorno:= rGerarEspelhoMFD_ECF_Daruma(sTipo_EspelhoMFD,Str_ParametroInicial,Str_ParametroFinal);
        Str_TimeFinal:=(Time);
        Str_TimeTotal:= (Str_TimeFinal - Str_TimeInicial);
        ShowMessage ('Tempo de Download = ' + TimeToStr(Str_TimeTotal));
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end
      else
      begin
        if (sTipo ='DATA') then
          begin
             sTipo_EspelhoMFD:= '1'; //Download por Data
          end
          else
          begin
             sTipo_EspelhoMFD:= '3'; //Download por DataMovimento
          end;

        sDataIni:= AnsiString(DateTimeToStr(DTP_DataInicial.Date));
        sDataFim:= AnsiString(DateTimeToStr(DTP_DataFinal.Date));
        sDataIni:= AnsiString(StringReplace(sDataIni,'/','',[rfReplaceAll]));
        sDataFim:= AnsiString(StringReplace(sDataFim,'/','',[rfReplaceAll]));
        sDiaIni:= AnsiString(copy(sDataIni,1,2));
        sMesIni:= AnsiString(copy(sDataIni,3,2));
        sAnoIni:= AnsiString(copy(sDataIni,7,2));
        sDataIni:= AnsiString(String(sDiaIni) + String(sMesIni) + String(sAnoIni));
        sDiaFim:= AnsiString(copy(sDataFim,1,2));
        sMesFim:= AnsiString(copy(sDataFim,3,2));
        sAnoFim:= AnsiString(copy(sDataFim,7,2));
        sDataFim:= AnsiString(String(sDiaFim) + String(sMesFim) + String(sAnoFim));
        Int_Retorno:= rGerarEspelhoMFD_ECF_Daruma(sTipo_EspelhoMFD,sDataIni,sDataFim);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;
end;

procedure TFR_FISCAL_rGerarEspelhoMFD_ECF_Daruma.BT_Procura_DestinoArqClick(
  Sender: TObject);
begin
   DLG_SelecionaDiretorio.Execute;
   path:= ExtractFilePath(DLG_SelecionaDiretorio.FileName);
   Edt_DestinoArq.Text:= path;
end;

procedure TFR_FISCAL_rGerarEspelhoMFD_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   close;
end;

end.
