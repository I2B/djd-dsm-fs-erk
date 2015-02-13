object FR_FISCAL_rLeituraXCustomizada_ECF_Daruma: TFR_FISCAL_rLeituraXCustomizada_ECF_Daruma
  Left = 421
  Top = 280
  Caption = 'M'#233'todo rLeituraXCustomizada_ECF_Daruma'
  ClientHeight = 104
  ClientWidth = 356
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
    Left = 45
    Top = 24
    Width = 131
    Height = 13
    Caption = 'Salvar LeituraX Arquivo em:'
  end
  object Edt_LocalArquivo: TEdit
    Left = 45
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 0
    Text = 'c:\Daruma\'
  end
  object BT_ENVIAR: TButton
    Left = 141
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 223
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
