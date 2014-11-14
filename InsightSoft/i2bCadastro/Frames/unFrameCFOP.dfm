inherited FrameCFOP: TFrameCFOP
  inherited dxLayoutControl: TdxLayoutControl
    object edtCFOP: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'cfop'
      DataBinding.DataSource = DataSource
      Properties.MaxLength = 4
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnKeyPress = edtCFOPKeyPress
      Width = 181
    end
    object edtDescricao: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 365
    end
    object edtDescricaoNF: TcxDBTextEdit [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'descricaonf'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 365
    end
    object memAplicacao: TcxDBMemo [3]
      Left = 12
      Top = 186
      DataBinding.DataField = 'aplicacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 89
      Width = 365
    end
    object edtTipoOperacao: TcxDBTextEdit [4]
      Left = 200
      Top = 33
      DataBinding.DataField = 'idtipooperacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 177
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'CFOP'
      CaptionOptions.Layout = clTop
      Control = edtCFOP
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Descri'#231#227'o NF'
      CaptionOptions.Layout = clTop
      Control = edtDescricaoNF
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Aplica'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = memAplicacao
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Tipo Opera'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtTipoOperacao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsCFOP
  end
end
