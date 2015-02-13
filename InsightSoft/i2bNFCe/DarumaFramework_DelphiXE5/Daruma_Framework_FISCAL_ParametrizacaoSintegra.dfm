object FR_FISCAL_ParametrizacaoSintegra: TFR_FISCAL_ParametrizacaoSintegra
  Left = 354
  Top = 321
  Caption = 'Parametriza'#231#227'o gerar Arquivo Sintegra - Registry <Sintegra>'
  ClientHeight = 297
  ClientWidth = 801
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
  object GroupBox1: TGroupBox
    Left = 7
    Top = 6
    Width = 786
    Height = 283
    Caption = 'Parametriza'#231#227'o Registry <SINTEGRA>:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 452
      Top = 72
      Width = 50
      Height = 13
      Caption = 'Munic'#237'pio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 200
      Top = 116
      Width = 20
      Height = 13
      Caption = 'Fax:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 55
      Top = 196
      Width = 98
      Height = 13
      Caption = 'Identif. do Conv'#234'nio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 33
      Top = 220
      Width = 121
      Height = 13
      Caption = 'Natureza das Opera'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 103
      Top = 172
      Width = 51
      Height = 13
      Caption = 'Finalidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 30
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 386
      Top = 31
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 448
      Top = 29
      Width = 67
      Height = 13
      Caption = 'Complemento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 73
      Width = 30
      Height = 13
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 384
      Top = 73
      Width = 24
      Height = 13
      Caption = 'CEP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 384
      Top = 116
      Width = 71
      Height = 13
      Caption = 'Nome Contato:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 117
      Width = 45
      Height = 13
      Caption = 'Telefone:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 713
      Top = 74
      Width = 17
      Height = 13
      Caption = 'UF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EDT_Municipio: TEdit
      Left = 452
      Top = 88
      Width = 253
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'S'#227'o Paulo'
    end
    object EDT_Fax: TEdit
      Left = 199
      Top = 133
      Width = 176
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      TabOrder = 8
      Text = '(xx41) 3361-6945'
    end
    object EDT_Endereco: TEdit
      Left = 16
      Top = 46
      Width = 361
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 0
      Text = 'Avenida Shishima Hifumi,'
    end
    object EDT_Numero: TEdit
      Left = 385
      Top = 45
      Width = 56
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 1
      Text = '2911'
    end
    object EDT_Complemento: TEdit
      Left = 449
      Top = 45
      Width = 312
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 99
      ParentFont = False
      TabOrder = 2
      Text = '4'#186' andar - Sala. 406  '
    end
    object EDT_Bairro: TEdit
      Left = 16
      Top = 89
      Width = 360
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'Jardim Bot'#226'nico'
    end
    object EDT_CEP: TEdit
      Left = 384
      Top = 89
      Width = 60
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '80215-090'
    end
    object EDT_Nome_Contato: TEdit
      Left = 384
      Top = 131
      Width = 375
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 49
      ParentFont = False
      TabOrder = 9
      Text = 'Jo'#227'o'
    end
    object EDT_Telefone: TEdit
      Left = 16
      Top = 133
      Width = 177
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      TabOrder = 7
      Text = '(XX41) 3361-6005'
    end
    object EDT_Desc_Convenio: TEdit
      Left = 198
      Top = 188
      Width = 560
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object EDT_DescNatureza: TEdit
      Left = 199
      Top = 213
      Width = 559
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object EDT_Desc_Finalidade: TEdit
      Left = 199
      Top = 165
      Width = 559
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object CMB_Uf: TComboBox
      Left = 713
      Top = 88
      Width = 49
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object CMB_Cod_Convenio: TComboBox
      Left = 158
      Top = 188
      Width = 36
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = CMB_Cod_ConvenioClick
      Items.Strings = (
        '1'
        '2'
        '3')
    end
    object CMB_NaturezaOp: TComboBox
      Left = 159
      Top = 212
      Width = 34
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = CMB_NaturezaOpClick
      Items.Strings = (
        '1'
        '2'
        '3')
    end
    object CMB_CodFinalidade: TComboBox
      Left = 159
      Top = 164
      Width = 34
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = CMB_CodFinalidadeClick
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
    end
    object BTN_Parametrizar: TButton
      Left = 600
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Parametrizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = BTN_ParametrizarClick
    end
    object BTN_Voltar: TButton
      Left = 683
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Voltar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = BTN_VoltarClick
    end
  end
end
