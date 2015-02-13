object FR_FISCAL_rCalcularMD5_ECF_Daruma: TFR_FISCAL_rCalcularMD5_ECF_Daruma
  Left = 369
  Top = 306
  Caption = 'M'#233'todo rCalcularMD5_ECF_Daruma'
  ClientHeight = 309
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 9
    Top = 11
    Width = 449
    Height = 251
    Caption = 'Calcular MD5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 212
      Height = 13
      Caption = 'Caminho do arquivo que ser'#225' gerado o MD5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 72
      Width = 172
      Height = 13
      Caption = 'Retorna MD5 Gerado Hexadecimal: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 152
      Width = 133
      Height = 13
      Caption = 'Retorna MD5 Gerado Ascii: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edt_CaminhoArqMD5: TEdit
      Left = 8
      Top = 40
      Width = 401
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BT_ArqMD5: TButton
      Left = 415
      Top = 41
      Width = 25
      Height = 19
      Hint = 'Localiza arquivos calcular MD5'
      Caption = '...'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Narkisim'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BT_ArqMD5Click
    end
    object MM_MD5_ASCII: TMemo
      Left = 8
      Top = 168
      Width = 433
      Height = 57
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'MD5 ASCII'
        '')
      ParentFont = False
      TabOrder = 2
    end
    object MM_MD5_Hexa: TMemo
      Left = 8
      Top = 88
      Width = 433
      Height = 57
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'MD5 Hexadecimal')
      ParentFont = False
      TabOrder = 3
    end
  end
  object BT_ENVIAR: TButton
    Left = 288
    Top = 271
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 375
    Top = 271
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
  object DLG_SelecionaDiretorio: TOpenDialog
    Left = 257
    Top = 268
  end
end
