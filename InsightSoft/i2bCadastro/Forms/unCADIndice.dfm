inherited frmCADIndice: TfrmCADIndice
  Caption = #205'ndice'
  ClientHeight = 446
  ClientWidth = 957
  ExplicitWidth = 973
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 446
    ExplicitHeight = 8
    inherited lblRegistros: TLabel
      Top = 429
    end
    inherited imgImprimir: TcxImage
      Top = 315
      ExplicitTop = -123
    end
    inherited imgExportar: TcxImage
      Top = 372
      ExplicitTop = -66
    end
  end
  inherited pnlClient: TPanel
    Width = 897
    Height = 446
    ExplicitWidth = 102
    ExplicitHeight = 8
    inherited cxPageControl: TcxPageControl
      Width = 897
      Height = 418
      ExplicitWidth = 102
      ClientRectBottom = 416
      ClientRectRight = 895
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 98
        inherited cxGrid: TcxGrid
          Width = 893
          Height = 316
          ExplicitWidth = 98
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidindice: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idindice'
            end
            object cxGridDBidindicadoreconomico: TcxGridDBColumn
              Caption = 'ID Indicador Econ'#244'mico'
              DataBinding.FieldName = 'idindicadoreconomico'
              Width = 161
            end
            object cxGridDBindicadordescricao: TcxGridDBColumn
              Caption = 'Indicador Econ'#244'mico'
              DataBinding.FieldName = 'indicadordescricao'
            end
            object cxGridDBdataatualizacao: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'dataatualizacao'
              Width = 93
            end
            object cxGridDBvalor: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'valor'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 90
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 316
          Width = 893
          ExplicitWidth = 98
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 0
            Width = 795
          end
          inherited btnBuscar: TcxButton
            Left = 789
            ExplicitLeft = -6
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 98
        inherited pnlCadastro: TPanel
          Height = 386
        end
        inline FrameIndice: TFrameIndice
          Left = 60
          Top = 0
          Width = 833
          Height = 386
          Align = alClient
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 288
          ExplicitTop = 78
          inherited dxLayoutControl: TdxLayoutControl
            Width = 833
            Height = 386
            inherited edtIDIndicadorEconomico: TcxDBCurrencyEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 100
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 100
          Height = 219
          Width = 893
          inherited cxGridFiltro: TcxGrid
            Height = 192
            ExplicitHeight = 192
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 192
            Width = 505
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 100
          Width = 893
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 323
            ExplicitHeight = 23
            Width = 323
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 604
            ExplicitLeft = -189
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 92
            Width = 885
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 65
              Width = 858
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 65
              Width = 858
            end
            inherited imgFiltroSQL: TcxImage
              Left = 861
              ExplicitLeft = 68
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 699
            ExplicitLeft = 699
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 722
            ExplicitLeft = 722
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 357
            ExplicitWidth = 357
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 23
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 897
      ExplicitWidth = 102
      inherited lblPrimeiroEdit: TLabel
        Left = 0
        Top = -3
        Width = 190
        Caption = 'edtIndicadorEconomico'
        ExplicitLeft = 0
        ExplicitTop = -3
        ExplicitWidth = 190
      end
      inherited lblFrame: TLabel
        Width = 97
        Caption = 'FrameIndice'
        ExplicitWidth = 97
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dts: TDataSource
    DataSet = DM.cdsIndice
  end
  inherited ServerMethod: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'filtro'
        ParamType = ptInput
      end>
    SQLConnection = DM.conServer
    ServerMethodName = 'TServerMethods.setSQLIndice'
  end
end
