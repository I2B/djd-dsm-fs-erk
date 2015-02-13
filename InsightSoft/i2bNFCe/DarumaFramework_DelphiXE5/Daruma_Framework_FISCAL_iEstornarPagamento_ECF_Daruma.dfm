object FR_FISCAL_iEstornarPagamento_ECF_Daruma: TFR_FISCAL_iEstornarPagamento_ECF_Daruma
  Left = 255
  Top = 192
  Caption = 'M'#233'todo iEstornarPagamento_ECF_Daruma'
  ClientHeight = 238
  ClientWidth = 451
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
    Left = 14
    Top = 16
    Width = 130
    Height = 13
    Caption = 'Forma pgto a Estornar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 127
    Height = 13
    Caption = 'Forma Pgto Efetivado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 34
    Height = 13
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 157
    Width = 97
    Height = 13
    Caption = 'Mensagem Livre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edt_FormaPagtoEstornar: TEdit
    Left = 14
    Top = 32
    Width = 171
    Height = 21
    TabOrder = 0
    Text = 'Dinheiro'
  end
  object Edt_FormaPgtoEfetivado: TEdit
    Left = 16
    Top = 80
    Width = 169
    Height = 21
    TabOrder = 1
    Text = 'Cheque'
  end
  object Edt_valor: TEdit
    Left = 16
    Top = 128
    Width = 169
    Height = 21
    TabOrder = 2
    Text = '1,00'
  end
  object Edt_MsgLivre: TEdit
    Left = 16
    Top = 173
    Width = 425
    Height = 21
    TabOrder = 3
    Text = 'Forma de pagamento estornada.'
  end
  object BT_FECHAR: TButton
    Left = 219
    Top = 205
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BT_FECHARClick
  end
  object BT_ENVIAR: TButton
    Left = 134
    Top = 204
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 5
    OnClick = BT_ENVIARClick
  end
end
