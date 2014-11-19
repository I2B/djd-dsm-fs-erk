inherited FrameProdutoUnidade: TFrameProdutoUnidade
  inherited dxLayoutControl: TdxLayoutControl
    object edtSigla: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'sigla'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 119
    end
    object edtDescricao: TcxDBMemo [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 89
      Width = 415
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Sigla'
      CaptionOptions.Layout = clTop
      Control = edtSigla
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup1: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup2: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoUnidade
  end
end
