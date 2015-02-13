object FR_FISCAL_iCNFCancelarItem_ECF_Daruma: TFR_FISCAL_iCNFCancelarItem_ECF_Daruma
  Left = 339
  Top = 124
  Caption = 'M'#233'todo iCNFCancelarItem_ECF_Daruma'
  ClientHeight = 145
  ClientWidth = 386
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
    Left = 67
    Top = 42
    Width = 66
    Height = 13
    Caption = 'N'#250'mero Item: '
  end
  object Edt_Numero_Item: TEdit
    Left = 139
    Top = 34
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '001'
  end
  object BT_ENVIAR: TButton
    Left = 99
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 187
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
