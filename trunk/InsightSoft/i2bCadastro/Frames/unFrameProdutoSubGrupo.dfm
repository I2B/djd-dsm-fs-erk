inherited FrameProdutoSubGrupo: TFrameProdutoSubGrupo
  Width = 744
  ExplicitWidth = 744
  inherited dxLayoutControl: TdxLayoutControl
    Width = 744
    ExplicitWidth = 744
    object edtProdutoGrupo: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idgrupoprodutos'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 77
    end
    object edtProdutoSubGrupoNome: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object edtProdutoSubGrupoDescricao: TcxDBMemo [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 89
      Width = 185
    end
    object cxTextEdit1: TcxTextEdit [3]
      Left = 96
      Top = 33
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cxTextEdit1'
      Width = 505
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Grupo'
      CaptionOptions.Layout = clTop
      Control = edtProdutoGrupo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Layout = clTop
      Control = edtProdutoSubGrupoNome
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtProdutoSubGrupoDescricao
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = cxTextEdit1
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
    DataSet = DM.cdsProdutoSubGrupo
  end
end
