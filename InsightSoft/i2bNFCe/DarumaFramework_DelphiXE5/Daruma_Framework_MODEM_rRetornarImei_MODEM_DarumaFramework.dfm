object FR_MODEM_rRetornarImei: TFR_MODEM_rRetornarImei
  Left = 345
  Top = 221
  Caption = 'M'#233'todo rRetornarImei_MODEM_DarumaFramework'
  ClientHeight = 110
  ClientWidth = 342
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
    Left = 42
    Top = 26
    Width = 22
    Height = 13
    Caption = 'IMEI'
  end
  object ED_IMEI: TEdit
    Left = 74
    Top = 23
    Width = 217
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object BT_Limpar: TButton
    Left = 40
    Top = 64
    Width = 65
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
    OnClick = BT_LimparClick
  end
  object Button2: TButton
    Left = 128
    Top = 64
    Width = 73
    Height = 25
    Caption = 'ObterIMEI'
    TabOrder = 2
    OnClick = Button2Click
  end
  object BT_Fechar: TButton
    Left = 216
    Top = 64
    Width = 73
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FecharClick
  end
end
