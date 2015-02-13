object FR_FISCAL_eDefinirProduto_Daruma: TFR_FISCAL_eDefinirProduto_Daruma
  Left = 192
  Top = 124
  Caption = 'M'#233'todo eDefinirProduto_Daruma'
  ClientHeight = 145
  ClientWidth = 308
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
    Left = 40
    Top = 32
    Width = 182
    Height = 13
    Caption = 'Escolha o Produto DarumaFramework:'
  end
  object cmb_produto: TComboBox
    Left = 40
    Top = 48
    Width = 209
    Height = 21
    ItemIndex = 1
    TabOrder = 0
    Text = 'FISCAL'
    Items.Strings = (
      'DUAL'
      'FISCAL'
      'MODEM'
      'TA2000')
  end
  object BT_ENVIAR: TButton
    Left = 86
    Top = 91
    Width = 75
    Height = 26
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 171
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
