unit Daruma_Framework_DUAL_metodo_iImprimirTexto_DUAL_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework = class(TForm)
    GB_Texto: TGroupBox;
    MB_Texto: TMemo;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    BT_CompletoSeparado: TButton;
    BT_Completo: TButton;
    GB_Tags: TGroupBox;
    LB_ce: TLabel;
    LB_b: TLabel;
    LB_i: TLabel;
    LB_s: TLabel;
    LB_e: TLabel;
    LB_c: TLabel;
    LB_n: TLabel;
    LB_l: TLabel;
    LB_sl: TLabel;
    LB_tc: TLabel;
    LB_dt: TLabel;
    LB_hr: TLabel;
    LB_sp: TLabel;
    LB_sn: TLabel;
    LB_g: TLabel;
    LB_a: TLabel;
    LB_tb: TLabel;
    LB_CodigodeBarras: TLabel;
    LB_ean13: TLabel;
    LB_ean8: TLabel;
    LB_upc: TLabel;
    LB_code39: TLabel;
    LB_code93: TLabel;
    LB_codabar: TLabel;
    LB_msi: TLabel;
    LB_code11: TLabel;
    LB_ad: TLabel;
    LB_bmp: TLabel;
    LB_gui: TLabel;
    LB_da: TLabel;
    LB_pdf: TLabel;
    LB_Comandos: TLabel;
    LB_fe: TLabel;
    LB_Code128: TLabel;
    LB_i2of5: TLabel;
    LB_s2of5: TLabel;
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_CompletoSeparadoClick(Sender: TObject);
    procedure BT_CompletoClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_DUAL_iImprimirTexto_DUAL_DarumaFramework: TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework;

implementation

function iImprimirTexto_DUAL_DarumaFramework(stTexto: AnsiString; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll'

{$R *.dfm}

procedure TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework.BT_EnviarClick(
  Sender: TObject);

var
  iRetorno: Integer;
begin
  if (MB_Texto.Text = '') then
    begin
      Application.MessageBox('Digite um Texto.', 'Daruma DLL Framework', mb_ok + 16);
    end
  else
    begin
      iRetorno := iImprimirTexto_DUAL_DarumaFramework(MB_Texto.Text, 0);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Impressão realizada com sucesso.', 'Daruma DLL Framework', mb_ok + 32)
        end
      else
        begin
          Application.MessageBox('Erro ao Imprimir o texto, verifique a impressora', 'Daruma DLL Framework', mb_ok + 16);
        end;
    end;
end;

procedure TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework.BT_CompletoSeparadoClick(
  Sender: TObject);

var
  iRetorno: Integer;

begin
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<sn><l></l><ce><s>Teste com Formatação DHTM</s></ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<n>Estes são os carácteres que você poderá utilizar<n><l>Você poderá a qualquer monento combinar as formatações!!', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<b>><</b>> Para sinalizar Negrito', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<i>><</i>> Para sinalizar Itálico', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<s>><</s>> Para sinalizar Sublinhado', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<e>><</e>> Para sinalizar Expandido', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<c>><</c>> Para sinalizar Condensado', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<n>><</n>> Para sinalizar Normal', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<l>><</l>> Para Saltar Uma Linha', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<fe>><</fe>> Ativa o Modo fonte Elite', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ad>><</ad>> Para alinhar a direita', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ft>>n1,n2,...,n6<</ft>> Para habilitar tabulação', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<tb>><</tb>> Para saltar até a proxima tabulação', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sl>>NN<</sl>> Para Saltar Várias Linhas', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<tc>>C<</tc>>Riscar Linha com Carácter Específico', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ce>><</ce>> Para Centralizar', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<dt>><</dt>> Para Imprimir Data Atual', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<hr>><</hr>> Para Imprimir Hora Atual', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sp>>NN<</sp>> Inserir NN Espaços em Branco', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sn>><</sn>> Sinal Sonoro, Apitar', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<g>><</g>> Abre a Gaveta', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<a>><</a>> Aguardar até o Término da Impressão', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l></l><tc>_</tc><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e><ce>TABULAÇÃO</ce><e><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ft>05,10,15,20,30,40</ft>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('Data<tb></tb>Veiculo<tb></tb>Cor<tb></tb>Placa<tb></tb>Hora', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<dt></dt><tb></tb>Golf<tb></tb><tb></tb>Branca<tb></tb>AJY5231<tb></tb>10:15', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<dt></dt><tb></tb>Focus<tb></tb>Vermelha<tb></tb>APG2013<tb></tb>13:45', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<dt></dt><tb></tb>Megane<tb></tb>Cinza<tb></tb>AAR5414<tb></tb>14:30', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<dt></dt><tb></tb>Corsa<tb></tb>Preto<tb></tb>AWK0189<tb></tb>20:40', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l></l><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l></l><e>DATA:<dt></dt></e><l></l><e>Hora:<hr></hr></e><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Anvançando 3 Linhas</ce><sl>3</sl>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Anvançando 1 Linha</ce><sl>1</sl>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l></l>Inserindo<sp>10</sp>10 espaços em Branco', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Formatação Normal</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<n>DARUMA AUTOMAÇÃO!!</n><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+EXPAND</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><e>DARUMA AUTOMAÇÃO!!</b></i></s></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><c>DARUMA AUTOMAÇÃO!!</b></i></s></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><n>DARUMA AUTOMAÇÃO!!</b></i></s></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e>DARUMA AUTOMAÇÃO!!<e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<c>DARUMA AUTOMAÇÃO!!</c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><e>DARUMA AUTOMAÇÃO!!</b></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ITÁLICO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<i><e>DARUMA AUTOMAÇÃO!!</i></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce><dt></dt>SUBLINHADO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><e>DARUMA AUTOMAÇÃO!!</s></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><c>DARUMA AUTOMAÇÃO!!</b></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ITÁLICO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<i><c>DARUMA AUTOMAÇÃO!!</i></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>SUBLINHADO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><c>DARUMA AUTOMAÇÃO!!</s></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><n>DARUMA AUTOMAÇÃO!!</b></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ITÁLICO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l></l><i><n>DARUMA AUTOMAÇÃO!!</i></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>SUBLINHADO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><n>DARUMA AUTOMAÇÃO!!</s></n><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ALINHADO A DIREITA</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ad>DARUMA AUTOMAÇÃO!!</ad><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ALINHADO A DIREITA + EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e><ad>DARUMA AUTOMAÇÃO!!</ad></e><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ALINHADO A DIREITA + SUBLINHADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ad><s>DARUMA AUTOMAÇÃO!!</s></ad><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>CENTRALIZADO + EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e><ce>DARUMA AUTOMAÇÃO!!</ce></e><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ft>05,10,15,20,30,40</ft>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>TABULADO NA COLUNA 10</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb></tb><tb></tb>DARUMA<l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>TABULADO NA COLUNA 30</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb></tb><tb></tb><tb></tb><tb></tb><tb></tb>DARUMA', 0);

  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<l></l><e><b>FIM TAGS COMPLETO</e></b>'), 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<sl>03</sl>'), 0);

        if (iRetorno = 1) Then
            Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
            else
            Application.MessageBox('Erro ao realizar a impressão das TAGS!', 'Daruma DLL Framework', mb_ok + 16);
            end;

procedure TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework.BT_CompletoClick(
  Sender: TObject);

var
  iRetorno: Integer;

begin
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<l></l><e><b>BUFFER COMPLETO</e></b>'), 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<<e>>DATA:<<dt>><</dt>><</e>><<l>><</l>><<e>>Hora:<<hr>><</hr>><</e>><<l>><</l>><<ce>>' +
                  'Anvançando 5 Linhas<</ce>><<sl>>5<</sl>>Inserindo<<sp>>10<</sp>>10 espaços em Branco<<l>><</l>>' +
                  '<<ce>>Formatação Normal<</ce>><<n>>DARUMA AUTOMAÇÃO!!<</n>><<l>><<ce>>NEGR+ITAL+SUBL+EXPAND<</ce>>' +
                  '<<b>><<i>><<s>><<e>>DARUMA AUTOMAÇÃO!!<</b>><</i>><</s>><</e>><<l>><</l>><<ce>>NEGR+ITAL+SUBL+CONDENSADO<</ce>>' +
                  '<<b>><<i>><<s>><<c>>DARUMA AUTOMAÇÃO!!<</b>><</i>><</s>><</c>><<l>><</l>><<ce>>NEGR+ITAL+SUBL+NORMAL<</ce>><<b>>' +
                  '<<i>><<s>><<n>>DARUMA AUTOMAÇÃO!!<</b>><</i>><</s>><</n>><<l>><</l>><<ce>>EXPANDIDO<</ce>><<e>>DARUMA AUTOMAÇÃO!!' +
                  '<<e>><<l>><</l>><<ce>>CONDENSADO<</ce>><<c>>DARUMA AUTOMAÇÃO!!<</c>><<l>><</l>><<ce>>NEGRITO+EXPANDIDO<</ce>><<b>><<e>>DARUMA AUTOMAÇÃO!!' +
                  '<</b>><</e>><<l>><</l>><<ce>>Itálico+EXPANDIDO<</ce>><<i>><<e>>DARUMA AUTOMAÇÃO!!<</i>><</e>><<l>><</l>><<ce>>SUBLINHADO+EXPANDIDO<</ce>>' +
                  '<<s>><<e>>DARUMA AUTOMAÇÃO!!<</s>><</e>><<l>><</l>><<ce>>NEGRITO+CONDENSADO<</ce>><<b>><<c>>DARUMA AUTOMAÇÃO!!<</b>><</c>><<l>><</l>>' +
                  '<<ce>>Itálico+CONDENSADO<</ce>><<i>><<c>>DARUMA AUTOMAÇÃO!!<</i>><</c>><<l>><</l>><<ce>>SUBLINHADO+CONDENSADO<</ce>><<s>><<c>>' +
                  'DARUMA AUTOMAÇÃO!!<</s>><</c>><<l>><<ce>>NEGRITO+NORMAL<</ce>><<b>>'),0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<fe>Ativa o Modo fonte Elite</fe>'), 0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<l></l><e><b>FIM BUFFER COMPLETO</b></e>'), 0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(PAnsichar('<sl>03</sl>'), 0);

        if (iRetorno = 1) Then
            Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
            else
            Application.MessageBox('Erro ao realizar a impressão do BUFFER!', 'Daruma DLL Framework', mb_ok + 16);
            end;



procedure TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework.BT_FecharClick(
  Sender: TObject);
begin

Close;

end;

end.
