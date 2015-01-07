inherited FrameIndice: TFrameIndice
  inherited dxLayoutControl: TdxLayoutControl
    object edtIndicadorEconomico: TcxDBTextEdit [0]
      Left = 160
      Top = 33
      DataBinding.DataField = 'indicadordescricao'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 141
    end
    object edtData: TcxDBDateEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'dataatualizacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 141
    end
    object edtValor: TcxDBCurrencyEdit [2]
      Left = 160
      Top = 84
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 141
    end
    object edtIDIndicadorEconomico: TcxDBCurrencyEdit [3]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idindicadoreconomico'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtIDIndicadorEconomicoExit
      OnKeyDown = edtIDIndicadorEconomicoKeyDown
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Indicador Econ'#244'mico'
      CaptionOptions.Layout = clTop
      Control = edtIndicadorEconomico
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Data'
      CaptionOptions.Layout = clTop
      Control = edtData
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Valor'
      CaptionOptions.Layout = clTop
      Control = edtValor
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
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Indicador Econ'#244'mico [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDIndicadorEconomico
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
    DataSet = DM.cdsIndice
  end
end
