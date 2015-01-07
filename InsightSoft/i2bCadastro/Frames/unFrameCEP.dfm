inherited FrameCEP: TFrameCEP
  inherited dxLayoutControl: TdxLayoutControl
    object edtLogradouro: TcxDBTextEdit [0]
      Left = 12
      Top = 135
      DataBinding.DataField = 'logradouro'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 349
    end
    object edtComplemento: TcxDBTextEdit [1]
      Left = 12
      Top = 186
      DataBinding.DataField = 'complemento'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object edtBairro: TcxDBTextEdit [2]
      Left = 12
      Top = 237
      DataBinding.DataField = 'bairro'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object edtMunicipioID: TcxDBCurrencyEdit [3]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idmunicipio'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.Nullable = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnExit = edtMunicipioIDExit
      OnKeyDown = edtMunicipioIDKeyDown
      Width = 101
    end
    object edtMunicipioNome: TcxDBTextEdit [4]
      Left = 120
      Top = 84
      DataBinding.DataField = 'municipionome'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 257
    end
    object edtCEP: TcxDBCurrencyEdit [5]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idcep'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '00000-000'
      Properties.MaxLength = 8
      Properties.MinValue = 8.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 101
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Logradouro'
      CaptionOptions.Layout = clTop
      Control = edtLogradouro
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Complemento'
      CaptionOptions.Layout = clTop
      Control = edtComplemento
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Bairro'
      CaptionOptions.Layout = clTop
      Control = edtBairro
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControlItem6: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Munic'#237'pio [F2]'
      CaptionOptions.Layout = clTop
      Control = edtMunicipioID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Municipio'
      CaptionOptions.Layout = clTop
      Control = edtMunicipioNome
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem7: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'CEP'
      CaptionOptions.Layout = clTop
      Control = edtCEP
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsCEP
  end
end
