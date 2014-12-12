inherited frmCADProduto: TfrmCADProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 536
  ClientWidth = 1139
  ExplicitTop = 2
  ExplicitWidth = 1155
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 536
    inherited lblRegistros: TLabel
      Top = 519
    end
    inherited imgImprimir: TcxImage
      Top = 405
    end
    inherited imgExportar: TcxImage
      Top = 462
    end
  end
  inherited pnlClient: TPanel
    Width = 1079
    Height = 536
    inherited cxPageControl: TcxPageControl
      Width = 1079
      Height = 508
      ExplicitLeft = 5
      ExplicitTop = 32
      ExplicitWidth = 1079
      ExplicitHeight = 508
      ClientRectBottom = 506
      ClientRectRight = 1077
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 834
        ExplicitHeight = 341
        inherited cxGrid: TcxGrid
          Width = 1075
          Height = 406
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidproduto: TcxGridDBColumn
              DataBinding.FieldName = 'idproduto'
            end
            object cxGridDBidgrupoprodutos: TcxGridDBColumn
              DataBinding.FieldName = 'idgrupoprodutos'
            end
            object cxGridDBidsubgrupoprodutos: TcxGridDBColumn
              DataBinding.FieldName = 'idsubgrupoprodutos'
            end
            object cxGridDBidncm: TcxGridDBColumn
              DataBinding.FieldName = 'idncm'
            end
            object cxGridDBidprodutounidade: TcxGridDBColumn
              DataBinding.FieldName = 'idprodutounidade'
            end
            object cxGridDBcodigointerno: TcxGridDBColumn
              DataBinding.FieldName = 'codigointerno'
              Width = 136
            end
            object cxGridDBgetin: TcxGridDBColumn
              DataBinding.FieldName = 'getin'
            end
            object cxGridDBnome: TcxGridDBColumn
              DataBinding.FieldName = 'nome'
              Width = 321
            end
            object cxGridDBdescricao: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
            end
            object cxGridDBdescricaopdv: TcxGridDBColumn
              DataBinding.FieldName = 'descricaopdv'
            end
            object cxGridDBvalorcompra: TcxGridDBColumn
              DataBinding.FieldName = 'valorcompra'
            end
            object cxGridDBvalorvenda: TcxGridDBColumn
              DataBinding.FieldName = 'valorvenda'
            end
            object cxGridDBprecovendaminimo: TcxGridDBColumn
              DataBinding.FieldName = 'precovendaminimo'
            end
            object cxGridDBprecosugerido: TcxGridDBColumn
              DataBinding.FieldName = 'precosugerido'
            end
            object cxGridDBcustomedioliquido: TcxGridDBColumn
              DataBinding.FieldName = 'customedioliquido'
            end
            object cxGridDBprecolucrozero: TcxGridDBColumn
              DataBinding.FieldName = 'precolucrozero'
            end
            object cxGridDBprecolucrominimo: TcxGridDBColumn
              DataBinding.FieldName = 'precolucrominimo'
            end
            object cxGridDBprecolucromaximo: TcxGridDBColumn
              DataBinding.FieldName = 'precolucromaximo'
            end
            object cxGridDBmarkup: TcxGridDBColumn
              DataBinding.FieldName = 'markup'
            end
            object cxGridDBquantidadeestoque: TcxGridDBColumn
              DataBinding.FieldName = 'quantidadeestoque'
            end
            object cxGridDBestoqueminimo: TcxGridDBColumn
              DataBinding.FieldName = 'estoqueminimo'
            end
            object cxGridDBestoquemaximo: TcxGridDBColumn
              DataBinding.FieldName = 'estoquemaximo'
            end
            object cxGridDBestoqueideal: TcxGridDBColumn
              DataBinding.FieldName = 'estoqueideal'
            end
            object cxGridDBdatacadastro: TcxGridDBColumn
              DataBinding.FieldName = 'datacadastro'
            end
            object cxGridDBfotoproduto: TcxGridDBColumn
              DataBinding.FieldName = 'fotoproduto'
            end
            object cxGridDBcodigobalanca: TcxGridDBColumn
              DataBinding.FieldName = 'codigobalanca'
            end
            object cxGridDBtipo: TcxGridDBColumn
              DataBinding.FieldName = 'tipo'
            end
            object cxGridDBclasseabc: TcxGridDBColumn
              DataBinding.FieldName = 'classeabc'
            end
            object cxGridDBcodigolst: TcxGridDBColumn
              DataBinding.FieldName = 'codigolst'
            end
            object cxGridDBpeso: TcxGridDBColumn
              DataBinding.FieldName = 'peso'
            end
            object cxGridDBpercentualcomissao: TcxGridDBColumn
              DataBinding.FieldName = 'percentualcomissao'
            end
            object cxGridDBinativo: TcxGridDBColumn
              DataBinding.FieldName = 'inativo'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 406
          Width = 1075
          ExplicitTop = 271
          ExplicitWidth = 834
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 440
            Width = 681
          end
          inherited btnBuscar: TcxButton
            Left = 973
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitLeft = 4
        ExplicitTop = 26
        inherited pnlCadastro: TPanel
          Height = 476
        end
        inline FrameProduto: TFrameProduto
          Left = 60
          Top = 0
          Width = 1015
          Height = 476
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
          ExplicitLeft = -173
          ExplicitTop = -163
          inherited dxLayoutControl: TdxLayoutControl
            Width = 1015
            Height = 476
            inherited edtGETIN: TcxDBTextEdit
              Left = 293
              ExplicitLeft = 293
            end
            inherited edtDescricaoPDV: TcxDBTextEdit
              Left = 600
              ExplicitLeft = 600
            end
            inherited edtDescricaoDetalhada: TcxDBMemo
              ExplicitWidth = 813
              Width = 813
            end
            inherited edtValorCompra: TcxDBCurrencyEdit
              Left = 105
              ExplicitLeft = 105
            end
            inherited edtValorMinimoVenda: TcxDBCurrencyEdit
              Left = 199
              ExplicitLeft = 199
            end
            inherited edtValorSugerido: TcxDBCurrencyEdit
              Left = 326
              ExplicitLeft = 326
            end
            inherited edtCustoMedioLiquido: TcxDBCurrencyEdit
              Left = 418
              ExplicitLeft = 418
            end
            inherited edtCodigoBalanca: TcxDBTextEdit
              Left = 661
              ExplicitLeft = 661
            end
            inherited chkInativ: TcxDBCheckBox
              Left = 902
              ExplicitLeft = 902
            end
            inherited edtValorLucroZero: TcxDBCurrencyEdit
              Left = 530
              ExplicitLeft = 530
            end
            inherited edtValorLucroMinimo: TcxDBCurrencyEdit
              Left = 650
              ExplicitLeft = 650
            end
            inherited edtValorLucroMaximo: TcxDBCurrencyEdit
              Left = 770
              ExplicitLeft = 770
            end
            inherited edtMarkup: TcxDBCurrencyEdit
              Left = 890
              ExplicitLeft = 890
            end
            inherited edtImagem: TcxImage
              Left = 891
              ExplicitLeft = 891
            end
            inherited edtEstoqueMinimo: TcxDBCurrencyEdit
              ExplicitWidth = 153
              Width = 153
            end
            inherited edtEstoqueMaximo: TcxDBCurrencyEdit
              Left = 247
              ExplicitLeft = 247
              ExplicitWidth = 153
              Width = 153
            end
            inherited edtEstoqueIdeal: TcxDBCurrencyEdit
              Left = 391
              ExplicitLeft = 391
              ExplicitWidth = 154
              Width = 154
            end
            inherited edtDataCadastro: TcxDBDateEdit
              Left = 535
              ExplicitLeft = 535
              ExplicitWidth = 151
              Width = 151
            end
            inherited edtNCM: TcxDBTextEdit
              Left = 676
              ExplicitLeft = 676
              ExplicitWidth = 157
              Width = 157
            end
            inherited grpTipoProduto: TcxDBRadioGroup
              Left = 823
              ExplicitLeft = 823
            end
            inherited edtCaminhoImagem: TcxDBButtonEdit
              Left = 891
              ExplicitLeft = 891
              ExplicitWidth = 90
              Width = 90
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem7: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem6: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem8: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlGroup4: TdxLayoutGroup
              Index = 0
            end
            inherited dxLayoutControlGroup1: TdxLayoutGroup
              Index = 1
            end
            inherited dxLayoutControlGroup2: TdxLayoutGroup
              Index = 5
            end
            inherited dxLayoutControlItem9: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem10: TdxLayoutItem
              Index = 4
            end
            inherited dxLayoutControlItem19: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem21: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem17: TdxLayoutItem
              Index = 5
            end
            inherited dxLayoutControlItem16: TdxLayoutItem
              Index = 6
            end
            inherited dxLayoutControlItem15: TdxLayoutItem
              Index = 7
            end
            inherited dxLayoutControlItem14: TdxLayoutItem
              Index = 8
            end
            inherited dxLayoutControlItem22: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup5: TdxLayoutAutoCreatedGroup
              Index = 2
              AutoCreated = True
            end
            inherited dxLayoutControlGroup6: TdxLayoutGroup
              Index = 3
            end
            inherited dxLayoutControlItem23: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem24: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem25: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem26: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlGroup3: TdxLayoutGroup
              Index = 4
            end
            inherited dxLayoutControlItem13: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem12: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem11: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem18: TdxLayoutItem
              Index = 4
            end
            inherited dxLayoutControlItem27: TdxLayoutItem
              Index = 5
            end
            inherited dxLayoutControlItem20: TdxLayoutItem
              Index = 6
            end
            inherited dxLayoutControlItem29: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem28: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup7: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 834
        ExplicitHeight = 341
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 1079
          ExplicitHeight = 315
          Height = 309
          Width = 1075
          inherited cxGridFiltro: TcxGrid
            Height = 282
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 282
            Width = 687
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 1079
          Width = 1075
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 266
            Width = 507
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 788
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 1073
            Width = 1069
            inherited memoFiltroSQL: TcxMemo
              Width = 1042
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              Width = 1042
            end
            inherited imgFiltroSQL: TcxImage
              Left = 1045
            end
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 883
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 906
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 541
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 1079
      inherited lblPrimeiroEdit: TLabel
        Width = 144
        Caption = 'edtCodigoInterno'
        ExplicitWidth = 144
      end
      inherited lblFrame: TLabel
        Width = 115
        Caption = 'FrameProduto'
        ExplicitWidth = 115
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
    DataSet = DM.cdsProduto
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
    ServerMethodName = 'TServerMethods.setSQLProduto'
  end
end
