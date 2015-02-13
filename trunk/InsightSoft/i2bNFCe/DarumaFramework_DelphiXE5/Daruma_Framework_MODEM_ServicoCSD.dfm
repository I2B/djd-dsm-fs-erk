object FR_MODEM_ServicoCSD: TFR_MODEM_ServicoCSD
  Left = 192
  Top = 122
  Caption = 'Servi'#231'o CSD - DarumaFramework'
  ClientHeight = 466
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 363
    Top = 176
    Width = 103
    Height = 13
    Caption = 'DADOS RECEBIDOS'
  end
  object Label2: TLabel
    Left = 16
    Top = 408
    Width = 140
    Height = 13
    Caption = 'RETORNOS DAS FUN'#199#213'ES'
  end
  object Label3: TLabel
    Left = 91
    Top = 176
    Width = 96
    Height = 13
    Caption = 'DADOS ENVIADOS'
  end
  object Label4: TLabel
    Left = 168
    Top = 96
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 16
    Top = 88
    Width = 103
    Height = 13
    Caption = 'Numero a ser discado'
  end
  object Label6: TLabel
    Left = 120
    Top = 7
    Width = 304
    Height = 13
    Caption = 'Configura'#231#227'o inicial para o modem que receber'#225' a chamada csd'
  end
  object btnEnviarDados: TButton
    Left = 136
    Top = 320
    Width = 129
    Height = 33
    Caption = 'tEnviarDadosCsd'
    TabOrder = 0
    OnClick = btnEnviarDadosClick
  end
  object btnLimparDadosEnviados: TButton
    Left = 16
    Top = 320
    Width = 113
    Height = 33
    Caption = 'limparEnvio'
    TabOrder = 1
    OnClick = btnLimparDadosEnviadosClick
  end
  object edRetornoDeFuncoes: TEdit
    Left = 167
    Top = 404
    Width = 370
    Height = 21
    TabOrder = 2
  end
  object MN_DadosRecebidos: TMemo
    Left = 288
    Top = 192
    Width = 249
    Height = 113
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object btnReceberDados: TButton
    Left = 288
    Top = 320
    Width = 129
    Height = 33
    Caption = 'rReceberDadosCsd'
    TabOrder = 4
    OnClick = btnReceberDadosClick
  end
  object btnLimparDadosRecebidos: TButton
    Left = 424
    Top = 320
    Width = 113
    Height = 33
    Caption = 'limparRecebe'
    TabOrder = 5
    OnClick = btnLimparDadosRecebidosClick
  end
  object Panel1: TPanel
    Left = 16
    Top = 144
    Width = 521
    Height = 17
    Color = clBtnHighlight
    TabOrder = 6
  end
  object ED_NumTelefone: TEdit
    Left = 128
    Top = 88
    Width = 105
    Height = 21
    TabOrder = 7
    Text = '0XX99999999'
  end
  object btnRealizarChamada: TButton
    Left = 276
    Top = 84
    Width = 119
    Height = 36
    Caption = 'eRealizarChamadaCsd'
    TabOrder = 8
    OnClick = btnRealizarChamadaClick
  end
  object Panel2: TPanel
    Left = 17
    Top = 368
    Width = 520
    Height = 17
    Color = clBtnHighlight
    TabOrder = 9
  end
  object btnAtivarConexao: TButton
    Left = 216
    Top = 24
    Width = 113
    Height = 25
    Caption = 'eAtivarConexaoCsd'
    TabOrder = 10
    OnClick = btnAtivarConexaoClick
  end
  object Panel3: TPanel
    Left = 16
    Top = 64
    Width = 521
    Height = 9
    Color = clBtnHighlight
    TabOrder = 11
  end
  object btnFinalizarChamada: TButton
    Left = 416
    Top = 84
    Width = 119
    Height = 36
    Caption = 'eFinalizarChamadaCsd'
    TabOrder = 12
    OnClick = btnFinalizarChamadaClick
  end
  object MN_dadosEnviados: TMemo
    Left = 16
    Top = 192
    Width = 249
    Height = 113
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 13
  end
  object btnLimparRetorno: TButton
    Left = 363
    Top = 433
    Width = 89
    Height = 25
    Caption = 'Limpar Retorno'
    TabOrder = 14
    OnClick = btnLimparRetornoClick
  end
  object Button1: TButton
    Left = 461
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 15
    OnClick = Button1Click
  end
end
