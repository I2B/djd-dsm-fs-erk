object FR_FISCAL_iMFLer_ECF_Daruma: TFR_FISCAL_iMFLer_ECF_Daruma
  Left = 272
  Top = 214
  Caption = 'M'#233'todo iMFLer_ECF_Daruma'
  ClientHeight = 144
  ClientWidth = 436
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
  object BT_ENVIAR: TButton
    Left = 260
    Top = 108
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 350
    Top = 108
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FECHARClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 17
    Width = 297
    Height = 80
    Caption = 'Intervalo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
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
      Date = 40574.445543518520000000
      Time = 40574.445543518520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object EDT_Final: TEdit
    Left = 205
    Top = 53
    Width = 94
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object EDT_Inicial: TEdit
    Left = 103
    Top = 52
    Width = 94
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object CBX_Tipo: TComboBox
    Left = 25
    Top = 53
    Width = 72
    Height = 21
    TabOrder = 5
    OnClick = CBX_TipoClick
    Items.Strings = (
      'CRZ'
      'DATA'
      '')
  end
  object RDG_TipoLeitura: TRadioGroup
    Left = 316
    Top = 17
    Width = 109
    Height = 81
    Caption = 'Tipo Leitura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Completa'
      'Simplificada')
    ParentFont = False
    TabOrder = 6
  end
end
