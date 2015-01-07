inherited frameIndicadorEconomico: TframeIndicadorEconomico
  inherited dxLayoutControl: TdxLayoutControl
    object edtDescricao: TcxDBTextEdit [0]
      Left = 12
      Top = 84
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 333
    end
    object edtID: TcxDBTextEdit [1]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idindicadoreconomico'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [2]
      Left = 224
      Top = 33
      Caption = 'Ativo'
      DataBinding.DataField = 'ativo'
      DataBinding.DataSource = DataSource
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID'
      CaptionOptions.Layout = clTop
      Control = edtID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsIndicadorEconomico
  end
end
