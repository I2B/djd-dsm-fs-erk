inherited FrameCSTCSOSN: TFrameCSTCSOSN
  inherited dxLayoutControl: TdxLayoutControl
    object memObservacao: TcxDBMemo [0]
      Left = 12
      Top = 84
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 89
      Width = 429
    end
    object edtDescricao: TcxDBTextEdit [1]
      Left = 12
      Top = 33
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = memObservacao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.CDSCSTCSOSN
  end
end
