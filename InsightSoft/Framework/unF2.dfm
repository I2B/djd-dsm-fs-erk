object frmF2: TfrmF2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Busca de Dados'
  ClientHeight = 404
  ClientWidth = 860
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxPageControl: TcxPageControl
    Left = 0
    Top = 0
    Width = 860
    Height = 404
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    Properties.TabPosition = tpLeft
    Properties.TabsScroll = False
    ClientRectBottom = 404
    ClientRectLeft = 28
    ClientRectRight = 860
    ClientRectTop = 0
    object cxTabSheet: TcxTabSheet
      Caption = 'titulo'
      ImageIndex = 0
      object pnlClient: TPanel
        Left = 0
        Top = 57
        Width = 832
        Height = 347
        Align = alClient
        BevelOuter = bvNone
        Color = 5177344
        ParentBackground = False
        TabOrder = 0
        object pnlLeft: TPanel
          Left = 0
          Top = 0
          Width = 14
          Height = 323
          Align = alLeft
          BevelOuter = bvNone
          Color = 5177344
          ParentBackground = False
          TabOrder = 0
        end
        object pnlRight: TPanel
          Left = 818
          Top = 0
          Width = 14
          Height = 323
          Align = alRight
          BevelOuter = bvNone
          Color = 5177344
          ParentBackground = False
          TabOrder = 1
        end
        object pnlBottom: TPanel
          Left = 0
          Top = 323
          Width = 832
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Color = 5177344
          ParentBackground = False
          TabOrder = 2
          object lblCadastro: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 826
            Height = 18
            Align = alClient
            Alignment = taRightJustify
            Caption = 
              'Caso n'#227'o encontrou o registro desejado, pressione [F10] para rea' +
              'lizar o cadastro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 426
            ExplicitWidth = 403
            ExplicitHeight = 15
          end
        end
        object cxGrid: TcxGrid
          Left = 14
          Top = 0
          Width = 804
          Height = 323
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object cxGridDBTableView: TcxGridDBTableView
            OnDblClick = cxGridDBTableViewDblClick
            OnKeyDown = edtInformacaoKeyDown
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = '<Nenhum registro para ser exibido>'
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
          end
          object cxGridLevel: TcxGridLevel
            GridView = cxGridDBTableView
          end
        end
      end
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 832
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        Color = 5177344
        Ctl3D = True
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 1
        DesignSize = (
          832
          57)
        object Label1: TLabel
          Left = 14
          Top = 10
          Width = 199
          Height = 15
          Caption = 'Campo (Pr'#243'ximo[F3] | Anterior[Ctrl+F3])'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 357
          Top = 10
          Width = 145
          Height = 15
          Caption = 'Informa'#231#227'o a ser selecionada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 640
          Top = 10
          Width = 51
          Height = 15
          Caption = '[F6] Todos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        object btnVoltar: TcxButton
          Left = 718
          Top = 21
          Width = 100
          Height = 29
          Action = acFechar
          Anchors = [akTop, akRight]
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000707071D0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000001E1E1E81292929B00707071D00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000606061A2D2D2DBF3C3C3CFF1A1A1A7000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000181818663C3C3CFF2B2B2BB700000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000707071F3C3C3CFF373737EA00000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
            000000000000000000000707071F3C3C3CFF373737EA00000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
            00000000000000000000181818663C3C3CFF2B2B2BB700000000000000000000
            00003C3C3CFF3C3C3CFF3C3C3CFF343434DF0C0C0C3300000000000000000000
            0000000000000C0C0C332D2D2DBF3C3C3CFF1A1A1A7000000000000000000000
            00003C3C3CFF3C3C3CFF333333D73C3C3CFF2D2D2DBF181818660707071F0707
            071F181818662D2D2DBF3C3C3CFF292929B00707071D00000000000000000000
            00003C3C3CFF1E1E1E7E0D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF292929B00D0D0D390000000000000000000000000000
            00001E1E1E7E00000000000000000707071D1A1A1A702B2B2BB7373737EA3737
            37EA2B2B2BB71A1A1A700707071D000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
        end
        object cbCampos: TcxComboBox
          Left = 14
          Top = 27
          ParentFont = False
          Properties.OnChange = cbCamposPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI Light'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 203
        end
        object rbIniciaCom: TcxRadioButton
          Left = 240
          Top = 17
          Width = 94
          Height = 17
          Caption = '[F4] Inicia com'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TabStop = True
        end
        object rbContem: TcxRadioButton
          Left = 240
          Top = 33
          Width = 94
          Height = 17
          Caption = '[F5] Cont'#233'm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edtInformacao: TcxTextEdit
          Left = 357
          Top = 27
          ParentFont = False
          Properties.OnChange = edtInformacaoPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI Light'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          TextHint = 'Digite a informa'#231#227'o que deseja buscar...'
          OnKeyDown = edtInformacaoKeyDown
          Width = 334
        end
        object cbSQL: TcxComboBox
          Left = 14
          Top = 27
          ParentFont = False
          Properties.OnChange = cbSQLPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI Light'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Visible = False
          Width = 49
        end
      end
    end
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = DSProvider
    Left = 216
    Top = 168
  end
  object ds: TDataSource
    AutoEdit = False
    Left = 248
    Top = 168
  end
  object ActionList: TActionList
    Left = 280
    Top = 168
    object acFechar: TAction
      Caption = 'Voltar [Esc]'
      ShortCut = 27
      OnExecute = acFecharExecute
    end
    object acCampoProximo: TAction
      Caption = 'acCampoProximo'
      ShortCut = 114
      OnExecute = acCampoProximoExecute
    end
    object acCampoAnterior: TAction
      Caption = 'acCampoAnterior'
      ShortCut = 16498
      OnExecute = acCampoAnteriorExecute
    end
    object acIniciaCom: TAction
      Caption = 'acIniciaCom'
      ShortCut = 115
      OnExecute = acIniciaComExecute
    end
    object acContem: TAction
      Caption = 'acContem'
      ShortCut = 116
      OnExecute = acContemExecute
    end
    object acCadastrar: TAction
      Caption = 'acCadastrar'
      ShortCut = 121
      OnExecute = acCadastrarExecute
    end
    object acTodos: TAction
      Caption = 'acTodos'
      ShortCut = 117
      OnExecute = acTodosExecute
    end
  end
  object sqlSM: TSqlServerMethod
    Params = <>
    Left = 184
    Top = 169
  end
  object DSProvider: TDSProviderConnection
    Left = 144
    Top = 169
  end
end