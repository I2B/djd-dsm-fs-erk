unit Daruma_Framework_TA2000_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, jpeg;

type
  TFR_MenuTA2000_Principal = class(TForm)
    GB_Descricao: TGroupBox;
    LB_ad: TLabel;
    LB_ae: TLabel;
    LB_apagar: TLabel;
    LB_c: TLabel;
    LB_campo: TLabel;
    LB_campo2: TLabel;
    LB_edicao: TLabel;
    LB_imprimir: TLabel;
    LB_limpar: TLabel;
    LB_menu: TLabel;
    LB_cursor: TLabel;
    LB_pos: TLabel;
    LB_setfocus: TLabel;
    PN_Emulador: TPanel;
    MM_MenuMetodos_TA2000: TMainMenu;
    EB_COMANDO: TEdit;
    EB_RESULTADO: TEdit;
    LB_Comando: TLabel;
    LB_Resultado: TLabel;
    BT_TA2000_EnviarComandos: TButton;
    BT_TA2000_LimparPainel: TButton;
    MN_Exemplos: TMenuItem;
    MN_ImprimirTexto: TMenuItem;
    MN_LimparDisplay: TMenuItem;
    MN_Edicao: TMenuItem;
    MN_CriarMenu: TMenuItem;
    MN_Mascaras: TMenuItem;
    BT_TA2000_Fechar: TButton;
    MN_FecharTA2000: TMenuItem;
    PN_DDC: TPanel;
    I_DDC: TImage;
    LB_TA2000: TLabel;
    LB_DLLTA2000: TLabel;
    LB_modocursor2: TLabel;
    LB_edicao2: TLabel;
    LB_encerrar: TLabel;
    LB_combo: TLabel;
    LB_getdadocampo: TLabel;
    LB_getdadocombo: TLabel;
    MN_Encerrar: TMenuItem;
    MN_Combo: TMenuItem;
    MN_GetDadoCampo: TMenuItem;
    MN_MetodosRegistro: TMenuItem;
    MN_regAuditoria_TA2000_Daruma: TMenuItem;
    MN_regMensagemBoasVindasLinha1_TA2000_Daruma: TMenuItem;
    MN_regMensagemBoasVindasLinha2_TA2000_Daruma: TMenuItem;
    MN_regMarcadorOpcao_TA2000_Daruma: TMenuItem;
    MN_regMascara_TA2000_Darum: TMenuItem;
    MN_regMascaraLetra_TA2000_Daruma: TMenuItem;
    MN_regMascaraNumero_TA2000_Daruma: TMenuItem;
    MN_regMascaraEco_TA2000_Daruma: TMenuItem;
    MN_DesativarAuditoria: TMenuItem;
    MN_AtivarAuditoria: TMenuItem;
    MN_MetodosDarumaFramework: TMenuItem;
    MN_eDefinirProduto_Daruma: TMenuItem;
    MN_regRetornaValorChave_DarumaFramework: TMenuItem;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure BT_TA2000_LimparPainelClick(Sender: TObject);
    procedure BT_TA2000_EnviarComandosClick(Sender: TObject);
    procedure MN_ImprimirTextoClick(Sender: TObject);
    procedure MN_LimparDisplayClick(Sender: TObject);
    procedure MN_EdicaoClick(Sender: TObject);
    procedure MN_CriarMenuClick(Sender: TObject);
    procedure BT_TA2000_FecharClick(Sender: TObject);
    procedure MN_MascarasClick(Sender: TObject);
    procedure MN_FecharTA2000Click(Sender: TObject);
    procedure LB_adMouseEnter(Sender: TObject);
    procedure LB_aeMouseEnter(Sender: TObject);
    procedure LB_apagarMouseEnter(Sender: TObject);
    procedure LB_cMouseEnter(Sender: TObject);
    procedure LB_campoMouseEnter(Sender: TObject);
    procedure LB_edicaoMouseEnter(Sender: TObject);
    procedure LB_imprimirMouseEnter(Sender: TObject);
    procedure LB_limparMouseEnter(Sender: TObject);
    procedure LB_menuMouseEnter(Sender: TObject);
    procedure LB_cursorMouseEnter(Sender: TObject);
    procedure LB_posMouseEnter(Sender: TObject);
    procedure LB_setfocusMouseEnter(Sender: TObject);
    procedure LB_encerrarMouseEnter(Sender: TObject);
    procedure LB_comboMouseEnter(Sender: TObject);
    procedure LB_getdadocampoMouseEnter(Sender: TObject);
    procedure LB_getdadocomboMouseEnter(Sender: TObject);
    procedure MN_EncerrarClick(Sender: TObject);
    procedure MN_ComboClick(Sender: TObject);
    procedure MN_GetDadoCampoClick(Sender: TObject);
    procedure MN_regPorta_TA2000_DarumaClick(Sender: TObject);
    procedure MN_regMensagemBoasVindasLinha1_TA2000_DarumaClick(
      Sender: TObject);
    procedure MN_regMensagemBoasVindasLinha2_TA2000_DarumaClick(
      Sender: TObject);
    procedure MN_regMarcadorOpcao_TA2000_DarumaClick(Sender: TObject);
    procedure MN_regMascara_TA2000_DarumClick(Sender: TObject);
    procedure MN_regMascaraLetra_TA2000_DarumaClick(Sender: TObject);
    procedure MN_regMascaraNumero_TA2000_DarumaClick(Sender: TObject);
    procedure MN_regMascaraEco_TA2000_DarumaClick(Sender: TObject);
    procedure MN_DesativarAuditoriaClick(Sender: TObject);
    procedure MN_AtivarAuditoriaClick(Sender: TObject);
    procedure MN_eDefinirProduto_DarumaClick(Sender: TObject);
    procedure MN_regRetornaValorChave_DarumaFrameworkClick(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MenuTA2000_Principal: TFR_MenuTA2000_Principal;

implementation

//uses Daruma_Framework_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework;
 // uses Daruma_Framework_TA2000_Principal;
//--------------TA2000-----------------//

// Declaracao da funcao que permite entrar com dados nos display e tambem ler dados
function iEnviarDadosFormatados_TA2000_Daruma(szTexto: AnsiString; szRetorno: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regPorta_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regAuditoria_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regMensagemBoasVindasLinha1_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regMensagemBoasVindasLinha2_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regMarcadorOpcao_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regMascara_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regMascaraLetra_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regMascaraNumero_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function regMascaraEco_TA2000_Daruma(stParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function eDefinirProduto_Daruma(szProduto: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';

{$R *.dfm}

procedure TFR_MenuTA2000_Principal.BT_TA2000_LimparPainelClick(
  Sender: TObject);
begin


EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';


end;

procedure TFR_MenuTA2000_Principal.BT_TA2000_EnviarComandosClick(
  Sender: TObject);

var iRetorno: Integer;
    szRetorno: AnsiString;
begin
  SetLength(szRetorno, 81);
  iRetorno := iEnviarDadosFormatados_TA2000_Daruma(EB_COMANDO.Text, szRetorno);
  if (iRetorno = 1) then
    begin
      EB_RESULTADO.Text := szRetorno;
      Application.MessageBox(pchar('Dados enviados com sucesso:' + szRetorno), 'Daruma DLL Framework', mb_ok);
    end
  else
    begin
      Application.MessageBox('Erro no envio dos dados', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
      ShowMessage(IntToStr(iRetorno));
    end;
end;

procedure TFR_MenuTA2000_Principal.MN_ImprimirTextoClick(Sender: TObject);
begin

// Abrir Painel;

EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';

EB_COMANDO.Text:= '<limpar>0</limpar><imprimir><texto>Texto</texto><linha>2</linha><coluna>11</coluna></imprimir>';

end;

procedure TFR_MenuTA2000_Principal.MN_LimparDisplayClick(Sender: TObject);
begin

// Abrir Painel;

EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';

EB_COMANDO.Text:= '<limpar>0</limpar>';

end;

procedure TFR_MenuTA2000_Principal.MN_EdicaoClick(Sender: TObject);
begin

// Abrir Painel;


EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';

EB_COMANDO.Text:= '<limpar>0</limpar><edicao><eco>0</eco><tipo>3</tipo><tamanho>10</tamanho><esc>-27</esc><linha>1</linha><coluna>1</coluna></edicao>';

end;

procedure TFR_MenuTA2000_Principal.MN_CriarMenuClick(Sender: TObject);
begin

// Abrir Painel;

EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';

EB_COMANDO.Text:= '<limpar>0</limpar><menu><estilo>2</estilo><direcao>V</direcao><opcao1>Cadastrar Item</opcao1><opcao2>Consultar Cadastro</opcao2><opcao3>Alterar Cadastro</opcao3><opcao4>Eliminar Cadastro</opcao4></menu>';


end;

procedure TFR_MenuTA2000_Principal.BT_TA2000_FecharClick(Sender: TObject);
begin

Close;

end;

procedure TFR_MenuTA2000_Principal.MN_MascarasClick(Sender: TObject);
begin

// Abrir Painel;

EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';

EB_COMANDO.Text:= '<limpar>0</limpar><edicao><mascara>R$#.###,## - Nome:!!!!!!!!!!!!!!!!!</mascara></edicao>';



end;

procedure TFR_MenuTA2000_Principal.MN_FecharTA2000Click(Sender: TObject);
begin

Close;

end;

procedure TFR_MenuTA2000_Principal.LB_adMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Alinha a direita o texto na linha 2 do display.' + #13+#10 +
         '<ad>' + #13+#10 +
         '  <texto>Daruma</texto>' + #13+#10 +
         '  <linha> 2 </linha>' + #13+#10 +
         '</ad>';

LB_ad.Hint:= Texto;
LB_ad.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_aeMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Alinha a esquerda o texto na linha 2 do display.' + #13+#10 +
          '<ae>' + #13+#10 +
          '  <texto>Daruma</texto>' + #13+#10 +
          '  <linha> 2 </linha>' + #13+#10 +
          '</ae>';


LB_ae.Hint:= Texto;
LB_ae.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_apagarMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Apaga o caractere que antecede o cursor do display.' + #13+#10 +
             '<apagar></apagar>';


LB_apagar.Hint:= Texto;
LB_apagar.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_cMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Centraliza o texto "Daruma" na linha 2 do display.' + #13+#10 +
         '<c>' + #13+#10 +
         '  <texto>Daruma</texto>' + #13+#10 +
         '  <linha> 2 </linha>' + #13+#10 +
         '</c>';


LB_c.Hint:= Texto;
LB_c.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_campoMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Cria um campo com as seguintes caracteristicas.' + #13+#10 +
         '<campo>' + #13+#10 +
         '  <valor>nome:</valor>          //imprime o texto "nome:"' + #13+#10 +
         '  <tipo> 1 </tipo>              //aceita apenas numeros' + #13+#10 +
         '  <linha> 2 </linha>	          //posiciona na linha 2' + #13+#10 +
         '  <coluna> 20 </coluna>         //posiciona na coluna 20' + #13+#10 +
         '  <tamanho> 15 </tamanho>       //o tamanho do campo sera 15' + #13+#10 +
         '</campo>' + #13+#10 +
         '<setfocus>1</setfocus>	          //ativa o campo';


LB_campo.Hint:= Texto;
LB_campo.ShowHint:= True;

end;
procedure TFR_MenuTA2000_Principal.LB_edicaoMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Exibe todos caracteres digitados, permite a entrada de todos os tipos de dados, sem tamanho limite de dados,' + #13+#10 +
         'a partir da linha 1 e coluna 1, sem mascara.' + #13+#10 +
          '<edicao>' + #13+#10 +
          '  <eco>*</eco>                //exibe "*" no display quando digita algo' + #13+#10 +
          '  <enter></enter>             //sai ao apertar enter' + #13+#10 +
          '  <tipo>1</tipo>              //aparece somente' + #13+#10 +
          '  <tamanho>10</tamanho>       //o tamanho do campo de digitação será 10' + #13+#10 +
          '</edicao>';

LB_edicao.Hint:= Texto;
LB_edicao.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_imprimirMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Imprime o texto "Daruma" no display na linha 2 e coluna 10.' + #13+#10 +
          '<imprimir>' + #13+#10 +
	        '  <texto>Daruma</texto>' + #13+#10 +
	        '  <linha> 2 </linha>' + #13+#10 +
          '  <coluna> 10 </coluna>' + #13+#10 +
          '</imprimir>';


LB_imprimir.Hint:= Texto;
LB_imprimir.ShowHint:= True;

end;
procedure TFR_MenuTA2000_Principal.LB_limparMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Limpa as duas linhas do display.' + #13+#10 +
          '<limpar> 0 </limpar>';


LB_limpar.Hint:= Texto;
LB_limpar.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_menuMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Cria um estilo de paginacao para seu menu.' + #13+#10 +
         '<menu>' + #13+#10 +
         '  <estilo>1</estilo>         //2 opcoes por pagina' + #13+#10 +
         '  <direcao>h</direcao>       //Paginacao horizontal' + #13+#10 +
         '  <hint>cabecalho</hint>	 //Este cabecalho fica na 1ª linha do display e as opcoes na 2ª. Funciona apenas com o estilo 1' + #13+#10 +
         '  <opcao1>Tela1</opcao1>' + #13+#10 +
         '  <opcao2>Tela2</opcao2>' + #13+#10 +
         '  <opcao3>Tela3</opcao3>' + #13+#10 +
         '</menu>';


LB_menu.Hint:= Texto;
LB_menu.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_cursorMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Com cursor simples.' + #13+#10 +
         '<modocursor> 1 </modocursor>';


LB_cursor.Hint:= Texto;
LB_cursor.ShowHint:= True;

end;


procedure TFR_MenuTA2000_Principal.LB_posMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Posicionar o cursor do display na linha 1 e coluna 1.' + #13+#10 +
         '<pos>' + #13+#10 +
         '  <linha> 1 </linha>' + #13+#10 +
         '  <coluna> 1 </coluna>' + #13+#10 +
         '</pos>';


LB_pos.Hint:= Texto;
LB_pos.ShowHint:= True;

end;


procedure TFR_MenuTA2000_Principal.LB_setfocusMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: A tag setfocus recebe 1 parametro: Um número inteiro indicando qual dos campos ou combos comeca com foco.' + #13+#10 +
         '<imprimir>' + #13+#10 +
         '  <texto>Nome:</texto>         //imprime o texto "nome:"' + #13+#10 +
         '</imprimir>' + #13+#10 +
         '<campo>' + #13+#10 +
         '  <tipo>2</tipo>               //aceita apenas letras' + #13+#10 +
         '  <tamanho>15</tamanho>        //o tamanho do campo sera 15' + #13+#10 +
         '</campo>' + #13+#10 +
         '<imprimir>' + #13+#10 +
         '  <texto>Fone:</texto>         //imprime o texto "Fone:"' + #13+#10 +
         '  <linha>2</linha>	         //na 2º linha' + #13+#10 +
         '</imprimir>' + #13+#10 +
         '<campo>' + #13+#10 +
         '  <tipo>1</tipo>               //aceita apenas numeros' + #13+#10 +
         '  <tamanho>8</tamanho>	 //o tamanho do campo sera 8' + #13+#10 +
         '</campo>' + #13+#10 +
         '<combo>' + #13+#10 +
         '  <linha>1</linha>             //linha 1' + #13+#10 +
         '  <coluna>15</coluna>          //coluna 15' + #13+#10 +
         '  <tamanho>10</tamanho>        //o tamanho do combo será 10' + #13+#10 +
         '  <opcao1>nome</opcao1>        //a primeira opção será nome' + #13+#10 +
         '  <opcao2>fone</opcao2>        //a segunda opção será fone' + #13+#10 +
         '</combo>' + #13+#10 +
         '<setfocus>2</setfocus>          //ativa os campos com foco inicialmente no 2';


LB_setfocus.Hint:= Texto;
LB_setfocus.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_encerrarMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Reiniciar seu computador.' + #13+#10 +
          '<encerrar>2</encerrar>';


LB_encerrar.Hint:= Texto;
LB_encerrar.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_comboMouseEnter(Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Exemplo de Combo.' + #13+#10 +
          '<combo>' + #13+#10 +
          '  <linha>1</linha>             //linha 1' + #13+#10 +
          '  <coluna>15</coluna>          //coluna 15' + #13+#10 +
          '  <tamanho>10</tamanho>        //o tamanho do combo será 10' + #13+#10 +
          '  <opcao1>nome</opcao1>        //a primeira opção será nome' + #13+#10 +
          '  <opcao2>fone</opcao2>        //a segunda opção será fone' + #13+#10 +
          '</combo>' + #13+#10 +
          '<setfocus>1</setfocus>        //ativa o combo';


LB_combo.Hint:= Texto;
LB_combo.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_getdadocampoMouseEnter(
  Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Numero do campo a ser lido.' + #13+#10 +
          '<getdadocampo>1</getdadocampo> => onde sera lido o valor do campo 1';


LB_getdadocampo.Hint:= Texto;
LB_getdadocampo.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.LB_getdadocomboMouseEnter(
  Sender: TObject);

var
Texto : AnsiString;

begin

Texto:= 'Ex: Numero do combo a ser lido.' + #13+#10 +
          '<getdadocombo>1</getdadocombo> => onde sera lido o valor do combo 1';


LB_getdadocombo.Hint:= Texto;
LB_getdadocombo.ShowHint:= True;

end;

procedure TFR_MenuTA2000_Principal.MN_EncerrarClick(Sender: TObject);
begin

// Abrir Painel;

LB_Comando.Visible:= True;
LB_Resultado.Visible:= True;
EB_COMANDO.Visible:= True;
EB_RESULTADO.Visible:= True;
BT_TA2000_EnviarComandos.Visible:= True;

EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';

EB_COMANDO.Text:= '<encerrar>3</encerrar>';

end;

procedure TFR_MenuTA2000_Principal.MN_ComboClick(Sender: TObject);
begin

// Abrir Painel;

LB_Comando.Visible:= True;
LB_Resultado.Visible:= True;
EB_COMANDO.Visible:= True;
EB_RESULTADO.Visible:= True;
BT_TA2000_EnviarComandos.Visible:= True;

EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';

EB_COMANDO.Text:= '<limpar>0</limpar><combo><linha>1</linha><coluna>15</coluna><tamanho>10</tamanho><opcao1>nome</opcao1><opcao2>fone</opcao2></combo><setfocus>1</setfocus><campo><tipo>2</tipo><tamanho>15</tamanho></campo><setfocus>2</setfocus>';

end;

procedure TFR_MenuTA2000_Principal.MN_GetDadoCampoClick(Sender: TObject);
var
stComando1 : AnsiString;
stComando2 : AnsiString;
stComando3 : AnsiString;

begin
// Abrir Painel;

LB_Comando.Visible:= True;
LB_Resultado.Visible:= True;
EB_COMANDO.Visible:= True;
EB_RESULTADO.Visible:= True;
BT_TA2000_EnviarComandos.Visible:= True;

EB_COMANDO.text:= '';
EB_RESULTADO.text:= '';

stComando1 := '<limpar>0</limpar><imprimir><texto>Artigo:1234</texto><linha>1</linha><coluna>1</coluna></imprimir><imprimir><texto>Descr:Agua sem Gas</texto><linha>1</linha><coluna>15</coluna></imprimir><imprimir><texto>';
stComando2 := 'Valor:1234</texto><linha>2</linha><coluna>1</coluna></imprimir><imprimir><texto>Qtda:</texto><linha>2</linha><coluna>12</coluna></imprimir><campo><valor>1</valor><tipo>3</tipo><tamanho>1</tamanho><linha>2</linha>';
stComando3 := '<coluna>17</coluna></campo><modocursor>2</modocursor><setfocus>1</setfocus><getdadocampo>1</getdadocampo>';
EB_COMANDO.Text:= stComando1 + stComando2 + stComando3;

end;

procedure TFR_MenuTA2000_Principal.MN_regPorta_TA2000_DarumaClick(
  Sender: TObject);
var
  stPorta: String;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stPorta := '';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digita a Porta de Comunicação:', stPorta);
  if ((boRetorno = True) and (stPorta <> '')) then
    begin
      iRetorno := regPorta_TA2000_Daruma(AnsiString(stPorta));
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


procedure TFR_MenuTA2000_Principal.MN_regMensagemBoasVindasLinha1_TA2000_DarumaClick(
  Sender: TObject);
var
  stMensagem: String;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stMensagem := '*******BemVindo ao TA2000 Daruma******';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digita a mensagem de Boas-Vindas (1 Linha):', stMensagem);
  if ((boRetorno = True) and (stMensagem <> '')) then
    begin
      iRetorno := regMensagemBoasVindasLinha1_TA2000_Daruma(AnsiString(stMensagem));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a mensagem de Boas-Vindas (1 Linha)','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuTA2000_Principal.MN_regMensagemBoasVindasLinha2_TA2000_DarumaClick(
  Sender: TObject);
var
  stMensagem2: String;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stMensagem2 := '****www.desenvolvedoresdaruma.com.br****';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digite a mensagem de Boas-Vindas (2 Linha):', stMensagem2);
  if ((boRetorno = True) and (stMensagem2 <> '')) then
    begin
      iRetorno := regMensagemBoasVindasLinha2_TA2000_Daruma(AnsiString(stMensagem2));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a mensagem de Boas-Vindas (2 Linha)','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;
procedure TFR_MenuTA2000_Principal.MN_regMarcadorOpcao_TA2000_DarumaClick(
  Sender: TObject);
var
  stMarcadorOpcao: String;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stMarcadorOpcao := '*';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digite a opcao para ser o Marcador do seu display:', stMarcadorOpcao);
  if ((boRetorno = True) and (stMarcadorOpcao <> '')) then
    begin
      iRetorno := regMarcadorOpcao_TA2000_Daruma(AnsiString(stMarcadorOpcao));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar o marcador!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuTA2000_Principal.MN_regMascara_TA2000_DarumClick(
  Sender: TObject);
var
  stMascara: String;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stMascara := '';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digite a Mascara a ser utilizada:', stMascara);
  if ((boRetorno = True) and (stMascara <> '')) then
    begin
      iRetorno := regMascara_TA2000_Daruma(AnsiString(stMascara));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a mascara!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuTA2000_Principal.MN_regMascaraLetra_TA2000_DarumaClick(
  Sender: TObject);
var
  stMascaraLetra: String;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stMascaraLetra := '!';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digite o tipo da mascara letra a ser utilizada:', stMascaraLetra);
  if ((boRetorno = True) and (stMascaraLetra <> '')) then
    begin
      iRetorno := regMascaraLetra_TA2000_Daruma(AnsiString(stMascaraLetra));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar o tipo da mascara letra!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;
procedure TFR_MenuTA2000_Principal.MN_regMascaraNumero_TA2000_DarumaClick(
  Sender: TObject);
var
  stMascaraNumero: String;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stMascaraNumero := '#';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digite o tipo da mascara numero a ser utilizada:', stMascaraNumero);
  if ((boRetorno = True) and (stMascaraNumero <> '')) then
    begin
      iRetorno := regMascaraNumero_TA2000_Daruma(AnsiString(stMascaraNumero));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar o tipo da mascara numero!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuTA2000_Principal.MN_regMascaraEco_TA2000_DarumaClick(
  Sender: TObject);
var
  stMascaraEco: String;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stMascaraEco := '0';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digite o tipo da mascara eco a ser utilizada:', stMascaraEco);
  if ((boRetorno = True) and (stMascaraEco <> '')) then
    begin
      iRetorno :=  regMascaraEco_TA2000_Daruma(AnsiString(stMascaraEco));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar o tipo da mascara eco!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuTA2000_Principal.MN_DesativarAuditoriaClick(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_AtivarAuditoria.Checked := false;
  MN_DesativarAuditoria.Checked := false;
  iRetorno := regAuditoria_TA2000_Daruma('0');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_DesativarAuditoria.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuTA2000_Principal.MN_AtivarAuditoriaClick(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_AtivarAuditoria.Checked := false;
  MN_DesativarAuditoria.Checked := false;
  iRetorno := regAuditoria_TA2000_Daruma(AnsiString('1'));
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configuração realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_AtivarAuditoria.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;
procedure TFR_MenuTA2000_Principal.MN_eDefinirProduto_DarumaClick(
  Sender: TObject);
var
  stProduto: AnsiString;
  iRetorno: Integer;
begin
  stProduto := 'TA2000';

      iRetorno := eDefinirProduto_Daruma(stProduto);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso, produto TA2000.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao incluir dados no Registro(Registry)!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;

procedure TFR_MenuTA2000_Principal.MN_regRetornaValorChave_DarumaFrameworkClick(
  Sender: TObject);
begin

  //FR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework.show;

end;

end.
