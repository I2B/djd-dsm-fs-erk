object FR_FISCAL_iCNFTotalizarComprovante_ECF_Daruma: TFR_FISCAL_iCNFTotalizarComprovante_ECF_Daruma
  Left = 339
  Top = 124
  Caption = 'M'#233'todo iCNFTotalizarComprovante_ECF_Daruma'
  ClientHeight = 140
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 72
    Top = 61
    Width = 114
    Height = 13
    Caption = 'Valor do Acresc./Desc.:'
  end
  object Label3: TLabel
    Left = 60
    Top = 29
    Width = 127
    Height = 13
    Caption = 'Tipo Desconto/Acr'#233'scimo:'
  end
  object Edt_ValorDescAcresc: TEdit
    Left = 192
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1,00'
  end
  object BT_ENVIAR: TButton
    Left = 151
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 239
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 192
    Top = 25
    Width = 49
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'D%'
      'D$'
      'A%'
      'A$')
  end
end
