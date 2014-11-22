inherited frmCADEstoqueTamanho: TfrmCADEstoqueTamanho
  Caption = 'Tamanho'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      Properties.ActivePage = cxTabGrid
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
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
            ExplicitHeight = 23
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
        ExplicitLeft = 2
        ExplicitTop = 30
        inline FrameEstoqueTamanho: TFrameEstoqueTamanho
          Left = 60
          Top = 0
          Width = 778
          Height = 339
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
          ExplicitLeft = 258
          ExplicitTop = 31
          inherited dxLayoutControl: TdxLayoutControl
            Width = 778
            Height = 339
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
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
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
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited pnlTop: TPanel
      inherited lblPrimeiroEdit: TLabel
        Width = 87
        Caption = 'edtCodigo'
        ExplicitWidth = 87
      end
      inherited lblFrame: TLabel
        Width = 187
        Caption = 'FrameEstoqueTamanho'
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
    DataSet = DM.cdsEstoqueTamanho
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
    ServerMethodName = 'TServerMethods.setSQLEstoqueTamanho'
  end
end
