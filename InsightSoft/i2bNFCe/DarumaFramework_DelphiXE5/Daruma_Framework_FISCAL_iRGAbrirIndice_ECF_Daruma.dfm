object FR_FISCAL_iRGAbrirIndice_ECF_Daruma: TFR_FISCAL_iRGAbrirIndice_ECF_Daruma
  Left = 412
  Top = 263
  Caption = 'M'#233'todo iRGAbrirIndice_ECF_Daruma'
  ClientHeight = 147
  ClientWidth = 281
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
    Width = 125
    Height = 13
    Caption = #205'ndice Relat'#243'rio Gerencial:'
  end
  object Edt_Indice_Relatorio: TEdit
    Left = 152
    Top = 40
    Width = 89
    Height = 21
    TabOrder = 0
    Text = '02'
  end
  object BT_ENVIAR: TButton
    Left = 87
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 167
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
