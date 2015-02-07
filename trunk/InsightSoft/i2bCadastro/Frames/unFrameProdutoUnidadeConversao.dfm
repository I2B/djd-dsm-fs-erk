inherited FrameProdutoUnidadeConversao: TFrameProdutoUnidadeConversao
  Width = 538
  ExplicitWidth = 538
  inherited dxLayoutControl: TdxLayoutControl
    Width = 538
    object edtSigla: TcxDBTextEdit [0]
      Left = 12
      Top = 252
      DataBinding.DataField = 'sigla'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object edtFatorConversao: TcxDBTextEdit [1]
      Left = 140
      Top = 252
      DataBinding.DataField = 'fatorconversao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object edtDescricao: TcxDBMemo [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 89
      Width = 185
    end
    object edtIDProduto: TcxDBCurrencyEdit [3]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idproduto'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtIDProdutoExit
      OnKeyDown = edtIDProdutoKeyDown
      Width = 93
    end
    object edtIDUnidadeConversao: TcxDBCurrencyEdit [4]
      Left = 12
      Top = 84
      DataBinding.DataField = 'idprodutounidade'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.EditFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnExit = edtIDUnidadeConversaoExit
      OnKeyDown = edtIDUnidadeConversaoKeyDown
      Width = 93
    end
    object edtProduto: TcxDBTextEdit [5]
      Left = 112
      Top = 33
      DataBinding.DataField = 'produtonome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 368
    end
    object edtUnidadeConversao: TcxDBTextEdit [6]
      Left = 112
      Top = 84
      DataBinding.DataField = 'unidadesigla'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 368
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Sigla'
      CaptionOptions.Layout = clTop
      Control = edtSigla
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'Fator de Convers'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtFatorConversao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlGroup4: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup3: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup2: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem8: TdxLayoutItem
      Parent = dxLayoutControlGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDProduto
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem9: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'ID [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDUnidadeConversao
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup4
      AlignVert = avBottom
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProduto
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Unidade Convers'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtUnidadeConversao
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoUnidadeConversao
  end
end
