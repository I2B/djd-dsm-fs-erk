inherited frmCADEstado: TfrmCADEstado
  Caption = 'Estado'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidestado: TcxGridDBColumn
              Caption = 'UF'
              DataBinding.FieldName = 'idestado'
              Width = 31
            end
            object cxGridDBcodigoibge: TcxGridDBColumn
              Caption = 'C'#243'digo IBGE'
              DataBinding.FieldName = 'codigoibge'
              Width = 95
            end
            object cxGridDBnome: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'nome'
              Width = 354
            end
            object cxGridDBidpais: TcxGridDBColumn
              Caption = 'ID Pa'#237's'
              DataBinding.FieldName = 'idpais'
              Width = 73
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
        inline FrameEstado: TFrameEstado
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
            inherited edtEstado: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
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
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 2
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
        end
      end
    end
    inherited pnlTop: TPanel
      ExplicitLeft = 0
      inherited lblPrimeiroEdit: TLabel
        Width = 48
        Caption = 'edtUF'
        ExplicitWidth = 48
      end
      inherited lblFrame: TLabel
        Width = 100
        Caption = 'frameEstado'
        ExplicitWidth = 100
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
    DataSet = DM.cdsEstado
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
    ServerMethodName = 'TServerMethods.setSQLEstado'
  end
end
