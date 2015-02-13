unit Daruma_Framework_DUAL_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, pngimage;

type
  TFR_MenuImpressoraDual_Principal = class(TForm)
    MM_Dual: TMainMenu;
    MN_MRegistro: TMenuItem;
    MN_Status: TMenuItem;
    MN_AutenticaImpressao: TMenuItem;
    MN_FecharDual: TMenuItem;
    MN_regAguardarProcesso_DUAL_DarumaFramework: TMenuItem;
    MN_regEnterFinal_DUAL_DarumaFramework: TMenuItem;
    MN_regLinhasGuilhotina_DUAL_DarumaFramework: TMenuItem;
    MN_regModoGaveta_DUAL_DarumaFramework: TMenuItem;
    MN_regPortaComunicacao_DUAL_DarumaFramework: TMenuItem;
    MN_regTabulacao_DUAL_DarumaFramework: TMenuItem;
    MN_regTermica_DUAL_DarumaFramework: TMenuItem;
    MN_regVelocidade_DUAL_DarumaFramework: TMenuItem;
    MN_rStatusImpressora_DUAL_DarumaFramework: TMenuItem;
    MN_rStatusDocumento_DUAL_DarumaFramework: TMenuItem;
    MN_rStatusGaveta_DUAL_DarumaFramework: TMenuItem;
    MN_iImprimirTexto_DUAL_DarumaFramework: TMenuItem;
    MN_iImprimirArquivo_DUAL_DarumaFramework: TMenuItem;
    MN_iAutenticarDocumento_DUAL_DarumaFramework: TMenuItem;
    MN_iAcionarGaveta_DUAL_DarumaFramework: TMenuItem;
    MN_iEnviarBMP_DUAL_DarumaFramework: TMenuItem;
    MN_regAguardar_Habilitar: TMenuItem;
    MN_regAguardar_Desabilitar: TMenuItem;
    MN_regEnterFinal_Habilitar: TMenuItem;
    MN_regEnterFinal_Desabilitar: TMenuItem;
    MN_regGaveta_Padrao: TMenuItem;
    MN_regGaveta_AlteraPadrao: TMenuItem;
    MN_regTermica_Habilitar: TMenuItem;
    MN_regTermica_Desabilitar: TMenuItem;
    MN_Exemplos: TMenuItem;
    MN_Exemplo1: TMenuItem;
    MN_Exemplo2: TMenuItem;
    MN_Exemplo3: TMenuItem;
    MN_Exemplo4: TMenuItem;
    MN_Testes: TMenuItem;
    MN_Testes_LoopingStatus: TMenuItem;
    MN_Testes_LoopingDoc: TMenuItem;
    BT_Fechar: TButton;
    MN_regCodePageAutomatico_DUAL_DarumaFramework: TMenuItem;
    MN_regZeroCortado_DUAL_DarumaFramework: TMenuItem;
    MN_regCodePageAutomatico_DUAL_DarumaFramework_Habilitar: TMenuItem;
    MN_regCodePageAutomatico_DUAL_DarumaFramework_Desabilitar: TMenuItem;
    MN_regZeroCortado_DUAL_DarumaFramework_Habilitar: TMenuItem;
    MN_regZeroCortado_DUAL_DarumaFramework_Desabilitar: TMenuItem;
    MN_MetodosDarumaFramework: TMenuItem;
    MN_eDefinirProduto_Daruma: TMenuItem;
    MN_regRetornaValorChave_DarumaFramework: TMenuItem;
    Bobina35colunas1: TMenuItem;
    Bob35Buffer: TMenuItem;
    Bob35Exemplo2Tabulao1: TMenuItem;
    bob35Exemplo3LinhaaLinha1: TMenuItem;
    bob35esteCompletoemBuffer1: TMenuItem;
    bob35esteCompletoLinhaaLinha1: TMenuItem;
    MtodorConsultaStatusImpressoraDUALDarumaFramework1: TMenuItem;
    PN_Dual: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    LB_Duvidas: TLabel;
    procedure MN_FecharDualClick(Sender: TObject);
    procedure MN_regAguardar_HabilitarClick(Sender: TObject);
    procedure MN_regAguardar_DesabilitarClick(Sender: TObject);
    procedure MN_regEnterFinal_HabilitarClick(Sender: TObject);
    procedure MN_regEnterFinal_DesabilitarClick(Sender: TObject);
    procedure MN_regGaveta_PadraoClick(Sender: TObject);
    procedure MN_regGaveta_AlteraPadraoClick(Sender: TObject);
    procedure MN_regTermica_HabilitarClick(Sender: TObject);
    procedure MN_regTermica_DesabilitarClick(Sender: TObject);
    procedure MN_rStatusImpressora_DUAL_DarumaFrameworkClick(
      Sender: TObject);
    procedure MN_rStatusDocumento_DUAL_DarumaFrameworkClick(
      Sender: TObject);
    procedure MN_rStatusGaveta_DUAL_DarumaFrameworkClick(Sender: TObject);
    procedure MN_iImprimirArquivo_DUAL_DarumaFrameworkClick(
      Sender: TObject);
    procedure MN_iAcionarGaveta_DUAL_DarumaFrameworkClick(Sender: TObject);
    procedure MN_iEnviarBMP_DUAL_DarumaFrameworkClick(Sender: TObject);
    procedure MN_regPortaComunicacao_DUAL_DarumaFrameworkClick(
      Sender: TObject);
    procedure MN_regVelocidade_DUAL_DarumaFrameworkClick(Sender: TObject);
    procedure MN_iAutenticarDocumento_DUAL_DarumaFrameworkClick(
      Sender: TObject);
    procedure MN_iImprimirTexto_DUAL_DarumaFrameworkClick(Sender: TObject);
    procedure MN_regLinhasGuilhotina_DUAL_DarumaFrameworkClick(
      Sender: TObject);
    procedure MN_Testes_LoopingStatusClick(Sender: TObject);
    procedure MN_Testes_LoopingDocClick(Sender: TObject);
    procedure MN_Exemplo4Click(Sender: TObject);
    procedure MN_Exemplo1Click(Sender: TObject);
    procedure MN_Exemplo3Click(Sender: TObject);
    procedure MN_Exemplo2Click(Sender: TObject);
    procedure MN_regTabulacao_DUAL_DarumaFrameworkClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
    procedure MN_regZeroCortado_DUAL_DarumaFramework_HabilitarClick(
      Sender: TObject);
    procedure MN_regCodePageAutomatico_DUAL_DarumaFramework_HabilitarClick(
      Sender: TObject);
    procedure MN_regCodePageAutomatico_DUAL_DarumaFramework_DesabilitarClick(
      Sender: TObject);
    procedure MN_regZeroCortado_DUAL_DarumaFramework_DesabilitarClick(
      Sender: TObject);
    procedure MN_eDefinirProduto_DarumaClick(Sender: TObject);
    procedure MN_regRetornaValorChave_DarumaFrameworkClick(
      Sender: TObject);
    procedure Bob35BufferClick(Sender: TObject);
    procedure Bob35Exemplo2Tabulao1Click(Sender: TObject);
    procedure bob35Exemplo3LinhaaLinha1Click(Sender: TObject);
    procedure bob35esteCompletoemBuffer1Click(Sender: TObject);
    procedure bob35esteCompletoLinhaaLinha1Click(Sender: TObject);
    procedure MtodorConsultaStatusImpressoraDUALDarumaFramework1Click(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MenuImpressoraDual_Principal: TFR_MenuImpressoraDual_Principal;

implementation

uses Daruma_Framework_DUAL_metodo_iAutenticarDocumento_DUAL_DarumaFramework,
  Daruma_Framework_DUAL_metodo_iImprimirTexto_DUAL_DarumaFramework,
  Daruma_Framework_DUAL_verificacaoLoopingStatus,
  Daruma_Framework_DUAL_verificacaoLoopingStatusDocumento,
  Daruma_Framework_DUAL_menuExemplo4Formulario;
 // Daruma_Framework_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework;

   function iImprimirTexto_DUAL_DarumaFramework(stTexto: AnsiString; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll';
   function regAguardarProcesso_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regEnterFinal_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regLinhasGuilhotina_DUAL_DarumaFramework(stParametro: ANsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regModoGaveta_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regPortaComunicacao_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regTabulacao_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regTermica_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regVelocidade_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function rConsultaStatusImpressora_DUAL_DarumaFramework(stIndice: AnsiString; StTipo: AnsiString; StRetorno: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll'
   function rStatusImpressora_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
   function rStatusDocumento_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
   function rStatusGaveta_DUAL_DarumaFramework(var iStatusGaveta: Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
   function iImprimirArquivo_DUAL_DarumaFramework(stPath: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function iAcionarGaveta_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
   function iEnviarBMP_DUAL_DarumaFramework(stArqOrigem: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regCodePageAutomatico_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function regZeroCortado_DUAL_DarumaFramework(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
   function eDefinirProduto_Daruma(szProduto: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';

   {$R *.dfm}

procedure TFR_MenuImpressoraDual_Principal.bob35esteCompletoLinhaaLinha1Click(
  Sender: TObject);

  var
  iRetorno: Integer;

begin
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<sn><l><ce><s>Teste com Formatação DHTM</s></ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<n>Estes são os carácteres que<l> você poderá utilizar<n><l>Você poderá a qualquer momento<l> combinar as formatações!!', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<b>><</b>> Para sinalizar Negrito', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<i>><</i>> Para sinalizar Itálico', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<s>><</s>> Para sinalizar Sublinhado', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<e>><</e>> Para sinalizar Expandido', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<c>><</c>> Para sinalizar Condensado', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<n>><</n>> Para sinalizar Normal', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<l>><</l>> Para Saltar Uma Linha', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<fe>><</fe>> Ativa o Modo fonte Elite', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ad>><</ad>> Para alinhar a direita', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ft>>n1,..,n6<</ft>> Habilitar tabulação', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<tb>><</tb>>Saltar até proxima tabulação', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sl>>NN<</sl>> Saltar Várias Linhas', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<tc>>C<</tc>>Riscar Linha<l> com Carácter Específico', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ce>><</ce>> Para Centralizar', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<dt>><</dt>> Para Imprimir Data Atual', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<hr>><</hr>> Para Imprimir Hora Atual', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sp>>NN<</sp>> Inserir NN Espaços<l> em Branco', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sn>><</sn>> Sinal Sonoro, Apitar', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<g>><</g>> Abre a Gaveta', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<a>><</a>> Aguardar Término da Impressão', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l><tc>_</tc><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e><ce>TABULAÇÃO</ce><e><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<b>FABR<tb>Ano<tb>Modelo<tb>Valor<tb>Cor</b>'),0);
//IMPRIMINDO A PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>2000<tb>Corsa<tb>12.000<tb>Azul'),0);
//IMPRIMINDO A SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Ford<tb>2005<tb>Fiesta<tb>14.000<tb>Azul'),0);
//IMPRIMINDO A TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Fiat<tb>1998<tb>Uno<tb>9.000<tb>Azul'),0);
//IMPRIMINDO A QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>1997<tb>Vectra<tb>18.000<tb>Azul'),0);
//IMPRIMINDO A QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>1999<tb>Tigra<tb>17.000<tb>Azul'),0);
//IMPRIMINDO A SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Ford<tb>2001<tb>Ka<tb>5.000<tb>Azul'),0);
//IMPRIMINDO A SÉTIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>1998<tb>Corsa<tb>10.000<tb>Azul'),0);
//IMPRIMINDO A OITAVA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Fiat<tb>1996<tb>Fiurino<tb>6.000<tb>Azul'),0);
//IMPRIMINDO A NONA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('WV<tb>1979<tb>Fusca<tb>3.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>1996<tb>Vectra<tb>16.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Fiat<tb>1985<tb>Fiat147<tb>3.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Hond<tb>2003<tb>Civic<tb>28.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Fiat<tb>1999<tb>Palio<tb>12.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>2003<tb>Celta<tb>17.000<tb>Azul<sl>7</sl>'),0);

  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l></l><e>DATA:<dt></dt></e><l></l><e>Hora:<hr></hr></e><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Anvançando 3 Linhas</ce><sl>3</sl>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Anvançando 1 Linha</ce><sl>1</sl>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l>Inserindo<sp>5</sp>5 espaços em Branco', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Formatação Normal</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<n>DARUMA AUTOMAÇÃO!!</n><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+EXPAND</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><e>DARUMA AUTOMAÇÃO!!</b></i></s></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><c>DARUMA AUTOMAÇÃO!!</b></i></s></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><n>DARUMA AUTOMAÇÃO!!</b></i></s></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e>DARUMA AUTOMAÇÃO!!<e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<c>DARUMA AUTOMAÇÃO!!</c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><e>DARUMA AUTOMAÇÃO!!</b></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ITÁLICO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<i><e>DARUMA AUTOMAÇÃO!!</i></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce><dt></dt>SUBLINHADO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><e>DARUMA AUTOMAÇÃO!!</s></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><c>DARUMA AUTOMAÇÃO!!</b></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ITÁLICO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<i><c>DARUMA AUTOMAÇÃO!!</i></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>SUBLINHADO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><c>DARUMA AUTOMAÇÃO!!</s></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><n>DARUMA AUTOMAÇÃO!!</b></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ITÁLICO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l><i><n>DARUMA AUTOMAÇÃO!!</i></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>SUBLINHADO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><n>DARUMA AUTOMAÇÃO!!</s></n><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ALINHADO A DIREITA</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ad>DARUMA</ad><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>CENTRALIZADO + EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e><ce>DARUMA!!</ce></e><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ft>05,10,15,20,30,40</ft>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>TABULADO NA COLUNA 10</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb></tb><tb></tb>DARUMA<l>', 0);

  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<l><e><b>FIM TAGS COMPLETO</e></b>'), 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<sl>03</sl>'), 0);

        if (iRetorno = 1) Then
            Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
            else
            Application.MessageBox('Erro ao realizar a impressão das TAGS!', 'Daruma DLL Framework', mb_ok + 16);
end;

procedure TFR_MenuImpressoraDual_Principal.MN_FecharDualClick(
  Sender: TObject);
begin

Close;

end;

procedure TFR_MenuImpressoraDual_Principal.MN_regAguardar_HabilitarClick(
  Sender: TObject);

var iRetorno: Integer;
begin
  MN_regAguardar_Habilitar.Checked := false;
  MN_regAguardar_Desabilitar.Checked := false;
  iRetorno := regAguardarProcesso_DUAL_DarumaFramework('1');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regAguardar_Habilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_regAguardar_DesabilitarClick(
  Sender: TObject);

var iRetorno: Integer;
begin
  MN_regAguardar_Habilitar.Checked := false;
  MN_regAguardar_Desabilitar.Checked := false;
  iRetorno := regAguardarProcesso_DUAL_DarumaFramework('0');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLl Framework', MB_OK + MB_ICONINFORMATION);
      MN_regAguardar_Desabilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_regEnterFinal_HabilitarClick(
  Sender: TObject);

var iRetorno: Integer;
begin
  MN_regEnterFinal_Habilitar.Checked := false;
  MN_regEnterFinal_Desabilitar.Checked := false;
  iRetorno := regEnterFinal_DUAL_DarumaFramework('1');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regEnterFinal_Habilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;

end;

procedure TFR_MenuImpressoraDual_Principal.MN_regEnterFinal_DesabilitarClick(
  Sender: TObject);

var iRetorno: Integer;
begin
  MN_regEnterFinal_Habilitar.Checked := false;
  MN_regEnterFinal_Desabilitar.Checked := false;
  iRetorno := regEnterFinal_DUAL_DarumaFramework('0');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regEnterFinal_Desabilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;

end;

procedure TFR_MenuImpressoraDual_Principal.MN_regGaveta_PadraoClick(
  Sender: TObject);

var iRetorno: integer;
begin
  MN_regGaveta_Padrao.Checked := false;
  MN_regGaveta_AlteraPadrao.Checked := false;
  iRetorno := regModoGaveta_DUAL_DarumaFramework('0');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regGaveta_Padrao.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_regGaveta_AlteraPadraoClick(
  Sender: TObject);

var iRetorno: integer;
begin
  MN_regGaveta_Padrao.Checked := false;
  MN_regGaveta_AlteraPadrao.Checked := false;
  iRetorno := regModoGaveta_DUAL_DarumaFramework('1');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regGaveta_AlteraPadrao.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_regTermica_HabilitarClick(
  Sender: TObject);

var iRetorno: Integer;
begin
  MN_regTermica_Habilitar.Checked := false;
  MN_regTermica_Desabilitar.Checked := false;
  iRetorno := regTermica_DUAL_DarumaFramework('1');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regTermica_Habilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_regTermica_DesabilitarClick(
  Sender: TObject);

var iRetorno: Integer;
begin
  MN_regTermica_Habilitar.Checked := false;
  MN_regTermica_Desabilitar.Checked := false;
  iRetorno := regTermica_DUAL_DarumaFramework('0');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regTermica_Desabilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_rStatusImpressora_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var iRetorno: Integer;
begin

  iRetorno := rStatusImpressora_DUAL_DarumaFramework();
  case iRetorno of
    0: Application.MessageBox('[0] - Impressora desligada', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    1: Application.MessageBox('[1] - Impressora OK', 'Daruma DLL Framework',MB_OK + MB_ICONINFORMATION);
    -27: Application.MessageBox('[-27] - Erro generico', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -50: Application.MessageBox('[-50] - Impressora OFFLINE', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -51: Application.MessageBox('[-51] - Impressora sem papel!', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -52: Application.MessageBox('[-52] - Impressora inicializando', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
  else
    Application.MessageBox('Retorno não esperado', 'Daruma DLL Framework', mb_ok + 16);
  end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_rStatusDocumento_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var iRetorno: Integer;
begin
  iRetorno := rStatusDocumento_DUAL_DarumaFramework();
  case iRetorno of
    0: Application.MessageBox('[0] - Documento não posicionado, favor verificar', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    1: Application.MessageBox('[1] - Documento posicionado', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -27: Application.MessageBox('[-27] - Erro Generico', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
  else
    Application.MessageBox('Retorno não esperado', 'Daruma DLl Framework', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_rStatusGaveta_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var iRetorno: Integer;
    iStatusGaveta: Integer;
begin
  //iStatusGaveta := 0;
  iRetorno := rStatusGaveta_DUAL_DarumaFramework(iStatusGaveta);
  if (iRetorno = 1) then
    begin
      case iStatusGaveta of
        0: Application.MessageBox('[0] - Gaveta fechada', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        1: Application.MessageBox('[1] - Gaveta aberta', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      else
        Application.MessageBox('Retorno não esperado', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      end;
    end
  else
    begin
      Application.MessageBox('Retorno não esperado', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_iImprimirArquivo_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var
    stCaminho: AnsiString;
    iRetorno: Integer;
begin
    stCaminho := InputBox('Daruma DLL Framework',
                          'Entre com o nome do arquivo a ser impresso:',
                          'C:\DarumaDLLFramework.txt');
    If (stCaminho <> '') then
      begin
        iRetorno := iImprimirArquivo_DUAL_DarumaFramework(stCaminho);
        if (iRetorno = 1) then
          begin
            Application.MessageBox('Impressão realizada com sucesso.',
                                   'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
          end
        else
          begin
            Application.MessageBox('Erro ao imprimir o arquivo, ou a ação foi cancelada', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
          end;
      end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_iAcionarGaveta_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var
  iRetorno: Integer;
begin
  iRetorno := iAcionarGaveta_DUAL_DarumaFramework();
  if (iRetorno = 1) then
    begin
      Application.MessageBox('Gaveta aciona com sucesso.',
                             'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    end
  else
    begin
      Application.MessageBox('Erro ao acionar a Gaveta', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_iEnviarBMP_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var
    stCaminho: AnsiString;
    iRetorno: Integer;
begin
    stCaminho := InputBox('Daruma DLL Framework',
                          'Entre com o nome do logotipo a ser enviado:',
                          'C:\logo.bmp');
    If (stCaminho <> '') then
      begin
        iRetorno := iEnviarBMP_DUAL_DarumaFramework(stCaminho);
        if (iRetorno = 1) then
          begin
            Application.MessageBox('O envio do logotipo foi realizado com sucesso.',
                                   'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
          end
        else
          begin
            Application.MessageBox('Erro ao enviar o Logotipo, ou a ação foi cancelada', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
          end;
      end;
end;


procedure TFR_MenuImpressoraDual_Principal.MN_regPortaComunicacao_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var
  stPorta: String;
  boRetorno: Boolean;
  iRetorno: Integer;
  stPortaAnsi: AnsiString;
begin
  stPorta := '';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digita a Porta de Comunicação:', stPorta);
  if ((boRetorno = True) and (stPorta <> '')) then
    begin
      stPortaAnsi:= stPorta;
      iRetorno := regPortaComunicacao_DUAL_DarumaFramework(stPortaAnsi);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a Porta de Comunicação, verifique-se a mesma encontra disponivel ou em conflito com outra aplicação','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_regVelocidade_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var
  stVelocidade: AnsiString;
  boRetorno: Boolean;
  iRetorno: Integer;
  stVeloc: string;
begin
  stVelocidade := '';
  boRetorno := InputQuery('Daruma DLL Framework',
                          'Selecione a velocidade de comunicação com a impressora:',
                           stVeloc);
  if ((boRetorno = True) and (stVeloc <> '')) then
    begin
      stVelocidade:= PAnsiChar(AnsiString(stVeloc));
      iRetorno := regVelocidade_DUAL_DarumaFramework(stVelocidade);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a Velocidade de Comunicação da Impressora', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_iAutenticarDocumento_DUAL_DarumaFrameworkClick(
  Sender: TObject);
begin

//Exibe o Form, para Autenticacao do Documento na DUAL;

FR_DUAL_iAutenticarDocumento_DUAL_DarumaFramework.show;

end;

procedure TFR_MenuImpressoraDual_Principal.MN_iImprimirTexto_DUAL_DarumaFrameworkClick(
  Sender: TObject);
begin

//Exibe o FORM para ImprimirTexto;

FR_DUAL_iImprimirTexto_DUAL_DarumaFramework.show;

end;

procedure TFR_MenuImpressoraDual_Principal.MN_regLinhasGuilhotina_DUAL_DarumaFrameworkClick(
  Sender: TObject);

var
  stLinhas: AnsiString;
  boRetorno: Boolean;
  iRetorno: Integer;
  stLin: string;
begin
  stLinhas := '';
  boRetorno := InputQuery('Daruma DLL Framework',
                          'Número de linhas para habilitar a guilhotina (0 a 20):',
                          stLin);
  if ((boRetorno = True) and (stLin <> '')) then
    begin
    stLinhas:=PAnsiChar(AnsiString(stLin));
      iRetorno := regLinhasGuilhotina_DUAL_DarumaFramework(stLinhas);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar as Linhas da Guilhotina, ou a ação foi cancelada', 'DarumaFramework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_Testes_LoopingStatusClick(
  Sender: TObject);
begin

//Exibe o FORM para Looping de Status;

FR_DUAL_menuTestes_LoopingStatus.show;

end;

procedure TFR_MenuImpressoraDual_Principal.MtodorConsultaStatusImpressoraDUALDarumaFramework1Click(
  Sender: TObject);
var
iRetorno: Integer;
str_Indice: AnsiString;
str_Tipo: AnsiString;
str_Retorno: AnsiString;

begin
   str_Retorno:= PAnsiChar(AnsiString(StringOFChar(#0,32)));
   str_Indice := PAnsiChar(AnsiString(InputBox('DarumaFramework', 'Entre com o índice desejado: (1-8)',  '1')));
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
    str_Tipo:= PAnsiChar(AnsiString(InputBox('DarumaFramework', 'Entre com o tipo da informação desejada:  (0 - para receber valores, 1- para receber texto)', '1')));
    if (str_Tipo = '') then
    begin
      Exit;
      end
    else
    begin
       iRetorno := rConsultaStatusImpressora_DUAL_DarumaFramework(str_Indice, str_Tipo, str_Retorno);
       Application.MessageBox(PWideChar(WideString(str_Retorno)), 'Daruma Framework', mb_ok + 32);
       if (iRetorno = 1) Then
            Application.MessageBox('Consulta de status realizada com sucesso!', 'Daruma DLL Framework', mb_ok + 32)
            else
            Application.MessageBox(Pchar('Erro ao realizar consulta de status! '+ (IntToStr(iRetorno))), 'Daruma DLL Framework', mb_ok + 16);
            end;
   end

end;

procedure TFR_MenuImpressoraDual_Principal.MN_Testes_LoopingDocClick(
  Sender: TObject);
begin

//Exibe o FORM para Looping de Status de Documento;

FR_DUAL_menuTestes_LoopingStatusDocumento.show;

end;

procedure TFR_MenuImpressoraDual_Principal.bob35esteCompletoemBuffer1Click(
  Sender: TObject);

 var
  iRetorno: Integer;

begin
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<e><b>BUFFER COMPLETO</e></b><l></l>'), 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<e>DATA:<dt></dt></e><l></l><e>Hora:<hr></hr></e><l></l>' +
'<ce>Avançando 5 Linhas</ce><sl>5</sl>Inserindo<sp>5</sp>5 espaços em Branco<sl>2</sl>' +
'<ce>Formatação Normal</ce><l></l>DARUMA AUTOMAÇÃO!!<sl>2</sl><ce>Negr+Ital+Subl+Expand</ce><l></l>' +
'<b><i><s><e>DARUMA AUTOMAÇÃO!!</b></i></s></e><sl>2</sl><ce>Negr+Ital+Subl+Condensado</ce><l></l>' +
'<b><i><s><c>DARUMA AUTOMAÇÃO!!</b></i></s></c><sl>2</sl><ce>Negr+Ital+Subl+Normal</ce><l></l>' +
'<b><i><s><n>DARUMA AUTOMAÇÃO!!</b></i></s></n><sl>2</sl><ce>Expandido</ce><l></l>' +
'<e>DARUMA AUTOMAÇÃO!!</e><sl>2</sl><ce>Condensado</ce><l></l>' +
'<c>DARUMA AUTOMAÇÃO!!</c><sl>2</sl><ce>Negrito+Expandido</ce><l></l>' +
'<b><e>DARUMA AUTOMAÇÃO!!</b></e><sl>2</sl><ce>Itálico+Expandido</ce><l></l>' +
'<i><e>DARUMA AUTOMAÇÃO!!</i></e><sl>2</sl><ce>Sublinhado+Expandido</ce><l></l>' +
'<s><e>DARUMA AUTOMAÇÃO!!</s></e><sl>2</sl><ce>Negrito+Condensado</ce><l></l>' +
'<b><c>DARUMA AUTOMAÇÃO!!</b></c><sl>2</sl><ce>Itálico+Condensado</ce><l></l>' +
'<i><c>DARUMA AUTOMAÇÃO!!</i></c><sl>2</sl><ce>Sublinhado+Condensado</ce><l></l>' +
'<s><c>DARUMA AUTOMAÇÃO!!</s></c><sl>2</sl><ce>Negrito+Normal</ce><l></l>' +
'<b><n>DARUMA AUTOMAÇÃO!!</n></b><l></l>'),0);
        //iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<fe>Ativa o Modo fonte Elite</fe>'), 0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<e><b>FIM BUFFER COMPLETO</b></e><sl>03</sl>'), 0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<sl>03</sl>'), 0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<gui></gui>'), 0);

     if (iRetorno = 1) Then
            Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
            else
            Application.MessageBox('Erro ao realizar a impressão do BUFFER!', 'Daruma DLL Framework', mb_ok + 16);
end;

procedure TFR_MenuImpressoraDual_Principal.bob35Exemplo3LinhaaLinha1Click(
  Sender: TObject);

 var
iRetorno: Integer;

begin
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tc>#</tc>'),0);
//IMPRIMINDO A PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<e>  ACADEMIA NEW</e>'),0);
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<e>    SPORTS</e>'),0);
//IMPRIMINDO A SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tb><i>Rua Nossa Sra. da Luz</i>, 350'),0);
//IMPRIMINDO A TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tb><i>Jardim Social - Curitiba - PR</i>'),0);
//IMPRIMINDO A QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tb>CNPJ 04.888.968/0001-79<l></l>'),0);
//IMPRIMINDO A QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tc>#</tc><l></l>'),0);
//IMPRIMINDO A SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<i><dt></dt><i>'),0);
//IMPRIMINDO A SÉTIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tb>Recibo nr.258963<l></l>'),0);
//IMPRIMINDO A OITAVA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<c>Nome : </c><b>ELAINE MARIA</b><sp>5</sp>(545)<l></l> '),0);
//IMPRIMINDO A NONA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<c>Plano : </c><b>MUSCULAÇÃO NOTURNO</b><sp>5</sp>(5)<l></l>'),0);
//IMPRIMINDO A DECIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<ce><e>VALOR PAGO : 45,00</e></ce>'),0);
//IMPRIMINDO A DECIMA PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<c>Ref. ao período de 03/04/012 a 03/05/012</c><l></l>'),0);
//IMPRIMINDO A DECIMA SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<c>Obs: MENSALIDADE</c><l></l>'),0);
//IMPRIMINDO A DECIMA TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tc>_</tc><l></l>'),0);
//IMPRIMINDO A DECIMA QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<ce><e>WWW.ACADEMIA.COM</e></ce>'),0);
//IMPRIMINDO A DECIMA QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tc>_</tc><l></l>'),0);
//IMPRIMINDO A DECIMA SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<ce><e>SAUDE BELEZA E</e></ce>'),0);
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<ce><e>BEM ESTAR</e></ce>'),0);
//IMPRIMINDO A DECIMA SÉTIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<sl>7</sl>'),0);


  if (iRetorno) = 1 Then
    Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
  else
    Application.MessageBox('Erro, na impressão do Exemplo 3!', 'Daruma DLL Framework', mb_ok + 16);
end;

procedure TFR_MenuImpressoraDual_Principal.MN_Exemplo4Click(
  Sender: TObject);
begin

FR_Dual_menuExemplo4_comForumulario.show;

end;

procedure TFR_MenuImpressoraDual_Principal.Bob35Exemplo2Tabulao1Click(
  Sender: TObject);

  var
iRetorno: Integer;
begin
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<b>FABR<tb>Ano<tb>Modelo<tb>Valor<tb>Cor</b>'),0);
//IMPRIMINDO A PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>2000<tb>Corsa<tb>12.000<tb>Azul'),0);
//IMPRIMINDO A SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Ford<tb>2005<tb>Fiesta<tb>14.000<tb>Azul'),0);
//IMPRIMINDO A TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Fiat<tb>1998<tb>Uno<tb>9.000<tb>Azul'),0);
//IMPRIMINDO A QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>1997<tb>Vectra<tb>18.000<tb>Azul'),0);
//IMPRIMINDO A QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>1999<tb>Tigra<tb>17.000<tb>Azul'),0);
//IMPRIMINDO A SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Ford<tb>2001<tb>Ka<tb>5.000<tb>Azul'),0);
//IMPRIMINDO A SÉTIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>1998<tb>Corsa<tb>10.000<tb>Azul'),0);
//IMPRIMINDO A OITAVA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Fiat<tb>1996<tb>Fiurino<tb>6.000<tb>Azul'),0);
//IMPRIMINDO A NONA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('WV<tb>1979<tb>Fusca<tb>3.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>1996<tb>Vectra<tb>16.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Fiat<tb>1985<tb>Fiat147<tb>3.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Hond<tb>2003<tb>Civic<tb>28.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Fiat<tb>1999<tb>Palio<tb>12.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('GM<tb>2003<tb>Celta<tb>17.000<tb>Azul<sl>7</sl>'),0);


  if (iRetorno) = 1 Then
    Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32)
  else
    Application.MessageBox('Erro, na impressão do Exemplo 2!', 'Daruma DLL Framework', mb_ok + 16);
end;

procedure TFR_MenuImpressoraDual_Principal.MN_Exemplo1Click(
  Sender: TObject);

var
iRetorno: Integer;

begin
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tc>~</tc><l></l>'),0);
//IMPRIMINDO A PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<ce><e><b>CENTRO DE DANÇA FLASH</b></e></ce>'),0);
//IMPRIMINDO A SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<l></l><tc>~</tc>'),0);
//IMPRIMINDO A TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('Rua: XV de Novembro N 785 Centro SP BR' +
//IMPRIMINDO A QUARTA LINHA
'Fone: 6234-5678 Fax:6324-5678'),0);
//IMPRIMINDO A QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('Data: <dt></dt><tb><tb>Hora: <hr></hr>'),0);
//IMPRIMINDO A SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('Pedido:00069 Cliente:00013' + #13+#10+
//IMPRIMINDO A SÉTIMA LINHA
'Atividades Escolhidas:' + #13+#10+
//IMPRIMINDO A OITAVA LINHA
'SAMBA+BOLERO+FORRÓ' + #13+#10+
//IMPRIMINDO A NONA LINHA
'Valor: 55,00' + #13+#10+
//IMPRIMINDO A DECIMA LINHA
'Vencimento: 10-03-05' + #13+#10+
//IMPRIMINDO A DECIMA PRIMEIRA LINHA
'o não pagamento implica no cancelamento da vaga' + #13+#10+
//IMPRIMINDO A DECIMA SEGUNDA LINHA
'Início dia 01 de Fevereiro as 17:30hr' + #13+#10+
//IMPRIMINDO A DECIMA TERCEIRA LINHA
'Venha Dançar!!!' + #13+#10+
//IMPRIMINDO A DECIMA QUARTA LINHA
'Samba,Bolero,Soltinho,Forró,Zouk'),0);
//IMPRIMINDO A DECIMA QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<ad>Obrigado.</ad>'),0);
//IMPRIMINDO A DECIMA SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<sl>3</sl><sn></sn>'),0);

    if (iRetorno) = 1 Then
      Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
    else
      Application.MessageBox('Erro, na impressão do Exemplo 1!', 'Daruma DLL Framework', mb_ok + 16);
    end;

procedure TFR_MenuImpressoraDual_Principal.MN_Exemplo3Click(
  Sender: TObject);

var
iRetorno: Integer;

begin
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tc>#</tc>'),0);
//IMPRIMINDO A PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<e><ce>ACADEMIA NEW SPORTS</ce></e>'),0);
//IMPRIMINDO A SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb><i>Rua Nossa Senhora da Luz</i>, 350'),0);
//IMPRIMINDO A TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb><i>Jardim Social   -   Curitiba   -  PR</i>'),0);
//IMPRIMINDO A QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>CNPJ 04.888.968/0001-79<tb><e>234-5678<l></l></e>'),0);
//IMPRIMINDO A QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tc>#</tc><l></l>'),0);
//IMPRIMINDO A SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<i><dt></dt><i>'),0);
//IMPRIMINDO A SÉTIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<ad>Recibo nr.258963</ad><l></l>'),0);
//IMPRIMINDO A OITAVA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<c>Nome : </c><b>ELAINE MARIA</b><sp>5</sp>(545)<l></l> '),0);
//IMPRIMINDO A NONA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<c>Plano : </c><b>MUSCULAÇÃO NOTURNO</b><sp>5</sp>(5)<l></l>'),0);
//IMPRIMINDO A DECIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<ce><e>VALOR PAGO : 45,00</e></ce>'),0);
//IMPRIMINDO A DECIMA PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<c>Ref. ao período de 03/04/2005 até 03/05/2005</c><l></l>'),0);
//IMPRIMINDO A DECIMA SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<c>Obs: MENSALIDADE</c><l></l>'),0);
//IMPRIMINDO A DECIMA TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tc>_</tc><l></l>'),0);
//IMPRIMINDO A DECIMA QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<ce><e>WWW.ACADEMIANEW.COM.BR</e></ce>'),0);
//IMPRIMINDO A DECIMA QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tc>_</tc><l></l>'),0);
//IMPRIMINDO A DECIMA SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<ce><e>SAUDE BELEZA E BEM ESTAR</e></ce>'),0);
//IMPRIMINDO A DECIMA SÉTIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<sl>7</sl>'),0);


  if (iRetorno) = 1 Then
    Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
  else
    Application.MessageBox('Erro, na impressão do Exemplo 3!', 'Daruma DLL Framework', mb_ok + 16);
  end;

procedure TFR_MenuImpressoraDual_Principal.MN_Exemplo2Click(
  Sender: TObject);

var
iRetorno: Integer;

begin
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb><b>FRAB<tb>Ano<tb>Modelo<tb>Valor<tb>Cor</b>'),0);
//IMPRIMINDO A PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>GM<tb>2000<tb>Corsa<tb>12.000<tb>Azul'),0);
//IMPRIMINDO A SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>Ford<tb>2005<tb>Fiesta<tb>14.000<tb>Verde'),0);
//IMPRIMINDO A TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>Fiat<tb>1998<tb>Uno Mille<tb>9.000<tb>Branco'),0);
//IMPRIMINDO A QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>GM<tb>1997<tb>Vectra<tb>18.000<tb>Prata'),0);
//IMPRIMINDO A QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>GM<tb>1999<tb>Tigra<tb>17.000<tb>Verde'),0);
//IMPRIMINDO A SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>Ford<tb>2001<tb>Versalhes<tb>5.000<tb>Vinho'),0);
//IMPRIMINDO A SÉTIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>GM<tb>1998<tb>Corsa<tb>10.000<tb>Preto'),0);
//IMPRIMINDO A OITAVA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>Fiat<tb>1996<tb>Fiurino<tb>6.000<tb>Branca'),0);
//IMPRIMINDO A NONA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>WV<tb>1979<tb>Fusca<tb>3.000<tb>Bordo'),0);
//IMPRIMINDO A DECIMA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>GM<tb>1996<tb>Vectra<tb>16.000<tb>Grafite'),0);
//IMPRIMINDO A DECIMA PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>Fiat<tb>1985<tb>Fiat147<tb>3.000<tb>Azul'),0);
//IMPRIMINDO A DECIMA SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>Hond<tb>2003<tb>Civic<tb>28.000<tb>Preto'),0);
//IMPRIMINDO A DECIMA TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>Fiat<tb>1999<tb>Palio<tb>12.000<tb>Cinza'),0);
//IMPRIMINDO A DECIMA QUARTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<tb>GM<tb>2003<tb>Celta<tb>17.000<tb>Branco<sl>7</sl>'),0);


  if (iRetorno) = 1 Then
    Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32)
  else
    Application.MessageBox('Erro, na impressão do Exemplo 2!', 'Daruma DLL Framework', mb_ok + 16);
  end;

procedure TFR_MenuImpressoraDual_Principal.MN_regTabulacao_DUAL_DarumaFrameworkClick(
  Sender: TObject);
var
  stLinhas: Ansistring;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stLinhas := '';
{  boRetorno := InputQuery('Daruma DLL Framework',
                          'Entre com a tabulação desejada ("05,10,15,20,25,35"):',
                          stLinhas);
  if ((boRetorno = True) and (stLinhas <> '')) then
    begin
      iRetorno := regTabulacao_DUAL_DarumaFramework(PAnsiChar(AnsiString(stLinhas)));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração de sua tabulação realizada com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a tabulação desejada, ou a ação foi cancelada', 'DarumaFramework', MB_OK + MB_ICONERROR);
        end;
    end; }
end;


procedure TFR_MenuImpressoraDual_Principal.Bob35BufferClick(Sender: TObject);

    var
iRetorno: Integer;
i: Integer;
begin

iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<tc>~</tc><l></l>'),0);
//IMPRIMINDO A PRIMEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<bmp></bmp>'),0);
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<ce><e><b>CENTRO DE DANÇA</b></e></ce>'),0);

iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<ce><e><b>FLASH</b></e></ce>'),0);

//IMPRIMINDO A SEGUNDA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<l></l><tc>~</tc>'),0);
//IMPRIMINDO A TERCEIRA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Rua: XV de Novembro N 785 Centro SP' + #13+#10+
//IMPRIMINDO A QUARTA LINHA
'Fone: 6234-5678 Fax:6324-5678'),0);
//IMPRIMINDO A QUINTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Data: <dt></dt><tb><tb>Hora:<hr></hr>'),0);
//IMPRIMINDO A SEXTA LINHA
iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('Pedido:00069 Cliente:00013' + #13+#10+
//IMPRIMINDO A SÉTIMA LINHA
'Atividades Escolhidas:' + #13+#10+
//IMPRIMINDO A OITAVA LINHA
'SAMBA+BOLERO+FORRÓ' + #13+#10+
//IMPRIMINDO A NONA LINHA
'Valor: 55,00' + #13+#10+
//IMPRIMINDO A DECIMA LINHA
'Vencimento: 10-03-05' + #13+#10+
//IMPRIMINDO A DECIMA PRIMEIRA LINHA
'o não pagamento implica no ' + #13+#10+
'cancelamento da vaga' + #13+#10+
//IMPRIMINDO A DECIMA SEGUNDA LINHA
'Início dia 01 de Fevereiro - 17:30hr' + #13+#10+
//IMPRIMINDO A DECIMA TERCEIRA LINHA
'Venha Dançar!!!' + #13+#10+
//IMPRIMINDO A DECIMA QUARTA LINHA
'Samba,Bolero,Soltinho,Forró,Zouk'),0);

iRetorno:=iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<ean8><w3>1234567</w3></ean8>' +
'<upc-a><txt>12345678912</txt></upc-a>' +
'<code39><txt>12345678A-B-Z*F-E-H*</txt></code39>' +
'<code93><txt>12345678A-B-Z-F&</txt></code93>' +
'<codabar><txt>12345678A$$</txt></codabar>' +
'<code11><txt>1234567891234567</txt></code11>' +
'<code128><txt>123456789123-A-B-*_%-&</txt></code128>' +
'<msi><txt>1234567890</txt></msi>' +
'<i2of5><txt>1234</txt></i2of5>' +
'<s2of5><txt>12345678</txt></s2of5>' +
'<ean13><cbv><w3><h70>123456789123</h70></w3></cbv></ean13>' +
'<code39><w3><h120><txt>12345678A-B-Z*F-E-H*</txt></h120></w3></code39><sl>05</sl>'),0);

iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pAnsiChar('<sl>3</sl>'),0);

    if (iRetorno) = 1 Then
      Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
    else
      Application.MessageBox('Erro, na impressão do Exemplo 1!', 'Daruma DLL Framework', mb_ok + 16);
end;

procedure TFR_MenuImpressoraDual_Principal.BT_FecharClick(Sender: TObject);
begin

Close;

end;

procedure TFR_MenuImpressoraDual_Principal.MN_regZeroCortado_DUAL_DarumaFramework_HabilitarClick(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regZeroCortado_DUAL_DarumaFramework_Habilitar.Checked := false;
  MN_regZeroCortado_DUAL_DarumaFramework_Desabilitar.Checked := false;
  iRetorno := regZeroCortado_DUAL_DarumaFramework('1');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regZeroCortado_DUAL_DarumaFramework_Habilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_regCodePageAutomatico_DUAL_DarumaFramework_HabilitarClick(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regCodePageAutomatico_DUAL_DarumaFramework_Habilitar.Checked := false;
  MN_regCodePageAutomatico_DUAL_DarumaFramework_Desabilitar.Checked := false;
  iRetorno := regCodePageAutomatico_DUAL_DarumaFramework('1');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regCodePageAutomatico_DUAL_DarumaFramework_Habilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;


procedure TFR_MenuImpressoraDual_Principal.MN_regCodePageAutomatico_DUAL_DarumaFramework_DesabilitarClick(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regCodePageAutomatico_DUAL_DarumaFramework_Habilitar.Checked := false;
  MN_regCodePageAutomatico_DUAL_DarumaFramework_Desabilitar.Checked := false;
  iRetorno := regCodePageAutomatico_DUAL_DarumaFramework('0');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regCodePageAutomatico_DUAL_DarumaFramework_Desabilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuImpressoraDual_Principal.MN_regZeroCortado_DUAL_DarumaFramework_DesabilitarClick(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regZeroCortado_DUAL_DarumaFramework_Habilitar.Checked := false;
  MN_regZeroCortado_DUAL_DarumaFramework_Desabilitar.Checked := false;
  iRetorno := regZeroCortado_DUAL_DarumaFramework('0');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regZeroCortado_DUAL_DarumaFramework_Desabilitar.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;
procedure TFR_MenuImpressoraDual_Principal.MN_eDefinirProduto_DarumaClick(
Sender: TObject);
var
  stProduto: AnsiString;
  iRetorno: Integer;
begin
  stProduto := 'DUAL';

      iRetorno := eDefinirProduto_Daruma(stProduto);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso, produto DUAL.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao incluir dados no Registro(Registry)!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;

procedure TFR_MenuImpressoraDual_Principal.MN_regRetornaValorChave_DarumaFrameworkClick(
  Sender: TObject);
begin

  //FR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework.show;

end;

end.
