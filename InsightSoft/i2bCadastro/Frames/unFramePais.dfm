inherited FramePais: TFramePais
  inherited dxLayoutControl: TdxLayoutControl
    object edtPais: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 221
    end
    object edtMoeda: TcxDBTextEdit [1]
      Left = 104
      Top = 84
      DataBinding.DataField = 'indicadordescricao'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object edtIDMoeda: TcxDBCurrencyEdit [2]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idindicadoreconomico'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnExit = edtIDMoedaExit
      OnKeyDown = edtIDMoedaKeyDown
      Width = 85
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Pa'#237's'
      CaptionOptions.Layout = clTop
      Control = edtPais
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Moeda'
      CaptionOptions.Layout = clTop
      Control = edtMoeda
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'ID Moeda'
      CaptionOptions.Layout = clTop
      Control = edtIDMoeda
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsPais
  end
end
