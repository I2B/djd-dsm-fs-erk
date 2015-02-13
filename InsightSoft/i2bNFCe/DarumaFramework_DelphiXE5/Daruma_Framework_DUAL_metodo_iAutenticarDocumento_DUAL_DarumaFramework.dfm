object FR_DUAL_iAutenticarDocumento_DUAL_DarumaFramework: TFR_DUAL_iAutenticarDocumento_DUAL_DarumaFramework
  Left = 253
  Top = 147
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'M'#233'todo iAutenticarDocumento_DUAL_DarumaFramework                ' +
    '                  Daruma DDC'
  ClientHeight = 220
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LB_LocalEtiqueta: TLabel
    Left = 8
    Top = 32
    Width = 26
    Height = 13
    Caption = 'Local'
  end
  object LB_DocEtiqueta: TLabel
    Left = 112
    Top = 32
    Width = 215
    Height = 13
    Caption = '1(um somente no doc) 0 (no doc e na bobina)'
  end
  object LB_TextoEtiqueta: TLabel
    Left = 8
    Top = 80
    Width = 111
    Height = 13
    Caption = 'Texto da Autenticacao:'
  end
  object LB_TempoEtiqueta: TLabel
    Left = 8
    Top = 128
    Width = 232
    Height = 13
    Caption = 'Tempo de espera para o posicionamento do doc:'
  end
  object LB_SegundosEtiqueta: TLabel
    Left = 280
    Top = 128
    Width = 48
    Height = 13
    Caption = 'Segundos'
  end
  object EB_Local: TEdit
    Left = 88
    Top = 28
    Width = 17
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object EB_Texto: TEdit
    Left = 128
    Top = 76
    Width = 377
    Height = 21
    TabOrder = 1
    Text = '<sn><c>DARUMA AUTENTICA'#199#195'O</c> (D:<dt></dt> H:<hr></hr>)</sn>'
  end
  object EB_TimeOut: TEdit
    Left = 248
    Top = 124
    Width = 25
    Height = 21
    TabOrder = 2
    Text = '10'
  end
  object BT_Enviar: TButton
    Left = 416
    Top = 176
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 3
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 520
    Top = 176
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BT_FecharClick
  end
end
