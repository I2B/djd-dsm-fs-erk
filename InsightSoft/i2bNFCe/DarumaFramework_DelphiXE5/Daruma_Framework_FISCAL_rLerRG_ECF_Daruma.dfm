object FR_FISCAL_rLerRG_ECF_Daruma: TFR_FISCAL_rLerRG_ECF_Daruma
  Left = 217
  Top = 124
  Caption = 'M'#233'todo rLerRG_ECF_Daruma'
  ClientHeight = 207
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 93
    Height = 13
    Caption = 'Relat'#243'rio Gerencial:'
  end
  object MM_RG: TMemo
    Left = 16
    Top = 48
    Width = 625
    Height = 113
    TabOrder = 0
  end
  object BT_ENVIAR: TButton
    Left = 469
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 565
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
