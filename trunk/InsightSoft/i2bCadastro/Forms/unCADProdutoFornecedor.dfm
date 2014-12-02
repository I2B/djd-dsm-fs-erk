inherited frmCADProdutoFornecedor: TfrmCADProdutoFornecedor
  Caption = 'Relecionamento Produto com Fornecedor'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      Properties.ActivePage = cxTabGrid
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidprodutofornecedor: TcxGridDBColumn
              DataBinding.FieldName = 'idprodutofornecedor'
              Width = 78
            end
            object cxGridDBcodigoprodutofornecedor: TcxGridDBColumn
              DataBinding.FieldName = 'codigoprodutofornecedor'
              Width = 181
            end
            object cxGridDBidproduto: TcxGridDBColumn
              DataBinding.FieldName = 'idproduto'
              Width = 61
            end
            object cxGridDBdataultimacompra: TcxGridDBColumn
              DataBinding.FieldName = 'dataultimacompra'
              Width = 124
            end
            object cxGridDBprecoultimacompra: TcxGridDBColumn
              DataBinding.FieldName = 'precoultimacompra'
              Width = 140
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
        ExplicitLeft = 2
        ExplicitTop = 30
        inline FrameProdutoFornecedor: TFrameProdutoFornecedor
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
          ExplicitLeft = -33
          ExplicitTop = -34
          inherited dxLayoutControl: TdxLayoutControl
            Width = 778
            Height = 339
            ExplicitWidth = 871
            ExplicitHeight = 373
            inherited edtFornecedorID: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited edtProdutoFornecedorID: TcxDBTextEdit
              ExplicitWidth = 229
              Width = 229
            end
            inherited edtDataUltimaCompra: TcxDBDateEdit
              ExplicitWidth = 60
              Width = 60
            end
            inherited edtPrecoUltimaCompra: TcxDBTextEdit
              ExplicitWidth = 54
              Width = 54
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
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem6: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem7: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 2
              AutoCreated = True
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
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
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
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
      inherited lblPrimeiroEdit: TLabel
        Width = 109
        Caption = 'edtProdutoID'
        ExplicitWidth = 109
      end
      inherited lblFrame: TLabel
        Width = 207
        Caption = 'FrameProdutoFornecedor'
        ExplicitWidth = 207
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
    DataSet = DM.cdsProdutoFornecedor
  end
end
