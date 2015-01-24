inherited FrameSerie: TFrameSerie
  inherited dxLayoutControl: TdxLayoutControl
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idserie'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 55
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
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
    object cxDBTextEdit3: TcxDBTextEdit [2]
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
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsSerie
  end
end
