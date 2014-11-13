inherited frmCADCBO: TfrmCADCBO
  Caption = 'CBO'
  ClientHeight = 388
  ClientWidth = 851
  ExplicitWidth = 867
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 388
    ExplicitHeight = 388
    inherited lblRegistros: TLabel
      Top = 371
      ExplicitTop = 371
    end
    inherited imgImprimir: TcxImage
      Top = 257
      ExplicitTop = 257
    end
    inherited imgExportar: TcxImage
      Top = 314
      ExplicitTop = 314
    end
  end
  inherited pnlClient: TPanel
    Width = 791
    Height = 388
    ExplicitWidth = 791
    ExplicitHeight = 388
    inherited cxPageControl: TcxPageControl
      Width = 791
      Height = 290
      ExplicitWidth = 791
      ExplicitHeight = 290
      ClientRectBottom = 288
      ClientRectRight = 789
      inherited cxTabGrid: TcxTabSheet
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 783
        ExplicitHeight = 260
        inherited cxGrid: TcxGrid
          Width = 787
          Height = 258
          ExplicitWidth = 783
          ExplicitHeight = 260
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidcbo: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'idcbo'
              Width = 87
            end
            object cxGridDBnome: TcxGridDBColumn
              Caption = 'CBO Nome'
              DataBinding.FieldName = 'nome'
              Width = 312
            end
            object cxGridDBcodigo1994: TcxGridDBColumn
              Caption = 'C'#243'digo 1994'
              DataBinding.FieldName = 'codigo1994'
              Width = 84
            end
            object cxGridDBcodigo2002: TcxGridDBColumn
              Caption = 'C'#243'digo 2002'
              DataBinding.FieldName = 'codigo2002'
              Width = 82
            end
            object cxGridDBobservacao: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'observacao'
              Width = 193
            end
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 783
        ExplicitHeight = 260
        inherited pnlCadastro: TPanel
          Height = 258
          ExplicitHeight = 260
        end
        inline FrameCBO: TFrameCBO
          Left = 60
          Top = 0
          Width = 727
          Height = 258
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
          ExplicitLeft = 251
          ExplicitTop = -48
          inherited dxLayoutControl: TdxLayoutControl
            Width = 727
            Height = 258
            inherited edtCBO: TcxDBTextEdit
              ExplicitWidth = 232
              Width = 232
            end
            inherited edtCodigo1994: TcxDBTextEdit
              ExplicitWidth = 230
              Width = 230
            end
            inherited memObservacao: TcxDBMemo
              ExplicitWidth = 469
              Width = 469
            end
            inherited edtCodigo2002: TcxDBTextEdit
              Left = 367
              ExplicitLeft = 367
              ExplicitWidth = 230
              Width = 230
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
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
      Width = 791
      ExplicitWidth = 791
      inherited lblPrimeiroEdit: TLabel
        Width = 63
        Caption = 'edtCBO'
        ExplicitWidth = 63
      end
      inherited lblFrame: TLabel
        Width = 86
        Caption = 'FrameCBO'
        ExplicitWidth = 86
      end
    end
    inherited pnlBottom: TPanel
      Top = 318
      Width = 791
      ExplicitTop = 318
      ExplicitWidth = 791
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
        ExplicitWidth = 689
        ExplicitHeight = 23
        Width = 689
      end
      inherited btnBuscar: TcxButton
        Left = 677
        ExplicitLeft = 677
      end
      inherited cbSQL: TcxComboBox
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
    DataSet = DM.cdsCBO
  end
end
