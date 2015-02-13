object FR_DUAL_menuTestes_LoopingStatus: TFR_DUAL_menuTestes_LoopingStatus
  Left = 497
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Verifica'#231#227'o de Looping de Status                                ' +
    '     Daruma DDC'
  ClientHeight = 127
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LB_Impressora: TLabel
    Left = 8
    Top = 24
    Width = 84
    Height = 13
    Caption = 'Status Impressora'
  end
  object EB_Status: TEdit
    Left = 104
    Top = 24
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object BT_Enviar: TButton
    Left = 400
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object BT_Stop: TButton
    Left = 400
    Top = 40
    Width = 89
    Height = 25
    Caption = 'Stop'
    TabOrder = 2
    OnClick = BT_StopClick
  end
  object BT_Fechar: TButton
    Left = 400
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FecharClick
  end
  object TM_Status: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TM_StatusTimer
    Left = 8
    Top = 96
  end
end
