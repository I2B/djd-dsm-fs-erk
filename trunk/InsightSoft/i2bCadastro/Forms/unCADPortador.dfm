inherited frmCadPortador: TfrmCadPortador
  Caption = 'Portador'
  ClientHeight = 409
  ClientWidth = 823
  ExplicitWidth = 839
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 409
    ExplicitHeight = 409
    inherited lblRegistros: TLabel
      Top = 392
      ExplicitTop = 392
    end
    inherited imgImprimir: TcxImage
      Top = 278
      ExplicitTop = 278
    end
    inherited imgExportar: TcxImage
      Top = 335
      ExplicitTop = 335
    end
  end
  inherited pnlClient: TPanel
    Width = 763
    Height = 409
    ExplicitWidth = 763
    ExplicitHeight = 409
    inherited cxPageControl: TcxPageControl
      Width = 763
      Height = 381
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 763
      ExplicitHeight = 381
      ClientRectBottom = 379
      ClientRectRight = 761
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 759
        ExplicitHeight = 349
        inherited cxGrid: TcxGrid
          Width = 759
          Height = 279
          ExplicitWidth = 759
          ExplicitHeight = 279
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidportador: TcxGridDBColumn
              Caption = 'ID Portador'
              DataBinding.FieldName = 'idportador'
              Width = 82
            end
            object cxGridDBidbanco: TcxGridDBColumn
              Caption = 'ID Banco'
              DataBinding.FieldName = 'idbanco'
              Width = 75
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Portador'
              DataBinding.FieldName = 'descricao'
              Width = 320
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 279
          Width = 759
          ExplicitTop = 279
          ExplicitWidth = 759
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
            ExplicitWidth = 661
            ExplicitHeight = 23
            Width = 661
          end
          inherited btnBuscar: TcxButton
            Left = 649
            ExplicitLeft = 649
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
        ExplicitWidth = 759
        ExplicitHeight = 349
        inherited pnlCadastro: TPanel
          Height = 349
          ExplicitHeight = 349
        end
        inline FramePortador: TFramePortador
          Left = 60
          Top = 0
          Width = 699
          Height = 349
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
          ExplicitWidth = 699
          ExplicitHeight = 349
          inherited dxLayoutControl: TdxLayoutControl
            Width = 699
            Height = 349
            ExplicitWidth = 699
            ExplicitHeight = 349
            inherited edtBanco: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtDescricao: TcxDBTextEdit
              ExplicitHeight = 23
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
        ExplicitWidth = 759
        ExplicitHeight = 349
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 759
          ExplicitHeight = 182
          Height = 182
          Width = 759
          inherited cxGridFiltro: TcxGrid
            Height = 155
            ExplicitHeight = 155
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 371
            ExplicitHeight = 155
            Height = 155
            Width = 371
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 759
          Width = 759
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 183
            ExplicitHeight = 23
            Width = 183
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 464
            ExplicitLeft = 464
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 745
            Width = 745
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 718
              Width = 718
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 718
              Width = 718
            end
            inherited imgFiltroSQL: TcxImage
              Left = 721
              ExplicitLeft = 721
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 559
            ExplicitLeft = 559
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 582
            ExplicitLeft = 582
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 763
      ExplicitWidth = 763
      inherited lblPrimeiroEdit: TLabel
        Width = 75
        Caption = 'edtBanco'
        ExplicitWidth = 75
      end
      inherited lblFrame: TLabel
        Width = 120
        Caption = 'FramePortador'
        ExplicitWidth = 120
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
    DataSet = DM.cdsPortador
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
    ServerMethodName = 'TServerMethods.setSQLPortador'
  end
end
