object FR_MODEM_rRetornarOperadora: TFR_MODEM_rRetornarOperadora
  Left = 379
  Top = 315
  Caption = 'M'#233'todo rRetornarOperadora_MODEM_DarumaFramework'
  ClientHeight = 99
  ClientWidth = 356
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
    Left = 56
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Operadora:'
  end
  object ED_Operadora: TEdit
    Left = 56
    Top = 24
    Width = 233
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object BT_Limpar: TButton
    Left = 56
    Top = 64
    Width = 65
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
    OnClick = BT_LimparClick
  end
  object BT_Operadora: TButton
    Left = 136
    Top = 64
    Width = 73
    Height = 25
    Caption = 'obterOper'
    TabOrder = 2
    OnClick = BT_OperadoraClick
  end
  object BT_Fechar: TButton
    Left = 224
    Top = 64
    Width = 65
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FecharClick
  end
end
