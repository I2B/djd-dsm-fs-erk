object FR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma: TFR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma
  Left = 369
  Top = 276
  Caption = 'FR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma'
  ClientHeight = 237
  ClientWidth = 454
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
  object GroupBox1: TGroupBox
    Left = 5
    Top = 6
    Width = 441
    Height = 187
    Caption = 'Testando o eTEF_EsperarArquivo_ECF_Daruma:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 315
      Height = 13
      Caption = '1)  Escolha o diret'#243'rio e nome do Arquivo de Resposta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 82
      Width = 149
      Height = 13
      Caption = '2) Deseja travar Teclado?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 337
      Top = 72
      Width = 62
      Height = 14
      Caption = '(obrigatorio)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 163
      Top = 115
      Width = 62
      Height = 14
      Caption = '(obrigatorio)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 138
      Width = 338
      Height = 14
      Caption = '3) Tempo em espera pelo arquivo de resposta em segundos:'
    end
    object Label10: TLabel
      Left = 143
      Top = 160
      Width = 62
      Height = 14
      Caption = '(obrigatorio)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object edt_pathArquivoTEF: TEdit
      Left = 24
      Top = 48
      Width = 377
      Height = 22
      TabOrder = 0
      Text = 'C:\Tef_Dial\Resp\Intpos.001'
    end
    object Button2: TButton
      Left = 406
      Top = 49
      Width = 25
      Height = 19
      Hint = 'Localize o Arquivo MF'
      Caption = '...'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Narkisim'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object RdgTravarTeclado: TRadioGroup
      Left = 23
      Top = 98
      Width = 138
      Height = 31
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Sim '
        'N'#227'o')
      TabOrder = 2
    end
    object Edt_Tempo: TEdit
      Left = 23
      Top = 155
      Width = 118
      Height = 22
      TabOrder = 3
      Text = '10'
    end
  end
  object Enviar: TButton
    Left = 256
    Top = 200
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = EnviarClick
  end
  object Fechar: TButton
    Left = 352
    Top = 200
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = FecharClick
  end
  object DLG_SelecionaDiretorio: TOpenDialog
    Left = 318
    Top = 338
  end
end
