object FR_FISCAL_iCFLancarDescontoItem_ECF_Daruma: TFR_FISCAL_iCFLancarDescontoItem_ECF_Daruma
  Left = 438
  Top = 371
  Caption = 'FR_FISCAL_iCFLancarDescontoItem_ECF_Daruma'
  ClientHeight = 170
  ClientWidth = 415
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
    Left = 89
    Top = 26
    Width = 63
    Height = 13
    Caption = 'N'#250'mero Item:'
  end
  object Label2: TLabel
    Left = 75
    Top = 58
    Width = 73
    Height = 13
    Caption = 'Tipo Desconto:'
  end
  object Label3: TLabel
    Left = 73
    Top = 90
    Width = 73
    Height = 13
    Caption = 'Valor Desconto'
  end
  object Edt_Numero_Item: TEdit
    Left = 160
    Top = 18
    Width = 58
    Height = 21
    TabOrder = 0
    Text = '001'
  end
  object Edt_Valor_Desconto: TEdit
    Left = 161
    Top = 82
    Width = 161
    Height = 21
    TabOrder = 1
    Text = '0,01'
  end
  object BT_ENVIAR: TButton
    Left = 161
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 247
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 160
    Top = 49
    Width = 49
    Height = 21
    ItemIndex = 0
    TabOrder = 4
    Text = 'D%'
    Items.Strings = (
      'D%'
      'D$'
      '')
  end
end
