unit Daruma_Framework_FISCAL_RetornoECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TFR_FISCAL_RetornoECF = class(TForm)
    GroupBox1: TGroupBox;
    Edt_Retorno: TMemo;
    MainMenu1: TMainMenu;
    MtodosRetornosECF1: TMenuItem;
    Fechar: TButton;
    MtodorLerAliquotasECFDaruma1: TMenuItem;
    MtodorLerMeiosPagtoECFDaruma1: TMenuItem;
    MtodorLerRGECFDaruma1: TMenuItem;
    MtodorRetornarInformacaoECFDaruma1: TMenuItem;
    MtodosStatus1: TMenuItem;
    Mtodo1: TMenuItem;
    MtodorStatusUltimoCmdECFDaruma1: TMenuItem;
    MtodosrLerDecimaisECFDaruma1: TMenuItem;
    MtodosrDataHoraImpressoraECFDaruma1: TMenuItem;
    MtodorVerificarReducaoZECFDaruma1: TMenuItem;
    MtodorRetornarDadosReducaoZECFDaruma1: TMenuItem;
    Mt1: TMenuItem;
    MtodorInfoEstentida2ECFDaruma1: TMenuItem;
    MtodorInfoEstentida3ECFDaruma1: TMenuItem;
    MtodorInfoEstentida4ECFDaruma1: TMenuItem;
    MtodorInfoEstentida5ECFDaruma1: TMenuItem;
    Btn_Limpar: TButton;
    MtodosEspeciais1: TMenuItem;
    Mtodo2: TMenuItem;
    RetornoCupomFiscal1: TMenuItem;
    MtodosrCFSaldoAPagarECFDaruma1: TMenuItem;
    MtodorCFSubTotalECFDaruma1: TMenuItem;
    N1: TMenuItem;
    MtodorVerificaImpressoraLigadaECFDaruma1: TMenuItem;
    MtodorInfoEstendidaECFDaruma1: TMenuItem;
    MtodorCFVerificarStatusECFDaruma1: TMenuItem;
    MtodoseVerificarVersaoDLLDaruma1: TMenuItem;
    MtodorLerCNFECFDaruma1: TMenuItem;
    rRetornarInformacaoECFDaruma1: TMenuItem;
    MtodorTipoUltimoDocumentoIntECFDaruma1: TMenuItem;
    MtodorTipoUltimoDocumentoStrECFDaruma1: TMenuItem;
    MtodorUltimoCMDEnviadoECFDaruma1: TMenuItem;
    MtodprMinasLegalECFDaruma1: TMenuItem;
    MtodorRetornarVendaBrutaECFDaruma1: TMenuItem;
    MtodorStatusImpressoraBinarioECFDaruma1: TMenuItem;
    MtodorConsultaStatusImpressoraStrECFDaruma1: TMenuItem;
    MtodorConsultaStatusImpressoraIntECFDaruma1: TMenuItem;
    MtodoeRetornarPortasComECFDaruma1: TMenuItem;
    MtodoeRetornarAvisoErroUltimoCMDECFDaruma1: TMenuItem;
    eInterpretarRetornoECFDaruma1: TMenuItem;
    MtodoeInterpretarAvisoECFDaruma1: TMenuItem;
    MtodoeInterpretarErroECFDaruma1: TMenuItem;
    RelatriodeConfigurao1: TMenuItem;
    MtodoiRelatorioConfiguracaoECFDaruma1: TMenuItem;
    MtodorLerDecimaisIntECFDaruma1: TMenuItem;
    MtodorLerDecimaisStrECFDaruma1: TMenuItem;
    MtodorCMEfetuarCalculoECFDaruma1: TMenuItem;
    MtodorStatusUltimoCmdIntECFDaruma1: TMenuItem;
    MtodorStatusUltimoCmdStrECFDaruma1: TMenuItem;
    MtodorCFVerificarStatusIntECFDaruma1: TMenuItem;
    MtodorCFVerificarStatusStrECFDaruma1: TMenuItem;
    MtodorRGVerificarStatusECFDaruma1: TMenuItem;
    procedure FecharClick(Sender: TObject);
    procedure MtodorLerAliquotasECFDaruma1Click(Sender: TObject);
    procedure MtodorLerMeiosPagtoECFDaruma1Click(Sender: TObject);
    procedure MtodorLerRGECFDaruma1Click(Sender: TObject);
    procedure MtodorRetornarInformacaoECFDaruma1Click(Sender: TObject);
    procedure MtodosrLerDecimaisECFDaruma1Click(Sender: TObject);
    procedure MtodosrLerDecimaisIntECFDaruma1Click(Sender: TObject);
    procedure MtodosrLerDecimaisStrECFDaruma1Click(Sender: TObject);
    procedure MtodosrDataHoraImpressoraECFDaruma1Click(Sender: TObject);
    procedure MtodorVerificarReducaoZECFDaruma1Click(Sender: TObject);
    procedure MtodorRetornarDadosReducaoZECFDaruma1Click(Sender: TObject);
    procedure MtodorStatusUltimoCmdECFDaruma1Click(Sender: TObject);
    procedure Btn_LimparClick(Sender: TObject);
    procedure Mtodo2Click(Sender: TObject);
    procedure Mt1Click(Sender: TObject);
    procedure MtodorInfoEstentida2ECFDaruma1Click(Sender: TObject);
    procedure MtodorInfoEstentida3ECFDaruma1Click(Sender: TObject);
    procedure MtodorInfoEstentida4ECFDaruma1Click(Sender: TObject);
    procedure MtodorInfoEstentida5ECFDaruma1Click(Sender: TObject);
    procedure MtodosrCFSaldoAPagarECFDaruma1Click(Sender: TObject);
    procedure MtodorCFSubTotalECFDaruma1Click(Sender: TObject);
    procedure MtodorVerificaImpressoraLigadaECFDaruma1Click(
      Sender: TObject);
    procedure MtodorInfoEstendidaECFDaruma1Click(Sender: TObject);
    procedure MtodorCFVerificarStatusECFDaruma1Click(Sender: TObject);
    procedure MtodoseVerificarVersaoDLLDaruma1Click(Sender: TObject);
    procedure Mtodo1Click(Sender: TObject);
    procedure MtodorLerCNFECFDaruma1Click(Sender: TObject);
    procedure rRetornarInformacaoECFDaruma1Click(Sender: TObject);
    procedure MtodorTipoUltimoDocumentoIntECFDaruma1Click(Sender: TObject);
    procedure MtodorTipoUltimoDocumentoStrECFDaruma1Click(Sender: TObject);
    procedure MtodorUltimoCMDEnviadoECFDaruma1Click(Sender: TObject);
    procedure MtodprMinasLegalECFDaruma1Click(Sender: TObject);
    procedure MtodorRetornarVendaBrutaECFDaruma1Click(Sender: TObject);
    procedure MtodorStatusImpressoraBinarioECFDaruma1Click(Sender: TObject);
    procedure MtodorConsultaStatusImpressoraStrECFDaruma1Click(Sender: TObject);
    procedure MtodorConsultaStatusImpressoraIntECFDaruma1Click(Sender: TObject);
    procedure MtodoeRetornarPortasComECFDaruma1Click(Sender: TObject);
    procedure MtodoeRetornarAvisoErroUltimoCMDECFDaruma1Click(Sender: TObject);
    procedure eInterpretarRetornoECFDaruma1Click(Sender: TObject);
    procedure MtodoeInterpretarAvisoECFDaruma1Click(Sender: TObject);
    procedure MtodoeInterpretarErroECFDaruma1Click(Sender: TObject);
    procedure MtodoiRelatorioConfiguracaoECFDaruma1Click(Sender: TObject);
    procedure MtodorLerDecimaisIntECFDaruma1Click(Sender: TObject);
    procedure MtodorLerDecimaisStrECFDaruma1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_RetornoECF: TFR_FISCAL_RetornoECF;

implementation

uses Daruma_Framework_FISCAL_Principal,
  Daruma_Framework_FISCAL_rRetornarInformacao_ECF_Daruma, Daruma_Framework_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma;

{$R *.dfm}

procedure TFR_FISCAL_RetornoECF.eInterpretarRetornoECFDaruma1Click(
  Sender: TObject);
 var Iindice:Integer;
      Str_Indice:AnsiString;
      Str_Valor:AnsiString;
begin
   SetLength (Str_Valor,300);
   Str_Indice := InputBox('DarumaFramework', 'Entre com o número do retorno:',  '-12');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := eInterpretarRetorno_ECF_Daruma(Iindice, Str_Valor);
   Application.MessageBox(pWidechar(Trim(Str_Valor)), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end

end;

procedure TFR_FISCAL_RetornoECF.FecharClick(Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_RetornoECF.MtodorLerAliquotasECFDaruma1Click(
  Sender: TObject);
var
    Str_Informacao: AnsiString;
begin
	 SetLength (Str_Informacao,100);
   Int_Retorno := rLerAliquotas_ECF_Daruma(AnsiString(Str_Informacao));
   Edt_Retorno.Lines.Text := (Str_Informacao);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorLerMeiosPagtoECFDaruma1Click(
  Sender: TObject);
var
    Str_Informacao: AnsiString;
begin
	 SetLength (Str_Informacao,330);
   Int_Retorno := rLerMeiosPagto_ECF_Daruma(AnsiString(Str_Informacao));
	 Edt_Retorno.Lines.Text := (Str_Informacao);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorLerRGECFDaruma1Click(
  Sender: TObject);
var
    Str_Informacao: AnsiString;
begin
	 SetLength (Str_Informacao,330);
	 Int_Retorno := rLerRG_ECF_Daruma(AnsiString(Str_Informacao));
	 Edt_Retorno.Lines.Text := (Str_Informacao);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorRetornarInformacaoECFDaruma1Click(
  Sender: TObject);
begin
	 FR_FISCAL_rRetornarInformacao_ECF_Daruma.show;
end;

procedure TFR_FISCAL_RetornoECF.MtodorRetornarVendaBrutaECFDaruma1Click(
  Sender: TObject);
Var Str_VendaBruta: AnsiString;
begin
  Str_VendaBruta:=StringOFChar(#0,19);
   Int_Retorno := rRetornarVendaBruta_ECF_Daruma(Str_VendaBruta);
   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (Trim(Str_VendaBruta));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodosrLerDecimaisECFDaruma1Click(
	Sender: TObject);                       
Var Str_DecimalQtde, Str_DecimalValor: AnsiString;
		Int_DecimalQtde, Int_DecimalValor: integer;
begin
	 SetLength (Str_DecimalQtde,2);
	 SetLength (Str_DecimalValor,2);
	 Int_Retorno := rLerDecimais_ECF_Daruma(AnsiString(Str_DecimalQtde), AnsiString(Str_DecimalValor), Int_DecimalQtde, Int_DecimalValor);
	 Edt_Retorno.Lines.Text := (Trim('Decimais Valor Unitário: ' + AnsiString(Str_DecimalValor) + #13#10+ 'Decimais Quantidade: ' + AnsiString(Str_DecimalQtde)));
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodosrLerDecimaisIntECFDaruma1Click(
  Sender: TObject);
Var Int_DecimalQtdeInt, Int_DecimalValorInt: integer;
begin
   Int_DecimalQtdeInt:= 0;
   Int_DecimalValorInt:= 0;
	 Int_Retorno := rLerDecimaisInt_ECF_Daruma(Int_DecimalQtdeInt, Int_DecimalValorInt);
	 Edt_Retorno.Lines.Text := ('Decimais para Valor Unitário: ' + IntToStr(Int_DecimalValorInt) +  #13#10+ ' Decimais para Quantidade: ' + IntToStr(Int_DecimalQtdeInt));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodosrLerDecimaisStrECFDaruma1Click(
	Sender: TObject);
Var Str_DecimalQtdeStr, Str_DecimalValorStr: AnsiString;
begin
	 SetLength (Str_DecimalQtdeStr,2);
	 SetLength (Str_DecimalValorStr,2);
	 Edt_Retorno.Lines.Text := ('Decimais para Valor Unitário: ' + Str_DecimalValorStr +  #13#10+ ' Decimais para Quantidade: ' + Str_DecimalQtdeStr);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodprMinasLegalECFDaruma1Click(
  Sender: TObject);
Var Str_MinasLegal: AnsiString;
begin
   Str_MinasLegal:=StringOFChar(#0,50);
   Int_Retorno := rMinasLegal_ECF_Daruma(Str_MinasLegal);
   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (Trim(Str_MinasLegal));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.rRetornarInformacaoECFDaruma1Click(
  Sender: TObject);
begin
 FR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma.show;
end;

procedure TFR_FISCAL_RetornoECF.MtodosrDataHoraImpressoraECFDaruma1Click(
  Sender: TObject);
Var Str_Data, Str_Hora: AnsiString;
begin
	 SetLength (Str_Data,10);
	 SetLength (Str_Hora,10);
	 Int_Retorno := rDataHoraImpressora_ECF_Daruma(Str_Data, Str_Hora);
	 Edt_Retorno.Lines.Text := (Trim('Data: ' + pAnsichar(Str_Data) +  #13#10+ 'Hora: ' + pAnsichar(Str_Hora)));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorVerificarReducaoZECFDaruma1Click(
  Sender: TObject);
Var Str_VerificarRZ: AnsiString;
begin
	 SetLength (Str_VerificarRZ,1);
	 Int_Retorno := rVerificarReducaoZ_ECF_Daruma(AnsiString(Str_VerificarRZ));
   if str_VerificarRZ = '1' then
     begin
      	 Edt_Retorno.Lines.Text := (' 1 - Redução Z Pendente!!');
      end
      else
      begin
         Edt_Retorno.Lines.Text:= (' 0 - Não existe Redução Z pendente!!');
      end;
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorRetornarDadosReducaoZECFDaruma1Click(
  Sender: TObject);
Var Str_DadosUltimaRZ: AnsiString;
begin
	 SetLength (Str_DadosUltimaRZ,1500);
	 Int_Retorno := rRetornarDadosReducaoZ_ECF_Daruma(AnsiString(Str_DadosUltimaRZ));
	 Edt_Retorno.Lines.Text := (Str_DadosUltimaRZ);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorStatusImpressoraBinarioECFDaruma1Click(
  Sender: TObject);
var Str_Valor:AnsiString;
begin
   SetLength (Str_Valor,100);
   Int_Retorno := rStatusImpressoraBinario_ECF_Daruma(Str_Valor);
   Application.MessageBox(pWidechar(Trim(Str_Valor)), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end;

procedure TFR_FISCAL_RetornoECF.MtodorStatusUltimoCmdECFDaruma1Click(
  Sender: TObject);
 Var Str_ErroCMD, Str_AvisoCMD: AnsiString;
begin
 SetLength (Str_ErroCMD,3);
 SetLength (Str_AvisoCMD,3);

   Int_Retorno := rStatusUltimoCmd_ECF_Daruma(Str_ErroCMD, Str_AvisoCMD, Int_NumErro, Int_NumAviso);
    Edt_Retorno.Lines.Text := (Trim('Num.Erro: ' + IntToStr(Int_NumErro) + ' Num.Aviso: ' + IntToStr(Int_NumAviso) + ' Str.Erro: ' + pAnsichar(Str_ErroCMD) + ' Str.Aviso: ' + pAnsichar(Str_AvisoCMD)));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno)
end;

procedure TFR_FISCAL_RetornoECF.MtodorTipoUltimoDocumentoIntECFDaruma1Click(
  Sender: TObject);
Var Str_TipoDoc: AnsiString;
begin
	 SetLength (Str_TipoDoc,2);
	 Int_Retorno := rTipoUltimoDocumentoInt_ECF_Daruma(Str_TipoDoc);
	 Edt_Retorno.Lines.Text := (Str_TipoDoc);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorTipoUltimoDocumentoStrECFDaruma1Click(
  Sender: TObject);
Var Str_TipoDoc: AnsiString;
begin
	 SetLength (Str_TipoDoc,4);
	 Int_Retorno := rTipoUltimoDocumentoStr_ECF_Daruma(Str_TipoDoc);
	 Edt_Retorno.Lines.Text := (Str_TipoDoc);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorUltimoCMDEnviadoECFDaruma1Click(
  Sender: TObject);
Var Str_UltimoCMD: AnsiString;
begin
	 SetLength (Str_UltimoCMD,100);
	 Int_Retorno := rUltimoCMDEnviado_ECF_Daruma(Str_UltimoCMD);
	 Edt_Retorno.Lines.Text := (Str_UltimoCMD);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.Btn_LimparClick(Sender: TObject);
begin
   Edt_Retorno.Lines.Text:= '';
end;

procedure TFR_FISCAL_RetornoECF.Mtodo2Click(Sender: TObject);
begin
    Int_Retorno := eBuscarPortaVelocidade_ECF_Daruma();
  	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodoeInterpretarAvisoECFDaruma1Click(
  Sender: TObject);
var Iindice:Integer;
      Str_Indice:AnsiString;
      Str_Valor:AnsiString;
begin
   SetLength (Str_Valor,300);
   Str_Indice := InputBox('DarumaFramework', 'Entre com o número do Aviso:',  '1');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := eInterpretarAviso_ECF_Daruma(Iindice, Str_Valor);
   Application.MessageBox(pWidechar(Trim(Str_Valor)), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end

end;

procedure TFR_FISCAL_RetornoECF.MtodoeInterpretarErroECFDaruma1Click(
  Sender: TObject);
var Iindice:Integer;
      Str_Indice:AnsiString;
      Str_Valor:AnsiString;
begin
   SetLength (Str_Valor,300);
   Str_Indice := InputBox('DarumaFramework', 'Entre com o número do Erro:',  '78');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := eInterpretarErro_ECF_Daruma(Iindice, Str_Valor);
   Application.MessageBox(pWidechar(Trim(Str_Valor)), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end

end;
procedure TFR_FISCAL_RetornoECF.MtodoeRetornarAvisoErroUltimoCMDECFDaruma1Click(
  Sender: TObject);
var
      Str_Msg_NumErro, Str_Msg_NumAviso : AnsiString;
begin
   Str_Msg_NumErro:=StringOFChar(' ',300);
   Str_Msg_NumAviso:=StringOFChar(' ',300);

// Retorna a mensagem referente ao erro e aviso do ultimo comando enviado
   Int_Retorno:=eRetornarAvisoErroUltimoCMD_ECF_Daruma(Str_Msg_NumAviso, Str_Msg_NumErro);

   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (PAnsichar('Mensagem Erro = ' + pAnsichar(Trim(Str_Msg_NumErro)) +  #13 +
                              'Mensagem Aviso = ' + pAnsichar(Trim(Str_Msg_NumAviso))));

end;

procedure TFR_FISCAL_RetornoECF.MtodoeRetornarPortasComECFDaruma1Click(
  Sender: TObject);
Var Str_COM: AnsiString;
begin
   Str_COM:=StringOFChar(#0,50);
   Int_Retorno := eRetornarPortasCOM_ECF_Daruma(Str_COM);
   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (Trim(Str_COM));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
    end;

procedure TFR_FISCAL_RetornoECF.MtodoiRelatorioConfiguracaoECFDaruma1Click(
  Sender: TObject);
begin

  Int_Retorno:=  iRelatorioConfiguracao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.Mt1Click(Sender: TObject);
Var Str_InfoEstendida1:AnsiString;
begin
  	 SetLength (Str_InfoEstendida1,30);
    Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
    Int_Retorno := rInfoEstentida1_ECF_Daruma(AnsiString(Str_InfoEstendida1));
    Edt_Retorno.Lines.Text := ('Info Estendida 1 : ' + Str_InfoEstendida1);
  	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstentida2ECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida2:AnsiString;
begin
  	 SetLength (Str_InfoEstendida2,30);
    Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
    Int_Retorno := rInfoEstentida2_ECF_Daruma(AnsiString(Str_InfoEstendida2));
    Edt_Retorno.Lines.Text := ('Info Estendida 2 : ' + Str_InfoEstendida2);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstentida3ECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida3:AnsiString;
begin
  	 SetLength(Str_InfoEstendida3,30);
    Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
    Int_Retorno := rInfoEstentida3_ECF_Daruma(AnsiString(Str_InfoEstendida3));
    Edt_Retorno.Lines.Text := ('Info Estendida 3 : ' + Str_InfoEstendida3);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstentida4ECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida4:AnsiString;
begin
    SetLength (Str_InfoEstendida4,30);
    Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
    Int_Retorno := rInfoEstentida4_ECF_Daruma(AnsiString(Str_InfoEstendida4));
    Edt_Retorno.Lines.Text := ('Info Estendida 4 : ' + Str_InfoEstendida4);
    FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstentida5ECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida5:AnsiString;
begin
 	 SetLength (Str_InfoEstendida5,30);
   Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
   Int_Retorno := rInfoEstentida5_ECF_Daruma(AnsiString(Str_InfoEstendida5));
   Edt_Retorno.Lines.Text := ('Info Estendida 5 : ' + Str_InfoEstendida5);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodosrCFSaldoAPagarECFDaruma1Click(
  Sender: TObject);
Var Str_SaldoAPagar:AnsiString;
begin
    SetLength (Str_SaldoAPagar,13);
    Int_Retorno := rCFSaldoAPagar_ECF_Daruma(AnsiString(Str_SaldoAPagar));
     Edt_Retorno.Lines.Text := ('Saldo a pagar: ' + Str_SaldoAPagar);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorCFSubTotalECFDaruma1Click(
  Sender: TObject);
Var Str_Subtotal:AnsiString;
begin
    SetLength (Str_Subtotal,13);
    Int_Retorno := rCFSubtotal_ECF_Daruma(AnsiString(Str_Subtotal));
     Edt_Retorno.Lines.Text := ('Subtotal: ' + Str_Subtotal);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorVerificaImpressoraLigadaECFDaruma1Click(
  Sender: TObject);
begin
    Int_Retorno:= rVerificarImpressoraLigada_ECF_Daruma();
    If Int_Retorno = 1 Then
    begin
       Edt_Retorno.Lines.Text:='[1] - Impressora Ligada';
       end
       Else
         Edt_Retorno.Lines.Text:= '[0] - Impressora Desligada';
    end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstendidaECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida:AnsiString;
     Int_InfoEstendida:Integer;
begin
 	 SetLength (Str_InfoEstendida,30);
   Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
   Int_Retorno := rInfoEstentida_ECF_Daruma(Int_InfoEstendida,AnsiString(Str_InfoEstendida));
   Edt_Retorno.Lines.Text := ('Info Estendida Int :' + IntToStr(Int_InfoEstendida) + #13#10+ 'Info Estendida STR: ' +AnsiString(STR_InfoEstendida));
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorCFVerificarStatusECFDaruma1Click(
  Sender: TObject);
Var Str_StatusCupomFiscal:AnsiString;
     Int_StatusCupomFiscal:Integer;
begin
 	 SetLength (Str_StatusCupomFiscal,1);
   Int_Retorno := rCFVerificarStatus_ECF_Daruma(AnsiString(Str_StatusCupomFiscal), Int_StatusCupomFiscal);
   If Int_StatusCupomFiscal = 1 then
   begin
   Edt_Retorno.Lines.Text := ('Status Cupom Fiscal STR: ' +AnsiString(STR_StatusCupomFiscal) + ' Aberto' + #13#10+'Status Cupom Fiscal Int :' + IntToStr(Int_StatusCupomFiscal) + ' Aberto');
   end
   else
    Edt_Retorno.Lines.Text := ('Status Cupom Fiscal STR: ' +AnsiString(STR_StatusCupomFiscal) + ' Fechado ' + #13#10+'Status Cupom Fiscal Int :' + IntToStr(Int_StatusCupomFiscal) + ' Fechado');
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorConsultaStatusImpressoraIntECFDaruma1Click(
  Sender: TObject);
var Iindice:Integer;
      Str_Indice:AnsiString;
      Int_Valor:Integer;
begin

   Str_Indice := InputBox('DarumaFramework', 'Entre com o índice desejado:',  '1');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := rConsultaStatusImpressoraInt_ECF_Daruma(Iindice, Int_Valor);
   Application.MessageBox(pWidechar(IntToStr(Int_Valor)), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end
end;
procedure TFR_FISCAL_RetornoECF.MtodorConsultaStatusImpressoraStrECFDaruma1Click(
  Sender: TObject);
var Iindice:Integer;
      Str_Indice:AnsiString;
      Str_Valor:AnsiString;
begin
   SetLength (Str_Valor,200);
   Str_Indice := InputBox('DarumaFramework', 'Entre com o índice desejado:',  '1');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := rConsultaStatusImpressoraStr_ECF_Daruma(Iindice, Str_Valor);
   Application.MessageBox(pWidechar(Trim(Str_Valor)), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end

end;

procedure TFR_FISCAL_RetornoECF.MtodoseVerificarVersaoDLLDaruma1Click(
  Sender: TObject);
Var Str_VersaoDLL:AnsiString;
begin
 	 SetLength (Str_VersaoDLL,10);
   Int_Retorno := eVerificarVersaoDLL_Daruma(AnsiString(Str_VersaoDLL));
   Edt_Retorno.Lines.Text := ('Versão DLL :' + AnsiString(STR_VersaoDLL));
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.Mtodo1Click(Sender: TObject);
Var Str_StatusEcf_Str :AnsiString;
Int_StatusEcf_Int:integer;
begin
   SetLength (Str_StatusEcf_Str,14);
   Int_Retorno :=  rStatusImpressora_ECF_Daruma(AnsiString(Str_StatusEcf_Str));
   If Int_Retorno = 1 then
     begin
        ShowMessage(Str_StatusEcf_Str + ' - Impressora OK');
     end
     else begin
        Int_StatusEcf_Int:= StrToInt(Str_StatusEcf_Str);
        case Int_StatusEcf_Int of
				 2: ShowMessage(Str_StatusEcf_Str + ' - Pouco Papel');
				 3: ShowMessage(Str_StatusEcf_Str + ' - Documento Aberto');
				 4: ShowMessage(Str_StatusEcf_Str + ' - Tampa aberta');
				 5: ShowMessage(Str_StatusEcf_Str + ' - Impressora Desligada');
				 6: ShowMessage(Str_StatusEcf_Str + ' - Final Papel');
         end;
      end;
         FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorLerCNFECFDaruma1Click(
  Sender: TObject);
var
    Str_Informacao: AnsiString;
begin
	 SetLength (Str_Informacao,330);
	 Int_Retorno := rLerCNF_ECF_Daruma(AnsiString(Str_Informacao));
	 Edt_Retorno.Lines.Text := (Str_Informacao);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorLerDecimaisIntECFDaruma1Click(
  Sender: TObject);
Var Int_DecimalQtdeInt, Int_DecimalValorInt: integer;
begin
   Int_DecimalQtdeInt:= 0;
   Int_DecimalValorInt:= 0;
	 Int_Retorno := rLerDecimaisInt_ECF_Daruma(Int_DecimalQtdeInt, Int_DecimalValorInt);
	 Edt_Retorno.Lines.Text := ('Decimais para Valor Unitário: ' + IntToStr(Int_DecimalValorInt) +  #13#10+ ' Decimais para Quantidade: ' + IntToStr(Int_DecimalQtdeInt));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;
procedure TFR_FISCAL_RetornoECF.MtodorLerDecimaisStrECFDaruma1Click(
  Sender: TObject);
Var Str_DecimalQtdeStr, Str_DecimalValorStr: AnsiString;
begin
	 SetLength (Str_DecimalQtdeStr,2);
	 SetLength (Str_DecimalValorStr,2);
	 Edt_Retorno.Lines.Text := ('Decimais para Valor Unitário: ' + Str_DecimalValorStr +  #13#10+ ' Decimais para Quantidade: ' + Str_DecimalQtdeStr);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
