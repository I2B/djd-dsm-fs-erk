object FR_FISCAL_confProgramarOperador_ECF_Daruma: TFR_FISCAL_confProgramarOperador_ECF_Daruma
  Left = 192
  Top = 124
  Caption = 'M'#233'todo confProgramarOperador_ECF_Daruma'
  ClientHeight = 136
  ClientWidth = 377
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
    Left = 64
    Top = 32
    Width = 126
    Height = 13
    Caption = 'Identifica'#231#227'o do Operador:'
  end
  object Edt_Identif_Operador: TEdit
    Left = 64
    Top = 48
    Width = 225
    Height = 21
    MaxLength = 20
    TabOrder = 0
    Text = 'Operador 4 - Turno: A'
  end
  object BT_ENVIAR: TButton
    Left = 144
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 216
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
