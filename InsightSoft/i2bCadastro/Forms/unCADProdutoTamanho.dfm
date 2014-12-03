inherited frmCADProdutoTamanho: TfrmCADProdutoTamanho
  Caption = 'Tamanho'
  ClientHeight = 436
  ClientWidth = 905
  ExplicitWidth = 921
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 436
    ExplicitHeight = 386
    inherited lblRegistros: TLabel
      Top = 419
      ExplicitTop = 369
    end
    inherited imgImprimir: TcxImage
      Top = 305
      ExplicitTop = 255
    end
    inherited imgExportar: TcxImage
      Top = 362
      ExplicitTop = 312
    end
  end
  inherited pnlClient: TPanel
    Width = 845
    Height = 436
    ExplicitWidth = 689
    ExplicitHeight = 386
    inherited cxPageControl: TcxPageControl
      Width = 845
      Height = 408
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 689
      ExplicitHeight = 358
      ClientRectBottom = 406
      ClientRectRight = 843
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 841
        ExplicitHeight = 376
        inherited cxGrid: TcxGrid
          Width = 841
          Height = 306
          ExplicitWidth = 841
          ExplicitHeight = 306
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidestoquetamanho: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idestoquetamanho'
            end
            object cxGridDBcodigo: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'codigo'
              Width = 102
            end
            object cxGridDBnome: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'nome'
              Width = 262
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 306
          Width = 841
          ExplicitTop = 306
          ExplicitWidth = 841
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
            ExplicitWidth = 743
            ExplicitHeight = 23
            Width = 743
          end
          inherited btnBuscar: TcxButton
            Left = 737
            ExplicitLeft = 737
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
        ExplicitWidth = 685
        ExplicitHeight = 326
        inherited pnlCadastro: TPanel
          Height = 376
          ExplicitHeight = 326
        end
        inline FrameProdutoTamanho: TFrameProdutoTamanho
          Left = 60
          Top = 0
          Width = 781
          Height = 376
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
          ExplicitWidth = 625
          ExplicitHeight = 326
          inherited dxLayoutControl: TdxLayoutControl
            Width = 781
            Height = 376
            ExplicitWidth = 781
            ExplicitHeight = 376
            inherited edtCodigo: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtDescricao: TcxDBTextEdit
              ExplicitHeight = 23
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
        ExplicitWidth = 685
        ExplicitHeight = 326
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 685
          ExplicitHeight = 159
          Height = 209
          Width = 841
          inherited cxGridFiltro: TcxGrid
            Height = 182
            ExplicitHeight = 132
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 297
            ExplicitHeight = 132
            Height = 182
            Width = 453
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 685
          Width = 841
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 115
            ExplicitHeight = 23
            Width = 271
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 552
            ExplicitLeft = 396
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 677
            Width = 833
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 650
              Width = 806
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 650
              Width = 806
            end
            inherited imgFiltroSQL: TcxImage
              Left = 809
              ExplicitLeft = 653
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 647
            ExplicitLeft = 491
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 670
            ExplicitLeft = 514
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 305
            ExplicitWidth = 149
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
      Width = 845
      ExplicitWidth = 689
      inherited lblPrimeiroEdit: TLabel
        Width = 87
        Caption = 'edtCodigo'
        ExplicitWidth = 87
      end
      inherited lblFrame: TLabel
        Top = -3
        Width = 187
        Caption = 'FrameProdutoTamanho'
        ExplicitTop = -3
        ExplicitWidth = 187
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
    DataSet = DM.cdsProdutoTamanho
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
    ServerMethodName = 'TServerMethods.setSQLProdutoTamanho'
  end
end
