object FR_FISCAL_confCFBPProgramarUF_ECF_Daruma: TFR_FISCAL_confCFBPProgramarUF_ECF_Daruma
  Left = 339
  Top = 124
  Caption = 'M'#233'todo confCFBPProgramarUF_ECF_Daruma'
  ClientHeight = 124
  ClientWidth = 391
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
    Top = 43
    Width = 50
    Height = 13
    Caption = 'Uf Origem:'
  end
  object Edt_Uf_Origem: TEdit
    Left = 121
    Top = 37
    Width = 89
    Height = 21
    TabOrder = 0
    Text = 'RJ'
  end
  object Enviar: TButton
    Left = 120
    Top = 64
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = EnviarClick
  end
  object Fechar: TButton
    Left = 216
    Top = 64
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = FecharClick
  end
end
