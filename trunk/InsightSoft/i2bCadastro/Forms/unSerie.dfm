inherited frmSerie: TfrmSerie
  Caption = 'S'#233'rie'
  ClientHeight = 439
  ClientWidth = 892
  ExplicitWidth = 908
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 439
    TabOrder = 2
    ExplicitHeight = 439
    inherited lblRegistros: TLabel
      Top = 422
      ExplicitTop = 422
    end
    inherited imgImprimir: TcxImage
      Top = 308
      TabOrder = 3
      ExplicitTop = 308
    end
    inherited imgExportar: TcxImage
      Top = 365
      TabOrder = 4
      ExplicitTop = 365
    end
    inherited imgNovo: TcxImage
      TabOrder = 0
    end
    inherited imgEditar: TcxImage
      TabOrder = 1
    end
    inherited imgInativar: TcxImage
      TabOrder = 2
    end
  end
  inherited pnlClient: TPanel
    Width = 832
    Height = 439
    ExplicitWidth = 832
    ExplicitHeight = 439
    inherited cxPageControl: TcxPageControl
      Width = 832
      Height = 411
      ExplicitWidth = 832
      ExplicitHeight = 411
      ClientRectBottom = 409
      ClientRectRight = 830
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 828
        ExplicitHeight = 379
        inherited cxGrid: TcxGrid
          Width = 828
          Height = 309
          ExplicitWidth = 828
          ExplicitHeight = 309
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidserie: TcxGridDBColumn
              DataBinding.FieldName = 'idserie'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBdescricao: TcxGridDBColumn
              DataBinding.FieldName = 'descricao'
            end
            object cxGridDBnumeracao: TcxGridDBColumn
              DataBinding.FieldName = 'numeracao'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 309
          Width = 828
          ExplicitTop = 309
          ExplicitWidth = 828
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 828
        ExplicitHeight = 379
        inherited pnlCadastro: TPanel
          Height = 379
          ExplicitHeight = 379
        end
        inline FrameSerie: TFrameSerie
          Left = 60
          Top = 0
          Width = 768
          Height = 379
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
          ExplicitWidth = 768
          ExplicitHeight = 379
          inherited dxLayoutControl: TdxLayoutControl
            Width = 768
            Height = 379
            ExplicitWidth = 768
            ExplicitHeight = 309
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
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 4
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 828
        ExplicitHeight = 379
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 828
          ExplicitHeight = 212
          Height = 212
          Width = 828
          inherited cxGridFiltro: TcxGrid
            Height = 185
            ExplicitHeight = 185
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 440
            ExplicitHeight = 185
            Height = 185
            Width = 440
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 828
          Width = 828
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitHeight = 21
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 21
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 21
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 21
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 21
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 832
      ExplicitWidth = 832
      inherited lblPrimeiroEdit: TLabel
        Width = 108
        Caption = 'cxDBTextEdit1'
        ExplicitWidth = 108
      end
      inherited lblFrame: TLabel
        Width = 89
        Caption = 'FrameSerie'
        ExplicitWidth = 89
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
    DataSet = DM.cdsSerie
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
    ServerMethodName = 'TServerMethods.setSQLSerie'
  end
end
