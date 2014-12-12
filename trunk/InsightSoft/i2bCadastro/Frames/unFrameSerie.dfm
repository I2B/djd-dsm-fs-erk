inherited FrameSerie: TFrameSerie
  OnResize = FrameResize
  inherited dxLayoutControl: TdxLayoutControl
    object Label1: TLabel [0]
      Left = 12
      Top = 165
      Width = 30
      Height = 15
      Caption = 'Label1'
      Color = clBtnFace
      ParentColor = False
    end
    object Label2: TLabel [1]
      Left = 12
      Top = 187
      Width = 32
      Height = 15
      Caption = 'Label2'
      Color = clBtnFace
      ParentColor = False
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idserie'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnKeyDown = cxDBTextEdit1KeyDown
      Width = 55
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 12
      Top = 84
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 319
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 12
      Top = 135
      DataBinding.DataField = 'numeracao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 93
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'S'#233'rie'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Numera'#231#227'o Atual'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Label1'
      CaptionOptions.Visible = False
      Control = Label1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Label2'
      CaptionOptions.Visible = False
      Control = Label2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsSerie
  end
end
