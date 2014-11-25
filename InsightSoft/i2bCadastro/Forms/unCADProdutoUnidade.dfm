inherited frmCADProdutoUnidade: TfrmCADProdutoUnidade
  Caption = 'Unidades de Medida'
  ClientHeight = 382
  ClientWidth = 848
  ExplicitWidth = 864
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 382
    ExplicitHeight = 382
    inherited lblRegistros: TLabel
      Top = 365
      ExplicitTop = 365
    end
    inherited imgImprimir: TcxImage
      Top = 251
      ExplicitTop = 251
    end
    inherited imgExportar: TcxImage
      Top = 308
      ExplicitTop = 308
    end
  end
  inherited pnlClient: TPanel
    Width = 788
    Height = 382
    ExplicitWidth = 788
    ExplicitHeight = 382
    inherited cxPageControl: TcxPageControl
      Width = 788
      Height = 354
      ExplicitWidth = 788
      ExplicitHeight = 354
      ClientRectBottom = 352
      ClientRectRight = 786
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 784
        ExplicitHeight = 322
        inherited cxGrid: TcxGrid
          Width = 784
          Height = 252
          ExplicitWidth = 784
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidprodutounidade: TcxGridDBColumn
              DataBinding.FieldName = 'idprodutounidade'
              Width = 68
            end
            object cxGridDBsigla: TcxGridDBColumn
              DataBinding.FieldName = 'sigla'
              Width = 78
            end
            object cxGridDBdescricao: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
              Width = 681
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 252
          Width = 784
          ExplicitTop = 252
          ExplicitWidth = 784
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 724
            Width = 724
          end
          inherited btnBuscar: TcxButton
            Left = 680
            ExplicitLeft = 680
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 784
        ExplicitHeight = 322
        inherited pnlCadastro: TPanel
          Height = 322
          ExplicitHeight = 322
        end
        inline FrameProdutoUnidade: TFrameProdutoUnidade
          Left = 60
          Top = 0
          Width = 724
          Height = 322
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
          ExplicitWidth = 724
          ExplicitHeight = 322
          inherited dxLayoutControl: TdxLayoutControl
            Width = 724
            Height = 322
            ExplicitWidth = 724
            ExplicitHeight = 322
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
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 784
        ExplicitHeight = 322
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 784
          ExplicitHeight = 155
          Height = 155
          Width = 784
          inherited cxGridFiltro: TcxGrid
            Height = 128
            ExplicitHeight = 128
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 396
            ExplicitHeight = 128
            Height = 128
            Width = 396
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 784
          Width = 784
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 214
            ExplicitHeight = 21
            Width = 214
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 495
            ExplicitLeft = 495
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 21
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 776
            Width = 776
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 749
              Width = 749
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 749
              Width = 749
            end
            inherited imgFiltroSQL: TcxImage
              Left = 752
              ExplicitLeft = 752
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 21
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 21
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 590
            Width = 248
            ExplicitLeft = 590
            ExplicitWidth = 248
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 613
            ExplicitLeft = 613
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 21
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 788
      ExplicitWidth = 788
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
