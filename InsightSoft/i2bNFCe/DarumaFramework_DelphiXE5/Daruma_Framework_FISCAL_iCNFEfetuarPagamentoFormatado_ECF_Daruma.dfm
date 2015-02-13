object FR_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma: TFR_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma
  Left = 405
  Top = 300
  Caption = 'M'#233'todo iCNFEfetuarPagamentoFormatado_ECF_Daruma'
  ClientHeight = 145
  ClientWidth = 449
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
    Left = 133
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label1: TLabel
    Left = 100
    Top = 32
    Width = 63
    Height = 13
    Caption = 'Forma Pagto:'
  end
  object Edt_Valor: TEdit
    Left = 172
    Top = 64
    Width = 125
    Height = 21
    TabOrder = 0
    Text = '0,10'
  end
  object Edt_Forma_Pagamento: TEdit
    Left = 172
    Top = 32
    Width = 125
    Height = 21
    TabOrder = 1
    Text = 'Dinheiro'
  end
  object BT_ENVIAR: TButton
    Left = 134
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 223
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
