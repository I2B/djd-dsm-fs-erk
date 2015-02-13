unit Daruma_Framework_MODEM_rReceberSms_MODEM_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_rReceberSms = class(TForm)
    LB_TelefoneOrigem: TLabel;
    LB_Mensagem: TLabel;
    LB_Data: TLabel;
    LB_Hora: TLabel;
    LB_QtidadeMsgModem: TLabel;
    LB_IndiceSMS: TLabel;
    EB_TelefoneOrigem: TEdit;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    MN_Mensagem: TMemo;
    EB_Data: TEdit;
    EB_Hora: TEdit;
    EB_QtidadeMsgModem: TEdit;
    BT_Limpar: TButton;
    EB_IndiceSMS: TEdit;
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_rReceberSms: TFR_MODEM_rReceberSms;

implementation


function rReceberSms_MODEM_DarumaFramework(sIndiceSMS: AnsiString;
                                           sNumFone: AnsiString;
                                           sData: AnsiString;
                                           sHora: AnsiString;
                                           sMsg: AnsiString): Integer; StdCall; External 'DarumaFrameWork.dll';

{$R *.dfm}

procedure TFR_MODEM_rReceberSms.BT_LimparClick(Sender: TObject);
begin
EB_IndiceSMS.Clear;
EB_TelefoneOrigem.Clear;
EB_Data.Clear;
EB_Hora.Clear;
MN_Mensagem.Lines.Clear;
EB_QtidadeMsgModem.Clear;
end;

procedure TFR_MODEM_rReceberSms.BT_EnviarClick(Sender: TObject);

var
iRetorno : Integer;
sIndiceSMS: AnsiString;
sNumFone: AnsiString;
sData: AnsiString;
sHora: AnsiString;
sMsg: AnsiString;

begin
SetLength(sIndiceSMS,5);
SetLength(sNumFone,15);
SetLength(sData,10);
SetLength(sHora,10);
SetLength(sMsg,500);

iRetorno := rReceberSms_MODEM_DarumaFramework(sIndiceSMS,sNumFone,sData,sHora,sMsg);

if ( iRetorno > 0 ) then begin

    Application.MessageBox('Mensagens Listadas com sucesso!', 'Daruma DLL Framework', MB_OK + 32);
    EB_IndiceSMS.Text := sIndiceSMS;
    EB_TelefoneOrigem.Text := sNumFone;
    EB_Data.Text := sData;
    EB_Hora.Text := sHora;
    MN_Mensagem.Clear;
    MN_Mensagem.Lines.Add(sMsg);
    EB_QtidadeMsgModem.Text :=  IntToStr(iRetorno);
    end
  else
    begin
    Application.MessageBox('Nao foi possivel Receber a mensagem.','Daruma DLL Framework', MB_OK + MB_ICONEXCLAMATION);
    case iRetorno of
    -3:  EB_QtidadeMsgModem.Text:=('[-3] - Modem retornou caractere(s) inválido(s)');
    -2:  EB_QtidadeMsgModem.Text:=('[-2] - Modem retornou erro');
    -1: EB_QtidadeMsgModem.Text:=('[-1] - Erro de comunicação serial');
     0: EB_QtidadeMsgModem.Text:=('[0] - Não tem mensagem para ser lida');
end;
  //  EB_QtidadeMsgModem.Text := IntToStr(iRetorno);
    end;

end;

procedure TFR_MODEM_rReceberSms.BT_FecharClick(Sender: TObject);
begin
   close;
end;

end.
