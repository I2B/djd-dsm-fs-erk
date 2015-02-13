object FR_MODEM_rListarSms: TFR_MODEM_rListarSms
  Left = 336
  Top = 290
  Caption = 'M'#233'todo rListarSms_MODEM_DarumaFramework'
  ClientHeight = 179
  ClientWidth = 371
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
    Left = 40
    Top = 21
    Width = 101
    Height = 13
    Caption = 'Resposta do Modem:'
  end
  object Button1: TButton
    Left = 144
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Limpar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object BT_Listar: TButton
    Left = 40
    Top = 71
    Width = 88
    Height = 25
    Caption = 'Listar'
    TabOrder = 1
    OnClick = BT_ListarClick
  end
  object BT_Fechar: TButton
    Left = 256
    Top = 72
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FecharClick
  end
  object Memo1: TMemo
    Left = 0
    Top = 128
    Width = 369
    Height = 33
    Alignment = taCenter
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsItalic]
    Lines.Strings = (
      'Obs: A lista ser'#225' criada no local especificado pela'
      'chave <localarquivo> do registro do windows.')
    ParentFont = False
    TabOrder = 3
  end
  object ED_Retorno: TEdit
    Left = 40
    Top = 40
    Width = 297
    Height = 21
    TabOrder = 4
  end
end
