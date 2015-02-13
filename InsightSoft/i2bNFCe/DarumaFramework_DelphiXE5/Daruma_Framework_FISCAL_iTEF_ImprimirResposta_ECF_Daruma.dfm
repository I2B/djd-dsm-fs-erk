object FR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma: TFR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma
  Left = 405
  Top = 254
  Caption = 'M'#233'todo iTEF_ImprimirResposta_ECF_Daruma'
  ClientHeight = 298
  ClientWidth = 459
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
  object btn_Fechar: TButton
    Left = 360
    Top = 264
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = btn_FecharClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 441
    Height = 241
    Caption = 'Testando o iTEF_ImprimirResposta_ECF_Daruma:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
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
    object Label4: TLabel
      Left = 9
      Top = 141
      Width = 269
      Height = 13
      Caption = '3) Para impressao de Cupom Fiscal clique aqui:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 177
      Width = 242
      Height = 13
      Caption = '4) Para impressao da resposta clique aqui:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 11
      Top = 211
      Width = 288
      Height = 13
      Caption = '5) Clique aqui para fechar Vinculado ou Gerencial:'
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
    object btn_CupomFiscal: TButton
      Left = 307
      Top = 133
      Width = 126
      Height = 25
      Caption = 'Imp. Cupom Fiscal'
      TabOrder = 3
      OnClick = btn_CupomFiscalClick
    end
    object btn_TEF: TButton
      Left = 307
      Top = 165
      Width = 126
      Height = 25
      Hint = 
        'Para re-impressao em um Gerencial, basta passar um espa'#231'o em bra' +
        'nco na forma de pagamento'
      Caption = 'Impressao TEF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btn_TEFClick
    end
    object btn_FecharDocumento: TButton
      Left = 306
      Top = 199
      Width = 126
      Height = 25
      Caption = 'Fechar o Documento'
      TabOrder = 5
      OnClick = btn_FecharDocumentoClick
    end
  end
  object DLG_SelecionaDiretorio: TOpenDialog
    Left = 321
    Top = 260
  end
end
