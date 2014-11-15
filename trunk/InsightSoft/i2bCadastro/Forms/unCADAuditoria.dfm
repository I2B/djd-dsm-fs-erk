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
    ExplicitHeight = 442
    inherited lblRegistros: TLabel
      Top = 425
      ExplicitTop = 425
    end
    inherited imgImprimir: TcxImage
      Top = 311
      ExplicitTop = 311
    end
    inherited imgExportar: TcxImage
      Top = 368
      ExplicitTop = 368
    end
  end
  inherited pnlClient: TPanel
    Width = 832
    Height = 442
    ExplicitWidth = 832
    ExplicitHeight = 442
    inherited cxPageControl: TcxPageControl
      Width = 832
      Height = 414
      ExplicitWidth = 832
      ExplicitHeight = 414
      ClientRectBottom = 412
      ClientRectRight = 830
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 828
        ExplicitHeight = 382
        inherited cxGrid: TcxGrid
          Width = 828
          Height = 382
          ExplicitLeft = 4
          ExplicitWidth = 828
          ExplicitHeight = 382
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidauditoria: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idauditoria'
            end
            object cxGridDBdataregistro: TcxGridDBColumn
              Caption = 'Data'
              DataBinding.FieldName = 'dataregistro'
              Width = 78
            end
            object cxGridDBhoraregistro: TcxGridDBColumn
              Caption = 'Hora'
              DataBinding.FieldName = 'horaregistro'
              Width = 88
            end
            object cxGridDBacao: TcxGridDBColumn
              Caption = 'A'#231#227'o'
              DataBinding.FieldName = 'acao'
              Width = 276
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 193
            end
            object cxGridDBidunidadenegocio: TcxGridDBColumn
              Caption = 'Unidade Neg'#243'cio'
              DataBinding.FieldName = 'idunidadenegocio'
              Width = 149
            end
            object cxGridDBnomefantasia: TcxGridDBColumn
              Caption = 'Nome Fantasia'
              DataBinding.FieldName = 'nomefantasia'
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
      ExplicitWidth = 832
    end
  end
  inherited cxHintStyleController: TcxHintStyleController
    Left = 294
    Top = 7
  end
  inherited dxBarManager: TdxBarManager
    Left = 384
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dts: TDataSource
    DataSet = DM.cdsAuditoria
    Left = 544
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 344
    Top = 8
  end
  inherited RadialMenuExportar: TdxRibbonRadialMenu
    Left = 424
    Top = 8
  end
  inherited SaveDialog: TSaveDialog
    Left = 462
    Top = 10
  end
  object ServerMethod: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'filtro'
        ParamType = ptInput
      end>
    SQLConnection = DM.conServer
    ServerMethodName = 'TServerMethods.setSQLAuditoria'
    Left = 584
    Top = 8
  end
end
