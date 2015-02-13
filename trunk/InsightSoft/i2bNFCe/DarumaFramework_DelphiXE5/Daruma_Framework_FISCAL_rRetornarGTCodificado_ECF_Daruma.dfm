object FR_FISCAL_rRetornarGTCodificado_ECF_Daruma: TFR_FISCAL_rRetornarGTCodificado_ECF_Daruma
  Left = 439
  Top = 351
  Caption = 'M'#233'todo rRetornarGTCodificado_ECF_Daruma'
  ClientHeight = 124
  ClientWidth = 492
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
    Width = 112
    Height = 13
    Caption = 'Retorna GT Codificado:'
  end
  object Edt_GTCodificado: TEdit
    Left = 24
    Top = 48
    Width = 457
    Height = 21
    TabOrder = 0
  end
  object BT_ENVIAR: TButton
    Left = 309
    Top = 76
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 405
    Top = 76
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
