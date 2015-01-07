inherited FrameEstado: TFrameEstado
  inherited dxLayoutControl: TdxLayoutControl
    object edtUF: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idestado'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 70
    end
    object edtCodigoIBGE: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'codigoibge'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 69
    end
    object edtEstado: TcxDBTextEdit [2]
      Left = 89
      Top = 33
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 208
    end
    object edtIDPais: TcxDBCurrencyEdit [3]
      Left = 88
      Top = 84
      DataBinding.DataField = 'idpais'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      OnExit = edtIDPaisExit
      OnKeyDown = edtIDPaisKeyDown
      Width = 65
    end
    object edtPais: TcxDBTextEdit [4]
      Left = 160
      Top = 84
      DataBinding.DataField = 'paisnome'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 193
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'UF'
      CaptionOptions.Layout = clTop
      Control = edtUF
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo IBGE'
      CaptionOptions.Layout = clTop
      Control = edtCodigoIBGE
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Estado'
      CaptionOptions.Layout = clTop
      Control = edtEstado
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'ID Pa'#237's [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDPais
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Pa'#237's'
      CaptionOptions.Layout = clTop
      Control = edtPais
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsEstado
    Left = 336
    Top = 184
  end
end
