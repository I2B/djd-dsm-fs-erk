object FR_FISCAL_iCCDAbrirSimplificado_ECF_Daruma: TFR_FISCAL_iCCDAbrirSimplificado_ECF_Daruma
  Left = 243
  Top = 268
  Caption = 'M'#233'todo iCCDAbrirSimplificado_ECF_Daruma'
  ClientHeight = 194
  ClientWidth = 384
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
    Left = 15
    Top = 32
    Width = 89
    Height = 13
    Caption = 'Forma Pagamento:'
  end
  object Label2: TLabel
    Left = 60
    Top = 64
    Width = 44
    Height = 13
    Caption = 'Parcelas:'
  end
  object Label3: TLabel
    Left = 47
    Top = 96
    Width = 59
    Height = 13
    Caption = 'Doc.Origem:'
  end
  object Label4: TLabel
    Left = 79
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Edt_FormaPagto: TEdit
    Left = 111
    Top = 24
    Width = 232
    Height = 21
    TabOrder = 0
    Text = 'Cartao'
  end
  object Edt_Parcelas: TEdit
    Left = 111
    Top = 56
    Width = 232
    Height = 21
    TabOrder = 1
    Text = '02'
  end
  object Edt_DocOrigem: TEdit
    Left = 111
    Top = 88
    Width = 232
    Height = 21
    TabOrder = 2
    Text = '999999'
  end
  object Edt_Valor: TEdit
    Left = 111
    Top = 120
    Width = 232
    Height = 21
    TabOrder = 3
    Text = '1,00'
  end
  object BT_ENVIAR: TButton
    Left = 187
    Top = 156
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 267
    Top = 156
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FECHARClick
  end
end
