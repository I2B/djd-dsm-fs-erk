inherited FrameProdutoGrade: TFrameProdutoGrade
  Width = 975
  Height = 494
  ExplicitWidth = 975
  ExplicitHeight = 494
  inherited dxLayoutControl: TdxLayoutControl
    Width = 975
    Height = 494
    ExplicitWidth = 975
    ExplicitHeight = 494
    object edtProdutoNome: TcxTextEdit [0]
      Left = 140
      Top = 33
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 445
    end
    object clbCor: TcxCheckListBox [1]
      Left = 26
      Top = 84
      Width = 255
      Height = 97
      Items = <>
      Style.TransparentBorder = True
      TabOrder = 2
    end
    object clbTamanho: TcxCheckListBox [2]
      Left = 316
      Top = 84
      Width = 255
      Height = 97
      Items = <>
      TabOrder = 3
    end
    object edtProduto: TcxTextEdit [3]
      Left = 12
      Top = 33
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'edtProduto'
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      CaptionOptions.Visible = False
      Index = -1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = edtProdutoNome
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutGroup
      Parent = dxLayoutControlGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Cor'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlGroup2: TdxLayoutGroup
      Parent = dxLayoutControlGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Tamanho'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControlGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'cxCheckListBox1'
      CaptionOptions.Visible = False
      Control = clbCor
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'cxCheckListBox1'
      CaptionOptions.Visible = False
      Control = clbTamanho
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProduto
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProdutoGrade
  end
end
