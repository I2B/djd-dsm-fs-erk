inherited FrameTelefone: TFrameTelefone
  inherited dxLayoutControl: TdxLayoutControl
    object edtIDPessoa: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idpessoa'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edtIDUnidadeNegocio: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idunidadenegocio'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object edtIDTipoTelefone: TcxDBTextEdit [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'idtipotelefone'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object edtNumero: TcxDBTextEdit [3]
      Left = 12
      Top = 186
      DataBinding.DataField = 'numerotelefone'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'ID Pessoa'
      CaptionOptions.Layout = clTop
      Control = edtIDPessoa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'ID Unidade de Negocio'
      CaptionOptions.Layout = clTop
      Control = edtIDUnidadeNegocio
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'ID Tipo de Telefone'
      CaptionOptions.Layout = clTop
      Control = edtIDTipoTelefone
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'N'#250'mero'
      CaptionOptions.Layout = clTop
      Control = edtNumero
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsTelefone
  end
end
