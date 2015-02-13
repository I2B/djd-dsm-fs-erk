object FR_FISCAL_rLerAliquotas_ECF_Daruma: TFR_FISCAL_rLerAliquotas_ECF_Daruma
  Left = 285
  Top = 157
  Caption = 'M'#233'todo rLerAliquotas_ECF_Daruma'
  ClientHeight = 230
  ClientWidth = 416
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
    Left = 16
    Top = 32
    Width = 46
    Height = 13
    Caption = 'Aliquotas:'
  end
  object MM_Aliquotas: TMemo
    Left = 16
    Top = 48
    Width = 385
    Height = 113
    TabOrder = 0
  end
  object BT_FECHAR: TButton
    Left = 317
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FECHARClick
  end
  object BT_ENVIAR: TButton
    Left = 221
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
end
