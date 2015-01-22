inherited FramePortador: TFramePortador
  inherited dxLayoutControl: TdxLayoutControl
    object edtBanco: TcxDBTextEdit [0]
      Left = 104
      Top = 33
      DataBinding.DataField = 'banconome'
      DataBinding.DataSource = DataSource
      Properties.MaxLength = 4
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnKeyPress = edtBancoKeyPress
      Width = 253
    end
    object edtDescricao: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 205
    end
    object edtIDBanco: TcxDBCurrencyEdit [2]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idbanco'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '000'
      Properties.EditFormat = '000'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtIDBancoExit
      OnKeyDown = edtIDBancoKeyDown
      Width = 85
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Banco'
      CaptionOptions.Layout = clTop
      Control = edtBanco
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Portador'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'ID Banco [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDBanco
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsPortador
  end
end
