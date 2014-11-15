inherited FrameEmpresa: TFrameEmpresa
  inherited dxLayoutControl: TdxLayoutControl
    object edtRazaoSocial: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'razaosocial'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'nomefantasia'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'homepage'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 349
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [3]
      Left = 12
      Top = 165
      Caption = 'Regime Tribut'#225'rio'
      DataBinding.DataField = 'tiporegime'
      DataBinding.DataSource = DataSource
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Lucro Real'
          Value = '1'
        end
        item
          Caption = 'Lucro Presumido'
          Value = '2'
        end
        item
          Caption = 'Simples'
          Value = '3'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 3
      Height = 52
      Width = 185
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Raz'#227'o Social'
      CaptionOptions.Layout = clTop
      Control = edtRazaoSocial
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Nome Fantasia'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Home Page'
      CaptionOptions.Layout = clTop
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Control = cxDBRadioGroup1
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsEmpresa
    Left = 424
    Top = 24
  end
end
