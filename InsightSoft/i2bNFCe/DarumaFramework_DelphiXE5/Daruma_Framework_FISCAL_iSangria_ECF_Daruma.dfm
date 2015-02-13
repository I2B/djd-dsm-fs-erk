object FR_FISCAL_iSangria_ECF_Daruma: TFR_FISCAL_iSangria_ECF_Daruma
  Left = 192
  Top = 122
  Caption = 'M'#233'todo iSangria_ECF_Daruma'
  ClientHeight = 153
  ClientWidth = 320
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
    Left = 48
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 55
    Height = 13
    Caption = 'Mensagem:'
  end
  object Edt_Valor: TEdit
    Left = 80
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1,00'
  end
  object Edt_Mensagem: TEdit
    Left = 80
    Top = 72
    Width = 217
    Height = 21
    TabOrder = 1
    Text = 'Sangria de 1,00 em Cheque'
  end
  object BT_ENVIAR: TButton
    Left = 138
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 220
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
