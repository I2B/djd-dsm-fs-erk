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
      Width = 109
    end
    object memAplicacao: TcxDBMemo [1]
      Left = 12
      Top = 186
      DataBinding.DataField = 'aplicacao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Height = 89
      Width = 365
    end
    object edtIDTipoOperacao: TcxDBCurrencyEdit [2]
      Left = 12
      Top = 135
      DataBinding.DataField = 'idtipooperacao'
      DataBinding.DataSource = DataSource
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      OnExit = edtIDTipoOperacaoExit
      OnKeyDown = edtIDTipoOperacaoKeyDown
      Width = 109
    end
    object edtTipoOperacao: TcxDBTextEdit [3]
      Left = 130
      Top = 135
      DataBinding.DataField = 'tipooperacaodescricao'
      DataBinding.DataSource = DataSource
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 363
    end
    object edtDescricao: TcxDBTextEdit [4]
      Left = 128
      Top = 33
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 365
    end
    object edtDescricaoNF: TcxDBTextEdit [5]
      Left = 12
      Top = 84
      DataBinding.DataField = 'descricaonf'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 365
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'CFOP'
      CaptionOptions.Layout = clTop
      Control = edtCFOP
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Aplica'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = memAplicacao
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem7: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'ID Tipo Opera'#231#227'o [F2]'
      CaptionOptions.Layout = clTop
      Control = edtIDTipoOperacao
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtTipoOperacao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'Descri'#231#227'o NF'
      CaptionOptions.Layout = clTop
      Control = edtDescricaoNF
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsCFOP
  end
end
