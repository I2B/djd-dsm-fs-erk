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
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 365
    end
    inherited imgImprimir: TcxImage
      Top = 251
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 308
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 788
    Height = 382
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 788
      Height = 354
      ExplicitWidth = 64
      ClientRectBottom = 352
      ClientRectRight = 786
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 60
        ExplicitHeight = 339
        inherited cxGrid: TcxGrid
          Width = 784
          Height = 252
          ExplicitWidth = 60
          ExplicitHeight = 269
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
          ExplicitTop = 269
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
            Width = 724
          end
          inherited btnBuscar: TcxButton
            Left = 680
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
          Height = 322
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
          ExplicitWidth = 0
          ExplicitHeight = 339
          inherited dxLayoutControl: TdxLayoutControl
            Width = 724
            Height = 322
            ExplicitWidth = 3
            ExplicitHeight = 339
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
        ExplicitWidth = 63
        ExplicitHeight = 339
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 63
          Height = 155
          Width = 784
          inherited cxGridFiltro: TcxGrid
            Height = 128
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 128
            Width = 476
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 63
          Width = 784
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 268
            Width = 214
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 495
            ExplicitLeft = -226
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 55
            Width = 776
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 49
              Width = 770
            end
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 590
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 613
          end
          inherited cxButton1: TcxButton
            Width = 248
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 788
      ExplicitWidth = 64
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
