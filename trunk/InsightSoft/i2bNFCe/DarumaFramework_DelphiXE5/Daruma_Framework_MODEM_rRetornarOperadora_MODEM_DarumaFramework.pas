unit Daruma_Framework_MODEM_rRetornarOperadora_MODEM_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_rRetornarOperadora = class(TForm)
    ED_Operadora: TEdit;
    BT_Limpar: TButton;
    BT_Operadora: TButton;
    BT_Fechar: TButton;
    Label1: TLabel;
    procedure BT_OperadoraClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_rRetornarOperadora: TFR_MODEM_rRetornarOperadora;

implementation
function rRetornarOperadora_MODEM_DarumaFramework(sOperadora: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';

{$R *.dfm}

procedure TFR_MODEM_rRetornarOperadora.BT_OperadoraClick(Sender: TObject);
var
iRetorno : Integer;
sOperadora: AnsiString;
begin
  SetLength(sOperadora,15);
  iRetorno := rRetornarOperadora_MODEM_DarumaFramework(sOperadora);
  if ( iRetorno = 1 ) then  //OK
    ED_Operadora.Text := sOperadora
  else
    Application.MessageBox('Erro ao tentar obter a operadora','Daruma DLL Framework', MB_OK + MB_ICONERROR);
    case iRetorno of
    -3:  ED_Operadora.text:=('[-3] - Modem retornou caractere(s) inválido(s)');
    -2:  ED_Operadora.Text:=('[-2] - Modem retornou erro');
    -1:  ED_Operadora.Text:=('[-1] - Erro da comunicação serial ');
    end;

end;

procedure TFR_MODEM_rRetornarOperadora.BT_FecharClick(Sender: TObject);
begin
 close;
end;

procedure TFR_MODEM_rRetornarOperadora.BT_LimparClick(Sender: TObject);
begin
ED_Operadora.Clear;
end;

end.
