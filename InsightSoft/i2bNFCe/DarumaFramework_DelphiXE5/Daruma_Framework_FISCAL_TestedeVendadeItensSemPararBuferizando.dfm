object FR_FISCAL_TestedeVendadeItensSemPararBuferizan: TFR_FISCAL_TestedeVendadeItensSemPararBuferizan
  Left = 406
  Top = 278
  Caption = 'TestedeVendadeItensSemPararBuferizando'
  ClientHeight = 147
  ClientWidth = 381
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
    Left = 20
    Top = 22
    Width = 144
    Height = 13
    Caption = 'Quantos Cupons Voc'#234' deseja:'
  end
  object Label2: TLabel
    Left = 20
    Top = 46
    Width = 212
    Height = 13
    Caption = 'Quantos Itens Voc'#234' deseja em Cada Cupom:'
  end
  object Label3: TLabel
    Left = 20
    Top = 70
    Width = 178
    Height = 13
    Caption = 'Vender O Item em Uma Linha Apenas'
  end
  object BT_Enviar: TButton
    Left = 172
    Top = 102
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 268
    Top = 102
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object TX_Cupons: TEdit
    Left = 204
    Top = 22
    Width = 153
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object TX_Itens: TEdit
    Left = 236
    Top = 46
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '10'
  end
  object TX_Linhas: TEdit
    Left = 204
    Top = 70
    Width = 153
    Height = 21
    TabOrder = 4
    Text = '1'
  end
end
