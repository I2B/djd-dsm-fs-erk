inherited frmCADUnidadeNegocio: TfrmCADUnidadeNegocio
  Caption = 'Unidade de Negocio'
  ClientHeight = 443
  ClientWidth = 873
  ExplicitWidth = 889
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 443
    ExplicitHeight = 443
    inherited lblRegistros: TLabel
      Top = 426
      ExplicitTop = 426
    end
    inherited imgImprimir: TcxImage
      Top = 312
      ExplicitTop = 312
    end
    inherited imgExportar: TcxImage
      Top = 369
      ExplicitTop = 369
    end
  end
  inherited pnlClient: TPanel
    Width = 813
    Height = 443
    ExplicitWidth = 813
    ExplicitHeight = 443
    inherited cxPageControl: TcxPageControl
      Width = 813
      Height = 345
      ExplicitWidth = 813
      ExplicitHeight = 345
      ClientRectBottom = 341
      ClientRectRight = 809
      inherited cxTabGrid: TcxTabSheet
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 805
        ExplicitHeight = 315
        inherited cxGrid: TcxGrid
          Width = 805
          Height = 315
          ExplicitWidth = 805
          ExplicitHeight = 315
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidunidadenegocio: TcxGridDBColumn
              DataBinding.FieldName = 'idunidadenegocio'
            end
            object cxGridDBidcnae: TcxGridDBColumn
              DataBinding.FieldName = 'idcnae'
            end
            object cxGridDBidempresa: TcxGridDBColumn
              DataBinding.FieldName = 'idempresa'
            end
            object cxGridDBcnpj: TcxGridDBColumn
              DataBinding.FieldName = 'cnpj'
            end
            object cxGridDBnomefantasia: TcxGridDBColumn
              DataBinding.FieldName = 'nomefantasia'
            end
            object cxGridDBcnaedenominacao: TcxGridDBColumn
              DataBinding.FieldName = 'cnaedenominacao'
            end
            object cxGridDBrazaosocial: TcxGridDBColumn
              DataBinding.FieldName = 'razaosocial'
            end
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 805
        ExplicitHeight = 315
        inherited pnlCadastro: TPanel
          Height = 315
          ExplicitHeight = 315
        end
        inline FrameUnidadeNegocio: TFrameUnidadeNegocio
          Left = 60
          Top = 0
          Width = 745
          Height = 315
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
          ExplicitWidth = 745
          ExplicitHeight = 315
          inherited dxLayoutControl: TdxLayoutControl
            Width = 745
            Height = 315
            ExplicitWidth = 745
            ExplicitHeight = 315
            inherited edtNomeFantasia: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited edtIDEmpresa: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 813
      ExplicitWidth = 813
      inherited lblPrimeiroEdit: TLabel
        Width = 108
        Caption = 'cxDBTextEdit1'
        ExplicitWidth = 108
      end
      inherited lblFrame: TLabel
        Width = 185
        Caption = 'FrameUnidadeNegocio'
        ExplicitWidth = 185
      end
    end
    inherited pnlBottom: TPanel
      Top = 373
      Width = 813
      ExplicitTop = 373
      ExplicitWidth = 813
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
        ExplicitWidth = 749
        ExplicitHeight = 23
        Width = 749
      end
      inherited btnBuscar: TcxButton
        Left = 699
        ExplicitLeft = 699
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
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dts: TDataSource
    DataSet = DM.cdsUnidadeNegocio
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
