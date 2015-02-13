object FR_FISCAL_iCCDAbrir_ECF_Daruma: TFR_FISCAL_iCCDAbrir_ECF_Daruma
  Left = 393
  Top = 218
  Caption = 'M'#233'todo iCDAbrir_ECF_Daruma'
  ClientHeight = 291
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
  object Label5: TLabel
    Left = 84
    Top = 160
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label6: TLabel
    Left = 74
    Top = 190
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label7: TLabel
    Left = 58
    Top = 224
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
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
  object Edt_CPF: TEdit
    Left = 111
    Top = 152
    Width = 232
    Height = 21
    TabOrder = 4
    Text = '123.123.123-99'
  end
  object Edt_Nome: TEdit
    Left = 111
    Top = 184
    Width = 232
    Height = 21
    TabOrder = 5
    Text = 'Daruma Developer Community'
  end
  object Edt_Endereco: TEdit
    Left = 111
    Top = 216
    Width = 232
    Height = 21
    TabOrder = 6
    Text = 
      'Av. Shishima Hifumi, 2911. 4 andar - Sala. 406  - S'#227'o Jos'#233' dos C' +
      'ampos - S'#227'o Paulo'
  end
  object BT_ENVIAR: TButton
    Left = 187
    Top = 252
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 7
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 267
    Top = 252
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 8
    OnClick = BT_FECHARClick
  end
end
