object FR_FISCAL_rRetornarInformacao_ECF_Daruma: TFR_FISCAL_rRetornarInformacao_ECF_Daruma
  Left = 261
  Top = 220
  Caption = 'M'#233'todo rRetornarInformacao_ECF_Daruma'
  ClientHeight = 312
  ClientWidth = 628
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
    Left = 18
    Top = 32
    Width = 88
    Height = 13
    Caption = #205'ndice Informa'#231#227'o:'
  end
  object Label2: TLabel
    Left = 10
    Top = 53
    Width = 97
    Height = 13
    Caption = 'Retorno Informa'#231#227'o:'
  end
  object Label3: TLabel
    Left = 168
    Top = 32
    Width = 130
    Height = 13
    Caption = 'Tamanho Vari'#225'vel Retorno:'
  end
  object Edt_Indice_Informacao: TEdit
    Left = 112
    Top = 26
    Width = 43
    Height = 21
    TabOrder = 0
    Text = '78'
  end
  object MM_RetornoInformacao: TMemo
    Left = 112
    Top = 56
    Width = 491
    Height = 201
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object BT_ENVIAR: TButton
    Left = 440
    Top = 268
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 528
    Top = 268
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
  object Edt_VariavelRetorno: TEdit
    Left = 304
    Top = 24
    Width = 49
    Height = 21
    TabOrder = 4
    Text = '21'
  end
end
