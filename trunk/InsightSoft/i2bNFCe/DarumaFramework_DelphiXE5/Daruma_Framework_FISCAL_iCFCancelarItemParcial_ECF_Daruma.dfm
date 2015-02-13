object FR_FISCAL_iCFCancelarItemParcial_ECF_Daruma: TFR_FISCAL_iCFCancelarItemParcial_ECF_Daruma
  Left = 192
  Top = 122
  Caption = 'M'#233'todo iCFCancelarItemParcial_ECF_Daruma'
  ClientHeight = 128
  ClientWidth = 371
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
    Left = 80
    Top = 32
    Width = 63
    Height = 13
    Caption = 'N'#250'mero Item:'
  end
  object Label2: TLabel
    Left = 85
    Top = 64
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
  end
  object Edt_Numero_Item: TEdit
    Left = 152
    Top = 24
    Width = 41
    Height = 21
    TabOrder = 0
    Text = '001'
  end
  object Edt_Quantidade: TEdit
    Left = 152
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1,000'
  end
  object BT_ENVIAR: TButton
    Left = 115
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 203
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
