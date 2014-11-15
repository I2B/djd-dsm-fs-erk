inherited frmCADEmpresa: TfrmCADEmpresa
  Caption = 'Empresa'
  ClientHeight = 361
  ClientWidth = 744
  ExplicitWidth = 760
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 361
    ExplicitHeight = 8
    inherited lblRegistros: TLabel
      Top = 344
    end
    inherited imgImprimir: TcxImage
      Top = 230
      ExplicitTop = -123
    end
    inherited imgExportar: TcxImage
      Top = 287
      ExplicitTop = -66
    end
  end
  inherited pnlClient: TPanel
    Width = 684
    Height = 361
    ExplicitWidth = 102
    ExplicitHeight = 8
    inherited cxPageControl: TcxPageControl
      Width = 684
      Height = 333
      ExplicitWidth = 102
      ClientRectBottom = 331
      ClientRectRight = 682
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 98
        inherited cxGrid: TcxGrid
          Width = 680
          Height = 231
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 98
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidempresa: TcxGridDBColumn
              DataBinding.FieldName = 'idempresa'
            end
            object cxGridDBrazaosocial: TcxGridDBColumn
              DataBinding.FieldName = 'razaosocial'
            end
            object cxGridDBnomefantasia: TcxGridDBColumn
              DataBinding.FieldName = 'nomefantasia'
            end
            object cxGridDBhomepage: TcxGridDBColumn
              DataBinding.FieldName = 'homepage'
            end
            object cxGridDBimagemlogotipo: TcxGridDBColumn
              DataBinding.FieldName = 'imagemlogotipo'
            end
            object cxGridDBtiporegime: TcxGridDBColumn
              DataBinding.FieldName = 'tiporegime'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 231
          Width = 680
          ExplicitWidth = 98
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
            Width = 582
          end
          inherited btnBuscar: TcxButton
            Left = 570
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
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 98
        inherited pnlCadastro: TPanel
          Height = 301
        end
        inline FrameEmpresa: TFrameEmpresa
          Left = 60
          Top = 0
          Width = 620
          Height = 301
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
            Width = 620
            Height = 301
            ExplicitWidth = 38
            ExplicitHeight = 339
            inherited edtRazaoSocial: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited cxDBTextEdit2: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited cxDBRadioGroup1: TcxDBRadioGroup
              ExplicitWidth = 185
              Width = 185
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
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 98
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 98
          Width = 680
          inherited edtFiltroCondicao: TcxTextEdit
            Width = 104
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 385
            ExplicitLeft = -197
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 84
            Width = 666
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 78
              Width = 660
            end
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 480
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 503
          end
          inherited cxButton1: TcxButton
            Width = 138
          end
        end
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 98
          Height = 134
          Width = 680
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 684
      ExplicitWidth = 102
      inherited lblPrimeiroEdit: TLabel
        Width = 121
        Caption = 'edtRazaoSocial'
        ExplicitWidth = 121
      end
      inherited lblFrame: TLabel
        Width = 119
        Caption = 'FrameEmpresa'
        ExplicitWidth = 119
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
    DataSet = DM.cdsEmpresa
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
    ServerMethodName = 'TServerMethods.setSQLEmpresa'
  end
end
