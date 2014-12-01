inherited frmCADPais: TfrmCADPais
  Caption = 'Pa'#237's'
  ClientHeight = 468
  ClientWidth = 897
  ExplicitWidth = 913
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 468
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 451
    end
    inherited imgImprimir: TcxImage
      Top = 337
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 394
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 837
    Height = 468
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 837
      Height = 440
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 64
      ClientRectBottom = 438
      ClientRectRight = 835
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 833
        ExplicitHeight = 408
        inherited cxGrid: TcxGrid
          Width = 833
          Height = 338
          ExplicitWidth = 833
          ExplicitHeight = 338
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidpais: TcxGridDBColumn
              DataBinding.FieldName = 'idpais'
              Width = 86
            end
            object cxGridDBnome: TcxGridDBColumn
              DataBinding.FieldName = 'nome'
            end
            object cxGridDBidindicadoreconomico: TcxGridDBColumn
              DataBinding.FieldName = 'idindicadoreconomico'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 338
          Width = 833
          ExplicitTop = 338
          ExplicitWidth = 833
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
            ExplicitWidth = 437
            ExplicitHeight = 23
            Width = 437
          end
          inherited btnBuscar: TcxButton
            Left = 729
            ExplicitLeft = 729
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
        ExplicitWidth = 60
        inherited pnlCadastro: TPanel
          Height = 408
        end
        inline FramePais: TFramePais
          Left = 60
          Top = 0
          Width = 773
          Height = 408
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
          ExplicitWidth = 0
          ExplicitHeight = 339
          inherited dxLayoutControl: TdxLayoutControl
            Width = 773
            Height = 408
            ExplicitWidth = 773
            ExplicitHeight = 408
            inherited edtPais: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtMoeda: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 1
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 60
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 60
          Height = 241
          Width = 833
          inherited cxGridFiltro: TcxGrid
            Height = 214
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 214
            Width = 445
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 60
          Width = 833
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 0
            ExplicitHeight = 23
            Width = 773
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 544
            ExplicitLeft = -229
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 52
            Width = 825
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 25
              Width = 798
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 25
              Width = 798
            end
            inherited imgFiltroSQL: TcxImage
              Left = 801
              ExplicitLeft = 28
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 639
            ExplicitLeft = -134
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 662
            ExplicitLeft = -111
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 773
            ExplicitWidth = 0
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
      Width = 837
      ExplicitWidth = 64
      inherited lblPrimeiroEdit: TLabel
        Width = 56
        Caption = 'edtPais'
        ExplicitWidth = 56
      end
      inherited lblFrame: TLabel
        Width = 79
        Caption = 'FramePais'
        ExplicitWidth = 79
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
    DataSet = DM.cdsPais
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
    ServerMethodName = 'TServerMethods.setSQLPais'
  end
end
