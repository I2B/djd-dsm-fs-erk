unit Daruma_Framework_FISCAL_TesteConsumoMFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;
type
  TFR_FISCAL_Teste_Consumo_MFD = class(TForm)
    LB_MFDPERCENT: TLabel;
    Label5: TLabel;
    LB_MFDBYTES: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PG_MFDPERCENT: TProgressBar;
    LB_StatusEnvio: TListBox;
    CH_ReenviarLog: TCheckBox;
    BT_Recalcular: TButton;
    LB_LogCodigo: TListBox;
    LB_LogDescricao: TListBox;
    BT_LimparListBox: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    TX_Cupons: TEdit;
    TX_Itens: TEdit;
    Enviar: TButton;
    PerguntarStatusCupom: TCheckBox;
    PerguntarGT: TCheckBox;
    PerguntarSubTotal: TCheckBox;
    PerguntarLigada: TCheckBox;
    BT_LimparLogs: TButton;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    TX_DescricaoAleatoria: TEdit;
    TX_CodigoAleatorio: TEdit;
    TX_QtdLetraAleatoria: TEdit;
    TX_QtdDigitoAleatorio: TEdit;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure EnviarClick(Sender: TObject);
    procedure BT_RecalcularClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_LimparLogsClick(Sender: TObject);
    procedure BT_LimparListBoxClick(Sender: TObject);
  private
    { Private declarations }
function HexToDecimal(HexNumber : AnsiString) : integer;
  public
    { Public declarations }
  end;

var
  FR_FISCAL_Teste_Consumo_MFD: TFR_FISCAL_Teste_Consumo_MFD;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_Teste_Consumo_MFD.Button2Click(Sender: TObject);
begin
close();
end;

procedure TFR_FISCAL_Teste_Consumo_MFD.EnviarClick(Sender: TObject);
var
  Int_Qtd_Cupom : integer; //Guarda a Quantidade de Cupom desejado
  Int_Qtd_Itens :integer; //Guarda a Quantidade de Item desejado
  Str_Qtd_Cupom :AnsiString; //Recebe do InputBox a Qtd desejada
  Str_Qtd_Itens : AnsiString;  //Recebe do InputBox a Qtd desejada
  Str_TimeInicial : AnsiString; //Recebe o time Inicial
  Str_TimeFinal : AnsiString; //Recebe o time Final
  Str_DescricaoRamdom :AnsiString; //recebe a string da descricao ramdomica
  Str_CodigoRamdom : AnsiString; //recebe a string do codigo ramdomico
  Str_NumeroLinhas : AnsiString;
  Int_ContaRamdom : Integer; //contador para gerar randomico
  Int_Tamanho : Integer;

  Str_GT: AnsiString; //recebe o Grande Total
  Str_SubTotal:AnsiString; //recebe o SubTotal
  Str_StatusCupom:AnsiString; //recebe o Status do Cupom Fiscal (1)Aberto e (0)Fechado
  Int_ImpressoraLigada:integer; //recebe o Status de ECF (1)Ligado (0)Desligado
  Int_RetornoFuncao:integer;
begin
  Str_Qtd_Cupom := AnsiString(TX_Cupons.Text);
  Str_Qtd_Itens := AnsiString(TX_Itens.Text);
  Str_NumeroLinhas := '1';
  Int_Qtd_Cupom := StrToInt(Str_Qtd_Cupom);

  If ((Str_Qtd_Cupom = '') and
      (Str_Qtd_Itens = '') and
      (Str_NumeroLinhas = '1')) Then
    begin
      Exit;
    end;

  Str_TimeInicial := AnsiString(TimeToStr(Time));

  LB_StatusEnvio.Items.Add('TIME INICIAL = ' + Str_TimeInicial);
  LB_StatusEnvio.Refresh;

  While (Int_Qtd_Cupom <> 0) do
    begin
      SetLength(Str_StatusCupom, 2);
      Int_Retorno := rRetornarInformacao_ECF_Daruma('56',Str_StatusCupom);
       if  StrToInt(Str_StatusCupom) = 1 then
        Int_Retorno:= iCFCancelar_ECF_Daruma();

      if (StrToInt(Str_StatusCupom) = 0) Then
        begin
          Int_ContaRamdom := 0;
          if(PerguntarLigada.Checked=true)then
          begin
              Int_ImpressoraLigada := rVerificarImpressoraLigada_ECF_Daruma();
              If (Int_ImpressoraLigada <> 1) Then
                Application.MessageBox('ECF Desligado!', 'Daruma Framework');
          end;
          if(PerguntarGT.Checked=true)then
          begin
              SetLength(Str_GT,20);
              Int_RetornoFuncao := rRetornarInformacao_ECF_Daruma('1',Str_GT);
              If (Int_RetornoFuncao <> 1) Then
                Application.MessageBox('Erro na Execucao da Funcao Grande Total!', 'Daruma Framework');

          end;
           Int_Retorno:= iCFAbrirPadrao_ECF_Daruma();
          if(PerguntarStatusCupom.Checked=true)then
          begin
              SetLength(Str_StatusCupom,2);
              Int_RetornoFuncao := rRetornarInformacao_ECF_Daruma('56',Str_StatusCupom);
              If (Int_RetornoFuncao <> 1) Then
                Application.MessageBox('Erro na Execucao da Funcao Status Cupom Fiscal!', 'Daruma Framework');

          end;
        end;

      Int_Qtd_Itens := StrToInt(Str_Qtd_Itens);
      While (Int_Qtd_Itens <> 0) do
        begin
          If (StrToInt(Str_NumeroLinhas) = 1) Then
            begin
              If ((True) And
                  (CH_ReenviarLog.Checked = True)) Then
                begin
                  Int_ContaRamdom := 0;
                  While (Int_ContaRamdom <> LB_LogCodigo.Count) do
                    begin
                              if(PerguntarLigada.Checked=true)then
                              begin
                                  Int_ImpressoraLigada := rVerificarImpressoraLigada_ECF_Daruma();
                                  If (Int_ImpressoraLigada <> 1) Then
                                    Application.MessageBox('ECF Desligado! Vamos Cancelar o Cupom', 'Daruma Framework');
                               end;
                      Int_Retorno := iCFVenderResumido_ECF_Daruma(AnsiString('II'), AnsiString('0,10'), AnsiString(LB_LogCodigo.Items.Strings[Int_ContaRamdom]), AnsiString(LB_LogDescricao.Items.Strings[Int_ContaRamdom]));
                      Int_ContaRamdom := (Int_ContaRamdom + 1);
                       if(PerguntarSubTotal.Checked=true)then
                        begin
                          SetLength(Str_SubTotal,20);
                          Int_RetornoFuncao := rCFSubtotal_ECF_Daruma(Str_Subtotal);
                          If (Int_RetornoFuncao <> 1) Then
                            Application.MessageBox('Erro na Execucao da Funcao SubTotal!','Daruma Framework');
                          end;
                    end;

                  Int_Qtd_Itens := 1;
                  Int_Qtd_Cupom := 1;
                end;

              If ((true) And
                  (CH_ReenviarLog.Checked <> true)) Then
                begin
                  // Primeiro vamos gerar o codigo randomico
                  Int_ContaRamdom := StrToInt(TX_QtdDigitoAleatorio.Text);
                  Str_CodigoRamdom := '';
                  While (Int_ContaRamdom <> 0) do
                    begin
                      //Str_CodigoRamdom := Str_CodigoRamdom +
                      //                    AnsiString((Trunc(Length(PAnsiChar(TX_CodigoAleatorio.Text)) * Random)));
                      Int_ContaRamdom := (Int_ContaRamdom - 1);
                    end;

                  // Pegar a Descricao Aleatoria
                  Int_ContaRamdom := StrToInt(TX_QtdLetraAleatoria.Text);
                  Str_DescricaoRamdom := '';
                  While (Int_ContaRamdom <> 0) do
                    begin
                      Int_Tamanho:=0;
                      Int_Tamanho:= Length(TX_DescricaoAleatoria.Text);
                      Int_Tamanho:= Trunc((Int_Tamanho * Random) + 1);
                      Str_DescricaoRamdom := AnsiString(Str_DescricaoRamdom + copy(TX_DescricaoAleatoria.Text, Int_Tamanho, 1));
                      Int_ContaRamdom := (Int_ContaRamdom - 1);
                    end;
                    if(PerguntarLigada.Checked=true)then
                    begin
                      Int_ImpressoraLigada := rVerificarImpressoraLigada_ECF_Daruma();
                      If (Int_ImpressoraLigada <> 1) Then
                          Application.MessageBox('ECF Desligado!','Daruma Framework');
                      end;
                  Int_Retorno := iCFVenderResumido_ECF_Daruma(PAnsiChar(AnsiString('II')), PAnsiChar(AnsiString('0,10')), PAnsiChar(Str_CodigoRamdom),PAnsiChar(Str_DescricaoRamdom));
                  LB_LogCodigo.Items.Add(Str_CodigoRamdom);
                  LB_LogDescricao.Items.Add(Str_DescricaoRamdom);
                  if(PerguntarSubTotal.Checked=true)then
                        begin
                          SetLength(Str_SubTotal,20);
                          Int_RetornoFuncao := rCFSubtotal_ECF_Daruma(PAnsiChar(Str_Subtotal));
                          If (Int_RetornoFuncao <> 1) Then
                            Application.MessageBox('Erro na Execucao da Funcao SubTotal!','Daruma Framework');
                        end;
                end; //If (CH_CapacidadeMFD.Value = 1 And CH_ReenviarLog.Value <> 1) Then

              If (False) Then
                begin
                    if(PerguntarLigada.Checked=true)then
                    begin
                      Int_ImpressoraLigada := rVerificarImpressoraLigada_ECF_Daruma();
                      If (Int_ImpressoraLigada <> 1) Then
                          Application.MessageBox('ECF Desligado!','Daruma Framework');
                      //LB_StatusEnvio.Items.Add('VerificaImpressoraLigada = ' + IntToStr(Int_ImpressoraLigada));
                      //LB_StatusEnvio.Refresh;
                    end;
                      Int_Retorno := iCFVenderResumido_ECF_Daruma(PAnsiChar(AnsiString('II')), PAnsiChar(AnsiString('0,10')), PAnsiChar(AnsiString('1234567890123')), PAnsiChar(AnsiString('teste de vende item')));
                end;

              LB_StatusEnvio.Items.Add('Retorno do comando = ' + IntToStr(Int_Retorno));
              LB_StatusEnvio.Refresh;
              if(PerguntarSubTotal.Checked=true)then
                        begin
                          SetLength(Str_SubTotal,20);
                          Int_RetornoFuncao := rCFSubtotal_ECF_Daruma(PAnsiChar(Str_Subtotal));
                          If (Int_RetornoFuncao <> 1) Then
                          Application.MessageBox('Erro na Execucao da Funcao SubTotal!','Daruma Framework');
                        end;
            end
          else
            begin
                    if(PerguntarLigada.Checked=true)then
                    begin
                      Int_ImpressoraLigada := rVerificarImpressoraLigada_ECF_Daruma();
                      If (Int_ImpressoraLigada <> 1) Then
                          Application.MessageBox('ECF Desligado!','Daruma Framework');
                    end;
                      Int_Retorno := iCFVenderResumido_ECF_Daruma(PAnsiChar(AnsiString('II')), PAnsiChar(AnsiString('1,00')), PAnsiChar(AnsiString('1234567890123')), PAnsiChar(AnsiString('Minha Caneta, Mi Bolígrafo')));
                        if(PerguntarSubTotal.Checked=true)then
                        begin
                          SetLength(Str_SubTotal,20);
                          Int_RetornoFuncao := rCFSubtotal_ECF_Daruma(PAnsiChar(Str_Subtotal));
                          If (Int_RetornoFuncao <> 1) Then
                          Application.MessageBox('Erro na Execucao da Funcao SubTotal','Daruma Framework');
                        end;
            end;

          If (Int_Retorno <> 1) Then
            begin
              Application.MessageBox('Foi Detectado Erro na Venda de Item!! Vamos Cancelar o Cupom','Daruma Framework');
              Int_Retorno:= iCFCancelar_ECF_Daruma();
            end;

          Int_Qtd_Itens := (Int_Qtd_Itens - 1);
        end; //While do Item
      if(PerguntarLigada.Checked=true)then
      begin
         Int_ImpressoraLigada := rVerificarImpressoraLigada_ECF_Daruma();
          If (Int_ImpressoraLigada <> 1) Then
            Application.MessageBox('ECF Desligado! Vamos Cancelar o Cupom','Daruma Framework');
      end;
      if(PerguntarSubTotal.Checked=true)then
                        begin
                          SetLength(Str_SubTotal,20);
                          Int_RetornoFuncao := rCFSubtotal_ECF_Daruma(PAnsiChar(Str_Subtotal));
                          If (Int_RetornoFuncao <> 1) Then
                            Application.MessageBox('Erro na Execucao da Funcao SubTotal','Daruma Framework');
                        end;
        Int_Retorno:= iCFTotalizarCupomPadrao_ECF_Daruma();
        Int_Retorno:= iCFEfetuarPagamentoPadrao_ECF_Daruma();
        Int_Retorno:= iCFEncerrarPadrao_ECF_Daruma();
      Int_ContaRamdom := 0;
      Int_Qtd_Cupom := (Int_Qtd_Cupom - 1);
      if(PerguntarGT.Checked=true)then
          begin
              SetLength(Str_GT,20);
              Int_RetornoFuncao :=  rRetornarInformacao_ECF_Daruma('1',PAnsiChar(Str_GT));
              If (Int_RetornoFuncao <> 1) Then
                Application.MessageBox('Erro na Execucao da Funcao SubTotal','Daruma Framework');
          end;
    end; //While do Cupom

  Str_TimeFinal := PAnsiChar(TimeToStr(Time));
  LB_StatusEnvio.Items.Add('TIME FINAL = ' + Str_TimeFinal);
  LB_StatusEnvio.Items.Add('  ');
  LB_StatusEnvio.Items.Add('  ');
  ShowMessage('TimeInicial = ' + Str_TimeInicial + (#13) + (#10) + 'TimeFinal = ' + Str_TimeFinal);

  LB_StatusEnvio.Refresh;
  FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);


end;

procedure TFR_FISCAL_Teste_Consumo_MFD.BT_RecalcularClick(Sender: TObject);
var
  Str_InformacaoMFD :String;
  Int_InformacaoMFD : integer;
  Int_InformacaoMFDHexa :integer;
  Str_InformacaoMFDHexa :String;
  Ext_InformacaoMFD_PE:Extended;
  Ext_InformacaoMFD_BT:Extended;
begin
  SetLength(Str_InformacaoMFD, 6);
  rRetornarInformacao_ECF_Daruma('103',PAnsiChar(Str_InformacaoMFD));

  Int_InformacaoMFD := StrToInt(PAnsiChar(Str_InformacaoMFD));

  Ext_InformacaoMFD_PE := (Int_InformacaoMFD / 100);
  PG_MFDPERCENT.Position := Trunc(Ext_InformacaoMFD_PE);
  LB_MFDPERCENT.Caption := 'MFD em % : ' + FloatToStr(Ext_InformacaoMFD_PE);

  Str_InformacaoMFD := '';
  SetLength(Str_InformacaoMFD, 9);
  rRetornarInformacao_ECF_Daruma('104', PAnsiChar(Str_InformacaoMFD));
  Int_InformacaoMFD := HexToDecimal(Str_InformacaoMFD);
  Ext_InformacaoMFD_BT:=(Int_InformacaoMFD);
  Ext_InformacaoMFD_BT:=(Trunc(Ext_InformacaoMFD_BT * Ext_InformacaoMFD_PE)div 100);
  LB_MFDBYTES.Caption:=FloatToStr( Ext_InformacaoMFD_BT) + ' Bytes Restantes';
end;

function TFR_FISCAL_Teste_Consumo_MFD.HexToDecimal(HexNumber : AnsiString) : integer;
var
  DecimalResult :integer;
  ch : AnsiString;
  i : integer;
begin
  DecimalResult := 0;
  for i := 1 to Length(HexNumber) do begin
    ch := Copy(HexNumber, i, 1);
    if Pos(ch,'0123456789ABCDEFabcdef') <> 0 then // character is a valid hex
      begin
        DecimalResult := DecimalResult * 16;
        if Pos(ch,'0123456789') <> 0 then // character is a digit
          DecimalResult := DecimalResult + strtoint(ch)
        else begin
          ch := UpperCase(ch);
          DecimalResult := DecimalResult + Ord(ch[1]) - Ord('7');
        end;
      end
    else
      HexToDecimal := -1
  end;
  HexToDecimal := DecimalResult;
end;


procedure TFR_FISCAL_Teste_Consumo_MFD.FormShow(Sender: TObject);
var
  Str_InformacaoMFD :String;
  Int_InformacaoMFD : integer;
  Int_InformacaoMFDHexa :integer;
  Str_InformacaoMFDHexa :String;
  Ext_InformacaoMFD_PE:Extended;
  Ext_InformacaoMFD_BT:Extended;

begin
    rVerificarImpressoraLigada_ECF_Daruma();
    SetLength(Str_InformacaoMFD, 6);

   rRetornarInformacao_ECF_Daruma('103',PAnsiChar(Str_InformacaoMFD));

    Int_InformacaoMFD := StrtoInt(pchar(Str_InformacaoMFD));

    Ext_InformacaoMFD_PE := (Int_InformacaoMFD / 100);
    PG_MFDPERCENT.Position:=Trunc(Ext_InformacaoMFD_PE);
    LB_MFDPERCENT.Caption := 'MFD em % : ' + FloatToStr(Ext_InformacaoMFD_PE);

    Str_InformacaoMFD := '';
    SetLength(Str_InformacaoMFD, 9);
    rRetornarInformacao_ECF_Daruma ('104', PAnsiChar(Str_InformacaoMFD));
    Int_InformacaoMFD := HexToDecimal(Str_InformacaoMFD);
    Ext_InformacaoMFD_BT:=(Int_InformacaoMFD);
    Ext_InformacaoMFD_BT:=(Trunc(Ext_InformacaoMFD_BT * Ext_InformacaoMFD_PE)div 100);
    LB_MFDBYTES.Caption:=FloatToStr( Ext_InformacaoMFD_BT) + ' Bytes Restantes';

end;

procedure TFR_FISCAL_Teste_Consumo_MFD.BT_LimparLogsClick(Sender: TObject);
begin
 LB_LogCodigo.Clear;
 LB_LogDescricao.Clear;
 LB_LogCodigo.Refresh;
 LB_LogDescricao.Refresh;
end;

procedure TFR_FISCAL_Teste_Consumo_MFD.BT_LimparListBoxClick(
  Sender: TObject);
begin
  LB_StatusEnvio.Clear;
  LB_StatusEnvio.Refresh;
end;

end.
