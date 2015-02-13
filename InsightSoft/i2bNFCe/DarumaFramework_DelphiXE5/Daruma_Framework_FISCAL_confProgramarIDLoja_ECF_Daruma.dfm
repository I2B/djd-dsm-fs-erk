object FR_FISCAL_confProgramarIDLoja_ECF_Daruma: TFR_FISCAL_confProgramarIDLoja_ECF_Daruma
  Left = 470
  Top = 292
  Caption = 'M'#233'todo confProgramarIDLoja_ECF_Daruma'
  ClientHeight = 131
  ClientWidth = 369
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
    Left = 56
    Top = 53
    Width = 102
    Height = 13
    Caption = 'Identifica'#231#227'o da Loja:'
  end
  object Edt_ID_Loja: TEdit
    Left = 164
    Top = 46
    Width = 104
    Height = 21
    MaxLength = 4
    TabOrder = 0
    Text = '23-A'
  end
  object BT_ENVIAR: TButton
    Left = 110
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 195
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
  end
end
