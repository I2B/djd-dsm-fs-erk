inherited frmCADCFOP: TfrmCADCFOP
  Caption = 'frmCADCFOP'
  ClientHeight = 424
  ClientWidth = 830
  ExplicitWidth = 846
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 424
    ExplicitHeight = 8
    inherited lblRegistros: TLabel
      Top = 407
    end
    inherited imgImprimir: TcxImage
      Top = 293
      ExplicitTop = -123
    end
    inherited imgExportar: TcxImage
      Top = 350
      ExplicitTop = -66
    end
  end
  inherited pnlClient: TPanel
    Width = 770
    Height = 424
    ExplicitWidth = 102
    ExplicitHeight = 8
    inherited cxPageControl: TcxPageControl
      Width = 770
      Height = 326
      ExplicitWidth = 102
      ClientRectBottom = 324
      ClientRectRight = 768
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 98
        inherited cxGrid: TcxGrid
          Width = 766
          Height = 294
          ExplicitWidth = 98
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidcfop: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idcfop'
            end
            object cxGridDBcfop: TcxGridDBColumn
              Caption = 'CFOP'
              DataBinding.FieldName = 'cfop'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 505
            end
            object cxGridDBdescricaonf: TcxGridDBColumn
              Caption = 'Descri'#231#227'o NF'
              DataBinding.FieldName = 'descricaonf'
              Width = 338
            end
            object cxGridDBaplicacao: TcxGridDBColumn
              Caption = 'Aplica'#231#227'o'
              DataBinding.FieldName = 'aplicacao'
            end
            object cxGridDBidtipooperacao: TcxGridDBColumn
              Caption = 'Tipo Opera'#231#227'o'
              DataBinding.FieldName = 'idtipooperacao'
              Width = 80
            end
            object cxGridDBtipooperacaodescricao: TcxGridDBColumn
              Caption = 'Tipo Opera'#231#227'o Descri'#231#227'o'
              DataBinding.FieldName = 'tipooperacaodescricao'
            end
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 30
        ExplicitWidth = 98
        inherited pnlCadastro: TPanel
          Height = 294
        end
        inline FrameCFOP: TFrameCFOP
          Left = 60
          Top = 0
          Width = 706
          Height = 294
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
          ExplicitLeft = 186
          ExplicitTop = -14
          inherited dxLayoutControl: TdxLayoutControl
            Width = 706
            Height = 294
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
              Index = 2
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 770
      ExplicitWidth = 102
      inherited lblPrimeiroEdit: TLabel
        Width = 72
        Caption = 'edtCFOP'
        ExplicitWidth = 72
      end
      inherited lblFrame: TLabel
        Width = 95
        Caption = 'FrameCFOP'
        ExplicitWidth = 95
      end
    end
    inherited pnlBottom: TPanel
      Top = 354
      Width = 770
      ExplicitTop = -62
      ExplicitWidth = 102
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
        Width = 668
      end
      inherited btnBuscar: TcxButton
        Left = 656
        ExplicitLeft = -12
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
    DataSet = DM.cdsCFOP
  end
  inherited ServerMethod: TSqlServerMethod
    SQLConnection = DM.conServer
  end
end
