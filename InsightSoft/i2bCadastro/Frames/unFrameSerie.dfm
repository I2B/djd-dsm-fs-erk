object FrameSerie: TFrameSerie
  Left = 0
  Top = 0
  Width = 572
  Height = 326
  Color = clWindow
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object dxLayoutControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 572
    Height = 326
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentBackground = True
    ParentFont = False
    TabOrder = 0
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 66
      Top = 12
      DataBinding.DataField = 'idserie'
      DataBinding.DataSource = dtsSerie
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 68
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 66
      Top = 42
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dtsSerie
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 260
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 427
      Top = 42
      DataBinding.DataField = 'numeracao'
      DataBinding.DataSource = dtsSerie
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 200
    end
    object dxLayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID'
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o'
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Numera'#231#227'o Atual'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 149
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  object dtsSerie: TDataSource
    AutoEdit = False
    DataSet = DM.cdsSerie
    Left = 208
    Top = 152
  end
end
