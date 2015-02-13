unit Daruma_Framework_DSP_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus;

type
  TFR_MenuDisplay_Principal = class(TForm)
    MainMenu1: TMainMenu;
    MtodosparaCursor1: TMenuItem;
    MtodoiCursorLigarDSPDarumaFramework1: TMenuItem;
    MtodoiCursorMoverDSPDarumaFramework1: TMenuItem;
    MtodoiCursorMoverAbaixoDSPDarumaFramework1: TMenuItem;
    MtodoiCursorMoverAcimaDSPDarumaFramework1: TMenuItem;
    MtodoiCursorPosicionarDSPDarumaFramework1: TMenuItem;
    MensagemPromocional1: TMenuItem;
    iIniciarMsgPromoDSPDarumaFramework1: TMenuItem;
    iEncerrarMsgPromoDSPDarumaFramework1: TMenuItem;
    GeralDisplay1: TMenuItem;
    iEnviarTextoDSPDarumaFramework1: TMenuItem;
    MtodoiLimparDSPDarumaFramework1: TMenuItem;
    MtodoiResetarDSPDarumaFramework1: TMenuItem;
    estescomECF1: TMenuItem;
    estedeCFeDisplay1: TMenuItem;
    DarumaFramework1: TMenuItem;
    MtodoeDefinirProdutoDaruma1: TMenuItem;
    Registry1: TMenuItem;
    Mtodo1: TMenuItem;
    PN_Dual: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    LB_Duvidas: TLabel;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure iIniciarMsgPromoDSPDarumaFramework1Click(Sender: TObject);
    procedure iEncerrarMsgPromoDSPDarumaFramework1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

     //Declaracao da Dll Integradora DarumaFramework.dll - Módulo DSP

//CUPOM FISCAL
		//Métodos para cursor
		function iCursorLigar_DSP_DarumaFramework(iHabilitar:Integer): Integer; StdCall; External 'DarumaFramework.dll';
		function iCursorMover_DSP_DarumaFramework(iPosicao:Integer): Integer; StdCall; External 'DarumaFramework.dll';
    function iCursorMoverAbaixo_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
    function iCursorMoverAcima_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
    function iCursorPosicionar_DSP_DarumaFramework(iPosicaoX:Integer; iPosicaoY:Integer): Integer; StdCall; External 'DarumaFramework.dll';

    //Métodos para Mensagem Promocional
    function iIniciarMsgPromo_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
    function iEncerrarMsgPromo_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';

    //Métodos gerais
    function iResetar_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
    function iLimpar_DSP_DarumaFramework(iLimpar:Integer): Integer; StdCall; External 'DarumaFramework.dll';
    function iEnviarTexto_DSP_DarumaFramework(strTexto:AnsiString): Integer; StdCall; External 'DarumaFramework.dll';

    function eDefinirProduto_Daruma(szProduto: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll' ;
    function regAlterarValor_Daruma(pszPathChave:Ansistring;pszValor:Ansistring):Integer; StdCall; External 'DarumaFramework.dll';
		function regRetornaValorChave_DarumaFramework(pszProduto:Ansistring;pszChave:Ansistring;pszValor:Ansistring):Integer; StdCall; External 'DarumaFramework.dll';









var
  FR_MenuDisplay_Principal: TFR_MenuDisplay_Principal;

implementation

{$R *.dfm}

procedure TFR_MenuDisplay_Principal.btnFecharClick(Sender: TObject);
begin
close();
end;

procedure TFR_MenuDisplay_Principal.iEncerrarMsgPromoDSPDarumaFramework1Click(
  Sender: TObject);

var
  iRetorno: Integer;
begin
iRetorno:=iEncerrarMsgPromo_DSP_DarumaFramework();
if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;

end;

procedure TFR_MenuDisplay_Principal.iIniciarMsgPromoDSPDarumaFramework1Click(
  Sender: TObject);
var
  iRetorno: Integer;
begin
iRetorno:=iIniciarMsgPromo_DSP_DarumaFramework();
if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;
end;

end.
