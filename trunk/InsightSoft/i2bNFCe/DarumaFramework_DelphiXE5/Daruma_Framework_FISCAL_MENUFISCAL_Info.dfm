object FR_FISCAL_MENU_FISCAL_Info: TFR_FISCAL_MENU_FISCAL_Info
  Left = 261
  Top = 294
  Width = 588
  Height = 314
  Caption = 'MENU FISCAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 16
    Top = 24
    Width = 545
    Height = 209
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Ol'#225' Desenvolvedor Daruma!!!'
      ''
      'Para montagem dessa arquivo  deve obter as informa'#231#245'es '
      'armazenadas no Banco de Dados. Exemplo layout arquivo'
      'acesse: www.desenvolvedoresdaruma.com.br - PAF-ECF!!'
      ''
      'Liga'#231#227'o Gratuita: 0800 7703320')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object BT_FECHAR: TButton
    Left = 479
    Top = 242
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FECHARClick
  end
end
