object FR_FISCAL_confProgramarAvancoPapel_ECF_Daruma: TFR_FISCAL_confProgramarAvancoPapel_ECF_Daruma
  Left = 301
  Top = 224
  Caption = 'M'#233'todo confProgramarAvancoPapel_ECF_Daruma'
  ClientHeight = 166
  ClientWidth = 832
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
    Left = 37
    Top = 32
    Width = 206
    Height = 13
    Caption = 'Separa'#231#227'o entre linhas(Em dots de 1/216) :'
  end
  object Label2: TLabel
    Left = 37
    Top = 72
    Width = 205
    Height = 13
    Caption = 'Separa'#231#227'o entre documentos ( em linhas ) :'
  end
  object Label3: TLabel
    Left = 17
    Top = 104
    Width = 224
    Height = 13
    Caption = 'Linha de acionamento da guilhotina (em linhas):'
  end
  object Edt_Separacao_Entre_Linhas: TEdit
    Left = 245
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object RDG_Guilhotina: TRadioGroup
    Left = 388
    Top = 18
    Width = 185
    Height = 97
    Caption = 'Guilhotina:'
    ItemIndex = 0
    Items.Strings = (
      '0 - Guilhotina desabilitada '
      '1 - Guilhotina habilitada ')
    TabOrder = 1
  end
  object RDG_Cliche: TRadioGroup
    Left = 581
    Top = 18
    Width = 233
    Height = 97
    Caption = 'Clich'#234':'
    ItemIndex = 0
    Items.Strings = (
      '0 - Impress'#227'o antecipada do clich'#234
      '1 - Sem impress'#227'o antecipada do clich'#234)
    TabOrder = 2
  end
  object Edt_Separacao_Entre_Documentos: TEdit
    Left = 245
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '5'
  end
  object Edt_Linha_Aciona_Guilhotina: TEdit
    Left = 245
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '5'
  end
  object BT_ENVIAR: TButton
    Left = 651
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 5
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 736
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BT_FECHARClick
  end
end
