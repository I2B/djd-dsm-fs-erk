inherited frmCADCSTCofins: TfrmCADCSTCofins
  Caption = 'CST Cofins'
  ClientHeight = 392
  ClientWidth = 780
  ExplicitWidth = 796
  ExplicitHeight = 431
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 392
    ExplicitHeight = 392
    inherited lblRegistros: TLabel
      Top = 375
      ExplicitTop = 375
    end
    inherited imgImprimir: TcxImage
      Top = 261
      ExplicitTop = 261
    end
    inherited imgExportar: TcxImage
      Top = 318
      ExplicitTop = 318
    end
  end
  inherited pnlClient: TPanel
    Width = 720
    Height = 392
    ExplicitWidth = 720
    ExplicitHeight = 392
    inherited cxPageControl: TcxPageControl
      Width = 720
      Height = 364
      ExplicitWidth = 720
      ExplicitHeight = 364
      ClientRectBottom = 362
      ClientRectRight = 718
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 716
        ExplicitHeight = 332
        inherited cxGrid: TcxGrid
          Width = 716
          Height = 262
          ExplicitWidth = 716
          ExplicitHeight = 262
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidcstcofins: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idcstcofins'
            end
            object cxGridDBdescricao: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'descricao'
              Width = 403
            end
            object cxGridDBobservacao: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'observacao'
              Width = 349
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 262
          Width = 716
          ExplicitTop = 262
          ExplicitWidth = 716
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 618
            Width = 618
          end
          inherited btnBuscar: TcxButton
            Left = 606
            ExplicitLeft = 606
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 716
        ExplicitHeight = 332
        inherited pnlCadastro: TPanel
          Height = 332
          ExplicitHeight = 332
        end
        inline FrameCSTCofins: TFrameCSTCofins
          Left = 60
          Top = 0
          Width = 656
          Height = 332
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
          ExplicitWidth = 656
          ExplicitHeight = 332
          inherited dxLayoutControl: TdxLayoutControl
            Width = 656
            Height = 332
            ExplicitWidth = 656
            ExplicitHeight = 332
            inherited edtDescricao: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
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
        ExplicitWidth = 716
        ExplicitHeight = 332
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 716
          ExplicitHeight = 165
          Height = 165
          Width = 716
          inherited cxGridFiltro: TcxGrid
            Height = 138
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 328
            ExplicitHeight = 138
            Height = 138
            Width = 328
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 716
          Width = 716
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 140
            Width = 140
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 421
            ExplicitLeft = 421
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 702
            Width = 702
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 675
              Width = 675
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 675
              Width = 675
            end
            inherited imgFiltroSQL: TcxImage
              Left = 678
              ExplicitLeft = 678
            end
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 516
            Width = 174
            ExplicitLeft = 516
            ExplicitWidth = 174
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 539
            ExplicitLeft = 539
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 21
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 720
      ExplicitWidth = 720
      inherited lblPrimeiroEdit: TLabel
        Width = 103
        Caption = 'edtDescricao'
        ExplicitWidth = 103
      end
      inherited lblFrame: TLabel
        Width = 128
        Caption = 'FrameCSTCofins'
        ExplicitWidth = 128
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
    DataSet = DM.cdsCSTCOFINS
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
    ServerMethodName = 'TServerMethods.setSQLCSTCOFINS'
  end
end
