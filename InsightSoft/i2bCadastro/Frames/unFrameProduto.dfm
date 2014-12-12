inherited FrameProduto: TFrameProduto
  Width = 1007
  Height = 504
  ExplicitWidth = 1007
  ExplicitHeight = 504
  inherited dxLayoutControl: TdxLayoutControl
    Width = 1007
    Height = 504
    ExplicitWidth = 1007
    ExplicitHeight = 504
    object edtCodigoInterno: TcxDBTextEdit [0]
      Left = 12
      Top = 33
      DataBinding.DataField = 'codigointerno'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 270
    end
    object edtDescricao: TcxDBTextEdit [1]
      Left = 12
      Top = 84
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 573
    end
    object edtGETIN: TcxDBTextEdit [2]
      Left = 289
      Top = 33
      DataBinding.DataField = 'getin'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 361
    end
    object edtDescricaoPDV: TcxDBTextEdit [3]
      Left = 592
      Top = 84
      DataBinding.DataField = 'descricaopdv'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 403
    end
    object edtDescricaoDetalhada: TcxDBMemo [4]
      Left = 12
      Top = 135
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 150
      Width = 813
    end
    object edtValorVenda: TcxDBCurrencyEdit [5]
      Left = 12
      Top = 420
      DataBinding.DataField = 'valorvenda'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 85
    end
    object edtValorCompra: TcxDBCurrencyEdit [6]
      Left = 104
      Top = 420
      DataBinding.DataField = 'valorcompra'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 87
    end
    object edtValorMinimoVenda: TcxDBCurrencyEdit [7]
      Left = 198
      Top = 420
      DataBinding.DataField = 'precovendaminimo'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 118
    end
    object edtValorSugerido: TcxDBCurrencyEdit [8]
      Left = 323
      Top = 420
      DataBinding.DataField = 'precosugerido'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 85
    end
    object edtCustoMedioLiquido: TcxDBCurrencyEdit [9]
      Left = 415
      Top = 420
      DataBinding.DataField = 'customedioliquido'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 104
    end
    object edtCodigoBalanca: TcxDBTextEdit [10]
      Left = 657
      Top = 33
      DataBinding.DataField = 'codigobalanca'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 231
    end
    object chkInativ: TcxDBCheckBox [11]
      Left = 895
      Top = 33
      Caption = 'Produto Inativo'
      DataBinding.DataField = 'inativo'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 100
    end
    object edtValorLucroZero: TcxDBCurrencyEdit [12]
      Left = 526
      Top = 420
      DataBinding.DataField = 'precolucrozero'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 112
    end
    object edtValorLucroMinimo: TcxDBCurrencyEdit [13]
      Left = 645
      Top = 420
      DataBinding.DataField = 'precolucrominimo'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 112
    end
    object edtValorLucroMaximo: TcxDBCurrencyEdit [14]
      Left = 764
      Top = 420
      DataBinding.DataField = 'precolucromaximo'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Width = 112
    end
    object edtMarkup: TcxDBCurrencyEdit [15]
      Left = 883
      Top = 420
      DataBinding.DataField = 'markup'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Width = 112
    end
    object edtImagem: TcxImage [16]
      Left = 883
      Top = 135
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 120
      Width = 112
    end
    object edtCodigoGrupo: TcxDBTextEdit [17]
      Left = 12
      Top = 313
      DataBinding.DataField = 'idgrupoprodutos'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 85
    end
    object edtNomeGrupo: TcxTextEdit [18]
      Left = 104
      Top = 313
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Text = 'edtNomeGrupo'
      Width = 393
    end
    object edtCodigoSubGrupo: TcxDBTextEdit [19]
      Left = 504
      Top = 313
      DataBinding.DataField = 'idsubgrupoprodutos'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 85
    end
    object edtNomeSubGrupo: TcxTextEdit [20]
      Left = 596
      Top = 313
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Text = 'edtNomeSubGrupo'
      Width = 399
    end
    object edtEstoqueMinimo: TcxDBCurrencyEdit [21]
      Left = 104
      Top = 364
      DataBinding.DataField = 'estoqueminimo'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 153
    end
    object edtEstoqueMaximo: TcxDBCurrencyEdit [22]
      Left = 246
      Top = 364
      DataBinding.DataField = 'estoquemaximo'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 153
    end
    object edtEstoqueIdeal: TcxDBCurrencyEdit [23]
      Left = 387
      Top = 364
      DataBinding.DataField = 'estoqueideal'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 154
    end
    object edtDataCadastro: TcxDBDateEdit [24]
      Left = 530
      Top = 364
      DataBinding.DataField = 'datacadastro'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 151
    end
    object edtNCM: TcxDBTextEdit [25]
      Left = 670
      Top = 364
      DataBinding.DataField = 'idncm'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 157
    end
    object grpTipoProduto: TcxDBRadioGroup [26]
      Left = 815
      Top = 343
      Caption = 'Tipo de Produto'
      DataBinding.DataField = 'tipo'
      DataBinding.DataSource = DataSource
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Produto'
        end
        item
          Caption = 'Servi'#231'o'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 19
      Height = 49
      Width = 180
    end
    object edtUNMedida: TcxDBTextEdit [27]
      Left = 12
      Top = 364
      DataBinding.DataField = 'idprodutounidade'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 85
    end
    object edtCaminhoImagem: TcxDBButtonEdit [28]
      Left = 883
      Top = 262
      DataBinding.DataField = 'fotoproduto'
      DataBinding.DataSource = DataSource
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Width = 90
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'digo Interno'
      CaptionOptions.Layout = clTop
      Control = edtCodigoInterno
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup4
      CaptionOptions.Text = 'GETIN'
      CaptionOptions.Layout = clTop
      Control = edtGETIN
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      CaptionOptions.Text = 'Descri'#231#227'o PDV'
      CaptionOptions.Layout = clTop
      Control = edtDescricaoPDV
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem7: TdxLayoutItem
      Parent = dxLayoutControlGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o Detalhada'
      CaptionOptions.Layout = clTop
      Control = edtDescricaoDetalhada
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor de Venda'
      CaptionOptions.Layout = clTop
      Control = edtValorVenda
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem6: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor de Compra'
      CaptionOptions.Layout = clTop
      Control = edtValorCompra
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem8: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor M'#237'nimo de Venda'
      CaptionOptions.Layout = clTop
      Control = edtValorMinimoVenda
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlGroup4: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup1: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup2: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControlItem9: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor Sugerido'
      CaptionOptions.Layout = clTop
      Control = edtValorSugerido
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem10: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Custo M'#233'dio L'#237'quido'
      CaptionOptions.Layout = clTop
      Control = edtCustoMedioLiquido
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControlItem19: TdxLayoutItem
      Parent = dxLayoutControlGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'digo Balan'#231'a'
      CaptionOptions.Layout = clTop
      Control = edtCodigoBalanca
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem21: TdxLayoutItem
      Parent = dxLayoutControlGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkInativ
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem17: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor Lucro Zero'
      CaptionOptions.Layout = clTop
      Control = edtValorLucroZero
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControlItem16: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor Lucro M'#237'nimo'
      CaptionOptions.Layout = clTop
      Control = edtValorLucroMinimo
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControlItem15: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Valor Lucro M'#225'ximo'
      CaptionOptions.Layout = clTop
      Control = edtValorLucroMaximo
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControlItem14: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Markup'
      CaptionOptions.Layout = clTop
      Control = edtMarkup
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControlItem22: TdxLayoutItem
      Parent = dxLayoutControlGroup7
      CaptionOptions.Text = 'Imagem'
      CaptionOptions.Layout = clTop
      Control = edtImagem
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutControlGroup6: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem23: TdxLayoutItem
      Parent = dxLayoutControlGroup6
      CaptionOptions.Text = 'Grupo'
      CaptionOptions.Layout = clTop
      Control = edtCodigoGrupo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem24: TdxLayoutItem
      Parent = dxLayoutControlGroup6
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = edtNomeGrupo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem25: TdxLayoutItem
      Parent = dxLayoutControlGroup6
      CaptionOptions.Text = 'Sub-Grupo'
      CaptionOptions.Layout = clTop
      Control = edtCodigoSubGrupo
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem26: TdxLayoutItem
      Parent = dxLayoutControlGroup6
      AlignVert = avBottom
      CaptionOptions.Layout = clTop
      Control = edtNomeSubGrupo
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlGroup3: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControlItem13: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Estoque M'#237'nimo'
      CaptionOptions.Layout = clTop
      Control = edtEstoqueMinimo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem12: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Estoque M'#225'ximo'
      CaptionOptions.Layout = clTop
      Control = edtEstoqueMaximo
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem11: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Estoque Ideal'
      CaptionOptions.Layout = clTop
      Control = edtEstoqueIdeal
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem18: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Data de Cadastro'
      CaptionOptions.Layout = clTop
      Control = edtDataCadastro
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControlItem27: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'NCM'
      CaptionOptions.Layout = clTop
      Control = edtNCM
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControlItem20: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grpTipoProduto
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControlItem29: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      CaptionOptions.Text = 'Un. de Medida'
      CaptionOptions.Layout = clTop
      Control = edtUNMedida
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem28: TdxLayoutItem
      Parent = dxLayoutControlGroup7
      CaptionOptions.Text = 'cxDBButtonEdit1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = edtCaminhoImagem
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup5
      Index = 1
      AutoCreated = True
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsProduto
    Left = 672
    Top = 168
  end
end
