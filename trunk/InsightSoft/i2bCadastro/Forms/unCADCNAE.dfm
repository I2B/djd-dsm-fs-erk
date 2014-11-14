inherited frmCADCNAE: TfrmCADCNAE
  Caption = 'frmCADCNAE'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidcnae: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idcnae'
            end
            object cxGridDBcodigo: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'codigo'
              Width = 85
            end
            object cxGridDBdenominacao: TcxGridDBColumn
              Caption = 'Denomina'#231#227'o'
              DataBinding.FieldName = 'denominacao'
              Width = 431
            end
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 30
        inline FrameCNAE: TFrameCNAE
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
          ExplicitTop = -39
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
        Width = 87
        Caption = 'edtCodigo'
        ExplicitWidth = 87
      end
      inherited lblFrame: TLabel
        Width = 97
        Caption = 'FrameCNAE'
        ExplicitWidth = 97
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
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dts: TDataSource
    DataSet = DM.cdsCNAE
  end
  inherited ServerMethod: TSqlServerMethod
    SQLConnection = DM.conServer
  end
end
