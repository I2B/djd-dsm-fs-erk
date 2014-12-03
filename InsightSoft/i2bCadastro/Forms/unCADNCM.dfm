inherited frmCADNCM: TfrmCADNCM
  Caption = 'NCM'
  ClientHeight = 417
  ClientWidth = 937
  ExplicitWidth = 953
  ExplicitHeight = 456
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 417
    ExplicitHeight = 404
    inherited lblRegistros: TLabel
      Top = 400
      ExplicitTop = 387
    end
    inherited imgImprimir: TcxImage
      Top = 286
      ExplicitTop = 273
    end
    inherited imgExportar: TcxImage
      Top = 343
      ExplicitTop = 330
    end
  end
  inherited pnlClient: TPanel
    Width = 877
    Height = 417
    ExplicitWidth = 851
    ExplicitHeight = 404
    inherited cxPageControl: TcxPageControl
      Width = 877
      Height = 389
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 851
      ExplicitHeight = 376
      ClientRectBottom = 387
      ClientRectRight = 875
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 847
        ExplicitHeight = 344
        inherited cxGrid: TcxGrid
          Width = 873
          Height = 287
          ExplicitWidth = 847
          ExplicitHeight = 274
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidncm: TcxGridDBColumn
              Caption = 'NCM'
              DataBinding.FieldName = 'idncm'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 287
          Width = 873
          ExplicitTop = 274
          ExplicitWidth = 847
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
            ExplicitWidth = 451
            ExplicitHeight = 23
            Width = 477
          end
          inherited btnBuscar: TcxButton
            Left = 769
            ExplicitLeft = 743
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
        ExplicitLeft = 2
        ExplicitTop = 30
        ExplicitWidth = 847
        ExplicitHeight = 344
        inherited pnlCadastro: TPanel
          Height = 357
          ExplicitHeight = 344
        end
        inline FrameNCM: TFrameNCM
          Left = 60
          Top = 0
          Width = 813
          Height = 357
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
          ExplicitWidth = 787
          ExplicitHeight = 344
          inherited dxLayoutControl: TdxLayoutControl
            Width = 813
            Height = 357
            ExplicitWidth = 813
            ExplicitHeight = 357
            inherited edtDescricao: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtNCM: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 847
        ExplicitHeight = 344
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 847
          ExplicitHeight = 177
          Height = 190
          Width = 873
          inherited cxGridFiltro: TcxGrid
            Height = 163
            ExplicitHeight = 150
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 459
            ExplicitHeight = 150
            Height = 163
            Width = 485
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 847
          Width = 873
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 787
            ExplicitHeight = 23
            Width = 813
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 584
            ExplicitLeft = 558
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 839
            Width = 865
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 812
              Width = 838
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 812
              Width = 838
            end
            inherited imgFiltroSQL: TcxImage
              Left = 841
              ExplicitLeft = 815
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 679
            ExplicitLeft = 653
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 702
            ExplicitLeft = 676
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 813
            ExplicitWidth = 787
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 23
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 877
      ExplicitWidth = 851
      inherited lblPrimeiroEdit: TLabel
        Width = 68
        Caption = 'edtNCM'
        ExplicitWidth = 68
      end
      inherited lblFrame: TLabel
        Width = 91
        Caption = 'FrameNCM'
        ExplicitWidth = 91
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
    DataSet = DM.cdsNCM
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
    ServerMethodName = 'TServerMethods.setSQLNCM'
  end
end
