unit Daruma_Framework_Modem_rNivelSinalRecebido_MODEM_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_rNivelSinalRecebido = class(TForm)
    Label1: TLabel;
    BT_Verificar: TButton;
    BT_Fechar: TButton;
    ED_Retorno: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_VerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_rNivelSinalRecebido: TFR_MODEM_rNivelSinalRecebido;

implementation

function rNivelSinalRecebido_MODEM_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';


{$R *.dfm}

procedure TFR_MODEM_rNivelSinalRecebido.BT_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFR_MODEM_rNivelSinalRecebido.BT_VerificarClick(Sender: TObject);
var
iRetorno : Integer;
begin
  iRetorno := rNivelSinalRecebido_MODEM_DarumaFramework();
  if ( iRetorno >= 0 ) then
    ED_Retorno.Text := AnsiString(IntToStr(iRetorno))
  else
    Application.MessageBox('Erro ao Verificar o sinal','Daruma DLL Framework', MB_OK + MB_ICONERROR);
    case iRetorno of
    -3:  ED_Retorno.text:=('[-3] - Modem retornou caractere(s) inválido(s)');
    -2:  ED_Retorno.Text:=('[-2] - Modem retornou erro');
    -1:  ED_Retorno.Text:=('[-1] - Erro de comunicação serial');
  else
    ED_Retorno.Text:=IntToStr(iRetorno);
    end;
end;

end.
