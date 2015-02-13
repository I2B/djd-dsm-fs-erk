object FR_FISCAL_Teste_Consumo_MFD: TFR_FISCAL_Teste_Consumo_MFD
  Left = 192
  Top = 124
  Caption = 'TESTE DE CONSUMO MFD'
  ClientHeight = 583
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LB_MFDPERCENT: TLabel
    Left = 20
    Top = 437
    Width = 148
    Height = 20
    Caption = 'MFD em % : 00,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 20
    Top = 525
    Width = 133
    Height = 20
    Caption = 'MFD em Bytes : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LB_MFDBYTES: TLabel
    Left = 156
    Top = 525
    Width = 141
    Height = 20
    Caption = '000000000 Bytes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 340
    Top = 101
    Width = 3
    Height = 13
  end
  object Label10: TLabel
    Left = 716
    Top = 53
    Width = 54
    Height = 13
    Caption = 'Log Codigo'
  end
  object Label11: TLabel
    Left = 844
    Top = 53
    Width = 69
    Height = 13
    Caption = 'Log Descricao'
  end
  object Label12: TLabel
    Left = 412
    Top = 53
    Width = 60
    Height = 13
    Caption = 'Status Envio'
  end
  object Label13: TLabel
    Left = 180
    Top = 437
    Width = 83
    Height = 20
    Caption = 'Dispon'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 20
    Top = 469
    Width = 57
    Height = 20
    Caption = 'M'#237'nimo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 900
    Top = 469
    Width = 61
    Height = 20
    Caption = 'M'#225'ximo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 21
    Width = 259
    Height = 20
    Caption = 'TESTE DE CONSUMO DE MFD:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PG_MFDPERCENT: TProgressBar
    Left = 20
    Top = 493
    Width = 945
    Height = 25
    Min = 80
    Position = 80
    TabOrder = 0
  end
  object LB_StatusEnvio: TListBox
    Left = 412
    Top = 77
    Width = 289
    Height = 289
    ItemHeight = 13
    TabOrder = 1
  end
  object CH_ReenviarLog: TCheckBox
    Left = 524
    Top = 373
    Width = 97
    Height = 17
    Hint = 'Clique aqui para reenviar o conte'#250'do do log'
    Caption = 'Reenviar Log'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object BT_Recalcular: TButton
    Left = 20
    Top = 549
    Width = 89
    Height = 25
    Hint = 'Clique aqui para recalcular a quantidade de MFD dispon'#237'vel'
    Caption = 'Recalcular'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BT_RecalcularClick
  end
  object LB_LogCodigo: TListBox
    Left = 716
    Top = 77
    Width = 121
    Height = 289
    ItemHeight = 13
    TabOrder = 4
  end
  object LB_LogDescricao: TListBox
    Left = 846
    Top = 77
    Width = 118
    Height = 289
    ItemHeight = 13
    TabOrder = 5
  end
  object BT_LimparListBox: TButton
    Left = 412
    Top = 373
    Width = 89
    Height = 25
    Caption = 'Limpar List Box'
    TabOrder = 6
    OnClick = BT_LimparListBoxClick
  end
  object Button2: TButton
    Left = 884
    Top = 549
    Width = 83
    Height = 25
    Caption = 'Fechar'
    TabOrder = 7
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 20
    Top = 205
    Width = 377
    Height = 161
    Caption = 'Cupom Fiscal'
    TabOrder = 8
    object Label1: TLabel
      Left = 8
      Top = 44
      Width = 144
      Height = 13
      Caption = 'Quantos Cupons Voc'#234' deseja:'
    end
    object Label2: TLabel
      Left = 8
      Top = 20
      Width = 212
      Height = 13
      Caption = 'Quantos Itens Voc'#234' deseja em Cada Cupom:'
    end
    object TX_Cupons: TEdit
      Left = 168
      Top = 44
      Width = 193
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object TX_Itens: TEdit
      Left = 232
      Top = 20
      Width = 129
      Height = 21
      TabOrder = 1
      Text = '10'
    end
    object Enviar: TButton
      Left = 272
      Top = 72
      Width = 89
      Height = 25
      Caption = 'Imprime Cupon(s)'
      TabOrder = 2
      OnClick = EnviarClick
    end
    object PerguntarStatusCupom: TCheckBox
      Left = 8
      Top = 127
      Width = 185
      Height = 17
      Hint = 'Clique aqui para reenviar o conte'#250'do do log'
      Caption = 'Perguntar Status Cupom (cupom)'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
    object PerguntarGT: TCheckBox
      Left = 8
      Top = 111
      Width = 129
      Height = 17
      Hint = 'Clique aqui para reenviar o conte'#250'do do log'
      Caption = 'Perguntar GT (Cupom)'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
    end
    object PerguntarSubTotal: TCheckBox
      Left = 8
      Top = 95
      Width = 185
      Height = 17
      Hint = 'Clique aqui para reenviar o conte'#250'do do log'
      Caption = 'Perguntar SubTotal (item)'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
    end
    object PerguntarLigada: TCheckBox
      Left = 8
      Top = 79
      Width = 185
      Height = 17
      Hint = 'Clique aqui para reenviar o conte'#250'do do log'
      Caption = 'Perguntar Impressora Ligada (item)'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 6
    end
  end
  object BT_LimparLogs: TButton
    Left = 804
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Limpar Logs'
    TabOrder = 9
    OnClick = BT_LimparLogsClick
  end
  object GroupBox2: TGroupBox
    Left = 20
    Top = 61
    Width = 385
    Height = 121
    Caption = 'Parametros para o Teste'
    TabOrder = 10
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 182
      Height = 13
      Caption = 'Letras Aleatorias da Descri'#231'ao do Item'
    end
    object Label6: TLabel
      Left = 8
      Top = 40
      Width = 115
      Height = 13
      Caption = 'Codigo do Item Aleatorio'
    end
    object Label7: TLabel
      Left = 8
      Top = 64
      Width = 151
      Height = 13
      Caption = 'Quantidade de Letras Aleatorias'
    end
    object Label9: TLabel
      Left = 8
      Top = 92
      Width = 156
      Height = 13
      Caption = 'Quantidade de Digitos no Codigo'
    end
    object TX_DescricaoAleatoria: TEdit
      Left = 192
      Top = 16
      Width = 185
      Height = 21
      TabOrder = 0
      Text = 'ABCDEFGHIJKLMNOPQRSTUVXZ'
    end
    object TX_CodigoAleatorio: TEdit
      Left = 128
      Top = 40
      Width = 249
      Height = 21
      TabOrder = 1
      Text = '1234567890123'
    end
    object TX_QtdLetraAleatoria: TEdit
      Left = 160
      Top = 64
      Width = 217
      Height = 21
      TabOrder = 2
      Text = '10'
    end
    object TX_QtdDigitoAleatorio: TEdit
      Left = 176
      Top = 92
      Width = 201
      Height = 21
      TabOrder = 3
      Text = '13'
    end
  end
end
