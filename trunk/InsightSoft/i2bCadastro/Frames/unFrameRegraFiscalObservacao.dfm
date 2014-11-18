inherited FrameRegraFiscalObservacao: TFrameRegraFiscalObservacao
  inherited dxLayoutControl: TdxLayoutControl
    object edtDescricao: TcxDBMemo [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Height = 89
      Width = 413
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsRegraFiscalObservacao
  end
end
