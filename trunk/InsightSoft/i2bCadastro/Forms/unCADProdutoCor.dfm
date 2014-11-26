inherited frmCADProdutoCor: TfrmCADProdutoCor
  Caption = 'Cor'
  ClientHeight = 409
  ClientWidth = 733
  ExplicitWidth = 749
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 409
    ExplicitHeight = 409
    inherited lblRegistros: TLabel
      Top = 392
      ExplicitTop = 392
    end
    inherited imgImprimir: TcxImage
      Top = 278
      ExplicitTop = 278
    end
    inherited imgExportar: TcxImage
      Top = 335
      ExplicitTop = 335
    end
  end
  inherited pnlClient: TPanel
    Width = 673
    Height = 409
    ExplicitWidth = 673
    ExplicitHeight = 409
    inherited cxPageControl: TcxPageControl
      Width = 673
      Height = 381
      ExplicitWidth = 673
      ExplicitHeight = 381
      ClientRectBottom = 379
      ClientRectRight = 671
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 669
        ExplicitHeight = 349
        inherited cxGrid: TcxGrid
          Width = 669
          Height = 279
          ExplicitWidth = 669
          ExplicitHeight = 279
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidestoquecor: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idestoquecor'
              Width = 75
            end
            object cxGridDBcodigo: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'codigo'
              Width = 82
            end
            object cxGridDBnome: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'nome'
              Width = 316
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 279
          Width = 669
          ExplicitTop = 279
          ExplicitWidth = 669
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 571
            Width = 571
          end
          inherited btnBuscar: TcxButton
            Left = 565
            ExplicitLeft = 565
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 669
        ExplicitHeight = 349
        inherited pnlCadastro: TPanel
          Height = 349
          ExplicitHeight = 349
        end
        inline FrameProdutoCor: TFrameProdutoCor
          Left = 60
          Top = 0
          Width = 609
          Height = 349
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
          ExplicitWidth = 609
          ExplicitHeight = 349
          inherited dxLayoutControl: TdxLayoutControl
            Width = 609
            Height = 349
            ExplicitWidth = 609
            ExplicitHeight = 349
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
        ExplicitWidth = 669
        ExplicitHeight = 349
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 669
          ExplicitHeight = 182
          Height = 182
          Width = 669
          inherited cxGridFiltro: TcxGrid
            Height = 155
            ExplicitHeight = 155
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 281
            ExplicitHeight = 155
            Height = 155
            Width = 281
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 669
          Width = 669
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 99
            Width = 99
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 380
            ExplicitLeft = 380
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 661
            Width = 661
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 634
              Width = 634
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 634
              Width = 634
            end
            inherited imgFiltroSQL: TcxImage
              Left = 637
              ExplicitLeft = 637
            end
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 475
            ExplicitLeft = 475
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 498
            ExplicitLeft = 498
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 133
            ExplicitWidth = 133
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 673
      ExplicitWidth = 673
      inherited lblPrimeiroEdit: TLabel
        Width = 87
        Caption = 'edtCodigo'
        ExplicitWidth = 87
      end
      inherited lblFrame: TLabel
        Width = 144
        Caption = 'FrameProdutoCor'
        ExplicitWidth = 144
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
    DataSet = DM.cdsProdutoCor
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
    ServerMethodName = 'TServerMethods.setSQLProdutoCor'
  end
end
