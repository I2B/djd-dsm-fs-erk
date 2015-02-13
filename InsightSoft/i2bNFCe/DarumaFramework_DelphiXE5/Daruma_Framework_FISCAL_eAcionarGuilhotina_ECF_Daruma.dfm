object FR_FISCAL_eAcionarGuilhotina_ECF_Daruma: TFR_FISCAL_eAcionarGuilhotina_ECF_Daruma
  Left = 491
  Top = 297
  Caption = 'M'#233'todo eAcionarGuilhotina_ECF_Daruma'
  ClientHeight = 161
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Rdg_AcionaGuilhotina: TRadioGroup
    Left = 63
    Top = 16
    Width = 209
    Height = 89
    Caption = 'Acionar Guilhotina:'
    Columns = 2
    Items.Strings = (
      'Corte Parcial '
      'Corte Total')
    TabOrder = 0
  end
  object BT_ENVIAR: TButton
    Left = 65
    Top = 116
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 194
    Top = 116
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
