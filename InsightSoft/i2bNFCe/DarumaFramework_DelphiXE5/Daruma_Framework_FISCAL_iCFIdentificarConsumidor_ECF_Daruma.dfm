object FR_FISCAL_iCFIdentificarConsumidor_ECF_Daruma: TFR_FISCAL_iCFIdentificarConsumidor_ECF_Daruma
  Left = 286
  Top = 331
  Caption = 'M'#233'todo iCFIdentificarConsumidor_ECF_Daruma'
  ClientHeight = 179
  ClientWidth = 433
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
    Left = 16
    Top = 16
    Width = 156
    Height = 13
    Caption = 'Informe os dados do consumidor:'
  end
  object Label2: TLabel
    Left = 32
    Top = 120
    Width = 58
    Height = 13
    Caption = 'Documento:'
  end
  object Label3: TLabel
    Left = 56
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label4: TLabel
    Left = 40
    Top = 88
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object EDT_Documento: TEdit
    Left = 96
    Top = 112
    Width = 313
    Height = 21
    TabOrder = 0
    Text = '123.123.123-99'
  end
  object EDT_NOME: TEdit
    Left = 96
    Top = 48
    Width = 313
    Height = 21
    TabOrder = 1
    Text = 'Daruma Developer Community'
  end
  object EDT_ENDERECO: TEdit
    Left = 96
    Top = 80
    Width = 313
    Height = 21
    TabOrder = 2
    Text = 
      'Av. Shishima Hifumi, 2911. 4 andar - Sala. 406  - S'#227'o Jos'#233' dos C' +
      'ampos - S'#227'o Paulo'
  end
  object BT_ENVIAR: TButton
    Left = 248
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 3
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 333
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BT_FECHARClick
  end
end
