inherited frmCADUnidadeNegocio: TfrmCADUnidadeNegocio
  AlignWithMargins = True
  Caption = 'Unidade de Negocio'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlClient: TPanel
    inherited cxPageControl: TcxPageControl
      Properties.ActivePage = cxTabCadastro
      inherited cxTabCadastro: TcxTabSheet
        inline FrameUnidadeNegocio: TFrameUnidadeNegocio
          Left = 60
          Top = 0
          Width = 778
          Height = 269
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
          ExplicitLeft = 258
          ExplicitTop = -39
          inherited dxLayoutControl: TdxLayoutControl
            Width = 778
            Height = 269
            inherited cxDBTextEdit1: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited cxDBTextEdit4: TcxDBTextEdit
              ExplicitWidth = 121
              Width = 121
            end
            inherited cxDBTextEdit3: TcxDBTextEdit
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
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 2
            end
          end
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
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
