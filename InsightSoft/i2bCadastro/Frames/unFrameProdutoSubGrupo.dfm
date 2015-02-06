inherited FrameProdutoSubGrupo: TFrameProdutoSubGrupo
  Width = 744
  ExplicitWidth = 744
  inherited dxLayoutControl: TdxLayoutControl
    Width = 744
    ExplicitWidth = 744
    object edtProdutoSubGrupoNome: TcxDBTextEdit [0]
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
    object edtProdutoSubGrupoDescricao: TcxDBMemo [1]
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
    object edtGrupo: TcxDBTextEdit [2]
      Left = 112
      Top = 33
      DataBinding.DataField = 'gruponome'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 257
    end
    object edtIDGrupo: TcxDBCurrencyEdit [3]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idgrupoprodutos'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtIDGrupoExit
      OnKeyDown = edtIDGrupoKeyDown
      Width = 93
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
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
      CaptionOptions.Text = 'Grupo'
      CaptionOptions.Layout = clTop
      Control = edtGrupo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'ID [F4]'
      CaptionOptions.Layout = clTop
      Control = edtIDGrupo
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoSubGrupo
  end
end
