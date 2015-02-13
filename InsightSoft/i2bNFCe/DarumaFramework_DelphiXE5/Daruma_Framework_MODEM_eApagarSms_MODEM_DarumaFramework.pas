unit Daruma_Framework_MODEM_eApagarSms_MODEM_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_eApagarSMS = class(TForm)
    LB_NumeroSMS: TLabel;
    LB_RespostaModem: TLabel;
    EB_NumeroSMS: TEdit;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    ED_Retorno: TEdit;
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_eApagarSMS: TFR_MODEM_eApagarSMS;

implementation
function eApagarSms_MODEM_DarumaFramework(iNumeroSMS: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';

{$R *.dfm}

procedure TFR_MODEM_eApagarSMS.BT_EnviarClick(Sender: TObject);
var
iRetorno : Integer;
iNumeroSMS :  AnsiString;
sResposta : AnsiString;

begin

setlength(sResposta,5000);

if ( (EB_NumeroSMS.Text = '' ) or ( StrToInt(EB_NumeroSMS.Text)= 0) )  then
    ShowMessage('É preciso digitar o numero do SMS diferente de 0')
    else begin
    iNumeroSMS := EB_NumeroSMS.Text;

iRetorno := eApagarSms_MODEM_DarumaFramework(iNumeroSMS);

if (iRetorno = 1) then begin

    Application.MessageBox('Mensagem apagada com sucesso', 'Daruma DLL Framework', MB_OK + 32);
    ED_Retorno.Text:='[' + (IntToStr(iRetorno)) + '] - '+ 'Sucesso';
    end
  else
    begin
    Application.MessageBox('Erro ao apagar a mensagem','Daruma DLL Framework', MB_OK + MB_ICONERROR);
         case iRetorno of
    -2:  ED_Retorno.Text:=('[-2] - Modem retornou erro');
    -1:  ED_Retorno.Text:=('[-1] - Erro de comunicação serial');
    end;
    end;
  end;

end;

procedure TFR_MODEM_eApagarSMS.BT_FecharClick(Sender: TObject);
begin
close;
end;

end.
