inherited FrameMunicipio: TFrameMunicipio
  inherited dxLayoutControl: TdxLayoutControl
    object edtMunicipio: TcxDBTextEdit [0]
      Left = 112
      Top = 33
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 365
    end
    object edtUF: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idestado'
      DataBinding.DataSource = DataSource
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnExit = edtUFExit
      OnKeyDown = edtUFKeyDown
      Width = 93
    end
    object edtUFDescricao: TcxDBTextEdit [2]
      Left = 112
      Top = 84
      DataBinding.DataField = 'estadonome'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 265
    end
    object edtIDMunicipio: TcxDBCurrencyEdit [3]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idmunicipio'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 93
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Mun'#237'cipio'
      CaptionOptions.Layout = clTop
      Control = edtMunicipio
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'UF [F2]'
      CaptionOptions.Layout = clTop
      Control = edtUF
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Estado'
      CaptionOptions.Layout = clTop
      Control = edtUFDescricao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'ID Munic'#237'pio'
      CaptionOptions.Layout = clTop
      Control = edtIDMunicipio
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsMunicipio
  end
end
