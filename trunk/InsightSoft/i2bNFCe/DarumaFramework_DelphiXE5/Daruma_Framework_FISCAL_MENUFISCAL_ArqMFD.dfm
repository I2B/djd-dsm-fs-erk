object FR_FISCAL_MENUFISCAL_ArqMFD: TFR_FISCAL_MENUFISCAL_ArqMFD
  Left = 455
  Top = 168
  Caption = 'MENU FISCAL Arq. MFD'
  ClientHeight = 273
  ClientWidth = 335
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
    Left = 16
    Top = 24
    Width = 297
    Height = 89
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
      Top = 28
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
      Top = 29
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
      Top = 30
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
  end
  object CBX_Tipo: TComboBox
    Left = 25
    Top = 67
    Width = 72
    Height = 21
    TabOrder = 1
    Text = 'DATAM'
    OnClick = CBX_TipoClick
    Items.Strings = (
      'COO'
      'DATAM'
      '')
  end
  object DTP_DataInicial: TDateTimePicker
    Left = 103
    Top = 67
    Width = 96
    Height = 21
    Date = 40493.445491215280000000
    Time = 40493.445491215280000000
    TabOrder = 2
  end
  object DTP_DataFinal: TDateTimePicker
    Left = 207
    Top = 67
    Width = 94
    Height = 21
    Date = 40493.445543518520000000
    Time = 40493.445543518520000000
    TabOrder = 3
  end
  object BTN_GerarRelatorio: TButton
    Left = 137
    Top = 227
    Width = 80
    Height = 25
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 4
    OnClick = BTN_GerarRelatorioClick
  end
  object BT_FECHAR: TButton
    Left = 231
    Top = 226
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FECHARClick
  end
  object EDT_Inicial: TEdit
    Left = 102
    Top = 67
    Width = 94
    Height = 21
    TabOrder = 6
    Visible = False
  end
  object EDT_Final: TEdit
    Left = 206
    Top = 68
    Width = 94
    Height = 21
    TabOrder = 7
    Visible = False
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 135
    Width = 297
    Height = 82
    Caption = 'Gravar Arquivo em: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
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
    object Edt_DestinoArq_Atocotepe: TEdit
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
    object BT_Procura_DestinoArqAtocotepe: TButton
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
      OnClick = BT_Procura_DestinoArqAtocotepeClick
    end
  end
  object DLG_SelecionaDiretorio: TOpenDialog
    Left = 97
    Top = 221
  end
end
