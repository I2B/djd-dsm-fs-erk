object FR_FISCAL_iRGAbrir_ECF_Daruma: TFR_FISCAL_iRGAbrir_ECF_Daruma
  Left = 423
  Top = 207
  Caption = 'M'#233'todo iRGAbrir_ECF_Daruma'
  ClientHeight = 126
  ClientWidth = 376
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
    Top = 43
    Width = 139
    Height = 13
    Caption = 'Nome do Relat'#243'rio Gerencial:'
  end
  object Edt_Nome_Relatorio: TEdit
    Left = 24
    Top = 59
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object BT_ENVIAR: TButton
    Left = 207
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 287
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
