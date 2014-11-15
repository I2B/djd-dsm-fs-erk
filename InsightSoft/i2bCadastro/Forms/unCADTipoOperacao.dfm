inherited frmCADTipoOperacao: TfrmCADTipoOperacao
  Caption = 'Tipo de Opera'#231#227'o'
  ClientHeight = 391
  ClientWidth = 809
  ExplicitWidth = 825
  ExplicitHeight = 430
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 391
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 374
    end
    inherited imgImprimir: TcxImage
      Top = 260
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 317
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 749
    Height = 391
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 749
      Height = 363
      ExplicitWidth = 64
      ExplicitHeight = 371
      ClientRectBottom = 361
      ClientRectRight = 747
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 745
        ExplicitHeight = 331
        inherited cxGrid: TcxGrid
          Width = 745
          Height = 261
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 745
          ExplicitHeight = 261
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidtipooperacao: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idtipooperacao'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 384
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 261
          Width = 745
          ExplicitTop = 261
          ExplicitWidth = 745
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
            ExplicitWidth = 343
            ExplicitHeight = 23
            Width = 343
          end
          inherited btnBuscar: TcxButton
            Left = 635
            ExplicitLeft = 635
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
          Height = 331
        end
        inline FrameTipoOperacao: TFrameTipoOperacao
          Left = 60
          Top = 0
          Width = 685
          Height = 331
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
            Width = 685
            Height = 331
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
        ExplicitWidth = 61
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          Height = 331
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitHeight = 23
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            Height = 122
            inherited memoFiltroDesenvolvido: TcxMemo
              Height = 95
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 749
      ExplicitWidth = 64
      inherited lblPrimeiroEdit: TLabel
        Width = 103
        Caption = 'edtDescricao'
        ExplicitWidth = 103
      end
      inherited lblFrame: TLabel
        Width = 164
        Caption = 'FrameTipoOperacao'
        ExplicitWidth = 164
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
    DataSet = DM.cdsTipoOperacao
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
    ServerMethodName = 'TServerMethods.setSQLTipoOperacao'
  end
end
