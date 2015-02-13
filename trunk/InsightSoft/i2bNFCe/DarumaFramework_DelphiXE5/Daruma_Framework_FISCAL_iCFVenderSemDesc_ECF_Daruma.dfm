object FR_FISCAL_iCFVenderSemDesc_ECF_Daruma: TFR_FISCAL_iCFVenderSemDesc_ECF_Daruma
  Left = 797
  Top = 205
  Caption = 'M'#233'todo iCFVenderSemDesc_ECF_Daruma'
  ClientHeight = 252
  ClientWidth = 429
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
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
  end
  object Label3: TLabel
    Left = 48
    Top = 96
    Width = 66
    Height = 13
    Caption = 'Valor Unit'#225'rio:'
  end
  object Label6: TLabel
    Left = 56
    Top = 128
    Width = 59
    Height = 13
    Caption = 'C'#243'digo Item:'
  end
  object Label7: TLabel
    Left = 32
    Top = 160
    Width = 81
    Height = 13
    Caption = 'Unidade Medida:'
  end
  object Label8: TLabel
    Left = 64
    Top = 192
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
  object Edt_Qtde: TEdit
    Left = 120
    Top = 56
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '1,000'
  end
  object Edt_ValorUnitario: TEdit
    Left = 120
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0,10'
  end
  object Edt_Codigo_Item: TEdit
    Left = 120
    Top = 120
    Width = 153
    Height = 21
    TabOrder = 3
    Text = '7896230301146'
  end
  object Edt_Unidade_Medida: TEdit
    Left = 120
    Top = 152
    Width = 33
    Height = 21
    TabOrder = 4
    Text = 'UN'
  end
  object Edt_Descricao: TEdit
    Left = 118
    Top = 184
    Width = 297
    Height = 21
    TabOrder = 5
    Text = 'Bolacha'
  end
  object BT_ENVIAR: TButton
    Left = 256
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 6
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 340
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 7
    OnClick = BT_FECHARClick
  end
end
