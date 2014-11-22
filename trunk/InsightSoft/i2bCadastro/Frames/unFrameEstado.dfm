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
    object edtEstado: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtCodigoIBGE: TcxDBTextEdit [2]
      Left = 89
      Top = 33
      DataBinding.DataField = 'codigoibge'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 153
    end
    object edtPais: TcxDBTextEdit [3]
      Left = 249
      Top = 33
      DataBinding.DataField = 'idpais'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 70
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'UF'
      CaptionOptions.Layout = clTop
      Control = edtUF
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Estado'
      CaptionOptions.Layout = clTop
      Control = edtEstado
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'C'#243'digo IBGE'
      CaptionOptions.Layout = clTop
      Control = edtCodigoIBGE
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'ID Pa'#237's'
      CaptionOptions.Layout = clTop
      Control = edtPais
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsEstado
  end
end
