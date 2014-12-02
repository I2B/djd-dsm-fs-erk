inherited FrameProdutoFornecedor: TFrameProdutoFornecedor
  Width = 871
  Height = 373
  ExplicitWidth = 871
  ExplicitHeight = 373
  inherited dxLayoutControl: TdxLayoutControl
    Width = 871
    Height = 373
    object edtProdutoID: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idproduto'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 133
    end
    object edtFornecedorID: TcxDBTextEdit [1]
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
    object edtProdutoFornecedorID: TcxDBTextEdit [2]
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
    object cxTextEdit1: TcxTextEdit [3]
      Left = 152
      Top = 33
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 437
    end
    object cxTextEdit2: TcxTextEdit [4]
      Left = 152
      Top = 84
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 437
    end
    object edtDataUltimaCompra: TcxDBDateEdit [5]
      Left = 291
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
    object edtPrecoUltimaCompra: TcxDBTextEdit [6]
      Left = 441
      Top = 135
      DataBinding.DataField = 'precoultimacompra'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 54
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProdutoID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Fornecedor'
      CaptionOptions.Layout = clTop
      Control = edtFornecedorID
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutControlItem6: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignVert = avBottom
      Control = cxTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem7: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignVert = avBottom
      Control = cxTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
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
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoFornecedor
  end
end
