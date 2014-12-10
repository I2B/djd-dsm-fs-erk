inherited FramePessoa: TFramePessoa
  Width = 868
  Height = 655
  ExplicitWidth = 868
  ExplicitHeight = 655
  inherited dxLayoutControl: TdxLayoutControl
    Width = 868
    Height = 655
    ExplicitWidth = 868
    ExplicitHeight = 655
    object grpTipo: TcxDBRadioGroup [0]
      Left = 26
      Top = -473
      Caption = 'Tipo'
      DataBinding.DataField = 'tipo'
      DataBinding.DataSource = DataSource
      Properties.DefaultValue = 'F'
      Properties.Items = <
        item
          Caption = 'Pessoa F'#237'sica'
          Value = 'F'
        end
        item
          Caption = 'Pessoa Jur'#237'dica'
          Value = 'J'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      OnClick = grpTipoClick
      Height = 88
      Width = 376
    end
    object edtCnhNumero: TcxDBTextEdit [1]
      Left = 40
      Top = 101
      DataBinding.DataField = 'cnhnumero'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 193
    end
    object edtCnhCategoria: TcxDBTextEdit [2]
      Left = 240
      Top = 101
      DataBinding.DataField = 'cnhcategoria'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 166
    end
    object edtCnhVencimento: TcxDBTextEdit [3]
      Left = 413
      Top = 101
      DataBinding.DataField = 'cnhvencimento'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object chkCliente: TcxDBCheckBox [4]
      Left = 377
      Top = -452
      Caption = 'Cliente'
      DataBinding.DataField = 'cliente'
      DataBinding.DataSource = DataSource
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnClick = chkClienteClick
      Width = 101
    end
    object chkColaborador: TcxDBCheckBox [5]
      Left = 377
      Top = -422
      Caption = 'Colaborador'
      DataBinding.DataField = 'colaborador'
      DataBinding.DataSource = DataSource
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      OnClick = chkColaboradorClick
      Width = 101
    end
    object chkFornecedor: TcxDBCheckBox [6]
      Left = 485
      Top = -452
      Caption = 'Fornecedor'
      DataBinding.DataField = 'fornecedor'
      DataBinding.DataSource = DataSource
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      OnClick = chkFornecedorClick
      Width = 101
    end
    object chkVendedor: TcxDBCheckBox [7]
      Left = 485
      Top = -422
      Caption = 'Vendedor'
      DataBinding.DataField = 'vendedor'
      DataBinding.DataSource = DataSource
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      OnClick = chkVendedorClick
      Width = 101
    end
    object chkTransportadora: TcxDBCheckBox [8]
      Left = 593
      Top = -452
      Caption = 'Transportadora'
      DataBinding.DataField = 'transportadora'
      DataBinding.DataSource = DataSource
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      OnClick = chkTransportadoraClick
      Width = 90
    end
    object edtRazaoSocial: TcxDBTextEdit [9]
      Left = 40
      Top = -336
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 362
    end
    object edtFantasia: TcxDBTextEdit [10]
      Left = 409
      Top = -336
      DataBinding.DataField = 'nomefantasia'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 365
    end
    object edtCNPJ: TcxDBTextEdit [11]
      Left = 40
      Top = -285
      DataBinding.DataField = 'cnpj'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 341
    end
    object edtInscricaoMunicipal: TcxDBTextEdit [12]
      Left = 40
      Top = -234
      DataBinding.DataField = 'inscricaomunicipal'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 341
    end
    object edtInscricaoEstadual: TcxDBTextEdit [13]
      Left = 40
      Top = -173
      DataBinding.DataField = 'inscricaoestadual'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 362
    end
    object grpCodigoRegimeTributario: TcxDBRadioGroup [14]
      Left = 409
      Top = -306
      Caption = 'C'#243'digo de Regime Tribut'#225'rio'
      DataBinding.DataField = 'crt'
      DataBinding.DataSource = DataSource
      Properties.Items = <
        item
          Caption = 'Simples Nacional'
          Value = '1'
        end
        item
          Caption = 'Excesso de Sublimite de Receita Bruta'
          Value = '2'
        end
        item
          Caption = 'Regime Normal'
          Value = '3'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 13
      Height = 105
      Width = 185
    end
    object edtDataFundacao: TcxDBDateEdit [15]
      Left = 409
      Top = -173
      DataBinding.DataField = 'datanascimento'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 185
    end
    object grpRegimeTributario: TcxDBRadioGroup [16]
      Left = 601
      Top = -306
      Caption = 'Regime Tribut'#225'rio'
      DataBinding.DataField = 'tiporegime'
      DataBinding.DataSource = DataSource
      Properties.Items = <
        item
          Caption = 'Simples Nacional'
          Value = '1'
        end
        item
          Caption = 'Lucro Presumido'
          Value = '2'
        end
        item
          Caption = 'Lucro Real'
          Value = '3'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 15
      Height = 105
      Width = 173
    end
    object edtNomeDoPai: TcxDBTextEdit [17]
      Left = 40
      Top = 15
      DataBinding.DataField = 'nomepai'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 360
    end
    object edtNomeDaMae: TcxDBTextEdit [18]
      Left = 409
      Top = 15
      DataBinding.DataField = 'nomemae'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 360
    end
    object grpSexo: TcxDBRadioGroup [19]
      Left = 409
      Top = -57
      Caption = 'Sexo'
      DataBinding.DataField = 'sexo'
      DataBinding.DataSource = DataSource
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Masculino'
          Value = 'M'
        end
        item
          Caption = 'Feminino'
          Value = 'F'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 22
      Height = 44
      Width = 261
    end
    object edtCPF: TcxDBTextEdit [20]
      Left = 40
      Top = -36
      DataBinding.DataField = 'cpf'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 175
    end
    object edtRG: TcxDBTextEdit [21]
      Left = 222
      Top = -36
      DataBinding.DataField = 'rg'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 179
    end
    object edtNome: TcxDBTextEdit [22]
      Left = 40
      Top = -87
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 362
    end
    object edtDataAniversário: TcxDBDateEdit [23]
      Left = 409
      Top = -87
      DataBinding.DataField = 'datanascimento'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 20
      Width = 187
    end
    object cmbEstadoCivil: TcxDBComboBox [24]
      Left = 603
      Top = -87
      DataBinding.DataField = 'estadocivil'
      DataBinding.DataSource = DataSource
      Properties.Items.Strings = (
        'Solteiro'
        'Casado'
        'Divorciado'
        'Vi'#250'vo')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 21
      Width = 167
    end
    object edtEMail: TcxDBTextEdit [25]
      Left = 40
      Top = 238
      DataBinding.DataField = 'email'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 29
      Width = 729
    end
    object edtSite: TcxDBTextEdit [26]
      Left = 40
      Top = 289
      DataBinding.DataField = 'site'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 30
      Width = 729
    end
    object chkRepresentante: TcxDBCheckBox [27]
      Left = 593
      Top = -422
      Caption = 'Representante'
      DataBinding.DataField = 'representante'
      DataBinding.DataSource = DataSource
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      OnClick = chkRepresentanteClick
      Width = 121
    end
    object chkContador: TcxDBCheckBox [28]
      Left = 721
      Top = -452
      Caption = 'Contador'
      DataBinding.DataField = 'contador'
      DataBinding.DataSource = DataSource
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      OnClick = chkContadorClick
      Width = 90
    end
    object edtRepresentanteComissao: TcxDBCurrencyEdit [29]
      Left = 297
      Top = 527
      DataBinding.DataField = 'comissao'
      DataBinding.DataSource = dsRepresentante
      Properties.DisplayFormat = '0.00, %;-,0.00, %'
      Properties.Nullable = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 37
      Width = 121
    end
    object memTransportadoraObservacao: TcxDBMemo [30]
      Left = 40
      Top = 613
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = dsTransportadora
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 38
      Height = 89
      Width = 185
    end
    object edtDataCadastro: TcxDBDateEdit [31]
      Left = 40
      Top = 187
      DataBinding.DataField = 'datacadastro'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 27
      Width = 121
    end
    object edtCodigoSuframa: TcxDBTextEdit [32]
      Left = 170
      Top = 187
      DataBinding.DataField = 'suframa'
      DataBinding.DataSource = DataSource
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Width = 632
    end
    object edtVendedorComissao: TcxDBCurrencyEdit [33]
      Left = 296
      Top = 765
      DataBinding.DataField = 'comissao'
      DataBinding.DataSource = dsVendedor
      Properties.DisplayFormat = '0.00, %;-,0.00, %'
      Properties.Nullable = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 41
      Width = 121
    end
    object edtVendedorMeta: TcxDBCurrencyEdit [34]
      Left = 168
      Top = 765
      DataBinding.DataField = 'metavendas'
      DataBinding.DataSource = dsVendedor
      Properties.Nullable = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 40
      Width = 121
    end
    object edtRepresentanteEmpresa: TcxDBTextEdit [35]
      Left = 40
      Top = 527
      DataBinding.DataField = 'idunidadenegocio'
      DataBinding.DataSource = dsRepresentante
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 35
      Width = 122
    end
    object edtRepresentanteMeta: TcxDBCurrencyEdit [36]
      Left = 169
      Top = 527
      DataBinding.DataField = 'metavendas'
      DataBinding.DataSource = dsRepresentante
      Properties.Nullable = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 36
      Width = 121
    end
    object edtVendedorEmpresa: TcxDBTextEdit [37]
      Left = 40
      Top = 765
      DataBinding.DataField = 'idunidadenegocio'
      DataBinding.DataSource = dsVendedor
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 39
      Width = 121
    end
    object chkClienteAtivo: TcxDBCheckBox [38]
      Left = 40
      Top = 435
      Caption = 'Ativo'
      DataBinding.DataField = 'ativo'
      DataBinding.DataSource = dsCliente
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 33
      Width = 121
    end
    object memClienteObservacao: TcxDBMemo [39]
      Left = 168
      Top = 375
      DataBinding.DataField = 'observacao'
      DataBinding.DataSource = dsCliente
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 34
      Height = 89
      Width = 643
    end
    object chkGeraFinanceiro: TcxDBCheckBox [40]
      Left = 40
      Top = 405
      Caption = 'Gera Financeiro'
      DataBinding.DataField = 'gerafinanceiro'
      DataBinding.DataSource = dsCliente
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 32
      Width = 121
    end
    object edtLimiteCredito: TcxDBCurrencyEdit [41]
      Left = 40
      Top = 375
      DataBinding.DataField = 'limitecredito'
      DataBinding.DataSource = dsCliente
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 31
      Width = 114
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Index = -1
    end
    object grpTela: TdxLayoutGroup
      Parent = dxLayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControlItem11: TdxLayoutItem
      Parent = dxLayoutControlGroup16
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grpTipo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpOculto: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object grpColaborador: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Colaborador'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutControlItem8: TdxLayoutItem
      Parent = grpColaborador
      CaptionOptions.Text = 'CNH N'#250'mero'
      CaptionOptions.Layout = clTop
      Control = edtCnhNumero
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem9: TdxLayoutItem
      Parent = grpColaborador
      CaptionOptions.Text = 'CNH Categoria'
      CaptionOptions.Layout = clTop
      Control = edtCnhCategoria
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem10: TdxLayoutItem
      Parent = grpColaborador
      CaptionOptions.Text = 'CNH Vencimento'
      CaptionOptions.Layout = clTop
      Control = edtCnhVencimento
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpRepresentante: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Representante'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object grpContador: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Contador'
      ButtonOptions.Buttons = <>
      Index = 9
    end
    object grpFornecedor: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Fornecedor'
      ButtonOptions.Buttons = <>
      Index = 10
    end
    object grpTipoPessoa: TdxLayoutGroup
      Parent = dxLayoutControlGroup16
      AlignHorz = ahClient
      CaptionOptions.Text = 'Tipo de Pessoa'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControlGroup7: TdxLayoutAutoCreatedGroup
      Parent = grpTipoPessoa
      AlignHorz = ahLeft
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem17: TdxLayoutItem
      Parent = dxLayoutControlGroup7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBCheckBox6'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkCliente
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem12: TdxLayoutItem
      Parent = dxLayoutControlGroup7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkColaborador
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup13: TdxLayoutAutoCreatedGroup
      Parent = grpTipoPessoa
      AlignHorz = ahLeft
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem14: TdxLayoutItem
      Parent = dxLayoutControlGroup13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBCheckBox3'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkFornecedor
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem15: TdxLayoutItem
      Parent = dxLayoutControlGroup13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBCheckBox4'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkVendedor
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem13: TdxLayoutItem
      Parent = dxLayoutControlGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkTransportadora
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup16: TdxLayoutAutoCreatedGroup
      Parent = grpTela
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object grpPessoaJuridica: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Pessoa Jur'#237'dica'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControlGroup21: TdxLayoutAutoCreatedGroup
      Parent = grpPessoaJuridica
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem24: TdxLayoutItem
      Parent = dxLayoutControlGroup21
      CaptionOptions.Text = 'Raz'#227'o Social'
      CaptionOptions.Layout = clTop
      Control = edtRazaoSocial
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem23: TdxLayoutItem
      Parent = dxLayoutControlGroup21
      CaptionOptions.Text = 'Fantasia'
      CaptionOptions.Layout = clTop
      Control = edtFantasia
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup20: TdxLayoutAutoCreatedGroup
      Parent = grpPessoaJuridica
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlGroup24: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup20
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlGroup19: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup24
      AlignVert = avClient
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem5: TdxLayoutItem
      Parent = dxLayoutControlGroup19
      CaptionOptions.Text = 'CNPJ'
      CaptionOptions.Layout = clTop
      Control = edtCNPJ
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem25: TdxLayoutItem
      Parent = dxLayoutControlGroup19
      CaptionOptions.Text = 'Inscri'#231#227'o Municipal'
      CaptionOptions.Layout = clTop
      Control = edtInscricaoMunicipal
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem26: TdxLayoutItem
      Parent = dxLayoutControlGroup24
      AlignHorz = ahClient
      CaptionOptions.Text = 'Inscri'#231#227'o Estadual'
      CaptionOptions.Layout = clTop
      Control = edtInscricaoEstadual
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup22: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup20
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlGroup23: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup22
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem28: TdxLayoutItem
      Parent = dxLayoutControlGroup23
      CaptionOptions.Text = 'cxDBRadioGroup4'
      CaptionOptions.Visible = False
      Control = grpCodigoRegimeTributario
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem20: TdxLayoutItem
      Parent = dxLayoutControlGroup23
      CaptionOptions.Text = 'Data Funda'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDataFundacao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem27: TdxLayoutItem
      Parent = dxLayoutControlGroup22
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBRadioGroup3'
      CaptionOptions.Visible = False
      Control = grpRegimeTributario
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpPessoaFisica: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Pessoa F'#237'sica'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutControlItem22: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome do Pai'
      CaptionOptions.Layout = clTop
      Control = edtNomeDoPai
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem7: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Nome da M'#227'e'
      CaptionOptions.Layout = clTop
      Control = edtNomeDaMae
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem18: TdxLayoutItem
      Parent = dxLayoutControlGroup2
      CaptionOptions.Text = 'Sexo'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grpSexo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
      Parent = grpPessoaFisica
      AlignHorz = ahLeft
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem6: TdxLayoutItem
      Parent = dxLayoutControlGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'CPF'
      CaptionOptions.Layout = clTop
      Control = edtCPF
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
      Parent = grpPessoaFisica
      AlignHorz = ahLeft
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem4: TdxLayoutItem
      Parent = dxLayoutControlGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'RG'
      CaptionOptions.Layout = clTop
      Control = edtRG
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup3
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup3
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Layout = clTop
      Control = edtNome
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem19: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Data Anivers'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtDataAniversário
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem21: TdxLayoutItem
      Parent = dxLayoutControlGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Estado Civil'
      CaptionOptions.Layout = clTop
      Control = cmbEstadoCivil
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup2
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlGroup5: TdxLayoutGroup
      Parent = grpTela
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object dxLayoutControlItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup5
      CaptionOptions.Text = 'e-Mail'
      CaptionOptions.Layout = clTop
      Control = edtEMail
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem3: TdxLayoutItem
      Parent = dxLayoutControlGroup5
      CaptionOptions.Text = 'Site'
      CaptionOptions.Layout = clTop
      Control = edtSite
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlGroup6: TdxLayoutAutoCreatedGroup
      Parent = grpTipoPessoa
      AlignVert = avTop
      Index = 2
      AutoCreated = True
    end
    object dxLayoutControlItem30: TdxLayoutItem
      Parent = dxLayoutControlGroup6
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = chkRepresentante
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem16: TdxLayoutItem
      Parent = grpTipoPessoa
      AlignVert = avTop
      CaptionOptions.Text = 'cxDBCheckBox5'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = chkContador
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControlItem31: TdxLayoutItem
      Parent = grpRepresentante
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Comiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtRepresentanteComissao
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grpTransportadora: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Transportadora'
      ButtonOptions.Buttons = <>
      Index = 7
    end
    object dxLayoutControlItem34: TdxLayoutItem
      Parent = grpTransportadora
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = memTransportadoraObservacao
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem35: TdxLayoutItem
      Parent = dxLayoutControlGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'Data Cadastro'
      CaptionOptions.Layout = clTop
      Control = edtDataCadastro
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem29: TdxLayoutItem
      Parent = dxLayoutControlGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'C'#243'digo Suframa'
      CaptionOptions.Layout = clTop
      Control = edtCodigoSuframa
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup5
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object grpVendedor: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Vendedor'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 8
    end
    object dxLayoutControlItem36: TdxLayoutItem
      Parent = grpVendedor
      CaptionOptions.Text = 'Comiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtVendedorComissao
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem37: TdxLayoutItem
      Parent = grpVendedor
      CaptionOptions.Text = 'Meta de Venda'
      CaptionOptions.Layout = clTop
      Control = edtVendedorMeta
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem33: TdxLayoutItem
      Parent = grpRepresentante
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Un. Neg'#243'cio'
      CaptionOptions.Layout = clTop
      Control = edtRepresentanteEmpresa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControlItem32: TdxLayoutItem
      Parent = grpRepresentante
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Meta de Venda'
      CaptionOptions.Layout = clTop
      Control = edtRepresentanteMeta
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem38: TdxLayoutItem
      Parent = grpVendedor
      CaptionOptions.Text = 'Un. Neg'#243'cio'
      CaptionOptions.Layout = clTop
      Control = edtVendedorEmpresa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpCliente: TdxLayoutGroup
      Parent = grpTela
      CaptionOptions.Text = 'Cliente'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutControlItem42: TdxLayoutItem
      Parent = dxLayoutControlGroup10
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = chkClienteAtivo
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControlItem39: TdxLayoutItem
      Parent = grpCliente
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Observa'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = memClienteObservacao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlItem40: TdxLayoutItem
      Parent = dxLayoutControlGroup10
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = chkGeraFinanceiro
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControlGroup10: TdxLayoutAutoCreatedGroup
      Parent = grpCliente
      AlignHorz = ahLeft
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControlItem41: TdxLayoutItem
      Parent = dxLayoutControlGroup10
      CaptionOptions.Text = 'Limite Cr'#233'dito'
      CaptionOptions.Layout = clTop
      Control = edtLimiteCredito
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsPessoa
    Left = 488
    Top = 8
  end
  object dsRepresentante: TDataSource
    AutoEdit = False
    DataSet = DM.cdsPessoaRepresentante
    Left = 568
    Top = 8
  end
  object dsTransportadora: TDataSource
    AutoEdit = False
    DataSet = DM.cdsPessoaTransportadora
    Left = 664
    Top = 8
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = DM.cdsPessoaVendedor
    Left = 488
    Top = 64
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = DM.cdsPessoaCliente
    Left = 568
    Top = 64
  end
end
