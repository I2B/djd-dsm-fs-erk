inherited FrameMunicipio: TFrameMunicipio
  inherited dxLayoutControl: TdxLayoutControl
    object edtMunicipio: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 205
    end
    object edtUF: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idestado'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Mun'#237'cipio'
      CaptionOptions.Layout = clTop
      Control = edtMunicipio
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'UF'
      CaptionOptions.Layout = clTop
      Control = edtUF
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsMunicipio
  end
end
