object FR_FISCAL_iCFEfetuarPagamentoFormatado_ECF_Daruma: TFR_FISCAL_iCFEfetuarPagamentoFormatado_ECF_Daruma
  Left = 303
  Top = 284
  Caption = 'M'#233'todo iCFEfetuarPagamentoFormatado_ECF_Daruma'
  ClientHeight = 138
  ClientWidth = 408
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
    Left = 52
    Top = 32
    Width = 63
    Height = 13
    Caption = 'Forma Pagto:'
  end
  object Label2: TLabel
    Left = 85
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Edt_Forma_Pagamento: TEdit
    Left = 124
    Top = 32
    Width = 201
    Height = 21
    TabOrder = 0
    Text = 'Dinheiro'
  end
  object Edt_Valor: TEdit
    Left = 124
    Top = 64
    Width = 161
    Height = 21
    TabOrder = 1
    Text = '0,10'
  end
  object BT_ENVIAR: TButton
    Left = 160
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 248
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
