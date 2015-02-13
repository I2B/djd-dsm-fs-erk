object FR_MODEM_rNivelSinalRecebido: TFR_MODEM_rNivelSinalRecebido
  Left = 416
  Top = 246
  Caption = 'M'#233'todo rNivelSinalRecebido_MODEM_DarumaFramework'
  ClientHeight = 134
  ClientWidth = 435
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
    Left = 248
    Top = 20
    Width = 93
    Height = 13
    Caption = 'Retorno do modem:'
  end
  object BT_Verificar: TButton
    Left = 352
    Top = 71
    Width = 73
    Height = 25
    Caption = 'Verificar'
    TabOrder = 0
    OnClick = BT_VerificarClick
  end
  object BT_Fechar: TButton
    Left = 352
    Top = 103
    Width = 73
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object ED_Retorno: TEdit
    Left = 248
    Top = 38
    Width = 177
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 225
    Height = 113
    Caption = 'NIVEIS'
    TabOrder = 3
    object Label7: TLabel
      Left = 8
      Top = 17
      Width = 147
      Height = 13
      Caption = '0           ----->   -113 dBm or less'
    end
    object Label8: TLabel
      Left = 9
      Top = 34
      Width = 114
      Height = 13
      Caption = '1           ----->   -111 dBm'
    end
    object Label9: TLabel
      Left = 10
      Top = 51
      Width = 141
      Height = 13
      Caption = '2 .. 30   ----->   -109... -53 dBm'
    end
    object Label10: TLabel
      Left = 10
      Top = 69
      Width = 156
      Height = 13
      Caption = '31         ----->   -51 dBm or greater'
    end
    object Label11: TLabel
      Left = 9
      Top = 87
      Width = 202
      Height = 13
      Caption = '99         ----->   not known or not detectable'
    end
  end
end
