object FR_FISCAL_rGerarMFD_ECF_Daruma: TFR_FISCAL_rGerarMFD_ECF_Daruma
  Left = 0
  Top = 0
  Caption = 'rGerarMFD_ECF_Daruma'
  ClientHeight = 233
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 9
    Width = 297
    Height = 80
    Caption = 'Intervalo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 9
      Top = 20
      Width = 19
      Height = 13
      Caption = 'Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LBL_IntervaloInicial: TLabel
      Left = 88
      Top = 21
      Width = 30
      Height = 13
      Caption = 'Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LBL_IntervaloFinal: TLabel
      Left = 190
      Top = 22
      Width = 25
      Height = 13
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTP_DataInicial: TDateTimePicker
      Left = 86
      Top = 36
      Width = 96
      Height = 21
      Date = 40544.445491215280000000
      Time = 40544.445491215280000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP_DataFinal: TDateTimePicker
      Left = 190
      Top = 36
      Width = 94
      Height = 21
      Date = 40908.445543518520000000
      Time = 40908.445543518520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object CBX_Tipo: TComboBox
    Left = 17
    Top = 45
    Width = 72
    Height = 21
    TabOrder = 1
    Text = 'DATAM'
    Items.Strings = (
      'COO'
      'DATAM'
      '')
  end
  object EDT_Inicial: TEdit
    Left = 94
    Top = 43
    Width = 94
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object EDT_Final: TEdit
    Left = 197
    Top = 44
    Width = 94
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 94
    Width = 297
    Height = 75
    Caption = 'Gravar Arquivo em: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 92
      Height = 13
      Caption = 'Destino do arquivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edt_DestinoArq: TEdit
      Left = 8
      Top = 40
      Width = 241
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BT_Procura_DestinoArq: TButton
      Left = 251
      Top = 41
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
      OnClick = BT_Procura_DestinoArqClick
    end
  end
  object BT_FECHAR: TButton
    Left = 222
    Top = 178
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FECHARClick
  end
  object BT_ENVIAR: TButton
    Left = 135
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 6
    OnClick = BT_ENVIARClick
  end
  object DLG_SelecionaDiretorio: TOpenDialog
    Left = 104
    Top = 175
  end
  object Timer1: TTimer
    Top = 184
  end
end
