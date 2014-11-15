inherited frmCADCNAE: TfrmCADCNAE
  Caption = 'CNAE - C'#243'digo Nacional da Atividade Econ'#244'mica'
  ClientHeight = 424
  ClientWidth = 831
  ExplicitWidth = 847
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
    Width = 771
    Height = 424
    ExplicitWidth = 771
    ExplicitHeight = 424
    inherited cxPageControl: TcxPageControl
      Width = 771
      Height = 396
      ExplicitWidth = 771
      ExplicitHeight = 396
      ClientRectBottom = 394
      ClientRectRight = 769
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 767
        ExplicitHeight = 364
        inherited cxGrid: TcxGrid
          Width = 767
          Height = 294
          ExplicitWidth = 767
          ExplicitHeight = 294
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
        inherited pnlBottom: TPanel
          Top = 294
          Width = 767
          ExplicitTop = 294
          ExplicitWidth = 767
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
            ExplicitWidth = 669
            ExplicitHeight = 23
            Width = 669
          end
          inherited btnBuscar: TcxButton
            Left = 657
            ExplicitLeft = 657
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
        ExplicitWidth = 767
        ExplicitHeight = 364
        inherited pnlCadastro: TPanel
          Height = 364
          ExplicitHeight = 364
        end
        inline FrameCNAE: TFrameCNAE
          Left = 60
          Top = 0
          Width = 707
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
          ExplicitWidth = 707
          ExplicitHeight = 364
          inherited dxLayoutControl: TdxLayoutControl
            Width = 707
            Height = 364
            ExplicitWidth = 707
            ExplicitHeight = 364
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 1
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 767
        ExplicitHeight = 364
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 767
          Width = 767
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
          ExplicitWidth = 767
          ExplicitHeight = 197
          Height = 197
          Width = 767
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 771
      ExplicitWidth = 771
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
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'filtro'
        ParamType = ptInput
      end>
    SQLConnection = DM.conServer
    ServerMethodName = 'TServerMethods.setSQLCNAE'
  end
end
