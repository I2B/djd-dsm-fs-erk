object FR_FISCAL_iCFVenderResumido_ECF_Daruma: TFR_FISCAL_iCFVenderResumido_ECF_Daruma
  Left = 192
  Top = 122
  Caption = 'M'#233'todo iCFVenderResumido_ECF_Daruma'
  ClientHeight = 185
  ClientWidth = 442
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
    Left = 72
    Top = 32
    Width = 43
    Height = 13
    Caption = 'Al'#237'quota:'
  end
  object Label3: TLabel
    Left = 48
    Top = 64
    Width = 66
    Height = 13
    Caption = 'Valor Unit'#225'rio:'
  end
  object Label6: TLabel
    Left = 56
    Top = 96
    Width = 59
    Height = 13
    Caption = 'C'#243'digo Item:'
  end
  object Label8: TLabel
    Left = 64
    Top = 128
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Edt_Aliquota: TEdit
    Left = 120
    Top = 24
    Width = 33
    Height = 21
    TabOrder = 0
    Text = 'I1'
  end
  object Edt_ValorUnitario: TEdit
    Left = 120
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0,10'
  end
  object Edt_Codigo_Item: TEdit
    Left = 120
    Top = 88
    Width = 153
    Height = 21
    TabOrder = 2
    Text = '7896230301146'
  end
  object Edt_Descricao: TEdit
    Left = 120
    Top = 120
    Width = 295
    Height = 21
    TabOrder = 3
    Text = 'Bolacha'
  end
  object BT_ENVIAR: TButton
    Left = 248
    Top = 148
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 338
    Top = 148
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FECHARClick
  end
end
