unit Daruma_Framework_MODEM_rRetornarImei_MODEM_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_rRetornarImei = class(TForm)
    Label1: TLabel;
    ED_IMEI: TEdit;
    BT_Limpar: TButton;
    Button2: TButton;
    BT_Fechar: TButton;
    procedure BT_LimparClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_rRetornarImei: TFR_MODEM_rRetornarImei;

implementation
function rRetornarImei_MODEM_DarumaFramework(sImei: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';

{$R *.dfm}

procedure TFR_MODEM_rRetornarImei.BT_LimparClick(Sender: TObject);
begin
ED_IMEI.Clear;
end;

procedure TFR_MODEM_rRetornarImei.Button2Click(Sender: TObject);
var
iRetorno : Integer;
sImei: AnsiString;
begin
  SetLength(sImei,25);
  iRetorno := rRetornarImei_MODEM_DarumaFramework(sImei);
  if ( iRetorno = 1 ) then  //OK
    ED_IMEI.Text := sImei
  else
    Application.MessageBox('Erro ao tentar obter o imei','Daruma DLL Framework', MB_OK + MB_ICONERROR);
     case iRetorno of
    -3:  ED_IMEI.text:=('[-3] - Modem retornou caractere(s) inválido(s)');
    -2:  ED_IMEI.Text:=('[-2] - Modem retornou erro');
    -1:  ED_IMEI.Text:=('[-1] - Erro da comunicação serial ');
    end;
end;

procedure TFR_MODEM_rRetornarImei.BT_FecharClick(Sender: TObject);
begin
close;
end;

end.
