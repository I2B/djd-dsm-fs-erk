object FR_FISCAL_iCFVender_ECF_Daruma: TFR_FISCAL_iCFVender_ECF_Daruma
  Left = 351
  Top = 254
  Caption = 'M'#233'todo iCFVender_ECF_Daruma'
  ClientHeight = 312
  ClientWidth = 456
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
    Left = 96
    Top = 32
    Width = 43
    Height = 13
    Caption = 'Al'#237'quota:'
  end
  object Label2: TLabel
    Left = 80
    Top = 64
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
  end
  object Label3: TLabel
    Left = 72
    Top = 96
    Width = 66
    Height = 13
    Caption = 'Valor Unit'#225'rio:'
  end
  object Label4: TLabel
    Left = 40
    Top = 128
    Width = 99
    Height = 13
    Caption = 'Tipo Desc. / Acresc.'
  end
  object Label5: TLabel
    Left = 40
    Top = 160
    Width = 102
    Height = 13
    Caption = 'Valor Desc. / Acresc.'
  end
  object Label6: TLabel
    Left = 80
    Top = 192
    Width = 59
    Height = 13
    Caption = 'C'#243'digo Item:'
  end
  object Label7: TLabel
    Left = 56
    Top = 224
    Width = 81
    Height = 13
    Caption = 'Unidade Medida:'
  end
  object Label8: TLabel
    Left = 88
    Top = 256
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Edt_Aliquota: TEdit
    Left = 144
    Top = 24
    Width = 33
    Height = 21
    TabOrder = 0
    Text = 'I1'
  end
  object Edt_Qtde: TEdit
    Left = 144
    Top = 56
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '1,000'
  end
  object Edt_ValorUnitario: TEdit
    Left = 144
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0,10'
  end
  object Edt_Valor_Desc_Acresc: TEdit
    Left = 144
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0,00'
  end
  object Edt_Codigo_Item: TEdit
    Left = 144
    Top = 184
    Width = 153
    Height = 21
    TabOrder = 4
    Text = '7896230301146'
  end
  object Edt_Unidade_Medida: TEdit
    Left = 144
    Top = 216
    Width = 33
    Height = 21
    TabOrder = 5
    Text = 'UN'
  end
  object Edt_Descricao: TEdit
    Left = 144
    Top = 248
    Width = 297
    Height = 21
    TabOrder = 6
    Text = 'Bolacha'
  end
  object BT_ENVIAR: TButton
    Left = 280
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 7
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 365
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 8
    OnClick = BT_FECHARClick
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 144
    Top = 117
    Width = 49
    Height = 21
    ItemIndex = 0
    TabOrder = 9
    Text = 'D%'
    Items.Strings = (
      'D%'
      'D$'
      'A%'
      'A$')
  end
end
