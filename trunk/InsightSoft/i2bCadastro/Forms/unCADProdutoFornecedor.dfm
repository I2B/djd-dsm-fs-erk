inherited frmCADProdutoFornecedor: TfrmCADProdutoFornecedor
  Caption = 'Relecionamento Produto com Fornecedor'
  ClientHeight = 420
  ClientWidth = 832
  ExplicitWidth = 848
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 420
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 403
    end
    inherited imgImprimir: TcxImage
      Top = 289
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 346
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 772
    Height = 420
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 772
      Height = 392
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 64
      ClientRectBottom = 390
      ClientRectRight = 770
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 60
        inherited cxGrid: TcxGrid
          Width = 768
          Height = 290
          ExplicitWidth = 60
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
          Top = 290
          Width = 768
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
            Width = 708
          end
          inherited btnBuscar: TcxButton
            Left = 664
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
          Height = 360
        end
        inline FrameProdutoFornecedor: TFrameProdutoFornecedor
          Left = 60
          Top = 0
          Width = 708
          Height = 360
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
            Width = 708
            Height = 360
            ExplicitWidth = 581
            ExplicitHeight = 360
            inherited edtProdutoID: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtFornecedorID: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtProdutoFornecedorID: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited cxTextEdit1: TcxTextEdit
              ExplicitHeight = 23
            end
            inherited cxTextEdit2: TcxTextEdit
              ExplicitHeight = 23
            end
            inherited edtDataUltimaCompra: TcxDBDateEdit
              ExplicitHeight = 23
            end
            inherited edtPrecoUltimaCompra: TcxDBTextEdit
              ExplicitHeight = 23
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
        ExplicitWidth = 61
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 61
          Height = 193
          Width = 768
          inherited cxGridFiltro: TcxGrid
            Height = 166
            ExplicitHeight = 166
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 166
            Width = 380
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 61
          Width = 768
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 198
            ExplicitHeight = 23
            Width = 198
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 479
            ExplicitLeft = -228
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 53
            Width = 760
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 26
              Width = 733
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 26
              Width = 733
            end
            inherited imgFiltroSQL: TcxImage
              Left = 736
              ExplicitLeft = 29
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 574
            ExplicitLeft = 574
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 597
            ExplicitLeft = 597
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 232
            ExplicitWidth = 232
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
      Width = 772
      ExplicitWidth = 64
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
  inherited ServerMethod: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'filtro'
        ParamType = ptInput
      end>
    SQLConnection = DM.conServer
    ServerMethodName = 'TServerMethods.setSQLProdutoFornecedor'
    Top = 16
  end
end
