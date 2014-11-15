inherited frmCADBanco: TfrmCADBanco
  Caption = 'Bancos'
  ClientHeight = 404
  ClientWidth = 789
  ExplicitWidth = 805
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 404
    ExplicitHeight = 404
    inherited lblRegistros: TLabel
      Top = 387
      ExplicitTop = 387
    end
    inherited imgImprimir: TcxImage
      Top = 273
      ExplicitTop = 273
    end
    inherited imgExportar: TcxImage
      Top = 330
      ExplicitTop = 330
    end
  end
  inherited pnlClient: TPanel
    Width = 729
    Height = 404
    ExplicitWidth = 729
    ExplicitHeight = 404
    inherited cxPageControl: TcxPageControl
      Width = 729
      Height = 376
      ExplicitWidth = 729
      ExplicitHeight = 376
      ClientRectBottom = 374
      ClientRectRight = 727
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 725
        ExplicitHeight = 344
        inherited cxGrid: TcxGrid
          Width = 725
          Height = 274
          ExplicitLeft = 3
          ExplicitTop = 4
          ExplicitWidth = 725
          ExplicitHeight = 274
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidbanco: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idbanco'
              Width = 83
            end
            object cxGridDBnome: TcxGridDBColumn
              Caption = 'Banco'
              DataBinding.FieldName = 'nome'
              Width = 396
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 274
          Width = 725
          ExplicitTop = 274
          ExplicitWidth = 725
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
            ExplicitWidth = 627
            ExplicitHeight = 23
            Width = 627
          end
          inherited btnBuscar: TcxButton
            Left = 615
            ExplicitLeft = 615
          end
          inherited cbSQL: TcxComboBox
            ExplicitHeight = 23
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 725
        ExplicitHeight = 344
        inherited pnlCadastro: TPanel
          Height = 344
          ExplicitHeight = 344
        end
        inline FrameBanco: TFrameBanco
          Left = 60
          Top = 0
          Width = 665
          Height = 344
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
          ExplicitWidth = 665
          ExplicitHeight = 344
          inherited dxLayoutControl: TdxLayoutControl
            Width = 665
            Height = 344
            ExplicitWidth = 665
            ExplicitHeight = 344
            inherited edtBanco: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtID: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 725
        ExplicitHeight = 344
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 725
          Width = 725
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitHeight = 23
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
        end
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 725
          ExplicitHeight = 177
          Height = 177
          Width = 725
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 729
      ExplicitWidth = 729
      inherited lblPrimeiroEdit: TLabel
        Width = 44
        Caption = 'edtID'
        ExplicitWidth = 44
      end
      inherited lblFrame: TLabel
        Width = 98
        Caption = 'FrameBanco'
        ExplicitWidth = 98
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
    DataSet = DM.cdsBanco
    Left = 168
    Top = 280
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
    ServerMethodName = 'TServerMethods.setSQLBanco'
  end
end
