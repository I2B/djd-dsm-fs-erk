object FR_DUAL_menuExemplo4_comForumulario: TFR_DUAL_menuExemplo4_comForumulario
  Left = 401
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Exemplo de Impress'#227'o utilizando Formulario (Exemplo4)          D' +
    'aruma DDC'
  ClientHeight = 321
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LB_NomeEmpresa: TLabel
    Left = 24
    Top = 16
    Width = 90
    Height = 13
    Caption = 'Nome da Empresa:'
  end
  object LB_Endereco_Empresa: TLabel
    Left = 24
    Top = 40
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object LB_Fone_Empresa: TLabel
    Left = 24
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Fones:'
  end
  object LB_Pedido_N: TLabel
    Left = 232
    Top = 64
    Width = 51
    Height = 13
    Caption = 'Pedido N'#186':'
  end
  object LB_Data: TLabel
    Left = 391
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object LB_Tema_Mensagem: TLabel
    Left = 24
    Top = 104
    Width = 100
    Height = 13
    Caption = 'Tema da Mensagem:'
  end
  object LB_Titulo_Mensagem: TLabel
    Left = 272
    Top = 104
    Width = 99
    Height = 13
    Caption = 'Titulo da Mensagem:'
  end
  object LB_Valor_Mensagem: TLabel
    Left = 24
    Top = 136
    Width = 114
    Height = 13
    Caption = 'Valor da Mensagem R$:'
  end
  object LB_Forma_Cobranca: TLabel
    Left = 249
    Top = 136
    Width = 96
    Height = 13
    Caption = 'Forma de Cobran'#231'a:'
  end
  object LB_Cliente: TLabel
    Left = 24
    Top = 168
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object LB_Fone_Res: TLabel
    Left = 24
    Top = 200
    Width = 49
    Height = 13
    Caption = 'Fone Res:'
  end
  object LB_Celular: TLabel
    Left = 176
    Top = 200
    Width = 35
    Height = 13
    Caption = 'Celular:'
  end
  object LB_Fone_Com: TLabel
    Left = 330
    Top = 200
    Width = 51
    Height = 13
    Caption = 'Fone Com:'
  end
  object LB_MensagemPromocional: TLabel
    Left = 24
    Top = 224
    Width = 116
    Height = 13
    Caption = 'Mensagem Promocional:'
  end
  object LB_Hora: TLabel
    Left = 24
    Top = 256
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object BT_Fechar: TButton
    Left = 416
    Top = 288
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BT_FecharClick
  end
  object BT_Enviar: TButton
    Left = 416
    Top = 256
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object EB_Nome_Empresa: TEdit
    Left = 120
    Top = 16
    Width = 376
    Height = 21
    TabOrder = 2
    Text = 'Daruma Devolper Community'
  end
  object EB_Endereco_Empresa: TEdit
    Left = 80
    Top = 40
    Width = 416
    Height = 21
    TabOrder = 3
    Text = 'Avenida Paulista, 1776 - 16 Andar'
  end
  object EB_Fone_Empresa: TEdit
    Left = 64
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 4
    Text = '11-31464900'
  end
  object EB_Numero_Pedido: TEdit
    Left = 306
    Top = 64
    Width = 81
    Height = 21
    TabOrder = 5
    Text = '0541'
  end
  object EB_Data_Pedido: TEdit
    Left = 431
    Top = 64
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '05/02/2009'
  end
  object EB_Tema_Mensagem: TEdit
    Left = 136
    Top = 104
    Width = 97
    Height = 21
    TabOrder = 7
    Text = 'Desenvolvimento'
  end
  object EB_Titulo_Mensagem: TEdit
    Left = 376
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Exemplo Delphi!'
  end
  object EB_Valor_Mensagem: TEdit
    Left = 144
    Top = 136
    Width = 73
    Height = 21
    TabOrder = 9
    Text = '5,00'
  end
  object EB_Forma_Cobranca: TEdit
    Left = 353
    Top = 136
    Width = 145
    Height = 21
    TabOrder = 10
    Text = 'Boleto'
  end
  object EB_Cliente: TEdit
    Left = 64
    Top = 160
    Width = 434
    Height = 21
    TabOrder = 11
    Text = 'Sucesso Beatriz Silva'
  end
  object EB_Fone_Res: TEdit
    Left = 80
    Top = 192
    Width = 81
    Height = 21
    TabOrder = 12
    Text = '11-31464900'
  end
  object EB_Celular: TEdit
    Left = 216
    Top = 192
    Width = 81
    Height = 21
    TabOrder = 13
    Text = '9923-9281'
  end
  object EB_Fone_Com: TEdit
    Left = 386
    Top = 192
    Width = 113
    Height = 21
    TabOrder = 14
    Text = '11-31464900'
  end
  object EB_Mensagem_Promo: TEdit
    Left = 152
    Top = 224
    Width = 345
    Height = 21
    TabOrder = 15
    Text = 'Agradecemos a Prefer'#234'ncia!!! (www.desenvolvedoresdaruma.com.br)'
  end
  object EB_Hora: TEdit
    Left = 56
    Top = 256
    Width = 57
    Height = 21
    TabOrder = 16
    Text = '16:55'
  end
  object BT_Limpar: TButton
    Left = 313
    Top = 288
    Width = 88
    Height = 25
    Caption = 'Limpar Campos'
    TabOrder = 17
    OnClick = BT_LimparClick
  end
  object TM_Exemplo4: TTimer
    OnTimer = TM_Exemplo4Timer
    Left = 24
    Top = 288
  end
end
