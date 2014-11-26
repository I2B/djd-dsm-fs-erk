inherited frmCADProdutoTamanho: TfrmCADProdutoTamanho
  Caption = 'Tamanho'
  ClientHeight = 386
  ClientWidth = 749
  ExplicitWidth = 765
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 386
    ExplicitHeight = 386
    inherited lblRegistros: TLabel
      Top = 369
      ExplicitTop = 369
    end
    inherited imgImprimir: TcxImage
      Top = 255
      ExplicitTop = 255
    end
    inherited imgExportar: TcxImage
      Top = 312
      ExplicitTop = 312
    end
  end
  inherited pnlClient: TPanel
    Width = 689
    Height = 386
    ExplicitWidth = 102
    ExplicitHeight = 8
    inherited cxPageControl: TcxPageControl
      Width = 689
      Height = 358
      ExplicitWidth = 102
      ExplicitHeight = 358
      ClientRectBottom = 356
      ClientRectRight = 687
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 685
        ExplicitHeight = 326
        inherited cxGrid: TcxGrid
          Width = 685
          Height = 256
          ExplicitWidth = 98
          ExplicitHeight = 256
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidestoquetamanho: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idestoquetamanho'
            end
            object cxGridDBcodigo: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'codigo'
              Width = 102
            end
            object cxGridDBnome: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'nome'
              Width = 262
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 256
          Width = 685
          ExplicitTop = 256
          ExplicitWidth = 685
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited cbCampo: TcxComboBox
            ExplicitHeight = 21
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 587
            ExplicitHeight = 21
            Width = 587
          end
          inherited btnBuscar: TcxButton
            Left = 581
            ExplicitLeft = -6
          end
          inherited cbSQL: TcxComboBox
            ExplicitHeight = 21
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited cbOperacao: TcxComboBox
            ExplicitHeight = 21
          end
          inherited dateInformacao: TcxDateEdit
            ExplicitHeight = 21
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 685
        ExplicitHeight = 326
        inherited pnlCadastro: TPanel
          Height = 326
          ExplicitHeight = 326
        end
        inline FrameProdutoTamanho: TFrameProdutoTamanho
          Left = 60
          Top = 0
          Width = 625
          Height = 326
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
          ExplicitWidth = 625
          ExplicitHeight = 326
          inherited dxLayoutControl: TdxLayoutControl
            Width = 625
            Height = 326
            ExplicitWidth = 625
            ExplicitHeight = 326
            inherited edtCodigo: TcxDBTextEdit
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
        ExplicitWidth = 685
        ExplicitHeight = 326
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 685
          ExplicitHeight = 159
          Height = 159
          Width = 685
          inherited cxGridFiltro: TcxGrid
            Height = 132
            ExplicitHeight = 132
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 297
            ExplicitHeight = 132
            Height = 132
            Width = 297
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 685
          Width = 685
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 115
            ExplicitHeight = 21
            Width = 115
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 396
            ExplicitLeft = 396
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 21
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 677
            Width = 677
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 650
              Width = 650
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 650
              Width = 650
            end
            inherited imgFiltroSQL: TcxImage
              Left = 653
              ExplicitLeft = 653
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 21
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 21
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 491
            ExplicitLeft = 491
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 514
            ExplicitLeft = 514
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 149
            ExplicitWidth = 149
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 21
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 689
      ExplicitWidth = 102
      inherited lblPrimeiroEdit: TLabel
        Width = 87
        Caption = 'edtCodigo'
        ExplicitWidth = 87
      end
      inherited lblFrame: TLabel
        Top = -3
        Width = 187
        Caption = 'FrameProdutoTamanho'
        ExplicitTop = -3
        ExplicitWidth = 187
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
    DataSet = DM.cdsProdutoTamanho
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
    ServerMethodName = 'TServerMethods.setSQLProdutoTamanho'
  end
end
