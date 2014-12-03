inherited frmCADProdutoGrupo: TfrmCADProdutoGrupo
  Caption = 'Grupo de Produtos'
  ClientHeight = 453
  ClientWidth = 814
  ExplicitWidth = 830
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 453
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 436
    end
    inherited imgImprimir: TcxImage
      Top = 322
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 379
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 754
    Height = 453
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 754
      Height = 425
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 64
      ClientRectBottom = 423
      ClientRectRight = 752
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 60
        inherited cxGrid: TcxGrid
          Width = 750
          Height = 323
          ExplicitWidth = 60
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
          Top = 323
          Width = 750
          ExplicitWidth = 60
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
            ExplicitWidth = 0
            ExplicitHeight = 23
            Width = 690
          end
          inherited btnBuscar: TcxButton
            Left = 646
            ExplicitLeft = -44
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
        ExplicitWidth = 60
        inherited pnlCadastro: TPanel
          Height = 393
        end
        inline FrameProdutoGrupo: TFrameProdutoGrupo
          Left = 60
          Top = 0
          Width = 690
          Height = 393
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
          ExplicitWidth = 0
          ExplicitHeight = 339
          inherited dxLayoutControl: TdxLayoutControl
            Width = 690
            Height = 393
            ExplicitWidth = 0
            ExplicitHeight = 339
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
        ExplicitWidth = 60
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 60
          Height = 226
          Width = 750
          inherited cxGridFiltro: TcxGrid
            Height = 199
            ExplicitHeight = 199
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 199
            Width = 362
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 60
          Width = 750
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 180
            ExplicitHeight = 23
            Width = 180
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 461
            ExplicitLeft = -229
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 52
            Width = 742
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 25
              Width = 715
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 25
              Width = 715
            end
            inherited imgFiltroSQL: TcxImage
              Left = 718
              ExplicitLeft = 28
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 556
            ExplicitLeft = 556
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 579
            ExplicitLeft = 579
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 214
            ExplicitWidth = 214
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
      Width = 754
      ExplicitWidth = 64
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
  inherited ServerMethod: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'filtro'
        ParamType = ptInput
      end>
    SQLConnection = DM.conServer
    ServerMethodName = 'TServerMethods.setSQLProdutoGrupo'
  end
end
