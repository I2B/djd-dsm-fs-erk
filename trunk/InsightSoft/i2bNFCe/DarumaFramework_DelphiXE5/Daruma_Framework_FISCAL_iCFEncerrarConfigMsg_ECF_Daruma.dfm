object FR_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma: TFR_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma
  Left = 273
  Top = 307
  Caption = 'M'#233'todo iCFEncerrarConfigMsg_ECF_Daruma'
  ClientHeight = 139
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 44
    Width = 116
    Height = 13
    Caption = 'Mensagem Promocional:'
  end
  object Edt_Mensagem_Promocional: TEdit
    Left = 154
    Top = 36
    Width = 377
    Height = 21
    TabOrder = 0
    Text = 'Obrigado e volte sempre!!'
  end
  object BT_ENVIAR: TButton
    Left = 365
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 453
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
