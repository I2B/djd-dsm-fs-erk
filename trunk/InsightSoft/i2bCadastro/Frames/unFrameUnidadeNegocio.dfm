inherited FrameUnidadeNegocio: TFrameUnidadeNegocio
  inherited dxLayoutControl: TdxLayoutControl
    object edtCNPJ: TcxDBTextEdit [0]
      Left = 12
      Top = 84
      DataBinding.DataField = 'cnpj'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object edtNomeFantasia: TcxDBTextEdit [1]
      Left = 12
      Top = 135
      DataBinding.DataField = 'nomefantasia'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtIDEmpresa: TcxDBTextEdit [2]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idempresa'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edtCNAE: TcxDBTextEdit [3]
      Left = 140
      Top = 84
      DataBinding.DataField = 'idcnae'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'CNPJ'
      CaptionOptions.Layout = clTop
      Control = edtCNPJ
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Nome Fantasia'
      CaptionOptions.Layout = clTop
      Control = edtNomeFantasia
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Empresa'
      CaptionOptions.Layout = clTop
      Control = edtIDEmpresa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'CNAE'
      CaptionOptions.Layout = clTop
      Control = edtCNAE
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsUnidadeNegocio
  end
end
