object FR_MODEM_rReceberSms: TFR_MODEM_rReceberSms
  Left = 387
  Top = 199
  Caption = 'M'#233'todo rReceberSms_MODEM_DarumaFramework'
  ClientHeight = 351
  ClientWidth = 334
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
  object LB_TelefoneOrigem: TLabel
    Left = 16
    Top = 48
    Width = 81
    Height = 13
    Caption = 'Telefone Origem:'
  end
  object LB_Mensagem: TLabel
    Left = 16
    Top = 176
    Width = 55
    Height = 13
    Caption = 'Mensagem:'
  end
  object LB_Data: TLabel
    Left = 16
    Top = 90
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object LB_Hora: TLabel
    Left = 16
    Top = 132
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object LB_QtidadeMsgModem: TLabel
    Left = 16
    Top = 296
    Width = 180
    Height = 13
    Caption = 'Quantidade de Mensagens no modem'
  end
  object LB_IndiceSMS: TLabel
    Left = 16
    Top = 11
    Width = 70
    Height = 13
    Caption = 'Indice do SMS'
  end
  object EB_TelefoneOrigem: TEdit
    Left = 16
    Top = 64
    Width = 201
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 0
  end
  object BT_Enviar: TButton
    Left = 224
    Top = 25
    Width = 97
    Height = 25
    Caption = 'LER'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 219
    Top = 316
    Width = 94
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FecharClick
  end
  object MN_Mensagem: TMemo
    Left = 16
    Top = 190
    Width = 201
    Height = 89
    Enabled = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object EB_Data: TEdit
    Left = 16
    Top = 105
    Width = 201
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 4
  end
  object EB_Hora: TEdit
    Left = 16
    Top = 148
    Width = 201
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 5
  end
  object EB_QtidadeMsgModem: TEdit
    Left = 16
    Top = 320
    Width = 201
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 6
  end
  object BT_Limpar: TButton
    Left = 223
    Top = 58
    Width = 98
    Height = 25
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = BT_LimparClick
  end
  object EB_IndiceSMS: TEdit
    Left = 16
    Top = 25
    Width = 201
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 8
  end
end
