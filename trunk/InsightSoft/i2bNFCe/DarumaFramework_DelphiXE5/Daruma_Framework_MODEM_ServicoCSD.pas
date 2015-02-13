unit Daruma_Framework_MODEM_ServicoCSD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFR_MODEM_ServicoCSD = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnEnviarDados: TButton;
    btnLimparDadosEnviados: TButton;
    edRetornoDeFuncoes: TEdit;
    MN_DadosRecebidos: TMemo;
    btnReceberDados: TButton;
    btnLimparDadosRecebidos: TButton;
    Panel1: TPanel;
    ED_NumTelefone: TEdit;
    btnRealizarChamada: TButton;
    Panel2: TPanel;
    btnAtivarConexao: TButton;
    Panel3: TPanel;
    btnFinalizarChamada: TButton;
    MN_dadosEnviados: TMemo;
    btnLimparRetorno: TButton;
    Button1: TButton;
    procedure btnAtivarConexaoClick(Sender: TObject);
    procedure btnRealizarChamadaClick(Sender: TObject);
    procedure btnFinalizarChamadaClick(Sender: TObject);
    procedure btnEnviarDadosClick(Sender: TObject);
    procedure btnReceberDadosClick(Sender: TObject);
    procedure btnLimparDadosEnviadosClick(Sender: TObject);
    procedure btnLimparDadosRecebidosClick(Sender: TObject);
    procedure btnLimparRetornoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_ServicoCSD: TFR_MODEM_ServicoCSD;

implementation
function tEnviarDadosCsd_MODEM_DarumaFramework(sParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function rReceberDadosCsd_MODEM_DarumaFramework(sParametro: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';
function eAtivarConexaoCsd_MODEM_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
function eFinalizarChamadaCsd_MODEM_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
function eRealizarChamadaCsd_MODEM_DarumaFramework(sParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll';


{$R *.dfm}

procedure TFR_MODEM_ServicoCSD.btnAtivarConexaoClick(Sender: TObject);
var
 iRetorno: Integer;
begin
  iRetorno := eAtivarConexaoCsd_MODEM_DarumaFramework();
  if (iRetorno = 1) Then
      Application.MessageBox('Conexao ativa com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION)
  else
      Application.MessageBox('Erro ao tentar ativar a conexao CSD!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
  edRetornoDeFuncoes.Text := IntToStr(iRetorno);
end;

procedure TFR_MODEM_ServicoCSD.btnRealizarChamadaClick(Sender: TObject);
var
 iRetorno : integer;
 sNumTel : AnsiString;
begin
    sNumTel := ED_NumTelefone.Text;
    iRetorno := eRealizarChamadaCsd_MODEM_DarumaFramework(sNumTel);
    if (iRetorno = 1) Then
      Application.MessageBox('Chamada Realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION)
    else
      Application.MessageBox('Erro ao tentar Realizar a chamda CSD!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    edRetornoDeFuncoes.Text := AnsiString(IntToStr(iRetorno));

end;

procedure TFR_MODEM_ServicoCSD.btnFinalizarChamadaClick(Sender: TObject);
var
 iRetorno: Integer;
begin
   iRetorno := eFinalizarChamadaCsd_MODEM_DarumaFramework();
   if (iRetorno = 1) Then
      Application.MessageBox('Conexao Finalizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION)
  else
      Application.MessageBox('Erro ao tentar Finalizar a conexao CSD!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
  edRetornoDeFuncoes.Text := IntToStr(iRetorno);
end;


procedure TFR_MODEM_ServicoCSD.btnEnviarDadosClick(Sender: TObject);
var
 iRetorno: Integer;
 sDados: AnsiString;
begin
   sDados := MN_dadosEnviados.Lines.Text;
   iRetorno := tEnviarDadosCsd_MODEM_DarumaFramework(sDados);
   edRetornoDeFuncoes.Text := IntToStr(iRetorno);

end;

procedure TFR_MODEM_ServicoCSD.btnReceberDadosClick(Sender: TObject);
var
 iRetorno: Integer;
 sDados: AnsiString;
begin
   SetLength(sDados,100);
   iRetorno := rReceberDadosCsd_MODEM_DarumaFramework(sDados);
   if (iRetorno = 1) Then
    MN_DadosRecebidos.Lines.Text := sDados;

   edRetornoDeFuncoes.Text := IntToStr(iRetorno);

end;

procedure TFR_MODEM_ServicoCSD.btnLimparDadosEnviadosClick(
  Sender: TObject);
begin
   edRetornoDeFuncoes.Clear;
   MN_dadosEnviados.Lines.Clear;
end;

procedure TFR_MODEM_ServicoCSD.btnLimparDadosRecebidosClick(
  Sender: TObject);
begin
  edRetornoDeFuncoes.Clear;
  MN_DadosRecebidos.Lines.Clear;
end;

procedure TFR_MODEM_ServicoCSD.btnLimparRetornoClick(Sender: TObject);
begin
   edRetornoDeFuncoes.Clear;
end;

procedure TFR_MODEM_ServicoCSD.Button1Click(Sender: TObject);
begin
close;
end;

end.
