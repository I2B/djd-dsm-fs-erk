object FR_FISCAL_iCFLancarAcrescimoItem_ECF_Daruma: TFR_FISCAL_iCFLancarAcrescimoItem_ECF_Daruma
  Left = 436
  Top = 419
  Caption = 'M'#233'todo iCFLancarAcrescimoItem_ECF_Daruma'
  ClientHeight = 154
  ClientWidth = 391
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
    Left = 72
    Top = 24
    Width = 63
    Height = 13
    Caption = 'N'#250'mero Item:'
  end
  object Label2: TLabel
    Left = 58
    Top = 56
    Width = 76
    Height = 13
    Caption = 'Tipo Acr'#233'scimo:'
  end
  object Label3: TLabel
    Left = 56
    Top = 88
    Width = 79
    Height = 13
    Caption = 'Valor Acr'#233'scimo:'
  end
  object Edt_Numero_Item: TEdit
    Left = 143
    Top = 16
    Width = 58
    Height = 21
    TabOrder = 0
    Text = '001'
  end
  object Edt_Valor_Acrescimo: TEdit
    Left = 144
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 1
    Text = '0,01'
  end
  object BT_ENVIAR: TButton
    Left = 144
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 230
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 144
    Top = 49
    Width = 49
    Height = 21
    TabOrder = 4
    Items.Strings = (
      'D%'
      'D$'
      'A%'
      'A$')
  end
end
