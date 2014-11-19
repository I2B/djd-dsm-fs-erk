inherited frmCADProdutoUnidade: TfrmCADProdutoUnidade
  Caption = 'Unidades'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    inherited lblRegistros: TLabel
      ExplicitTop = 312
    end
  end
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidprodutounidade: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idprodutounidade'
              Width = 68
            end
            object cxGridDBsigla: TcxGridDBColumn
              Caption = 'Sigla'
              DataBinding.FieldName = 'sigla'
              Width = 78
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 681
            end
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        inline FrameProdutoUnidade: TFrameProdutoUnidade
          Left = 60
          Top = 0
          Width = 778
          Height = 269
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
          ExplicitLeft = 216
          ExplicitTop = -39
          inherited dxLayoutControl: TdxLayoutControl
            Width = 778
            Height = 269
            inherited edtSigla: TcxDBTextEdit
              ExplicitWidth = 119
              Width = 119
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup1: TdxLayoutGroup
              Index = 0
            end
            inherited dxLayoutControlGroup2: TdxLayoutGroup
              Index = 1
            end
          end
        end
      end
    end
    inherited pnlTop: TPanel
      inherited lblPrimeiroEdit: TLabel
        Width = 64
        Caption = 'edtSigla'
        ExplicitWidth = 64
      end
      inherited lblFrame: TLabel
        Width = 182
        Caption = 'FrameProdutoUnidade'
        ExplicitWidth = 182
      end
    end
  end
  inherited pnlBottom: TPanel
    inherited lblCampo: TcxLabel
      Style.IsFontAssigned = True
    end
    inherited lblInformacao: TcxLabel
      Style.IsFontAssigned = True
    end
    inherited lblOperacao: TcxLabel
      Style.IsFontAssigned = True
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
    DataSet = DM.cdsProdutoUnidade
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
    ServerMethodName = 'TServerMethods.setSQLProdutoUnidade'
  end
end
