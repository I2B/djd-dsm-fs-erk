inherited FramePortador: TFramePortador
  inherited dxLayoutControl: TdxLayoutControl
    object edtBanco: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idbanco'
      DataBinding.DataSource = DataSource
      Properties.MaxLength = 4
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnKeyPress = edtBancoKeyPress
      Width = 121
    end
    object edtDescricao: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 205
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Banco'
      CaptionOptions.Layout = clTop
      Control = edtBanco
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Portador'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsPortador
  end
end
