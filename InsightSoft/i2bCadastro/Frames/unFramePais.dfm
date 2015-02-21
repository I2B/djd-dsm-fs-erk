inherited FramePais: TFramePais
  inherited dxLayoutControl: TdxLayoutControl
    object edtMoeda: TcxDBTextEdit [0]
      Left = 104
      Top = 84
      DataBinding.DataField = 'indicadordescricao'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtIDMoeda: TcxDBCurrencyEdit [1]
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
      TabOrder = 2
      OnExit = edtIDMoedaExit
      OnKeyDown = edtIDMoedaKeyDown
      Width = 85
    end
    object edtCodigoBACEN: TcxDBTextEdit [2]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idpais'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 85
    end
    object edtPais: TcxDBTextEdit [3]
      Left = 104
      Top = 33
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 221
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
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
      CaptionOptions.Text = 'ID Moeda [F2]'
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
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Index = -1
      AutoCreated = True
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'digo BACEN'
      CaptionOptions.Layout = clTop
      Control = edtCodigoBACEN
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Pa'#237's'
      CaptionOptions.Layout = clTop
      Control = edtPais
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsPais
  end
end
