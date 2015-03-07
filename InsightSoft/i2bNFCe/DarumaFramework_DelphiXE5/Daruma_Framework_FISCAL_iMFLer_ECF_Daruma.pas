unit Daruma_Framework_FISCAL_iMFLer_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TFR_FISCAL_iMFLer_ECF_Daruma = class(TForm)
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    LBL_IntervaloInicial: TLabel;
    LBL_IntervaloFinal: TLabel;
    EDT_Final: TEdit;
    EDT_Inicial: TEdit;
    CBX_Tipo: TComboBox;
    DTP_DataInicial: TDateTimePicker;
    DTP_DataFinal: TDateTimePicker;
    RDG_TipoLeitura: TRadioGroup;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
    procedure CBX_TipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iMFLer_ECF_Daruma: TFR_FISCAL_iMFLer_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iMFLer_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iMFLer_ECF_Daruma.BT_ENVIARClick(Sender: TObject);
Var Str_ParametroInicial, Str_ParametroFinal: AnsiString;
    sTipo,sDataIni,sDataFim,sDiaIni,sMesIni,sAnoIni, sDiaFim,sMesFim,sAnoFim: AnsiString;
begin
      if Rdg_TipoLeitura.ItemIndex = 0 then
         Begin
            Int_Retorno:= regAlterarValor_Daruma('ECF\LMFCompleta','1');
         end
         else begin
            Int_Retorno:= regAlterarValor_Daruma('ECF\LMFCompleta','0');
       end;

   sTipo:= AnsiString(CBX_Tipo.Text);
   If (sTipo = 'CRZ') then
     begin
        Str_ParametroInicial:= AnsiString(EDT_Inicial.Text);
        Str_ParametroFinal:= AnsiString(EDT_Final.Text);
        Int_Retorno:=  iMFLer_ECF_Daruma(Str_ParametroInicial,Str_ParametroFinal);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end
      else
      begin
        sDataIni:= AnsiString(DateTimeToStr(DTP_DataInicial.Date));
        sDataFim:= AnsiString(DateTimeToStr(DTP_DataFinal.Date));
        sDataIni:= AnsiString(StringReplace(sDataIni,'/','',[rfReplaceAll]));
        sDataFim:= AnsiString(StringReplace(sDataFim,'/','',[rfReplaceAll]));
        sDiaIni:= AnsiString(copy(sDataIni,1,2));
        sMesIni:= AnsiString(copy(sDataIni,3,2));
        sAnoIni:= AnsiString(copy(sDataIni,7,2));
        sDataIni:=AnsiString(String(sDiaIni) + String(sMesIni) + String(sAnoIni));
        sDiaFim:= AnsiString(copy(sDataFim,1,2));
        sMesFim:= AnsiString(copy(sDataFim,3,2));
        sAnoFim:= AnsiString(copy(sDataFim,7,2));
        sDataFim:= AnsiString(String(sDiaFim) + String(sMesFim) + String(sAnoFim));
        Int_Retorno:=  iMFLer_ECF_Daruma(sDataIni,sDataFim);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;

end;

procedure TFR_FISCAL_iMFLer_ECF_Daruma.CBX_TipoClick(Sender: TObject);
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

end.