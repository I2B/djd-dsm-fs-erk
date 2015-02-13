object FR_FISCAL_eRSAAssinarArquivo: TFR_FISCAL_eRSAAssinarArquivo
  Left = 0
  Top = 0
  Caption = 'eRSAAssinarArquivo_ECF_Daruma'
  ClientHeight = 195
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnEnviar: TButton
    Left = 272
    Top = 154
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = btnEnviarClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 449
    Height = 129
    Caption = 'Assinando Arquivos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 168
      Height = 13
      Caption = 'Caminho do arquivo a ser assinado:'
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
      Width = 235
      Height = 13
      Caption = 'Caminho da chave privada gerada pelo puttyGen:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edt_CaminhoArqAssinado: TEdit
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
    object BT_Procura_ArqAssinado: TButton
      Left = 415
      Top = 41
      Width = 25
      Height = 19
      Hint = 'Localiza Arq a ser assinado'
      Caption = '...'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Narkisim'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BT_Procura_ArqAssinadoClick
    end
    object Edt_CaminhoChavePrivada: TEdit
      Left = 8
      Top = 88
      Width = 401
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Btn_chaveprivada: TButton
      Left = 415
      Top = 89
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
      TabOrder = 3
      OnClick = Btn_chaveprivadaClick
    end
  end
  object BT_FECHAR: TButton
    Left = 367
    Top = 154
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
  object DLG_SelecionaDiretorio: TOpenDialog
    Left = 16
    Top = 159
  end
end
