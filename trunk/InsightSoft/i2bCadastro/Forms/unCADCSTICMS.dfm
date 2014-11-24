inherited frmCADCSTICMS: TfrmCADCSTICMS
  Caption = 'CST ICMS'
  ClientHeight = 412
  ClientWidth = 783
  ExplicitWidth = 799
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 412
    ExplicitHeight = 8
    inherited lblRegistros: TLabel
      Top = 395
    end
    inherited imgImprimir: TcxImage
      Top = 281
      ExplicitTop = -123
    end
    inherited imgExportar: TcxImage
      Top = 338
      ExplicitTop = -66
    end
  end
  inherited pnlClient: TPanel
    Width = 723
    Height = 412
    ExplicitWidth = 102
    ExplicitHeight = 8
    inherited cxPageControl: TcxPageControl
      Width = 723
      Height = 384
      ExplicitWidth = 102
      ClientRectBottom = 382
      ClientRectRight = 721
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 98
        inherited cxGrid: TcxGrid
          Width = 719
          Height = 282
          ExplicitWidth = 98
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidcsticms: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idcsticms'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 394
            end
            object cxGridDBobservacao: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'observacao'
              Width = 221
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 282
          Width = 719
          ExplicitWidth = 98
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 0
            Width = 621
          end
          inherited btnBuscar: TcxButton
            Left = 615
            ExplicitLeft = -6
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 98
        inherited pnlCadastro: TPanel
          Height = 352
        end
        inline FrameCSTICMS: TFrameCSTICMS
          Left = 60
          Top = 0
          Width = 659
          Height = 352
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
          ExplicitWidth = 38
          ExplicitHeight = 339
          inherited dxLayoutControl: TdxLayoutControl
            Width = 659
            Height = 352
            ExplicitWidth = 38
            ExplicitHeight = 339
            inherited edtDescricao: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
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
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 98
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 98
          Height = 185
          Width = 719
          inherited cxGridFiltro: TcxGrid
            Height = 158
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 158
            Width = 331
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 98
          Width = 719
          inherited edtFiltroCondicao: TcxTextEdit
            Width = 149
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 430
            ExplicitLeft = -191
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 90
            Width = 711
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 63
              Width = 684
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 63
              Width = 684
            end
            inherited imgFiltroSQL: TcxImage
              Left = 687
              ExplicitLeft = 66
            end
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 525
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 548
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 183
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 21
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 723
      ExplicitWidth = 102
      inherited lblPrimeiroEdit: TLabel
        Width = 103
        Caption = 'edtDescricao'
        ExplicitWidth = 103
      end
      inherited lblFrame: TLabel
        Width = 122
        Caption = 'FrameCSTICMS'
        ExplicitWidth = 122
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
    DataSet = DM.cdsCSTICMS
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
    ServerMethodName = 'TServerMethods.setSQLCSTICMS'
  end
end
