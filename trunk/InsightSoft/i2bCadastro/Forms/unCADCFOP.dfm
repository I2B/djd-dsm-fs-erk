inherited frmCADCFOP: TfrmCADCFOP
  Caption = 'CFOP - C'#243'digo Fiscal de Opera'#231#245'es e Presta'#231#245'es'
  ClientHeight = 424
  ClientWidth = 830
  ExplicitWidth = 846
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 424
    ExplicitHeight = 424
    inherited lblRegistros: TLabel
      Top = 407
      ExplicitTop = 407
    end
    inherited imgImprimir: TcxImage
      Top = 293
      ExplicitTop = 293
    end
    inherited imgExportar: TcxImage
      Top = 350
      ExplicitTop = 350
    end
  end
  inherited pnlClient: TPanel
    Width = 770
    Height = 424
    ExplicitWidth = 770
    ExplicitHeight = 424
    inherited cxPageControl: TcxPageControl
      Width = 770
      Height = 396
      ExplicitWidth = 770
      ExplicitHeight = 396
      ClientRectBottom = 394
      ClientRectRight = 768
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 766
        ExplicitHeight = 364
        inherited cxGrid: TcxGrid
          Width = 766
          Height = 294
          ExplicitWidth = 766
          ExplicitHeight = 294
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
        inherited pnlBottom: TPanel
          Top = 294
          Width = 766
          ExplicitTop = 294
          ExplicitWidth = 766
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
            ExplicitWidth = 668
            ExplicitHeight = 23
            Width = 668
          end
          inherited btnBuscar: TcxButton
            Left = 656
            ExplicitLeft = 656
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
        ExplicitWidth = 766
        ExplicitHeight = 364
        inherited pnlCadastro: TPanel
          Height = 364
          ExplicitHeight = 364
        end
        inline FrameCFOP: TFrameCFOP
          Left = 60
          Top = 0
          Width = 706
          Height = 364
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
          ExplicitWidth = 706
          ExplicitHeight = 364
          inherited dxLayoutControl: TdxLayoutControl
            Width = 706
            Height = 364
            ExplicitWidth = 706
            ExplicitHeight = 364
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
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 766
        ExplicitHeight = 364
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 766
          Width = 766
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
          ExplicitWidth = 766
          ExplicitHeight = 197
          Height = 197
          Width = 766
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 770
      ExplicitWidth = 770
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
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'filtro'
        ParamType = ptInput
      end>
    SQLConnection = DM.conServer
    ServerMethodName = 'TServerMethods.setSQLCFOP'
  end
end
