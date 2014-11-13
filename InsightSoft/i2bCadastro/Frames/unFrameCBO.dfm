inherited FrameCBO: TFrameCBO
  Width = 532
  ExplicitWidth = 532
  inherited dxLayoutControl: TdxLayoutControl
    Width = 532
    object edtCBO: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 232
    end
    object edtCodigo1994: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'codigo1994'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 230
    end
    object memObservacao: TcxDBMemo [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 89
      Width = 469
    end
    object edtCodigo2002: TcxDBTextEdit [3]
      Left = 270
      Top = 84
      DataBinding.DataField = 'codigo2002'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 230
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      Index = -1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'CBO Nome'
      CaptionOptions.Layout = clTop
      Control = edtCBO
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'digo 1994'
      CaptionOptions.Layout = clTop
      Control = edtCodigo1994
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = memObservacao
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'digo 2002'
      CaptionOptions.Layout = clTop
      Control = edtCodigo2002
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsCBO
  end
end
