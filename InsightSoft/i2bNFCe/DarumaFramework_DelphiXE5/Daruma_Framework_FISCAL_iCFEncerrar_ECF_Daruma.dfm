object FR_FISCAL_iCFEncerrar_ECF_Daruma: TFR_FISCAL_iCFEncerrar_ECF_Daruma
  Left = 275
  Top = 185
  Caption = 'M'#233'todo iCFEncerrar_ECF_Daruma'
  ClientHeight = 187
  ClientWidth = 451
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
    Top = 40
    Width = 106
    Height = 13
    Caption = 'Tipo Cupom Adicional:'
  end
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 116
    Height = 13
    Caption = 'Mensagem Promocional:'
  end
  object cmb_TipoCupomAdic: TComboBox
    Left = 32
    Top = 56
    Width = 257
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = '0 - N'#227'o Imprime Cupom Adicional'
    Items.Strings = (
      '0 - N'#227'o Imprime Cupom Adicional'
      '1 - Imprime Cupom Adicional Simplificado'
      '2 - Imprime Cupom Adicional Detalhado'
      '3 - Imprime Cupom Adicional DLL')
  end
  object Edt_Mensagem_Promocional: TEdit
    Left = 32
    Top = 104
    Width = 377
    Height = 21
    TabOrder = 1
    Text = 'Obrigado e volte sempre!!'
  end
  object BT_ENVIAR: TButton
    Left = 229
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 333
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
