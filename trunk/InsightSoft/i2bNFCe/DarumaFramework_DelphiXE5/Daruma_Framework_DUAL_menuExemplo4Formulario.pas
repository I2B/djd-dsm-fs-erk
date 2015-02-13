unit Daruma_Framework_DUAL_menuExemplo4Formulario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFR_DUAL_menuExemplo4_comForumulario = class(TForm)
    LB_NomeEmpresa: TLabel;
    LB_Endereco_Empresa: TLabel;
    LB_Fone_Empresa: TLabel;
    LB_Pedido_N: TLabel;
    LB_Data: TLabel;
    LB_Tema_Mensagem: TLabel;
    LB_Titulo_Mensagem: TLabel;
    LB_Valor_Mensagem: TLabel;
    LB_Forma_Cobranca: TLabel;
    LB_Cliente: TLabel;
    LB_Fone_Res: TLabel;
    LB_Celular: TLabel;
    LB_Fone_Com: TLabel;
    LB_MensagemPromocional: TLabel;
    LB_Hora: TLabel;
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    EB_Nome_Empresa: TEdit;
    EB_Endereco_Empresa: TEdit;
    EB_Fone_Empresa: TEdit;
    EB_Numero_Pedido: TEdit;
    EB_Data_Pedido: TEdit;
    EB_Tema_Mensagem: TEdit;
    EB_Titulo_Mensagem: TEdit;
    EB_Valor_Mensagem: TEdit;
    EB_Forma_Cobranca: TEdit;
    EB_Cliente: TEdit;
    EB_Fone_Res: TEdit;
    EB_Celular: TEdit;
    EB_Fone_Com: TEdit;
    EB_Mensagem_Promo: TEdit;
    EB_Hora: TEdit;
    TM_Exemplo4: TTimer;
    BT_Limpar: TButton;
    procedure BT_EnviarClick(Sender: TObject);
    procedure TM_Exemplo4Timer(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_DUAL_menuExemplo4_comForumulario: TFR_DUAL_menuExemplo4_comForumulario;

implementation

function iImprimirTexto_DUAL_DarumaFramework(stTexto: AnsiString; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll';

{$R *.dfm}

procedure TFR_DUAL_menuExemplo4_comForumulario.BT_EnviarClick(
  Sender: TObject);

var
    Str_Nome_Empresa: String;
    Str_Endereco_Empresa: String;
    Str_Fone_Empresa: String;
    Str_Numero_Pedido: String;
    Str_Data_Pedido: String;
    Str_Tema_Mensagem: String;
    Str_Titulo_Mensagem: String;
    Str_Valor_Mensagem: String;
    Str_Forma_Cobranca: String;
    Str_Cliente: String;
    Str_Fone_Res: String;
    Str_Fone_Celular: String;
    Str_Fone_Com: String;
    Str_Mensagem_Promo: String;
    Str_Hora: String;
    iRetorno: Integer;
begin
     Str_Nome_Empresa:= EB_Nome_Empresa.Text;
     Str_Endereco_Empresa:= EB_Endereco_Empresa.Text;
     Str_Fone_Empresa:= EB_Fone_Empresa.Text;
     Str_Numero_Pedido:= EB_Numero_Pedido.Text;
     Str_Tema_Mensagem:= EB_Tema_Mensagem.Text;
     Str_Data_Pedido:= EB_Data_Pedido.Text;
     Str_Titulo_Mensagem:= EB_Titulo_Mensagem.Text;
     Str_Valor_Mensagem:= EB_Valor_Mensagem.Text;
     Str_Forma_Cobranca:= EB_Forma_Cobranca.Text;
     Str_Cliente:= EB_Cliente.Text;
     Str_Fone_Res:= EB_Fone_Res.Text;
     Str_Fone_Celular:= EB_Celular.Text;
     Str_Fone_Com:= EB_Fone_Com.Text;
     Str_Mensagem_Promo:= EB_Mensagem_Promo.Text;
     Str_Hora:= EB_Hora.Text;
begin
      //Imprimindo 
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<e><ce><b>' + Str_Nome_Empresa + '</b></ce></e>'),0);
     //IMPRIMINDO A PRIMEIRA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<ce><tc>-</tc></ce>'),0);
     //IMPRIMINDO A SEGUNDA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Endereco_Empresa.Caption + '<i>' + Str_Endereco_Empresa + '</i>'),0);
     //IMPRIMINDO A  TERCEIRA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Fone_Empresa.Caption + '<i>' + Str_Fone_Empresa + '</i>'),0);
     //IMPRIMINDO A  QUARTA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Pedido_N.Caption + '<i>' + EB_Numero_Pedido.Text + '</i>'),0);
     //IMPRIMINDO A  QUINTA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Data.Caption + '<i><dt></dt></i>'),0);
     //IMPRIMINDO A  SEXTA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<ce><tc>-</tc></ce>'),0);
     //IMPRIMINDO A  SÉTIMA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Tema_Mensagem.Caption + '<i>' + EB_Tema_Mensagem.Text + '</i>'),0);
     //IMPRIMINDO A  OITAVA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Titulo_Mensagem.Caption + '<i>' + EB_Titulo_Mensagem.Text + '</i>'),0);
     //IMPRIMINDO A  NONA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Valor_Mensagem.Caption + '<i>' + EB_Valor_Mensagem.Text + '</i>'),0);
     //IMPRIMINDO A  DECIMA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Forma_Cobranca.Caption + '<i>' + EB_Forma_Cobranca.Text + '</i>'),0);
     //IMPRIMINDO A  DECIMA PRIMEIRA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Cliente.Caption + '<i>' + EB_Cliente.Text + '</i>'),0);
     //IMPRIMINDO A  DECIMA SEGUNDA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Fone_Res.Caption + '<i>' + EB_Fone_Res.Text + '</i>'),0);
     //IMPRIMINDO A  DECIMA TERCEIRA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Celular.Caption + '<i>' + EB_Celular.Text + '</i>'),0);
     //IMPRIMINDO A  DECIMA QUARTA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>4</sp>' + LB_Fone_Com.Caption + '<i>' + EB_Fone_Com.Text + '</i><sl>1</sl>'),0);
     //IMPRIMINDO A  DECIMA QUINTA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<ce><b>' + EB_Mensagem_Promo.Text + '</b></ce><sl>2</sl>'),0);
     //IMPRIMINDO A  DECIMA SEXTA LINHA
     iRetorno:=iImprimirTexto_DUAL_DarumaFramework(pchar('<sp>35</sp>' + LB_Hora.Caption + '<hr></hr>'),0);
     //IMPRIMINDO A  DECIMA SÉTIMA LINHA
     iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<ce><tc>-</tc></ce><sl>7</sl>'),0);
  
      if (iRetorno = 1) Then
        Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
      else
        Application.MessageBox('Erro ao Imprimir seu Formulario!', 'Daruma DLL Framework', mb_ok + 16);
end;
end;


procedure TFR_DUAL_menuExemplo4_comForumulario.TM_Exemplo4Timer(
  Sender: TObject);
begin

EB_hora.Text:= TimeToStr (Time);

end;

procedure TFR_DUAL_menuExemplo4_comForumulario.BT_FecharClick(
  Sender: TObject);
begin

Close;

end;

procedure TFR_DUAL_menuExemplo4_comForumulario.BT_LimparClick(
  Sender: TObject);

begin

EB_Nome_Empresa.Text:='';
EB_Endereco_Empresa.Text:='';
EB_Fone_Empresa.Text:='';
EB_Data_Pedido.Text:='';
EB_Numero_Pedido.Text:='';
EB_Tema_Mensagem.Text:='';
EB_Titulo_Mensagem.Text:='';
EB_Valor_Mensagem.Text:='';
EB_Forma_Cobranca.Text:='';
EB_Cliente.Text:='';
EB_Fone_Res.Text:='';
EB_Celular.Text:='';
EB_Fone_Com.Text:='';
EB_Mensagem_Promo.Text:='';
EB_Hora.Text:='';

end;

end.
