inherited FrameIndicador: TFrameIndicador
  inherited dxLayoutControl: TdxLayoutControl
    ExplicitTop = -3
    object edtIndicadorEconomico: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'idindicadoreconomico'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edtData: TcxDBDateEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'dataatualizacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object edtValor: TcxDBCurrencyEdit [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Indicador Econ'#244'mico'
      CaptionOptions.Layout = clTop
      Control = edtIndicadorEconomico
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Data'
      CaptionOptions.Layout = clTop
      Control = edtData
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Valor'
      CaptionOptions.Layout = clTop
      Control = edtValor
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsIndice
  end
end
