object FR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework: TFR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework
  Left = 440
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'M'#233'todo regRetornaValorChave_DarumaFramework'
  ClientHeight = 164
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LB_Produto: TLabel
    Left = 8
    Top = 16
    Width = 192
    Height = 13
    Caption = 'Informe abaixo qual produto ira trabalhar:'
  end
  object LB_Chave: TLabel
    Left = 8
    Top = 64
    Width = 270
    Height = 13
    Caption = 'Informe a chave no qual gostaria de verificar o conteudo:'
  end
  object LB_Valor: TLabel
    Left = 8
    Top = 112
    Width = 77
    Height = 13
    Caption = 'Valor resgatado:'
  end
  object EB_Produto: TEdit
    Left = 8
    Top = 32
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object EB_Chave: TEdit
    Left = 8
    Top = 80
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object EB_Valor: TEdit
    Left = 8
    Top = 128
    Width = 105
    Height = 21
    TabOrder = 2
  end
  object GB_NomeProduto: TGroupBox
    Left = 312
    Top = 0
    Width = 193
    Height = 161
    Caption = 'Nome dos Produtos:'
    TabOrder = 3
    object LB_TA2000: TLabel
      Left = 8
      Top = 40
      Width = 152
      Height = 13
      Caption = 'TA2000 - MiniTerminais TA2000'
    end
    object LB_DUAL: TLabel
      Left = 8
      Top = 64
      Width = 116
      Height = 13
      Caption = 'DUAL - Mini-Impressoras'
    end
    object LB_Modem: TLabel
      Left = 8
      Top = 88
      Width = 154
      Height = 13
      Caption = 'MODEM - Modems MIN100/200'
    end
    object LB_ECF: TLabel
      Left = 8
      Top = 112
      Width = 131
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = 'FS600 - Impressoras Fiscais'
      ParentBiDiMode = False
    end
  end
  object BT_Enviar: TButton
    Left = 136
    Top = 128
    Width = 73
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 224
    Top = 128
    Width = 73
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FecharClick
  end
end
