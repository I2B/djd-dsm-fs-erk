inherited frmCADCEP: TfrmCADCEP
  Caption = 'CEP - C'#243'digo de Endere'#231'amento Postal'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      inherited cxTabGrid: TcxTabSheet
        inherited cxGrid: TcxGrid
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidcep: TcxGridDBColumn
              Caption = 'Cep'
              DataBinding.FieldName = 'idcep'
              Width = 100
            end
            object cxGridDBidmunicipio: TcxGridDBColumn
              Caption = 'Munic'#237'pio'
              DataBinding.FieldName = 'idmunicipio'
              Width = 106
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
            ExplicitHeight = 23
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
        inline FrameCEP: TFrameCEP
          Left = 60
          Top = 0
          Width = 778
          Height = 339
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
            Width = 778
            Height = 339
            ExplicitWidth = 778
            ExplicitHeight = 339
            inherited edtCEP: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtLogradouro: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtComplemento: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtBairro: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtMunicipio: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitHeight = 23
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
        end
      end
    end
    inherited pnlTop: TPanel
      inherited lblPrimeiroEdit: TLabel
        Width = 59
        Caption = 'edtCEP'
        ExplicitWidth = 59
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
