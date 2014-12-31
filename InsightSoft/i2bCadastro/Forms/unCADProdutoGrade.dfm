inherited frmCADProdutoGrade: TfrmCADProdutoGrade
  Caption = 'frmCADProdutoGrade'
  ClientHeight = 466
  ClientWidth = 967
  ExplicitWidth = 983
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 466
    ExplicitHeight = 466
    inherited lblRegistros: TLabel
      Top = 449
      ExplicitTop = 449
    end
    inherited imgImprimir: TcxImage
      Top = 335
      ExplicitTop = 335
    end
    inherited imgExportar: TcxImage
      Top = 392
      ExplicitTop = 392
    end
  end
  inherited pnlClient: TPanel
    Width = 907
    Height = 466
    ExplicitWidth = 907
    ExplicitHeight = 466
    inherited cxPageControl: TcxPageControl
      Width = 907
      Height = 438
      ExplicitWidth = 907
      ExplicitHeight = 438
      ClientRectBottom = 436
      ClientRectRight = 905
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 903
        ExplicitHeight = 406
        inherited cxGrid: TcxGrid
          Width = 903
          Height = 336
          ExplicitWidth = 903
          ExplicitHeight = 336
        end
        inherited pnlBottom: TPanel
          Top = 336
          Width = 903
          ExplicitTop = 336
          ExplicitWidth = 903
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 507
            Width = 507
          end
          inherited btnBuscar: TcxButton
            Left = 799
            ExplicitLeft = 799
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 903
        ExplicitHeight = 406
        inherited pnlCadastro: TPanel
          Height = 406
          ExplicitHeight = 406
        end
        inline FrameProdutoGrade: TFrameProdutoGrade
          Left = 60
          Top = 0
          Width = 843
          Height = 406
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
          ExplicitWidth = 843
          ExplicitHeight = 406
          inherited dxLayoutControl: TdxLayoutControl
            Width = 843
            Height = 406
            ExplicitWidth = 843
            ExplicitHeight = 406
            inherited grdGrade: TcxGrid
              Width = 250
              ExplicitWidth = 250
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutGroup
              Index = 0
            end
            inherited dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlGroup2: TdxLayoutGroup
              Index = 1
            end
            inherited dxLayoutControlGroup4: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 2
            end
          end
          inherited cxStyleRepository: TcxStyleRepository
            PixelsPerInch = 96
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 903
        ExplicitHeight = 406
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 903
          ExplicitHeight = 239
          Height = 239
          Width = 903
          inherited cxGridFiltro: TcxGrid
            Height = 212
            ExplicitHeight = 212
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 515
            ExplicitHeight = 212
            Height = 212
            Width = 515
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 903
          Width = 903
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 333
            ExplicitHeight = 23
            Width = 333
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 614
            ExplicitLeft = 614
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 895
            Width = 895
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 868
              Width = 868
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 868
              Width = 868
            end
            inherited imgFiltroSQL: TcxImage
              Left = 871
              ExplicitLeft = 871
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 709
            ExplicitLeft = 709
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 732
            ExplicitLeft = 732
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 367
            ExplicitWidth = 367
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
      Width = 907
      ExplicitWidth = 907
      inherited lblFrame: TLabel
        Left = 115
        Width = 164
        Caption = 'FrameProdutoGrade'
        ExplicitLeft = 115
        ExplicitWidth = 164
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
    DataSet = DM.cdsProdutoGrade
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
    ServerMethodName = 'TServerMethods.setSQLProdutoGrade'
  end
end
