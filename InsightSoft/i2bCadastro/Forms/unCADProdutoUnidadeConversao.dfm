inherited frmCADProdutoUnidadeConversao: TfrmCADProdutoUnidadeConversao
  Caption = 'Unidade de Convers'#227'o'
  ClientHeight = 442
  ClientWidth = 901
  ExplicitWidth = 917
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 442
    ExplicitHeight = 442
    inherited lblRegistros: TLabel
      Top = 425
      ExplicitTop = 355
    end
    inherited imgImprimir: TcxImage
      Top = 311
      ExplicitTop = 311
    end
    inherited imgExportar: TcxImage
      Top = 368
      ExplicitTop = 368
    end
  end
  inherited pnlClient: TPanel
    Width = 841
    Height = 442
    ExplicitWidth = 64
    ExplicitHeight = 442
    inherited cxPageControl: TcxPageControl
      Width = 841
      Height = 414
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 64
      ExplicitHeight = 414
      ClientRectBottom = 412
      ClientRectRight = 839
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 837
        ExplicitHeight = 382
        inherited cxGrid: TcxGrid
          Width = 837
          Height = 312
          ExplicitWidth = 837
          ExplicitHeight = 312
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
        inherited pnlBottom: TPanel
          Top = 312
          Width = 837
          ExplicitTop = 312
          ExplicitWidth = 837
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
            ExplicitWidth = 441
            ExplicitHeight = 23
            Width = 441
          end
          inherited btnBuscar: TcxButton
            Left = 733
            ExplicitLeft = 733
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
        ExplicitHeight = 382
        inherited pnlCadastro: TPanel
          Height = 382
          ExplicitHeight = 382
        end
        inline FrameProdutoUnidadeConversao: TFrameProdutoUnidadeConversao
          Left = 60
          Top = 0
          Width = 777
          Height = 382
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
          ExplicitHeight = 382
          inherited dxLayoutControl: TdxLayoutControl
            Width = 777
            Height = 382
            ExplicitWidth = 1
            ExplicitHeight = 382
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
        ExplicitWidth = 60
        ExplicitHeight = 382
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 60
          ExplicitHeight = 215
          Height = 215
          Width = 837
          inherited cxGridFiltro: TcxGrid
            Height = 188
            ExplicitHeight = 188
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitHeight = 188
            Height = 188
            Width = 449
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 60
          Width = 837
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 0
            ExplicitHeight = 23
            Width = 777
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 548
            ExplicitLeft = -229
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 52
            Width = 829
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 25
              Width = 802
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 25
              Width = 802
            end
            inherited imgFiltroSQL: TcxImage
              Left = 805
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
            Left = 643
            ExplicitLeft = -134
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 666
            ExplicitLeft = -111
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 777
            ExplicitWidth = 0
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
      Width = 841
      ExplicitWidth = 64
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
