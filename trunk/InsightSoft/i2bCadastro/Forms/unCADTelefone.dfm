inherited frmCADTelefone: TfrmCADTelefone
  Caption = 'Telefone'
  ClientHeight = 423
  ClientWidth = 798
  ExplicitWidth = 814
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 423
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 406
    end
    inherited imgImprimir: TcxImage
      Top = 292
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 349
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 738
    Height = 423
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 738
      Height = 395
      ExplicitWidth = 64
      ClientRectBottom = 393
      ClientRectRight = 736
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 734
        ExplicitHeight = 363
        inherited cxGrid: TcxGrid
          Width = 734
          Height = 293
          ExplicitWidth = 734
          ExplicitHeight = 293
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidtelefone: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idtelefone'
            end
            object cxGridDBidpessoa: TcxGridDBColumn
              Caption = 'ID Pessoa'
              DataBinding.FieldName = 'idpessoa'
              Width = 87
            end
            object cxGridDBidunidadenegocio: TcxGridDBColumn
              Caption = 'ID Unidade de Negocio'
              DataBinding.FieldName = 'idunidadenegocio'
              Width = 123
            end
            object cxGridDBidtipotelefone: TcxGridDBColumn
              Caption = 'ID Tipo de Telefone'
              DataBinding.FieldName = 'idtipotelefone'
              Width = 100
            end
            object cxGridDBnumerotelefone: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'numerotelefone'
              Width = 122
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 293
          Width = 734
          ExplicitTop = 293
          ExplicitWidth = 734
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
            ExplicitWidth = 332
            ExplicitHeight = 23
            Width = 332
          end
          inherited btnBuscar: TcxButton
            Left = 624
            ExplicitLeft = 624
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
          Height = 363
        end
        inline FrameTelefone: TFrameTelefone
          Left = 60
          Top = 0
          Width = 674
          Height = 363
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
            Width = 674
            Height = 363
            ExplicitWidth = 0
            ExplicitHeight = 339
            inherited edtIDPessoa: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtIDUnidadeNegocio: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtIDTipoTelefone: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtNumero: TcxDBTextEdit
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
        ExplicitWidth = 60
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 60
          Width = 734
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 158
            ExplicitHeight = 23
            Width = 158
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 439
            ExplicitLeft = -235
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 46
            Width = 720
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 40
              Width = 714
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 534
            ExplicitLeft = 534
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 557
            ExplicitLeft = 557
          end
          inherited cxButton1: TcxButton
            Width = 192
            ExplicitWidth = 192
          end
        end
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 60
          Height = 196
          Width = 734
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 738
      ExplicitWidth = 64
      inherited lblPrimeiroEdit: TLabel
        Width = 97
        Caption = 'edtIDPessoa'
        ExplicitWidth = 97
      end
      inherited lblFrame: TLabel
        Width = 117
        Caption = 'FrameTelefone'
        ExplicitWidth = 117
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
    DataSet = DM.cdsTelefone
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
    ServerMethodName = 'TServerMethods.setSQLTelefone'
  end
end
