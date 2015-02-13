object FR_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma: TFR_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma
  Left = 345
  Top = 207
  Caption = 'M'#233'todo iCFLancarAcrescimoUltimoItem_ECF_Daruma'
  ClientHeight = 128
  ClientWidth = 410
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
    Left = 96
    Top = 32
    Width = 76
    Height = 13
    Caption = 'Tipo Acr'#233'scimo:'
  end
  object Label2: TLabel
    Left = 96
    Top = 64
    Width = 79
    Height = 13
    Caption = 'Valor Acr'#233'scimo:'
  end
  object Edt_Valor_Acrescimo: TEdit
    Left = 178
    Top = 57
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0,01'
  end
  object BT_ENVIAR: TButton
    Left = 136
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 224
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 176
    Top = 25
    Width = 49
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = 'A%'
    Items.Strings = (
      'A%'
      'A$')
  end
end
