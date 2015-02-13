object FR_FISCAL_iCFBPAbrir_ECF_Daruma: TFR_FISCAL_iCFBPAbrir_ECF_Daruma
  Left = 339
  Top = 124
  Caption = 'M'#233'todo iCFBPAbrir_ECF_Daruma'
  ClientHeight = 362
  ClientWidth = 517
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
    Left = 91
    Top = 111
    Width = 45
    Height = 13
    Caption = 'Percurso:'
  end
  object Label2: TLabel
    Left = 100
    Top = 62
    Width = 36
    Height = 13
    Caption = 'Origem:'
  end
  object Label3: TLabel
    Left = 98
    Top = 86
    Width = 39
    Height = 13
    Caption = 'Destino:'
  end
  object Label4: TLabel
    Left = 328
    Top = 56
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object Label5: TLabel
    Left = 328
    Top = 80
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object Label6: TLabel
    Left = 256
    Top = 184
    Width = 48
    Height = 13
    Caption = 'Categoria:'
  end
  object Label7: TLabel
    Left = 84
    Top = 160
    Width = 53
    Height = 13
    Caption = 'Plataforma:'
  end
  object Label8: TLabel
    Left = 80
    Top = 184
    Width = 58
    Height = 13
    Caption = 'Modalidade:'
  end
  object Label9: TLabel
    Left = 256
    Top = 152
    Width = 42
    Height = 13
    Caption = 'Poltrona:'
  end
  object Label10: TLabel
    Left = 32
    Top = 206
    Width = 105
    Height = 13
    Caption = 'Data/Hora Embarque:'
  end
  object Label11: TLabel
    Left = 83
    Top = 135
    Width = 54
    Height = 13
    Caption = 'Prestadora:'
  end
  object Label12: TLabel
    Left = 64
    Top = 232
    Width = 74
    Height = 13
    Caption = 'RG Passageiro:'
  end
  object Label13: TLabel
    Left = 56
    Top = 256
    Width = 86
    Height = 13
    Caption = 'Nome Passageiro:'
  end
  object Label14: TLabel
    Left = 37
    Top = 280
    Width = 104
    Height = 13
    Caption = 'Endere'#231'o Passageiro:'
  end
  object BT_Enviar: TButton
    Left = 280
    Top = 304
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 376
    Top = 304
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object Edt_Percurso: TEdit
    Left = 144
    Top = 104
    Width = 321
    Height = 21
    TabOrder = 2
    Text = '740KM'
  end
  object Edt_Origem: TEdit
    Left = 144
    Top = 56
    Width = 177
    Height = 21
    TabOrder = 3
    Text = 'Taubat'#233
  end
  object Edt_ECF_UF_Origem: TEdit
    Left = 360
    Top = 56
    Width = 105
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = 'ECF'
  end
  object Edt_UF: TEdit
    Left = 360
    Top = 80
    Width = 105
    Height = 21
    TabOrder = 5
    Text = 'PR'
  end
  object Edt_Poltrona: TEdit
    Left = 328
    Top = 152
    Width = 137
    Height = 21
    TabOrder = 6
    Text = '13C'
  end
  object Edt_DataHoraEmbarque: TEdit
    Left = 144
    Top = 200
    Width = 105
    Height = 21
    TabOrder = 7
    Text = '25112005190000'
  end
  object Edt_Prestadora: TEdit
    Left = 144
    Top = 128
    Width = 321
    Height = 21
    TabOrder = 8
    Text = 'Itapemirim'
  end
  object Edt_RGPassageiro: TEdit
    Left = 144
    Top = 224
    Width = 321
    Height = 21
    TabOrder = 9
    Text = '72009528'
  end
  object Edt_NomePassageiro: TEdit
    Left = 144
    Top = 248
    Width = 321
    Height = 21
    TabOrder = 10
    Text = 'Jo'#227'o Batista'
  end
  object Edt_Destino: TEdit
    Left = 144
    Top = 80
    Width = 177
    Height = 21
    TabOrder = 11
    Text = 'Foz do Igua'#231'u'
  end
  object Edt_Plataforma: TEdit
    Left = 144
    Top = 152
    Width = 105
    Height = 21
    TabOrder = 12
    Text = 'PT14'
  end
  object Edt_EnderecoPassageiro: TEdit
    Left = 144
    Top = 272
    Width = 321
    Height = 21
    TabOrder = 13
    Text = 'AV Filipinas 590'
  end
  object CMB_Modalidade: TComboBox
    Left = 144
    Top = 176
    Width = 105
    Height = 21
    ItemIndex = 0
    TabOrder = 14
    Text = '1 = Rodovi'#225'rio '
    Items.Strings = (
      '1 = Rodovi'#225'rio '
      '2 = Ferrovi'#225'rio '
      '3 = Hidrovi'#225'rio ')
  end
  object CMB_Categoria: TComboBox
    Left = 328
    Top = 176
    Width = 138
    Height = 21
    ItemIndex = 0
    TabOrder = 15
    Text = '1 = interestadual '
    Items.Strings = (
      '1 = interestadual '
      '2 = intermunicipal '
      '3 = internacional ')
  end
end
