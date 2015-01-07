inherited frmCADCEP: TfrmCADCEP
  Caption = 'CEP - C'#243'digo de Endere'#231'amento Postal'
  ClientHeight = 446
  ClientWidth = 895
  ExplicitWidth = 911
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 446
    ExplicitHeight = 446
    inherited lblRegistros: TLabel
      Top = 429
      ExplicitTop = 429
    end
    inherited imgImprimir: TcxImage
      Top = 315
      ExplicitTop = 315
    end
    inherited imgExportar: TcxImage
      Top = 372
      ExplicitTop = 372
    end
  end
  inherited pnlClient: TPanel
    Width = 835
    Height = 446
    ExplicitWidth = 835
    ExplicitHeight = 446
    inherited cxPageControl: TcxPageControl
      Width = 835
      Height = 418
      ExplicitWidth = 835
      ExplicitHeight = 418
      ClientRectBottom = 416
      ClientRectRight = 833
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 831
        ExplicitHeight = 386
        inherited cxGrid: TcxGrid
          Width = 831
          Height = 316
          ExplicitWidth = 831
          ExplicitHeight = 316
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidcep: TcxGridDBColumn
              Caption = 'Cep'
              DataBinding.FieldName = 'idcep'
              Width = 100
            end
            object cxGridDBmunicipionome: TcxGridDBColumn
              Caption = 'Munic'#237'pio'
              DataBinding.FieldName = 'municipionome'
            end
            object cxGridDBlogradouro: TcxGridDBColumn
              Caption = 'Logradouro'
              DataBinding.FieldName = 'logradouro'
              Width = 289
            end
            object cxGridDBcomplemento: TcxGridDBColumn
              Caption = 'Complemento'
              DataBinding.FieldName = 'complemento'
              Width = 219
            end
            object cxGridDBbairro: TcxGridDBColumn
              Caption = 'Bairro'
              DataBinding.FieldName = 'bairro'
              Width = 284
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 316
          Width = 831
          ExplicitTop = 316
          ExplicitWidth = 831
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 733
            Width = 733
          end
          inherited btnBuscar: TcxButton
            Left = 727
            ExplicitLeft = 727
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 831
        ExplicitHeight = 386
        inherited pnlCadastro: TPanel
          Height = 386
          ExplicitHeight = 386
        end
        inline FrameCEP: TFrameCEP
          Left = 60
          Top = 0
          Width = 771
          Height = 386
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
          ExplicitWidth = 771
          ExplicitHeight = 386
          inherited dxLayoutControl: TdxLayoutControl
            Width = 771
            Height = 386
            ExplicitWidth = 771
            ExplicitHeight = 386
            inherited edtLogradouro: TcxDBTextEdit
              ExplicitWidth = 349
              Width = 349
            end
            inherited edtComplemento: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited edtBairro: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 4
            end
            inherited dxLayoutControlItem6: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem7: TdxLayoutItem
              Index = 0
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 831
        ExplicitHeight = 386
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 831
          ExplicitHeight = 219
          Height = 219
          Width = 831
          inherited cxGridFiltro: TcxGrid
            Height = 192
            ExplicitHeight = 192
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 443
            ExplicitHeight = 192
            Height = 192
            Width = 443
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 831
          Width = 831
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 261
            ExplicitHeight = 23
            Width = 261
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 542
            ExplicitLeft = 542
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 823
            Width = 823
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 796
              Width = 796
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 796
              Width = 796
            end
            inherited imgFiltroSQL: TcxImage
              Left = 799
              ExplicitLeft = 799
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 637
            ExplicitLeft = 637
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 660
            ExplicitLeft = 660
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 295
            ExplicitWidth = 295
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
      Width = 835
      ExplicitWidth = 835
      inherited lblPrimeiroEdit: TLabel
        Width = 211
        Caption = 'edtCEP|TcxDBCurrencyEdit'
        ExplicitWidth = 211
      end
      inherited lblFrame: TLabel
        Width = 82
        Caption = 'FrameCEP'
        ExplicitWidth = 82
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
    DataSet = DM.cdsCEP
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
    ServerMethodName = 'TServerMethods.setSQLCEP'
  end
end
