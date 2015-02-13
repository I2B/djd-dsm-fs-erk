object FR_MODEM_eApagarSMS: TFR_MODEM_eApagarSMS
  Left = 380
  Top = 288
  Caption = 'M'#233'todo eApagarSms_MODEM_DarumaFramework'
  ClientHeight = 134
  ClientWidth = 307
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
  object LB_NumeroSMS: TLabel
    Left = 8
    Top = 24
    Width = 182
    Height = 13
    Caption = 'Numero da Mensagem a ser Apagada:'
  end
  object LB_RespostaModem: TLabel
    Left = 8
    Top = 88
    Width = 150
    Height = 13
    Caption = 'Resposta Recebida do Modem:'
  end
  object EB_NumeroSMS: TEdit
    Left = 8
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object BT_Enviar: TButton
    Left = 200
    Top = 48
    Width = 97
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 200
    Top = 103
    Width = 97
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FecharClick
  end
  object ED_Retorno: TEdit
    Left = 8
    Top = 106
    Width = 185
    Height = 21
    Enabled = False
    TabOrder = 3
  end
end
