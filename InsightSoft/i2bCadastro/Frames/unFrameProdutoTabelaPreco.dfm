inherited FramePai1: TFramePai1
  Width = 612
  ExplicitWidth = 612
  inherited dxLayoutControl: TdxLayoutControl
    Width = 612
    object edtIDProduto: TcxDBTextEdit [0]
      Left = 12
      Top = 84
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 85
    end
    object edtTabelaNome: TcxDBTextEdit [1]
      Left = 12
      Top = 33
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edtPreco: TcxDBTextEdit [2]
      Left = 456
      Top = 84
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtProdutoNome: TcxTextEdit [3]
      Left = 104
      Top = 84
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = 'edtProdutoNome'
      Width = 345
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtIDProduto
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Nome da Tabela'
      CaptionOptions.Layout = clTop
      Control = edtTabelaNome
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Pre'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtPreco
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = edtProdutoNome
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoTabelaPreco
  end
end
