object FR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma: TFR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma
  Left = 0
  Top = 0
  Caption = 'M'#233'todo rRetornarInformacaoSeparador_ECF_Daruma'
  ClientHeight = 330
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 30
    Width = 91
    Height = 13
    Caption = #205'ndice Informa'#231#227'o:'
  end
  object Label2: TLabel
    Left = 26
    Top = 53
    Width = 101
    Height = 13
    Caption = 'Retorno Informa'#231#227'o:'
  end
  object Label4: TLabel
    Left = 304
    Top = 32
    Width = 88
    Height = 13
    Caption = 'Valor Significativo:'
  end
  object Edt_Indice_Informacao: TEdit
    Left = 128
    Top = 26
    Width = 43
    Height = 21
    TabOrder = 0
    Text = '78'
  end
  object MM_RetornoInformacao: TMemo
    Left = 24
    Top = 72
    Width = 491
    Height = 185
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object BT_ENVIAR: TButton
    Left = 353
    Top = 268
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 433
    Top = 268
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
  object Edt_VSignificativo: TEdit
    Left = 400
    Top = 24
    Width = 49
    Height = 21
    TabOrder = 4
    Text = '1'
  end
end
