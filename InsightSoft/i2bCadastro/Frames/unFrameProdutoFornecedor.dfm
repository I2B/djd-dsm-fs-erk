inherited FrameProdutoFornecedor: TFrameProdutoFornecedor
  Width = 871
  Height = 373
  ExplicitWidth = 871
  ExplicitHeight = 373
  inherited dxLayoutControl: TdxLayoutControl
    Width = 871
    Height = 373
    ExplicitWidth = 871
    ExplicitHeight = 373
    object edtProdutoFornecedorID: TcxDBTextEdit [0]
      Left = 12
      Top = 135
      DataBinding.DataField = 'codigoprodutofornecedor'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 229
    end
    object edtDataUltimaCompra: TcxDBDateEdit [1]
      Left = 248
      Top = 135
      DataBinding.DataField = 'dataultimacompra'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 60
    end
    object edtPrecoUltimaCompra: TcxDBTextEdit [2]
      Left = 375
      Top = 135
      DataBinding.DataField = 'precoultimacompra'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 54
    end
    object edtIDProduto: TcxDBCurrencyEdit [3]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idproduto'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtIDProdutoExit
      OnKeyDown = edtIDProdutoKeyDown
      Width = 121
    end
    object edtIDFornecedor: TcxDBCurrencyEdit [4]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idprodutofornecedor'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object edtProduto: TcxDBTextEdit [5]
      Left = 140
      Top = 33
      DataBinding.DataField = 'produtonome'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 133
    end
    object edtFornecedor: TcxDBTextEdit [6]
      Left = 140
      Top = 84
      DataBinding.DataField = 'fornecedornome'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'ID do Produto no Fornecedor'
      CaptionOptions.Layout = clTop
      Control = edtProdutoFornecedorID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Data da '#218'ltima Compra'
      CaptionOptions.Layout = clTop
      Control = edtDataUltimaCompra
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Pre'#231'o da '#218'ltima Compra'
      CaptionOptions.Layout = clTop
      Control = edtPrecoUltimaCompra
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem8: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'ID Produto'
      CaptionOptions.Layout = clTop
      Control = edtIDProduto
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem9: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      CaptionOptions.Text = 'ID Fornecedor'
      CaptionOptions.Layout = clTop
      Control = edtIDFornecedor
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem10: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProduto
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem11: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Fornecedor'
      CaptionOptions.Layout = clTop
      Control = edtFornecedor
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoFornecedor
  end
end
