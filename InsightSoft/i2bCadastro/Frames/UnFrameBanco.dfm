inherited FrameBanco: TFrameBanco
  inherited dxLayoutControl: TdxLayoutControl
    object edtBanco: TcxDBTextEdit [0]
      Left = 12
      Top = 84
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 285
    end
    object edtID: TcxDBTextEdit [1]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idbanco'
      DataBinding.DataSource = DataSource
      Properties.MaxLength = 4
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnKeyPress = edtIDKeyPress
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Banco'
      CaptionOptions.Layout = clTop
      Control = edtBanco
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID'
      CaptionOptions.Layout = clTop
      Control = edtID
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsBanco
  end
end
