inherited frmCADTipoTelefone: TfrmCADTipoTelefone
  Caption = 'Tipo de Telefone'
  ClientHeight = 449
  ClientWidth = 871
  ExplicitWidth = 887
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 449
    ExplicitHeight = 449
    inherited lblRegistros: TLabel
      Top = 432
      ExplicitTop = 432
    end
    inherited imgImprimir: TcxImage
      Top = 318
      ExplicitTop = 318
    end
    inherited imgExportar: TcxImage
      Top = 375
      ExplicitTop = 375
    end
  end
  inherited pnlClient: TPanel
    Width = 811
    Height = 449
    ExplicitWidth = 811
    ExplicitHeight = 449
    inherited cxPageControl: TcxPageControl
      Width = 811
      Height = 421
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 811
      ExplicitHeight = 421
      ClientRectBottom = 419
      ClientRectRight = 809
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 807
        ExplicitHeight = 389
        inherited cxGrid: TcxGrid
          Width = 807
          Height = 319
          ExplicitWidth = 807
          ExplicitHeight = 319
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidtipotelefone: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idtipotelefone'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 319
          Width = 807
          ExplicitTop = 319
          ExplicitWidth = 807
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
            ExplicitWidth = 747
            ExplicitHeight = 23
            Width = 747
          end
          inherited btnBuscar: TcxButton
            Left = 697
            ExplicitLeft = 697
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
        ExplicitWidth = 807
        ExplicitHeight = 389
        inherited pnlCadastro: TPanel
          Height = 389
          ExplicitHeight = 389
        end
        inline FrameTipoTelefone: TFrameTipoTelefone
          Left = 60
          Top = 0
          Width = 747
          Height = 389
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
          ExplicitWidth = 747
          ExplicitHeight = 389
          inherited dxLayoutControl: TdxLayoutControl
            Width = 747
            Height = 389
            ExplicitWidth = 747
            ExplicitHeight = 389
            inherited edtDescricao: TcxDBTextEdit
              ExplicitHeight = 23
            end
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
        ExplicitWidth = 807
        ExplicitHeight = 389
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 807
          ExplicitHeight = 222
          Height = 222
          Width = 807
          inherited cxGridFiltro: TcxGrid
            Height = 195
            ExplicitHeight = 195
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 419
            ExplicitHeight = 195
            Height = 195
            Width = 419
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 807
          Width = 807
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitHeight = 23
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
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
      Width = 811
      ExplicitWidth = 811
      inherited lblPrimeiroEdit: TLabel
        Width = 103
        Caption = 'edtDescricao'
        ExplicitWidth = 103
      end
      inherited lblFrame: TLabel
        Width = 153
        Caption = 'FrameTipoTelefone'
        ExplicitWidth = 153
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
    DataSet = DM.cdsTipoTelefone
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
    ServerMethodName = 'TServerMethods.setSQLTipoTelefone'
  end
end
