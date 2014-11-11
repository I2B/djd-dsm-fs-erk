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
    ExplicitHeight = 0
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
    ExplicitWidth = 892
    ExplicitHeight = 439
    inherited cxPageControl: TcxPageControl
      Width = 832
      Height = 370
      ExplicitWidth = 832
      ExplicitHeight = 411
      ClientRectBottom = 368
      ClientRectRight = 830
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 828
        ExplicitHeight = 379
        inherited cxGrid: TcxGrid
          Width = 828
          Height = 338
          ExplicitWidth = 828
          ExplicitHeight = 379
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
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 828
        ExplicitHeight = 379
        inherited pnlCadastro: TPanel
          Height = 338
          ExplicitHeight = 379
        end
        inline FrameSerie: TFrameSerie
          Left = 60
          Top = 0
          Width = 768
          Height = 338
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
            Height = 338
            ExplicitWidth = 768
            ExplicitHeight = 379
            inherited Label1: TLabel
              Width = 30
              ExplicitWidth = 30
            end
            inherited Label2: TLabel
              Width = 32
              ExplicitWidth = 32
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
    inherited pnlBottom: TPanel
      Top = 398
      Width = 832
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
end
