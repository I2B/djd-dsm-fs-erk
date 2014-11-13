inherited frmCADAuditoria: TfrmCADAuditoria
  Caption = 'Auditoria'
  ClientHeight = 442
  ClientWidth = 892
  ExplicitWidth = 908
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 442
    ExplicitHeight = 8
    inherited lblRegistros: TLabel
      Top = 425
    end
    inherited imgImprimir: TcxImage
      Top = 311
      ExplicitTop = -123
    end
    inherited imgExportar: TcxImage
      Top = 368
      ExplicitTop = -66
    end
  end
  inherited pnlClient: TPanel
    Width = 832
    Height = 442
    ExplicitWidth = 102
    ExplicitHeight = 8
    inherited cxPageControl: TcxPageControl
      Width = 832
      Height = 414
      ExplicitWidth = 102
      ClientRectBottom = 412
      ClientRectRight = 830
      inherited cxTabGrid: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 30
        ExplicitWidth = 98
        ExplicitHeight = 340
        inherited cxGrid: TcxGrid
          Width = 828
          Height = 382
          ExplicitWidth = 98
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidauditoria: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idauditoria'
            end
            object cxGridDBidempresa: TcxGridDBColumn
              Caption = 'Unidade Neg'#243'cio'
              DataBinding.FieldName = 'idempresa'
              Width = 200
            end
            object cxGridDBdataregistro: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'dataregistro'
              Width = 71
            end
            object cxGridDBhoraregistro: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'horaregistro'
            end
            object cxGridDBacao: TcxGridDBColumn
              Caption = 'A'#231#227'o'
              DataBinding.FieldName = 'acao'
              Width = 295
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 124
            end
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 30
        ExplicitWidth = 828
        ExplicitHeight = 382
      end
    end
    inherited pnlTop: TPanel
      Width = 832
      ExplicitWidth = 102
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
    DataSet = DM.cdsAuditoria
  end
end
