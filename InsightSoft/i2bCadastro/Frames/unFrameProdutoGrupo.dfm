inherited FrameProdutoGrupo: TFrameProdutoGrupo
  Width = 805
  Height = 298
  ExplicitWidth = 805
  ExplicitHeight = 298
  inherited dxLayoutControl: TdxLayoutControl
    Width = 805
    Height = 298
    ExplicitWidth = 805
    ExplicitHeight = 298
    object edtProdutoGrupoNome: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 629
    end
    object edtProdutoGrupoDescricao: TcxDBMemo [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 89
      Width = 629
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Layout = clTop
      Control = edtProdutoGrupoNome
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtProdutoGrupoDescricao
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoGrupo
  end
end
