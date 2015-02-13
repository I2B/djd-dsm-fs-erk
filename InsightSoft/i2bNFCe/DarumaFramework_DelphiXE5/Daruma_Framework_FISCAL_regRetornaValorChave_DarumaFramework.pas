unit Daruma_Framework_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework = class(TForm)
    LB_Produto: TLabel;
    EB_Produto: TEdit;
    LB_Chave: TLabel;
    EB_Chave: TEdit;
    LB_Valor: TLabel;
    EB_Valor: TEdit;
    GB_NomeProduto: TGroupBox;
    LB_TA2000: TLabel;
    LB_DUAL: TLabel;
    LB_Modem: TLabel;
    LB_ECF: TLabel;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework: TFR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework;

implementation

function regRetornaValorChave_DarumaFramework(szProduto: String; szChave: String; szValor: String ): Integer; StdCall; External 'DarumaFrameWork.dll'

{$R *.dfm}

procedure TFR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework.BT_FecharClick(
  Sender: TObject);
begin

  Close;

end;

procedure TFR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework.BT_EnviarClick(
  Sender: TObject);
var

  stProduto : String;
  stChave : String;
  stValor : String;
  iRetorno : Integer;

begin

  stProduto := EB_Produto.Text;
  stChave := EB_Chave.Text;

  SetLength(stValor, 15);
  iRetorno := regRetornaValorChave_DarumaFramework( stProduto, stChave, stValor );
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Solicitacao concluida com sucesso, segue o conteudo da Chave.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      EB_Valor.Text := stValor;
    end
  else
    begin
      Application.MessageBox('Erro ao solicitar as informacoes da Chave, verificar.', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework.FormShow(
  Sender: TObject);
begin

EB_Produto.Clear;
EB_Chave.Clear;
EB_Valor.Clear;

end;

end.
