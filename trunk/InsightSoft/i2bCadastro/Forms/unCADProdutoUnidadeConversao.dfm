inherited frmCADProdutoUnidadeConversao: TfrmCADProdutoUnidadeConversao
  Caption = 'Unidade de Convers'#227'o'
  ClientHeight = 442
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 372
    inherited lblRegistros: TLabel
      Top = 355
      ExplicitTop = 312
    end
    inherited imgImprimir: TcxImage
      Top = 241
    end
    inherited imgExportar: TcxImage
      Top = 298
    end
  end
  inherited pnlClient: TPanel
    Height = 372
    inherited cxPageControl: TcxPageControl
      Height = 344
      ClientRectBottom = 342
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
          Height = 312
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidprodutounidadeconversao: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idprodutounidadeconversao'
            end
            object cxGridDBidproduto: TcxGridDBColumn
              Caption = 'ID Produto'
              DataBinding.FieldName = 'idproduto'
            end
            object cxGridDBprodutonome: TcxGridDBColumn
              Caption = 'Produto'
              DataBinding.FieldName = 'produtonome'
            end
            object cxGridDBidprodutounidade: TcxGridDBColumn
              Caption = 'ID Unidade'
              DataBinding.FieldName = 'idprodutounidade'
            end
            object cxGridDBunidadesigla: TcxGridDBColumn
              Caption = 'Unidade Sigla'
              DataBinding.FieldName = 'unidadesigla'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
            end
            object cxGridDBsigla: TcxGridDBColumn
              Caption = 'Sigla Convers'#227'o'
              DataBinding.FieldName = 'sigla'
            end
            object cxGridDBfatorconversao: TcxGridDBColumn
              Caption = 'Fator Convers'#227'o'
              DataBinding.FieldName = 'fatorconversao'
            end
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 30
        inherited pnlCadastro: TPanel
          Height = 312
        end
        inline FrameProdutoUnidadeConversao: TFrameProdutoUnidadeConversao
          Left = 60
          Top = 0
          Width = 778
          Height = 312
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
          ExplicitTop = -39
          inherited dxLayoutControl: TdxLayoutControl
            Width = 778
            Height = 312
            inherited edtIDUnidadeConversao: TcxDBTextEdit
              ExplicitWidth = 93
              Width = 93
            end
            inherited edtDescricao: TcxDBMemo
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
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem7: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem6: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup4: TdxLayoutGroup
              Index = 0
            end
            inherited dxLayoutControlGroup3: TdxLayoutGroup
              Index = 1
            end
            inherited dxLayoutControlGroup2: TdxLayoutGroup
              Index = 3
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        inherited gbFiltroSalvo: TcxGroupBox
          Height = 145
        end
      end
    end
    inherited pnlTop: TPanel
      inherited lblPrimeiroEdit: TLabel
        Width = 109
        Caption = 'edtIDProduto'
        ExplicitWidth = 109
      end
      inherited lblFrame: TLabel
        Width = 267
        Caption = 'FrameProdutoUnidadeConversao'
        ExplicitWidth = 267
      end
    end
  end
  inherited pnlBottom: TPanel
    Top = 372
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
    DataSet = DM.cdsProdutoUnidadeConversao
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
    ServerMethodName = 'TServerMethods.setSQLProdutoUnidadeConversao'
  end
end
