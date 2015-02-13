object FR_FISCAL_iCNFReceber_ECF_Daruma: TFR_FISCAL_iCNFReceber_ECF_Daruma
  Left = 0
  Top = 0
  Caption = 'Daruma_Framewirk_FISCAL_iCNFReceber_ECF_Daruma'
  ClientHeight = 223
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 158
    Height = 13
    Caption = #205'ndice do Totalizador N'#227'o Fiscal: '
  end
  object Label2: TLabel
    Left = 80
    Top = 61
    Width = 108
    Height = 13
    Caption = 'Valor do Recebimento:'
  end
  object Label3: TLabel
    Left = 60
    Top = 93
    Width = 124
    Height = 13
    Caption = 'Tipo Desconto/Acr'#233'scimo:'
  end
  object Label4: TLabel
    Left = 80
    Top = 125
    Width = 98
    Height = 13
    Caption = 'Valor Desc./Acresc.:'
  end
  object CMB_IndiceTotalizador: TComboBox
    Left = 192
    Top = 25
    Width = 49
    Height = 21
    TabOrder = 0
    Items.Strings = (
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20')
  end
  object Edt_ValorRecebimento: TEdit
    Left = 192
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1,00'
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 192
    Top = 89
    Width = 49
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'D%'
      'D$'
      'A%'
      'A$')
  end
  object Edt_ValorDescAcresc: TEdit
    Left = 192
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0,10'
  end
  object BT_ENVIAR: TButton
    Left = 182
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 263
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FECHARClick
  end
end
