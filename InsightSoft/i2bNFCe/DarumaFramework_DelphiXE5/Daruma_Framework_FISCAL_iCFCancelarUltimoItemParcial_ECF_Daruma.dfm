object FR_FISCAL_iCFCancelarUltimoItemParcial_ECF_Daruma: TFR_FISCAL_iCFCancelarUltimoItemParcial_ECF_Daruma
  Left = 196
  Top = 297
  Caption = 'M'#233'todo iCFCancelarUltimoItemParcial_ECF_Daruma'
  ClientHeight = 114
  ClientWidth = 374
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
  object Label2: TLabel
    Left = 85
    Top = 40
    Width = 58
    Height = 13
    Caption = 'Quantidade:'
  end
  object Edt_Quantidade: TEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1,000'
  end
  object BT_ENVIAR: TButton
    Left = 115
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 203
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
