unit Daruma_Framework_MODEM_rListarSms_MODEM_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_rListarSms = class(TForm)
    Button1: TButton;
    BT_Listar: TButton;
    BT_Fechar: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    ED_Retorno: TEdit;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_ListarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_rListarSms: TFR_MODEM_rListarSms;

implementation
function rListarSms_MODEM_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';

{$R *.dfm}

procedure TFR_MODEM_rListarSms.BT_FecharClick(Sender: TObject);
begin
close;
end;

procedure TFR_MODEM_rListarSms.BT_ListarClick(Sender: TObject);
var
iRetorno : Integer;
begin
iRetorno := rListarSms_MODEM_DarumaFramework();
if (iRetorno = 1) then begin
    Application.MessageBox('SMS Listados com sucesso', 'Daruma DLL Framework', MB_OK + 32);
    ED_Retorno.text:=('['+ IntToStr(iRetorno) + ']' + '- Sucesso' );
    end
  else
    begin
       Application.MessageBox('Erro ao listar os SMS ','Daruma DLL Framework', MB_OK + MB_ICONERROR);
     case iRetorno of
    -3:  ED_Retorno.text:=('[-3] - Modem retornou caractere(s) inválido(s)');
    -2:  ED_Retorno.Text:=('[-2] - Modem retornou erro');
    -1:  ED_Retorno.Text:=('[-1] - Erro de comunicação serial');
  else
    ED_Retorno.Text:=('Retorno não esperado');
  end;
    end;
end;

procedure TFR_MODEM_rListarSms.Button1Click(Sender: TObject);
begin
   ED_retorno.Clear;
end;

end.
