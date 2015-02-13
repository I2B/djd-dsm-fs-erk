object FR_FISCAL_iCFTotalizarCupom_ECF_Daruma: TFR_FISCAL_iCFTotalizarCupom_ECF_Daruma
  Left = 0
  Top = 0
  Caption = 'FR_FISCAL_iCFTotalizarCupom_ECF_Daruma'
  ClientHeight = 200
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 40
    Top = 53
    Width = 113
    Height = 13
    Caption = 'Valor do Acresc./Desc.:'
  end
  object Label3: TLabel
    Left = 28
    Top = 21
    Width = 124
    Height = 13
    Caption = 'Tipo Desconto/Acr'#233'scimo:'
  end
  object Edt_ValorDescAcresc: TEdit
    Left = 156
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1,00'
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 160
    Top = 17
    Width = 49
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'D%'
      'D$'
      'A%'
      'A$')
  end
  object BT_ENVIAR: TButton
    Left = 71
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 154
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
