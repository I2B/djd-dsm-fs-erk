inherited frmCADIndice: TfrmCADIndice
  Caption = #205'ndice'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      Properties.ActivePage = cxTabGrid
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidindice: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idindice'
            end
            object cxGridDBidindicadoreconomico: TcxGridDBColumn
              Caption = 'Indicador Econ'#244'mico'
              DataBinding.FieldName = 'idindicadoreconomico'
              Width = 161
            end
            object cxGridDBdataatualizacao: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'dataatualizacao'
              Width = 93
            end
            object cxGridDBvalor: TcxGridDBColumn
              Caption = 'Valor'
              DataBinding.FieldName = 'valor'
              Width = 90
            end
          end
        end
        inherited pnlBottom: TPanel
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited cbCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitHeight = 23
          end
          inherited cbSQL: TcxComboBox
            ExplicitHeight = 23
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited cbOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited dateInformacao: TcxDateEdit
            ExplicitHeight = 23
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        inline FrameIndice: TFrameIndice
          Left = 60
          Top = 0
          Width = 778
          Height = 339
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
          ExplicitLeft = 258
          ExplicitTop = 31
          inherited dxLayoutControl: TdxLayoutControl
            Width = 778
            Height = 339
            ExplicitTop = 0
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 2
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitHeight = 23
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited pnlTop: TPanel
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
