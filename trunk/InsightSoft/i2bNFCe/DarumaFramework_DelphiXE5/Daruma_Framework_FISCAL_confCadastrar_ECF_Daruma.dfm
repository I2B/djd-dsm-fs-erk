object FR_FISCAL_confCadastrar_ECF_Daruma: TFR_FISCAL_confCadastrar_ECF_Daruma
  Left = 364
  Top = 329
  Caption = 'M'#233'todo confCadastrar_ECF_Daruma'
  ClientHeight = 179
  ClientWidth = 449
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
    Left = 24
    Top = 32
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label3: TLabel
    Left = 376
    Top = 88
    Width = 52
    Height = 13
    Caption = 'Separador:'
  end
  object CMB_ProgramarConfig: TComboBox
    Left = 24
    Top = 48
    Width = 113
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'ALIQUOTA'
    Items.Strings = (
      'ALIQUOTA'
      'TNF'
      'RG'
      'FPGTO')
  end
  object Edt_Valor: TEdit
    Left = 24
    Top = 104
    Width = 345
    Height = 21
    TabOrder = 1
    Text = '08,00|07,00|S08,00|S07,00%,12,00'
  end
  object BT_ENVIAR: TButton
    Left = 260
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 350
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
  object Edt_Separador: TEdit
    Left = 376
    Top = 104
    Width = 49
    Height = 21
    TabOrder = 4
    Text = '|'
  end
end
