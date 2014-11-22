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
    ExplicitHeight = 361
    inherited lblRegistros: TLabel
      Top = 344
      ExplicitTop = 344
    end
    inherited imgImprimir: TcxImage
      Top = 230
      ExplicitTop = 230
    end
    inherited imgExportar: TcxImage
      Top = 287
      ExplicitTop = 287
    end
  end
  inherited pnlClient: TPanel
    Width = 684
    Height = 361
    ExplicitWidth = 684
    ExplicitHeight = 361
    inherited cxPageControl: TcxPageControl
      Width = 684
      Height = 333
      ExplicitWidth = 684
      ExplicitHeight = 333
      ClientRectBottom = 331
      ClientRectRight = 682
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 680
        ExplicitHeight = 301
        inherited cxGrid: TcxGrid
          Width = 680
          Height = 231
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 680
          ExplicitHeight = 231
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidempresa: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idempresa'
            end
            object cxGridDBrazaosocial: TcxGridDBColumn
              Caption = 'Raz'#227'o Social'
              DataBinding.FieldName = 'razaosocial'
            end
            object cxGridDBnomefantasia: TcxGridDBColumn
              Caption = 'Nome Fantasia'
              DataBinding.FieldName = 'nomefantasia'
            end
            object cxGridDBhomepage: TcxGridDBColumn
              Caption = 'Home Page'
              DataBinding.FieldName = 'homepage'
              Width = 268
            end
            object cxGridDBimagemlogotipo: TcxGridDBColumn
              Caption = 'Logotipo'
              DataBinding.FieldName = 'imagemlogotipo'
              Width = 160
            end
            object cxGridDBtiporegime: TcxGridDBColumn
              Caption = 'Regime Tribut'#225'rio'
              DataBinding.FieldName = 'tiporegime'
              Width = 208
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 231
          Width = 680
          ExplicitTop = 231
          ExplicitWidth = 680
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
            ExplicitWidth = 582
            ExplicitHeight = 23
            Width = 582
          end
          inherited btnBuscar: TcxButton
            Left = 570
            ExplicitLeft = 570
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
        ExplicitWidth = 680
        ExplicitHeight = 301
        inherited pnlCadastro: TPanel
          Height = 301
          ExplicitHeight = 301
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
          ExplicitWidth = 620
          ExplicitHeight = 301
          inherited dxLayoutControl: TdxLayoutControl
            Width = 620
            Height = 301
            ExplicitWidth = 620
            ExplicitHeight = 301
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
        ExplicitWidth = 680
        ExplicitHeight = 301
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 680
          Width = 680
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 104
            ExplicitHeight = 23
            Width = 104
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 385
            ExplicitLeft = 385
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 666
            Width = 666
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 660
              Width = 660
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 480
            ExplicitLeft = 480
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 503
            ExplicitLeft = 503
          end
          inherited cxButton1: TcxButton
            Width = 138
            ExplicitWidth = 138
          end
        end
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 680
          ExplicitHeight = 134
          Height = 134
          Width = 680
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 684
      ExplicitWidth = 684
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