inherited frmCADCSTCSOSN: TfrmCADCSTCSOSN
  Caption = 'CSOSN - C'#243'digo de Situa'#231#227'o da Opera'#231#227'o do Simples'
  ClientHeight = 452
  ClientWidth = 845
  ExplicitWidth = 861
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 452
    ExplicitHeight = 8
    inherited lblRegistros: TLabel
      Top = 435
    end
    inherited imgImprimir: TcxImage
      Top = 321
      ExplicitTop = -123
    end
    inherited imgExportar: TcxImage
      Top = 378
      ExplicitTop = -66
    end
  end
  inherited pnlClient: TPanel
    Width = 785
    Height = 452
    ExplicitWidth = 102
    ExplicitHeight = 8
    inherited cxPageControl: TcxPageControl
      Width = 785
      Height = 424
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 102
      ClientRectBottom = 422
      ClientRectRight = 783
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 781
        ExplicitHeight = 392
        inherited cxGrid: TcxGrid
          Width = 781
          Height = 322
          ExplicitWidth = 781
          ExplicitHeight = 322
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidcstcsosn: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idcstcsosn'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 527
            end
            object cxGridDBobservacao: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'observacao'
              Width = 216
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 322
          Width = 781
          ExplicitTop = 322
          ExplicitWidth = 781
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
            ExplicitWidth = 385
            ExplicitHeight = 23
            Width = 385
          end
          inherited btnBuscar: TcxButton
            Left = 677
            ExplicitLeft = 677
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
          Height = 392
        end
        inline FrameCSTCSOSN: TFrameCSTCSOSN
          Left = 60
          Top = 0
          Width = 721
          Height = 392
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
            Width = 721
            Height = 392
            ExplicitWidth = 38
            ExplicitHeight = 339
            inherited edtDescricao: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 98
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 98
          Height = 225
          Width = 781
          inherited cxGridFiltro: TcxGrid
            Height = 198
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 198
            Width = 393
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 98
          Width = 781
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 0
            ExplicitHeight = 23
            Width = 683
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 492
            ExplicitLeft = -191
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 90
            Width = 773
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 63
              Width = 746
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 63
              Width = 746
            end
            inherited imgFiltroSQL: TcxImage
              Left = 749
              ExplicitLeft = 66
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 587
            ExplicitLeft = -96
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 610
            ExplicitLeft = -73
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 683
            ExplicitWidth = 0
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 785
      ExplicitWidth = 102
      inherited lblPrimeiroEdit: TLabel
        Width = 103
        Caption = 'edtDescricao'
        ExplicitWidth = 103
      end
      inherited lblFrame: TLabel
        Top = -3
        Width = 137
        Caption = 'FrameCSTCSOSN'
        ExplicitTop = -3
        ExplicitWidth = 137
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
    DataSet = DM.CDSCSTCSOSN
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
    ServerMethodName = 'TServerMethods.setSQLCSTCSOSN'
  end
end
