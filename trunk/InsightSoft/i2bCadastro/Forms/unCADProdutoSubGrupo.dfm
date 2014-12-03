inherited frmCADProdutoSubGrupo: TfrmCADProdutoSubGrupo
  Caption = 'Sub-Grupo de Produtos'
  ClientHeight = 431
  ClientWidth = 876
  ExplicitWidth = 892
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 431
    ExplicitHeight = 431
    inherited lblRegistros: TLabel
      Top = 414
      ExplicitTop = 414
    end
    inherited imgImprimir: TcxImage
      Top = 300
      ExplicitTop = 300
    end
    inherited imgExportar: TcxImage
      Top = 357
      ExplicitTop = 357
    end
  end
  inherited pnlClient: TPanel
    Width = 816
    Height = 431
    ExplicitWidth = 816
    ExplicitHeight = 431
    inherited cxPageControl: TcxPageControl
      Width = 816
      Height = 403
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 816
      ExplicitHeight = 403
      ClientRectBottom = 401
      ClientRectRight = 814
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 812
        ExplicitHeight = 371
        inherited cxGrid: TcxGrid
          Width = 812
          Height = 301
          ExplicitWidth = 812
          ExplicitHeight = 301
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidsubgrupoprodutos: TcxGridDBColumn
              DataBinding.FieldName = 'idsubgrupoprodutos'
            end
            object cxGridDBnome: TcxGridDBColumn
              DataBinding.FieldName = 'nome'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
            end
            object cxGridDBidgrupoprodutos: TcxGridDBColumn
              DataBinding.FieldName = 'idgrupoprodutos'
            end
            object cxGridDBgruponome: TcxGridDBColumn
              DataBinding.FieldName = 'gruponome'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 301
          Width = 812
          ExplicitTop = 301
          ExplicitWidth = 812
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
            ExplicitWidth = 752
            ExplicitHeight = 23
            Width = 752
          end
          inherited btnBuscar: TcxButton
            Left = 708
            ExplicitLeft = 708
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
        ExplicitWidth = 812
        ExplicitHeight = 371
        inherited pnlCadastro: TPanel
          Height = 371
          ExplicitHeight = 371
        end
        inline FrameProdutoSubGrupo: TFrameProdutoSubGrupo
          Left = 60
          Top = 0
          Width = 752
          Height = 371
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
          ExplicitWidth = 752
          ExplicitHeight = 371
          inherited dxLayoutControl: TdxLayoutControl
            Width = 752
            Height = 371
            ExplicitWidth = 752
            ExplicitHeight = 371
            inherited edtProdutoSubGrupoNome: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited edtProdutoSubGrupoDescricao: TcxDBMemo
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
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
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
        ExplicitWidth = 812
        ExplicitHeight = 371
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 812
          ExplicitHeight = 204
          Height = 204
          Width = 812
          inherited cxGridFiltro: TcxGrid
            Height = 177
            ExplicitHeight = 177
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 424
            ExplicitHeight = 177
            Height = 177
            Width = 424
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 812
          Width = 812
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 242
            ExplicitHeight = 23
            Width = 242
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 523
            ExplicitLeft = 523
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 804
            Width = 804
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 777
              Width = 777
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 777
              Width = 777
            end
            inherited imgFiltroSQL: TcxImage
              Left = 780
              ExplicitLeft = 780
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 618
            ExplicitLeft = 618
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 641
            ExplicitLeft = 641
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 276
            ExplicitWidth = 276
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
      Width = 816
      ExplicitWidth = 816
      inherited lblPrimeiroEdit: TLabel
        Width = 143
        Caption = 'edtProdutoGrupo'
        ExplicitWidth = 143
      end
      inherited lblFrame: TLabel
        Width = 196
        Caption = 'FrameProdutoSubGrupo'
        ExplicitWidth = 196
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
    DataSet = DM.cdsProdutoSubGrupo
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
    ServerMethodName = 'TServerMethods.setSQLProdutoSubGrupo'
  end
end
