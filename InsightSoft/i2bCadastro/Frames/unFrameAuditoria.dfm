inherited FrameAuditoria: TFrameAuditoria
  inherited dxLayoutControl: TdxLayoutControl
    object cxDBTextEdit3: TcxDBTextEdit [0]
      Left = 12
      Top = 84
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 387
    end
    object cxDBMemo1: TcxDBMemo [1]
      Left = 12
      Top = 135
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 387
    end
    object cxDBDateEdit1: TcxDBDateEdit [2]
      Left = 12
      Top = 252
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 190
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 12
      Top = 33
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 387
    end
    object cxDBTimeEdit1: TcxDBTimeEdit [4]
      Left = 209
      Top = 252
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Width = 190
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'cxDBMemo1'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBDateEdit1'
      CaptionOptions.Layout = clTop
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'cxDBTextEdit2'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem6: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'cxDBTimeEdit1'
      CaptionOptions.Layout = clTop
      Control = cxDBTimeEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsAuditoria
  end
end
