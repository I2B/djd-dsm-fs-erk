inherited FrameProdutoGrade: TFrameProdutoGrade
  Width = 975
  Height = 494
  ExplicitWidth = 975
  ExplicitHeight = 494
  inherited dxLayoutControl: TdxLayoutControl
    Width = 975
    Height = 494
    ExplicitWidth = 975
    ExplicitHeight = 494
    object grdGrade: TcxGrid [0]
      Left = 12
      Top = 63
      Width = 597
      Height = 200
      TabOrder = 2
      object tvGrade: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object tvGradeCodCor: TcxGridColumn
          DataBinding.ValueType = 'Integer'
          Visible = False
        end
        object tvGradeTamanhos: TcxGridColumn
          Caption = 'Tamanhos'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
        end
        object tvGradeColumn1: TcxGridColumn
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          Visible = False
          Styles.Header = cxStyle1
        end
      end
      object LevelGrade: TcxGridLevel
        GridView = tvGrade
      end
    end
    object edtIDProduto: TcxDBTextEdit [1]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idproduto'
      DataBinding.DataSource = DataSource
      Properties.OnEditValueChanged = edtIDProdutoPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtIDProdutoExit
      OnKeyDown = edtIDProdutoKeyDown
      Width = 61
    end
    object edtProdutoNome: TcxTextEdit [2]
      Left = 120
      Top = 33
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 489
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
      Index = -1
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grdGrade
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Produto [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDProduto
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = edtProdutoNome
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoGrade
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 152
    Top = 304
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 33023
    end
  end
end
