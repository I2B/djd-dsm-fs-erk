object FR_MODEM_tEnviarSMS: TFR_MODEM_tEnviarSMS
  Left = 324
  Top = 132
  Caption = 'M'#233'todo tEnviarSms_MODEM_DarumaFramework'
  ClientHeight = 233
  ClientWidth = 298
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
  object LB_NumeroTelefone: TLabel
    Left = 16
    Top = 8
    Width = 100
    Height = 13
    Caption = 'Numero do Telefone:'
  end
  object LB_Mensagem: TLabel
    Left = 16
    Top = 64
    Width = 122
    Height = 13
    Caption = 'Mensagem a ser enviada:'
  end
  object LB_RespostaModem: TLabel
    Left = 16
    Top = 176
    Width = 101
    Height = 13
    Caption = 'Resposta do Modem:'
  end
  object EB_NumeroTelefone: TEdit
    Left = 16
    Top = 32
    Width = 169
    Height = 21
    TabOrder = 0
    Text = '0xxTelefone'
  end
  object BT_Enviar: TButton
    Left = 192
    Top = 142
    Width = 97
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 192
    Top = 198
    Width = 97
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FecharClick
  end
  object MN_Mensagem: TMemo
    Left = 16
    Top = 87
    Width = 169
    Height = 81
    Lines.Strings = (
      'Teste Daruma MIN-200 - '
      'Delphi!'
      'Aplicativo Exclusivo Daruma'
      ''
      'Acesse: '
      'www.desenvolvedoresdaruma.'
      'co'
      'm.br')
    MaxLength = 160
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object BT_Limpar: TButton
    Left = 192
    Top = 110
    Width = 97
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = BT_LimparClick
  end
  object ED_Retorno: TEdit
    Left = 16
    Top = 200
    Width = 169
    Height = 21
    Enabled = False
    TabOrder = 5
  end
end
