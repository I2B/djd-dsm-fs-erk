object FR_FISCAL_iCFBPVender_ECF_Daruma: TFR_FISCAL_iCFBPVender_ECF_Daruma
  Left = 339
  Top = 124
  Caption = 'M'#233'todo iCFBPVender_ECF_Daruma'
  ClientHeight = 229
  ClientWidth = 405
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
    Top = 40
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label2: TLabel
    Left = 56
    Top = 64
    Width = 92
    Height = 13
    Caption = 'Situa'#231#227'o Tributaria:'
  end
  object Label3: TLabel
    Left = 120
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object TLabel
    Left = 24
    Top = 112
    Width = 127
    Height = 13
    Caption = 'Tipo Acrescimo/Desconto:'
  end
  object Label7: TLabel
    Left = 24
    Top = 138
    Width = 131
    Height = 13
    Caption = 'Valor  Acrescimo Desconto:'
  end
  object BT_Enviar: TButton
    Left = 200
    Top = 179
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 295
    Top = 179
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object Edt_Descricao: TEdit
    Left = 160
    Top = 32
    Width = 233
    Height = 21
    TabOrder = 2
    Text = 'Bagagem'
  end
  object Edt_Situacao_Tributaria: TEdit
    Left = 160
    Top = 56
    Width = 40
    Height = 21
    TabOrder = 3
    Text = 'II'
  end
  object Edt_Valor: TEdit
    Left = 160
    Top = 80
    Width = 96
    Height = 21
    TabOrder = 4
    Text = '5,00'
  end
  object Edt_Valor_Acrescimo_Desconto: TEdit
    Left = 160
    Top = 132
    Width = 145
    Height = 21
    TabOrder = 5
    Text = '0,10'
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 160
    Top = 105
    Width = 44
    Height = 21
    ItemIndex = 0
    TabOrder = 6
    Text = 'D%'
    Items.Strings = (
      'D%'
      'D$'
      'A%'
      'A$')
  end
end
