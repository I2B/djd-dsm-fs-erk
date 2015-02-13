unit Daruma_Framework_DUAL_verificacaoLoopingStatusDocumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFR_DUAL_menuTestes_LoopingStatusDocumento = class(TForm)
    LB_ImpressoraDoc: TLabel;
    EB_Status: TEdit;
    BT_Enviar: TButton;
    BT_Stop: TButton;
    BT_Fechar: TButton;
    TM_Status: TTimer;
    procedure TM_StatusTimer(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_StopClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_DUAL_menuTestes_LoopingStatusDocumento: TFR_DUAL_menuTestes_LoopingStatusDocumento;

implementation

function rStatusImpressora_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
  function rStatusDocumento_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'

{$R *.dfm}

procedure TFR_DUAL_menuTestes_LoopingStatusDocumento.TM_StatusTimer(
  Sender: TObject);

var iRetorno: Integer;
begin
iRetorno := rStatusDocumento_DUAL_DarumaFramework();

case iRetorno of
    0: EB_Status.Text:=('[0] - Documento não posicionado, verifique novamente!');
    1: EB_Status.Text:=('[1] - Documento posicionado!');
    -27: EB_Status.Text:=('[-27] - Erro Generico');
  else
    EB_Status.Text:=('Retorno não esperado');
  end;
end;

procedure TFR_DUAL_menuTestes_LoopingStatusDocumento.BT_EnviarClick(
  Sender: TObject);
begin

TM_Status.Enabled:= True;

end;

procedure TFR_DUAL_menuTestes_LoopingStatusDocumento.BT_StopClick(
  Sender: TObject);
begin

TM_status.Enabled:= false;
EB_status.Text:= '';

end;

procedure TFR_DUAL_menuTestes_LoopingStatusDocumento.BT_FecharClick(
  Sender: TObject);
begin

Close;

end;

end.
