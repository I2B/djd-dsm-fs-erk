inherited frmCADProdutoGrupo: TfrmCADProdutoGrupo
  Caption = 'Grupo de Produtos'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      Properties.ActivePage = cxTabGrid
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidgrupoprodutos: TcxGridDBColumn
              DataBinding.FieldName = 'idgrupoprodutos'
            end
            object cxGridDBnome: TcxGridDBColumn
              DataBinding.FieldName = 'nome'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
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
        inline FrameProdutoGrupo: TFrameProdutoGrupo
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
          ExplicitLeft = 33
          ExplicitTop = 40
          inherited dxLayoutControl: TdxLayoutControl
            Width = 778
            Height = 339
            inherited edtProdutoGrupoDescricao: TcxDBMemo
              ExplicitWidth = 185
              Width = 185
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 1
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
        Width = 193
        Caption = 'edtProdutoGrupoNome'
        ExplicitWidth = 193
      end
      inherited lblFrame: TLabel
        Width = 166
        Caption = 'FrameProdutoGrupo'
        ExplicitWidth = 166
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
    DataSet = DM.cdsProdutoGrupo
  end
end
