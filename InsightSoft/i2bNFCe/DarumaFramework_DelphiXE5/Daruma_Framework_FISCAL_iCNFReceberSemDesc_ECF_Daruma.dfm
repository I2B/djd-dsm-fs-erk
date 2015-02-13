object FR_FISCAL_iCNFReceberSemDesc_ECF_Daruma: TFR_FISCAL_iCNFReceberSemDesc_ECF_Daruma
  Left = 339
  Top = 124
  Caption = 'M'#233'todo iCNFReceberSemDesc_ECF_Daruma'
  ClientHeight = 135
  ClientWidth = 359
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
  object BT_ENVIAR: TButton
    Left = 151
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 239
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
