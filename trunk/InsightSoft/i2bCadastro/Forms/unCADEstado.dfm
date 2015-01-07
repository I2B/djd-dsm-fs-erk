inherited frmCADEstado: TfrmCADEstado
  Caption = 'Estado'
  ClientHeight = 458
  ClientWidth = 974
  ExplicitWidth = 990
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 458
    ExplicitHeight = 8
    inherited lblRegistros: TLabel
      Top = 441
    end
    inherited imgImprimir: TcxImage
      Top = 327
      ExplicitTop = -123
    end
    inherited imgExportar: TcxImage
      Top = 384
      ExplicitTop = -66
    end
  end
  inherited pnlClient: TPanel
    Width = 914
    Height = 458
    ExplicitWidth = 102
    ExplicitHeight = 8
    inherited cxPageControl: TcxPageControl
      Width = 914
      Height = 430
      ExplicitWidth = 102
      ClientRectBottom = 428
      ClientRectRight = 912
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 98
        inherited cxGrid: TcxGrid
          Width = 910
          Height = 328
          ExplicitWidth = 98
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidestado: TcxGridDBColumn
              Caption = 'UF'
              DataBinding.FieldName = 'idestado'
              Width = 31
            end
            object cxGridDBcodigoibge: TcxGridDBColumn
              Caption = 'C'#243'digo IBGE'
              DataBinding.FieldName = 'codigoibge'
              Width = 95
            end
            object cxGridDBnome: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'nome'
              Width = 354
            end
            object cxGridDBidpais: TcxGridDBColumn
              Caption = 'ID Pa'#237's'
              DataBinding.FieldName = 'idpais'
              Width = 73
            end
            object cxGridDBpaisnome: TcxGridDBColumn
              Caption = 'Pa'#237's'
              DataBinding.FieldName = 'paisnome'
              Width = 285
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 328
          Width = 910
          ExplicitWidth = 98
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 0
            Width = 812
          end
          inherited btnBuscar: TcxButton
            Left = 806
            ExplicitLeft = -6
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 98
        inherited pnlCadastro: TPanel
          Height = 398
        end
        inline FrameEstado: TFrameEstado
          Left = 60
          Top = 0
          Width = 850
          Height = 398
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
            Width = 850
            Height = 398
            ExplicitWidth = 850
            ExplicitHeight = 398
            inherited edtUF: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtCodigoIBGE: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited edtEstado: TcxDBTextEdit
              ExplicitWidth = 121
              ExplicitHeight = 23
              Width = 121
            end
            inherited edtIDPais: TcxDBCurrencyEdit
              ExplicitHeight = 23
            end
            inherited edtPais: TcxDBTextEdit
              ExplicitHeight = 23
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 2
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 98
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 98
          Height = 231
          Width = 910
          inherited cxGridFiltro: TcxGrid
            Height = 204
            ExplicitHeight = 204
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 204
            Width = 522
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 98
          Width = 910
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 340
            ExplicitHeight = 23
            Width = 340
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 621
            ExplicitLeft = -191
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 90
            Width = 902
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 63
              Width = 875
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 63
              Width = 875
            end
            inherited imgFiltroSQL: TcxImage
              Left = 878
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
            Left = 716
            ExplicitLeft = 716
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 739
            ExplicitLeft = 739
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 374
            ExplicitWidth = 374
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
      Width = 914
      ExplicitWidth = 102
      inherited lblPrimeiroEdit: TLabel
        Width = 48
        Caption = 'edtUF'
        ExplicitWidth = 48
      end
      inherited lblFrame: TLabel
        Width = 100
        Caption = 'frameEstado'
        ExplicitWidth = 100
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
    DataSet = DM.cdsEstado
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
    ServerMethodName = 'TServerMethods.setSQLEstado'
  end
end
