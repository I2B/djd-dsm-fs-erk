inherited FrameCNAE: TFrameCNAE
  inherited dxLayoutControl: TdxLayoutControl
    object edtCodigo: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'codigo'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edtDenominação: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'denominacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 301
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = edtCodigo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Denomina'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDenominação
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsCNAE
  end
end
