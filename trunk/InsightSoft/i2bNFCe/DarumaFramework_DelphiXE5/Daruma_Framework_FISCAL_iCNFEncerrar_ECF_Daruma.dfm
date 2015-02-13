object FR_FISCAL_iCNFEncerrar_ECF_Daruma: TFR_FISCAL_iCNFEncerrar_ECF_Daruma
  Left = 339
  Top = 124
  Caption = 'M'#233'todo iCNFEncerrar_ECF_Daruma'
  ClientHeight = 139
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 49
    Width = 102
    Height = 13
    Caption = 'Informa'#231#227'o Adicional:'
  end
  object BT_ENVIAR: TButton
    Left = 423
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 508
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FECHARClick
  end
  object Edt_Info_Adicional: TEdit
    Left = 114
    Top = 43
    Width = 469
    Height = 21
    TabOrder = 2
    Text = 
      'Obrigada Volte Sempre!!  DarumaFramework Efetua Forma pagamento ' +
      'com mensagem adicional.'
  end
end
