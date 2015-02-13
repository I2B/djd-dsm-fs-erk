object FR_FISCAL_rStatusImpressora_ECF_Daruma: TFR_FISCAL_rStatusImpressora_ECF_Daruma
  Left = 407
  Top = 247
  Caption = 'M'#233'todo rStatusImpressora_ECF_Daruma'
  ClientHeight = 165
  ClientWidth = 468
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
    Left = 16
    Top = 16
    Width = 117
    Height = 13
    Caption = 'Status Impressora String:'
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 102
    Height = 13
    Caption = 'Status Impressora Int:'
  end
  object Edt_StatusImp_Str: TEdit
    Left = 16
    Top = 32
    Width = 441
    Height = 21
    TabOrder = 0
  end
  object Edt_StatusImpInt: TEdit
    Left = 16
    Top = 88
    Width = 441
    Height = 21
    TabOrder = 1
  end
  object BT_ENVIAR: TButton
    Left = 296
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Obter Status'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 381
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
