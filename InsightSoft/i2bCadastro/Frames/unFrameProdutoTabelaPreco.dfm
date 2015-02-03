inherited FrameProdutoabelaPreco: TFrameProdutoabelaPreco
  Width = 612
  ExplicitWidth = 612
  inherited dxLayoutControl: TdxLayoutControl
    Width = 612
    ExplicitWidth = 612
    object edtProduto: TcxDBTextEdit [0]
      Left = 109
      Top = 84
      DataBinding.DataField = 'produtonome'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 188
    end
    object edtTabelaNome: TcxDBTextEdit [1]
      Left = 109
      Top = 33
      DataBinding.DataField = 'tabelapreconome'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 276
    end
    object edtIDTabela: TcxDBCurrencyEdit [2]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idtabelapreco'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtIDTabelaExit
      OnKeyDown = edtIDTabelaKeyDown
      Width = 90
    end
    object edtIDProduto: TcxDBCurrencyEdit [3]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idproduto'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnExit = edtIDProdutoExit
      OnKeyDown = edtIDProdutoKeyDown
      Width = 90
    end
    object edtPreco: TcxDBCurrencyEdit [4]
      Left = 304
      Top = 84
      DataBinding.DataField = 'preco'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 105
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProduto
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome da Tabela'
      CaptionOptions.Layout = clTop
      Control = edtTabelaNome
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'ID Tabela [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDTabela
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'ID Produto [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDProduto
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Pre'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtPreco
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoTabelaPreco
  end
end
