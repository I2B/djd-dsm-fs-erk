inherited frmCADAuditoria: TfrmCADAuditoria
  Caption = 'frmCADAuditoria'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      inherited cxTabGrid: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 30
        ExplicitWidth = 836
        ExplicitHeight = 340
        inherited cxGrid: TcxGrid
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
        ExplicitWidth = 836
        ExplicitHeight = 340
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
    DataSet = DM.cdsAuditoria
  end
end
