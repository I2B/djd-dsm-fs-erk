inherited frmCadPortador: TfrmCadPortador
  Caption = 'Portador'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      inherited cxTabGrid: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 30
        inherited cxGrid: TcxGrid
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidportador: TcxGridDBColumn
              Caption = 'ID Portador'
              DataBinding.FieldName = 'idportador'
              Width = 82
            end
            object cxGridDBidbanco: TcxGridDBColumn
              Caption = 'ID Banco'
              DataBinding.FieldName = 'idbanco'
              Width = 75
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Portador'
              DataBinding.FieldName = 'descricao'
              Width = 320
            end
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        inline FramePortador: TFramePortador
          Left = 60
          Top = 0
          Width = 778
          Height = 269
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
          ExplicitTop = 120
          ExplicitHeight = 9
          inherited dxLayoutControl: TdxLayoutControl
            Width = 778
            Height = 269
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
    end
    inherited pnlTop: TPanel
      inherited lblPrimeiroEdit: TLabel
        Width = 75
        Caption = 'edtBanco'
        ExplicitWidth = 75
      end
      inherited lblFrame: TLabel
        Width = 120
        Caption = 'FramePortador'
        ExplicitWidth = 120
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
    DataSet = DM.cdsPortador
  end
end
