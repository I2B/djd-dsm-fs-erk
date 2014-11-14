inherited FrameCEP: TFrameCEP
  inherited dxLayoutControl: TdxLayoutControl
    object edtCEP: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idcep'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnKeyPress = edtCEPKeyPress
      Width = 121
    end
    object edtLogradouro: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'logradouro'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 349
    end
    object edtComplemento: TcxDBTextEdit [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'complemento'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtBairro: TcxDBTextEdit [3]
      Left = 12
      Top = 186
      DataBinding.DataField = 'bairro'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object edtMunicipio: TcxDBTextEdit [4]
      Left = 152
      Top = 33
      DataBinding.DataField = 'idmunicipio'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 209
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Cep'
      CaptionOptions.Layout = clTop
      Control = edtCEP
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Logradouro'
      CaptionOptions.Layout = clTop
      Control = edtLogradouro
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Complemento'
      CaptionOptions.Layout = clTop
      Control = edtComplemento
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Bairro'
      CaptionOptions.Layout = clTop
      Control = edtBairro
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Municipio'
      CaptionOptions.Layout = clTop
      Control = edtMunicipio
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
    DataSet = DM.cdsCEP
  end
end
