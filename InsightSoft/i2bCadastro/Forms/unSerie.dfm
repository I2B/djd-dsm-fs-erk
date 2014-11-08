inherited frmSerie: TfrmSerie
  Caption = 'S'#233'rie'
  ClientHeight = 439
  ClientWidth = 892
  FormStyle = fsMDIChild
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
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 824
        ExplicitHeight = 381
        inherited cxGrid: TcxGrid
          Width = 824
          Height = 381
          ExplicitWidth = 824
          ExplicitHeight = 381
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
        ExplicitLeft = 2
        ExplicitTop = 30
        ExplicitWidth = 828
        ExplicitHeight = 379
        inherited pnlCadastro: TPanel
          Height = 379
          ExplicitHeight = 379
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
end
