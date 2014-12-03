inherited frmCADUnidadeNegocio: TfrmCADUnidadeNegocio
  AlignWithMargins = True
  Caption = 'Unidade de Negocio'
  ClientHeight = 413
  ClientWidth = 897
  ExplicitWidth = 913
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 413
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 396
    end
    inherited imgImprimir: TcxImage
      Top = 282
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 339
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 837
    Height = 413
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 837
      Height = 385
      Properties.ActivePage = cxTabGrid
      ExplicitWidth = 64
      ClientRectBottom = 383
      ClientRectRight = 835
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 833
        ExplicitHeight = 353
        inherited cxGrid: TcxGrid
          Width = 833
          Height = 283
          ExplicitWidth = 833
          ExplicitHeight = 283
        end
        inherited pnlBottom: TPanel
          Top = 283
          Width = 833
          ExplicitTop = 283
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
          Height = 353
        end
        inline FrameUnidadeNegocio: TFrameUnidadeNegocio
          Left = 60
          Top = 0
          Width = 773
          Height = 353
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
            Height = 353
            ExplicitWidth = 0
            ExplicitHeight = 339
            inherited cxDBTextEdit1: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited cxDBTextEdit2: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited cxDBTextEdit4: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited cxDBTextEdit3: TcxDBTextEdit
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
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 2
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 60
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 60
          Height = 186
          Width = 833
          inherited cxGridFiltro: TcxGrid
            Height = 159
            ExplicitHeight = 159
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 159
            Width = 445
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 60
          Width = 833
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 263
            ExplicitHeight = 23
            Width = 263
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
            ExplicitLeft = 639
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 662
            ExplicitLeft = 662
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 297
            ExplicitWidth = 297
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
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
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
    ServerMethodName = 'TServerMethods.setSQLUnidadeNegocio'
  end
end
