object FR_FISCAL_iCNFAbrirPadrao_ECF_Daruma: TFR_FISCAL_iCNFAbrirPadrao_ECF_Daruma
  Left = 675
  Top = 182
  Width = 343
  Height = 195
  Caption = 'M'#233'todo iCNFAbrirPadrao_ECF_Daruma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 36
    Top = 32
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label6: TLabel
    Left = 26
    Top = 62
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label7: TLabel
    Left = 10
    Top = 96
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Edt_CPF: TEdit
    Left = 63
    Top = 24
    Width = 232
    Height = 21
    TabOrder = 0
    Text = '123.123.123-99'
  end
  object Edt_Nome: TEdit
    Left = 63
    Top = 56
    Width = 232
    Height = 21
    TabOrder = 1
    Text = 'Daruma Developer Community'
  end
  object Edt_Endereco: TEdit
    Left = 63
    Top = 88
    Width = 232
    Height = 21
    TabOrder = 2
    Text = 
      'Av. Shishima Hifumi, 2911. 4 andar - Sala. 406  - S'#227'o Jos'#233' dos C' +
      'ampos - S'#227'o Paulo'
  end
  object BT_ENVIAR: TButton
    Left = 139
    Top = 108
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 3
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 219
    Top = 108
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
  end
end
