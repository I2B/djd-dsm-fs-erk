inherited frmCADRegraFiscalObservacao: TfrmCADRegraFiscalObservacao
  Caption = 'Observa'#231#227'o da Regra Fiscal'
  ClientHeight = 450
  ClientWidth = 891
  ExplicitWidth = 907
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 450
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 433
    end
    inherited imgImprimir: TcxImage
      Top = 319
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 376
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 831
    Height = 450
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 831
      Height = 422
      ExplicitWidth = 64
      ClientRectBottom = 420
      ClientRectRight = 829
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 60
        inherited cxGrid: TcxGrid
          Width = 827
          Height = 320
          ExplicitWidth = 60
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidregrafiscalobservacao: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idregrafiscalobservacao'
            end
            object cxGridDBobservacao: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'observacao'
              Width = 615
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 320
          Width = 827
          ExplicitWidth = 60
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 0
            Width = 767
          end
          inherited btnBuscar: TcxButton
            Left = 717
            ExplicitLeft = -50
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 60
        inherited pnlCadastro: TPanel
          Height = 390
        end
        inline FrameRegraFiscalObservacao: TFrameRegraFiscalObservacao
          Left = 60
          Top = 0
          Width = 767
          Height = 390
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
            Width = 767
            Height = 390
            ExplicitWidth = 0
            ExplicitHeight = 339
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 60
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 60
          Width = 827
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 251
            Width = 251
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 532
            ExplicitLeft = -235
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 46
            Width = 813
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 40
              Width = 807
            end
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 627
            ExplicitLeft = 627
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 650
            ExplicitLeft = 650
          end
          inherited cxButton1: TcxButton
            Width = 285
            ExplicitWidth = 285
          end
        end
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 60
          Height = 223
          Width = 827
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 831
      ExplicitWidth = 64
      inherited lblPrimeiroEdit: TLabel
        Width = 103
        Caption = 'edtDescricao'
        ExplicitWidth = 103
      end
      inherited lblFrame: TLabel
        Width = 233
        Caption = 'FrameRegraFiscalObservacao'
        ExplicitWidth = 233
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
    DataSet = DM.cdsRegraFiscalObservacao
    Top = 14
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
    ServerMethodName = 'TServerMethods.setSQLRegraFiscalObservacao'
  end
end
