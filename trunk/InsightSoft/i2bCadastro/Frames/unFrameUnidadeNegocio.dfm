inherited FrameUnidadeNegocio: TFrameUnidadeNegocio
  inherited dxLayoutControl: TdxLayoutControl
    object edtEmpresa: TcxDBTextEdit [0]
      Left = 109
      Top = 33
      DataBinding.DataField = 'empresarazaosocial'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 241
    end
    object edtCNAE: TcxDBTextEdit [1]
      Left = 109
      Top = 84
      DataBinding.DataField = 'cnaedenominacao'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 165
    end
    object edtFantasia: TcxDBTextEdit [2]
      Left = 12
      Top = 186
      DataBinding.DataField = 'nomefantasia'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object edtIDEmpresa: TcxDBCurrencyEdit [3]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idempresa'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtIDEmpresaExit
      OnKeyDown = edtIDEmpresaKeyDown
      Width = 90
    end
    object edtIDCNAE: TcxDBCurrencyEdit [4]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idcnae'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnExit = edtIDCNAEExit
      OnKeyDown = edtIDCNAEKeyDown
      Width = 90
    end
    object edtCNPJ: TcxDBCurrencyEdit [5]
      Left = 12
      Top = 135
      DataBinding.DataField = 'cnpj'
      DataBinding.DataSource = DataSource
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
      Properties.DecimalPlaces = 0
      Properties.MaxLength = 14
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Empresa'
      CaptionOptions.Layout = clTop
      Control = edtEmpresa
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'CNAE'
      CaptionOptions.Layout = clTop
      Control = edtCNAE
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Nome Fantasia'
      CaptionOptions.Layout = clTop
      Control = edtFantasia
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'ID Empresa [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDEmpresa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem6: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'ID CNAE [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDCNAE
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem7: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'CNPJ'
      CaptionOptions.Layout = clTop
      Control = edtCNPJ
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsUnidadeNegocio
  end
end
