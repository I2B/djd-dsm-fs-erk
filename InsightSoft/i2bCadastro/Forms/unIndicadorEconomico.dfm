inherited frmCADIndicadorEconomico: TfrmCADIndicadorEconomico
  Caption = 'Indicador Econ'#244'mico'
  ClientHeight = 439
  ClientWidth = 782
  ExplicitWidth = 798
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 439
    ExplicitHeight = 439
    inherited lblRegistros: TLabel
      Top = 422
      ExplicitTop = 422
    end
    inherited imgImprimir: TcxImage
      Top = 308
      ExplicitTop = 308
    end
    inherited imgExportar: TcxImage
      Top = 365
      ExplicitTop = 365
    end
  end
  inherited pnlClient: TPanel
    Width = 722
    Height = 439
    ExplicitWidth = 722
    ExplicitHeight = 439
    inherited cxPageControl: TcxPageControl
      Width = 722
      Height = 411
      ExplicitWidth = 722
      ExplicitHeight = 411
      ClientRectBottom = 409
      ClientRectRight = 720
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 718
        ExplicitHeight = 379
        inherited cxGrid: TcxGrid
          Width = 718
          Height = 309
          ExplicitWidth = 718
          ExplicitHeight = 309
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidindicadoreconomico: TcxGridDBColumn
              DataBinding.FieldName = 'idindicadoreconomico'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
              Width = 216
            end
            object cxGridDBativo: TcxGridDBColumn
              DataBinding.FieldName = 'ativo'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Width = 48
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 309
          Width = 718
          ExplicitTop = 309
          ExplicitWidth = 718
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
        ExplicitWidth = 718
        ExplicitHeight = 379
        inherited pnlCadastro: TPanel
          Height = 379
          ExplicitHeight = 379
        end
        inline frameIndicadorEconomico: TframeIndicadorEconomico
          Left = 60
          Top = 0
          Width = 658
          Height = 379
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
          ExplicitLeft = 60
          ExplicitWidth = 658
          ExplicitHeight = 379
          inherited dxLayoutControl: TdxLayoutControl
            Width = 658
            Height = 379
            ExplicitWidth = 658
            ExplicitHeight = 379
            inherited edtDescricao: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtID: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited cxDBCheckBox1: TcxDBCheckBox
              ExplicitHeight = 23
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 718
        ExplicitHeight = 379
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 718
          Width = 718
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
        end
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 718
          ExplicitHeight = 212
          Height = 212
          Width = 718
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 722
      ExplicitWidth = 722
      inherited lblPrimeiroEdit: TLabel
        Width = 44
        Caption = 'edtID'
        ExplicitWidth = 44
      end
      inherited lblFrame: TLabel
        Width = 213
        Caption = 'FrameIndicadorEconomico'
        ExplicitWidth = 213
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
    DataSet = DM.cdsIndicadorEconomico
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
    ServerMethodName = 'TServerMethods.setSQLIndicadorEconomico'
  end
end
