object FR_FISCAL_iCCDImprimirTexto_ECF_Daruma: TFR_FISCAL_iCCDImprimirTexto_ECF_Daruma
  Left = 205
  Top = 187
  Caption = 'M'#233'todo iCCDImprimirTexto_ECF_Daruma'
  ClientHeight = 297
  ClientWidth = 421
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
    Left = 16
    Top = 40
    Width = 96
    Height = 13
    Caption = 'Texto Comprovante:'
  end
  object MM_Texto_Comprovante: TMemo
    Left = 120
    Top = 40
    Width = 273
    Height = 201
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object BT_ENVIAR: TButton
    Left = 237
    Top = 252
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 317
    Top = 252
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
