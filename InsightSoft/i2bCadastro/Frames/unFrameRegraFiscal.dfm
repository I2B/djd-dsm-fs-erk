inherited FrameRegraFiscal: TFrameRegraFiscal
  Width = 1123
  Height = 521
  ExplicitWidth = 1123
  ExplicitHeight = 521
  inherited dxLayoutControl: TdxLayoutControl
    Width = 1123
    Height = 521
    ExplicitWidth = 1123
    ExplicitHeight = 521
    object cxPageControl1: TcxPageControl [0]
      Left = 12
      Top = 12
      Width = 1098
      Height = 453
      BiDiMode = bdRightToLeft
      Color = clBtnFace
      ParentBiDiMode = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 449
      ClientRectLeft = 4
      ClientRectRight = 1094
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Regra Fiscal'
        ImageIndex = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1090
          Height = 423
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          object edtIDMunicipio: TcxDBTextEdit
            Left = 12
            Top = 186
            DataBinding.DataField = 'idmunicipio'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 108
          end
          object edtIDPessoa: TcxDBTextEdit
            Left = 12
            Top = 237
            DataBinding.DataField = 'idpessoa'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 108
          end
          object edtIDObservacao: TcxDBTextEdit
            Left = 12
            Top = 288
            DataBinding.DataField = 'idregrafiscalobservacao'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 108
          end
          object edtMunicipioNome: TcxTextEdit
            Left = 127
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 951
          end
          object edtPessoaNome: TcxTextEdit
            Left = 126
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 854
          end
          object edtRazaoSocial: TcxTextEdit
            Left = 127
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 1
            Width = 801
          end
          object edtIDUnidadeNegocio: TcxDBTextEdit
            Left = 12
            Top = 33
            DataBinding.DataField = 'idunidadenegocio'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 0
            Width = 91
          end
          object edtIDPais: TcxDBTextEdit
            Left = 12
            Top = 135
            DataBinding.DataField = 'idpais'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 108
          end
          object edtPaisNome: TcxTextEdit
            Left = 127
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 897
          end
          object edtEstadp: TcxDBTextEdit
            Left = 1029
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 49
          end
          object edtIDTipoOperacao: TcxDBTextEdit
            Left = 12
            Top = 84
            DataBinding.DataField = 'idtipooperacao'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 93
          end
          object edtTipoOperacaoDescricao: TcxTextEdit
            Left = 127
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 817
          end
          object edtNCM: TcxDBTextEdit
            Left = 980
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Width = 99
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 12
            Top = 363
            Caption = 'Inativo'
            DataBinding.DataField = 'inativo'
            DataBinding.DataSource = DataSource
            Properties.NullStyle = nssUnchecked
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 14
            Width = 632
          end
          object cxDBMemo1: TcxDBMemo
            Left = 127
            Top = 267
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Height = 89
            Width = 951
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl2Item14: TdxLayoutItem
            Parent = dxLayoutControl2Group3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Munic'#237'pio'
            CaptionOptions.Layout = clTop
            Control = edtIDMunicipio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item15: TdxLayoutItem
            Parent = dxLayoutControl2Group6
            AlignHorz = ahClient
            CaptionOptions.Text = 'Pessoa'
            CaptionOptions.Layout = clTop
            Control = edtIDPessoa
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item18: TdxLayoutItem
            Parent = dxLayoutControl2Group2
            AlignHorz = ahClient
            CaptionOptions.Text = 'Observa'#231#227'o'
            CaptionOptions.Layout = clTop
            Control = edtIDObservacao
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item4: TdxLayoutItem
            Parent = dxLayoutControl2Group3
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = edtMunicipioNome
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item5: TdxLayoutItem
            Parent = dxLayoutControl2Group6
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = edtPessoaNome
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item2: TdxLayoutItem
            Parent = dxLayoutControl2Group8
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = edtRazaoSocial
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Group8: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item12: TdxLayoutItem
            Parent = dxLayoutControl2Group8
            AlignHorz = ahClient
            CaptionOptions.Text = 'Unidade Negocio'
            CaptionOptions.Layout = clTop
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            Control = edtIDUnidadeNegocio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Group5: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item13: TdxLayoutItem
            Parent = dxLayoutControl2Group5
            AlignHorz = ahClient
            CaptionOptions.Text = 'Pa'#237's'
            CaptionOptions.Layout = clTop
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            Control = edtIDPais
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item3: TdxLayoutItem
            Parent = dxLayoutControl2Group5
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = edtPaisNome
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item11: TdxLayoutItem
            Parent = dxLayoutControl2Group5
            AlignHorz = ahClient
            CaptionOptions.Text = 'Estado'
            CaptionOptions.Layout = clTop
            Control = edtEstadp
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Group3: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 3
          end
          object dxLayoutControl2Group6: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 4
          end
          object dxLayoutControl2Group2: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object dxLayoutControl2Group7: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item10: TdxLayoutItem
            Parent = dxLayoutControl2Group7
            AlignHorz = ahClient
            CaptionOptions.Text = 'Tipo Opera'#231#227'o'
            CaptionOptions.Layout = clTop
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = True
            Control = edtIDTipoOperacao
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item6: TdxLayoutItem
            Parent = dxLayoutControl2Group7
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = edtTipoOperacaoDescricao
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item16: TdxLayoutItem
            Parent = dxLayoutControl2Group6
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'NCM'
            CaptionOptions.Layout = clTop
            Control = edtNCM
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item1: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            AlignHorz = ahClient
            CaptionOptions.Text = 'cxDBCheckBox1'
            CaptionOptions.Visible = False
            Control = cxDBCheckBox1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Group1: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            ButtonOptions.Buttons = <>
            ShowBorder = False
            Index = 6
          end
          object dxLayoutControl2Item7: TdxLayoutItem
            Parent = dxLayoutControl2Group2
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = cxDBMemo1
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Al'#237'quotas'
        ImageIndex = 1
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1090
          Height = 423
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          object cxPageControl2: TcxPageControl
            Left = 12
            Top = 12
            Width = 1061
            Height = 381
            TabOrder = 0
            Properties.ActivePage = cxTabSheet3
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 377
            ClientRectLeft = 4
            ClientRectRight = 1057
            ClientRectTop = 26
            object cxTabSheet3: TcxTabSheet
              Caption = 'Pessoa F'#237'sica'
              ImageIndex = 0
              object dxLayoutControl4: TdxLayoutControl
                Left = 0
                Top = 0
                Width = 1053
                Height = 351
                Align = alClient
                ParentBackground = True
                TabOrder = 0
                object edtPFICMSCST: TcxDBTextEdit
                  Left = 26
                  Top = 54
                  DataBinding.DataField = 'pficmscst'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 0
                  Width = 69
                end
                object edtPFICMSAliquota: TcxDBTextEdit
                  Left = 102
                  Top = 54
                  DataBinding.DataField = 'pficmsaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 1
                  Width = 73
                end
                object edtPFICMSPercentualReducao: TcxDBTextEdit
                  Left = 182
                  Top = 54
                  DataBinding.DataField = 'pficmspercentualreducao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 2
                  Width = 117
                end
                object edtPFICMSSTMVA: TcxDBTextEdit
                  Left = 522
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 4
                  Width = 73
                end
                object edtPFICMSSTPercentualReducao: TcxDBTextEdit
                  Left = 602
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 5
                  Width = 117
                end
                object edtPFIPICST: TcxDBTextEdit
                  Left = 26
                  Top = 140
                  DataBinding.DataField = 'pfipicst'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 7
                  Width = 69
                end
                object edtPFISSAliquota: TcxDBTextEdit
                  Left = 26
                  Top = 226
                  DataBinding.DataField = 'pfissaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 15
                  Width = 73
                end
                object edtPFISSReducao: TcxDBTextEdit
                  Left = 106
                  Top = 226
                  DataBinding.DataField = 'pfisspercentualreducao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 16
                  Width = 117
                end
                object edtPFICMSSTAliquota: TcxDBTextEdit
                  Left = 442
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 3
                  Width = 73
                end
                object cxDBCheckBox2: TcxDBCheckBox
                  Left = 26
                  Top = 291
                  Caption = 'Movimenta Estoque'
                  DataBinding.DataField = 'pfmovimentaestoque'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 17
                  Width = 135
                end
                object cxDBCheckBox3: TcxDBCheckBox
                  Left = 168
                  Top = 291
                  Caption = 'Controla Parcelas'
                  DataBinding.DataField = 'pfcontrolaparcelas'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 18
                  Width = 121
                end
                object cxDBCheckBox4: TcxDBCheckBox
                  Left = 296
                  Top = 291
                  Caption = 'Adiciona IPI na BC ICMS'
                  DataBinding.DataField = 'pfadicionaipibcicms'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 19
                  Width = 153
                end
                object cxDBCheckBox8: TcxDBCheckBox
                  Left = 456
                  Top = 291
                  Caption = 'Adiciona Frete na BC ICMS'
                  DataBinding.DataField = 'pfadicionafretebcicms'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 20
                  Width = 161
                end
                object cxDBCheckBox9: TcxDBCheckBox
                  Left = 624
                  Top = 291
                  Caption = 'Adiciona Seguro na BC ICMS'
                  DataBinding.DataField = 'pfadicionasegurobcicms'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 21
                  Width = 174
                end
                object ectPFIPIClasseEnquadramento: TcxDBTextEdit
                  Left = 102
                  Top = 140
                  DataBinding.DataField = 'pfipiclasseenquadramento'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 8
                  Width = 121
                end
                object edtPFIPICodigoEnquadramento: TcxDBTextEdit
                  Left = 241
                  Top = 140
                  DataBinding.DataField = 'pfipicodigoenquadramento'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 9
                  Width = 121
                end
                object edtPFIPIAliquota: TcxDBTextEdit
                  Left = 387
                  Top = 140
                  DataBinding.DataField = 'pfipialiquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 10
                  Width = 73
                end
                object edtPFPISCST: TcxDBTextEdit
                  Left = 595
                  Top = 140
                  DataBinding.DataField = 'pfpiscst'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 11
                  Width = 69
                end
                object edtPFPISAliquotaNormal: TcxDBTextEdit
                  Left = 671
                  Top = 140
                  DataBinding.DataField = 'pfpisaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 12
                  Width = 73
                end
                object edtPFCOFINSCST: TcxDBTextEdit
                  Left = 831
                  Top = 140
                  DataBinding.DataField = 'pfcofinscst'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 13
                  Width = 69
                end
                object edtPFCOFINSAliquota: TcxDBTextEdit
                  Left = 907
                  Top = 140
                  DataBinding.DataField = 'pfcofinsaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 14
                  Width = 73
                end
                object edtPFCSOSN: TcxDBTextEdit
                  Left = 863
                  Top = 54
                  DataBinding.DataField = 'pfcsosn'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 6
                  Width = 117
                end
                object cxDBCheckBox13: TcxDBCheckBox
                  Left = 805
                  Top = 291
                  Caption = 'Adiciona Outras Despesas na BC ICMS'
                  DataBinding.DataField = 'pfadicionaoutrasdespesasbcicms'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 22
                  Width = 220
                end
                object dxLayoutControl4Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avClient
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutControl1Group8: TdxLayoutGroup
                  Parent = dxLayoutControl4Group1
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'ICMS'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 0
                end
                object dxLayoutControl1Item1: TdxLayoutItem
                  Parent = dxLayoutControl1Group8
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = edtPFICMSCST
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  Parent = dxLayoutControl1Group8
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = edtPFICMSAliquota
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  Parent = dxLayoutControl1Group8
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = edtPFICMSPercentualReducao
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl1Group2: TdxLayoutGroup
                  Parent = dxLayoutControl4Group1
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'ICMS ST'
                  Visible = False
                  SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                  SizeOptions.SizableHorz = True
                  SizeOptions.SizableVert = True
                  SizeOptions.Width = 255
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 1
                end
                object dxLayoutControl1Item16: TdxLayoutItem
                  Parent = dxLayoutControl1Group2
                  CaptionOptions.Text = 'MVA'
                  CaptionOptions.Layout = clTop
                  Control = edtPFICMSSTMVA
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl1Item15: TdxLayoutItem
                  Parent = dxLayoutControl1Group2
                  CaptionOptions.Text = 'Percentual Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = edtPFICMSSTPercentualReducao
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl4Group1: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl4Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutControl1Group1: TdxLayoutGroup
                  Parent = dxLayoutControl4Group2
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'IPI'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 0
                end
                object dxLayoutControl1Item5: TdxLayoutItem
                  Parent = dxLayoutControl1Group1
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = edtPFIPICST
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Group7: TdxLayoutGroup
                  Parent = dxLayoutControl4Group_Root
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'ISSQN'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 2
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  Parent = dxLayoutControl1Group7
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = edtPFISSAliquota
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item11: TdxLayoutItem
                  Parent = dxLayoutControl1Group7
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = edtPFISSReducao
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl4Item1: TdxLayoutItem
                  Parent = dxLayoutControl1Group2
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = edtPFICMSSTAliquota
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Group11: TdxLayoutGroup
                  Parent = dxLayoutControl4Group_Root
                  CaptionOptions.Text = 'Controles'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 3
                end
                object dxLayoutControl1Item13: TdxLayoutItem
                  Parent = dxLayoutControl1Group11
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'cxDBCheckBox2'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox2
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item14: TdxLayoutItem
                  Parent = dxLayoutControl1Group11
                  CaptionOptions.Text = 'cxDBCheckBox3'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox3
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl1Item17: TdxLayoutItem
                  Parent = dxLayoutControl1Group11
                  CaptionOptions.Text = 'cxDBCheckBox4'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox4
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl4Item2: TdxLayoutItem
                  Parent = dxLayoutControl1Group11
                  CaptionOptions.Text = 'cxDBCheckBox8'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox8
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutControl4Item3: TdxLayoutItem
                  Parent = dxLayoutControl1Group11
                  CaptionOptions.Text = 'cxDBCheckBox9'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox9
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object dxLayoutControl4Item4: TdxLayoutItem
                  Parent = dxLayoutControl1Group1
                  CaptionOptions.Text = 'Classe de Enquadramento'
                  CaptionOptions.Layout = clTop
                  Control = ectPFIPIClasseEnquadramento
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl4Item5: TdxLayoutItem
                  Parent = dxLayoutControl1Group1
                  CaptionOptions.Text = 'C'#243'digo do Enquadramento'
                  CaptionOptions.Layout = clTop
                  Control = edtPFIPICodigoEnquadramento
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl1Item8: TdxLayoutItem
                  Parent = dxLayoutControl1Group1
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = edtPFIPIAliquota
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutControl1Group3: TdxLayoutGroup
                  Parent = dxLayoutControl4Group2
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'PIS'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 1
                end
                object dxLayoutControl1Item7: TdxLayoutItem
                  Parent = dxLayoutControl1Group3
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = edtPFPISCST
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item6: TdxLayoutItem
                  Parent = dxLayoutControl1Group3
                  CaptionOptions.Text = 'Al'#237'quota Normal'
                  CaptionOptions.Layout = clTop
                  Control = edtPFPISAliquotaNormal
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl4Group_Root
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 1
                  AutoCreated = True
                end
                object dxLayoutControl1Group4: TdxLayoutGroup
                  Parent = dxLayoutControl4Group2
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'COFINS'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 2
                end
                object dxLayoutControl1Item9: TdxLayoutItem
                  Parent = dxLayoutControl1Group4
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = edtPFCOFINSCST
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item10: TdxLayoutItem
                  Parent = dxLayoutControl1Group4
                  CaptionOptions.Text = 'Al'#237'quota Normal'
                  CaptionOptions.Layout = clTop
                  Control = edtPFCOFINSAliquota
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl1Group9: TdxLayoutGroup
                  Parent = dxLayoutControl4Group1
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Simples Nacional'
                  ButtonOptions.Buttons = <>
                  Index = 2
                end
                object dxLayoutControl1Item12: TdxLayoutItem
                  Parent = dxLayoutControl1Group9
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CSOSN'
                  CaptionOptions.Layout = clTop
                  Control = edtPFCSOSN
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl4Item6: TdxLayoutItem
                  Parent = dxLayoutControl1Group11
                  CaptionOptions.Text = 'cxDBCheckBox13'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox13
                  ControlOptions.ShowBorder = False
                  Index = 5
                end
              end
            end
            object cxTabSheet4: TcxTabSheet
              Caption = 'Pessoa Jur'#237'dica'
              ImageIndex = 1
              object dxLayoutControl3: TdxLayoutControl
                Left = 0
                Top = 0
                Width = 1053
                Height = 351
                Align = alClient
                ParentBackground = True
                TabOrder = 0
                object edtPJICMSCST: TcxDBTextEdit
                  Left = 26
                  Top = 54
                  DataBinding.DataField = 'pjicmsaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 0
                  Width = 69
                end
                object edtPJICMSSTMVA: TcxDBTextEdit
                  Left = 522
                  Top = 54
                  DataBinding.DataField = 'pjicmsstmva'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 4
                  Width = 73
                end
                object edtPJIPICST: TcxDBTextEdit
                  Left = 26
                  Top = 140
                  DataBinding.DataField = 'pjipicst'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 7
                  Width = 69
                end
                object edtPJICMSAliquota: TcxDBTextEdit
                  Left = 102
                  Top = 54
                  DataBinding.DataField = 'pjicmsaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 1
                  Width = 73
                end
                object edtPJICMSReducaoBC: TcxDBTextEdit
                  Left = 182
                  Top = 54
                  DataBinding.DataField = 'pjicmspercentualreducao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 2
                  Width = 117
                end
                object edtPJICMSSTReducaoBC: TcxDBTextEdit
                  Left = 602
                  Top = 54
                  DataBinding.DataField = 'pjicmsstpercentualreducao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 5
                  Width = 117
                end
                object cxDBCheckBox6: TcxDBCheckBox
                  Left = 26
                  Top = 291
                  Caption = 'Movimenta Estoque'
                  DataBinding.DataField = 'pjmovimentaestoque'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 25
                  Width = 135
                end
                object cxDBCheckBox7: TcxDBCheckBox
                  Left = 168
                  Top = 291
                  Caption = 'Controla Parcelas'
                  DataBinding.DataField = 'pjcontrolaparcelas'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 26
                  Width = 121
                end
                object cxDBCheckBox5: TcxDBCheckBox
                  Left = 296
                  Top = 291
                  Caption = 'Adiciona IPI na BC ICMS'
                  DataBinding.DataField = 'pjadicionaipibcicms'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 27
                  Width = 153
                end
                object edtPJICMSSTAliquota: TcxDBTextEdit
                  Left = 442
                  Top = 54
                  DataBinding.DataField = 'pjicmsstaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 3
                  Width = 73
                end
                object cxDBCheckBox10: TcxDBCheckBox
                  Left = 456
                  Top = 291
                  Caption = 'Adiciona Frete na BC ICMS'
                  DataBinding.DataField = 'pjadicionafretebcicms'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 28
                  Width = 161
                end
                object cxDBCheckBox11: TcxDBCheckBox
                  Left = 624
                  Top = 291
                  Caption = 'Adiciona Seguro na BC ICMS'
                  DataBinding.DataField = 'pjadicionasegurobcicms'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 29
                  Width = 174
                end
                object edtPJIPIClasseEnquadramento: TcxDBTextEdit
                  Left = 102
                  Top = 140
                  Hint = 'Aplic'#225'vel apenas para bebidas e cigarros'
                  DataBinding.DataField = 'pjipiclasseenquadramento'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 8
                  Width = 121
                end
                object edtPJIPICodigoEnquadramento: TcxDBTextEdit
                  Left = 241
                  Top = 140
                  Hint = 'Preencher com 999'
                  DataBinding.DataField = 'pjipicodigoenquadramento'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 9
                  Width = 121
                end
                object edtPJIPIAliquota: TcxDBTextEdit
                  Left = 387
                  Top = 140
                  DataBinding.DataField = 'pjipialiquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 10
                  Width = 73
                end
                object edtPJPISCST: TcxDBTextEdit
                  Left = 495
                  Top = 140
                  DataBinding.DataField = 'pjpiscst'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 11
                  Width = 69
                end
                object edtPJPISAliquota: TcxDBTextEdit
                  Left = 571
                  Top = 140
                  DataBinding.DataField = 'pjpisaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 12
                  Width = 73
                end
                object edtPJPISAliquotaST: TcxDBTextEdit
                  Left = 662
                  Top = 140
                  DataBinding.DataField = 'pjpisaliquotast'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 13
                  Width = 84
                end
                object edtPJCOFINSCST: TcxDBTextEdit
                  Left = 781
                  Top = 140
                  DataBinding.DataField = 'pjcofinscst'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 14
                  Width = 69
                end
                object edtPJCOFINSAliquota: TcxDBTextEdit
                  Left = 857
                  Top = 140
                  DataBinding.DataField = 'pjcofinsaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 15
                  Width = 73
                end
                object edtPJCOFINSAliquotaST: TcxDBTextEdit
                  Left = 948
                  Top = 140
                  DataBinding.DataField = 'pjcofinsaliquotast'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 16
                  Width = 84
                end
                object edtPJCSOSN: TcxDBTextEdit
                  Left = 863
                  Top = 54
                  DataBinding.DataField = 'pjcsosn'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 6
                  Width = 117
                end
                object edtPJISSAliquota: TcxDBTextEdit
                  Left = 26
                  Top = 226
                  DataBinding.DataField = 'pjissaliquota'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 17
                  Width = 73
                end
                object edtPJISSReducaoBC: TcxDBTextEdit
                  Left = 106
                  Top = 226
                  DataBinding.DataField = 'pjissreducaobc'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 18
                  Width = 117
                end
                object cxDBCheckBox12: TcxDBCheckBox
                  Left = 805
                  Top = 291
                  Caption = 'Adiciona Outras Despesas na BC ICMS'
                  DataBinding.DataField = 'pjadicionaoutrasdespesasbcicms'
                  DataBinding.DataSource = DataSource
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 30
                  Width = 220
                end
                object edtPJISSRetencao: TcxDBTextEdit
                  Left = 271
                  Top = 226
                  DataBinding.DataField = 'pjissretencao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 19
                  Width = 121
                end
                object edtPJIRRetencao: TcxDBTextEdit
                  Left = 399
                  Top = 226
                  DataBinding.DataField = 'pjirretencao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 20
                  Width = 121
                end
                object edtPJPISRetencao: TcxDBTextEdit
                  Left = 527
                  Top = 226
                  DataBinding.DataField = 'pjpisretencao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 21
                  Width = 121
                end
                object edtPJCOFINSRetencao: TcxDBTextEdit
                  Left = 655
                  Top = 226
                  DataBinding.DataField = 'pjcofinsretencao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 22
                  Width = 121
                end
                object edtPJCSLLRetencao: TcxDBTextEdit
                  Left = 783
                  Top = 226
                  DataBinding.DataField = 'pjcsllretencao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 23
                  Width = 121
                end
                object edtPJINSSRetencao: TcxDBTextEdit
                  Left = 911
                  Top = 226
                  DataBinding.DataField = 'pjinssretencao'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 24
                  Width = 121
                end
                object dxLayoutControl3Group_Root: TdxLayoutGroup
                  AlignHorz = ahClient
                  AlignVert = avClient
                  CaptionOptions.Visible = False
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object dxLayoutControl3Group1: TdxLayoutGroup
                  Parent = dxLayoutControl3Group9
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'ICMS'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 0
                end
                object dxLayoutControl3Group3: TdxLayoutGroup
                  Parent = dxLayoutControl3Group10
                  AlignHorz = ahClient
                  AlignVert = avTop
                  CaptionOptions.Text = 'IPI'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 0
                end
                object dxLayoutControl3Group8: TdxLayoutGroup
                  Parent = dxLayoutControl3Group_Root
                  CaptionOptions.Text = 'Controles'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 3
                end
                object dxLayoutControl3Group2: TdxLayoutGroup
                  Parent = dxLayoutControl3Group9
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'ICMS ST'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 1
                end
                object dxLayoutControl3Group9: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl3Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 0
                  AutoCreated = True
                end
                object dxLayoutControl3Item3: TdxLayoutItem
                  Parent = dxLayoutControl3Group1
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = edtPJICMSCST
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item4: TdxLayoutItem
                  Parent = dxLayoutControl3Group2
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'MVA'
                  CaptionOptions.Layout = clTop
                  Control = edtPJICMSSTMVA
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item7: TdxLayoutItem
                  Parent = dxLayoutControl3Group3
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = edtPJIPICST
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item2: TdxLayoutItem
                  Parent = dxLayoutControl3Group1
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = edtPJICMSAliquota
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item1: TdxLayoutItem
                  Parent = dxLayoutControl3Group1
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = edtPJICMSReducaoBC
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Item5: TdxLayoutItem
                  Parent = dxLayoutControl3Group2
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = edtPJICMSSTReducaoBC
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Item16: TdxLayoutItem
                  Parent = dxLayoutControl3Group8
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'cxDBCheckBox6'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox6
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item17: TdxLayoutItem
                  Parent = dxLayoutControl3Group8
                  CaptionOptions.Text = 'cxDBCheckBox7'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox7
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item15: TdxLayoutItem
                  Parent = dxLayoutControl3Group8
                  CaptionOptions.Text = 'cxDBCheckBox5'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox5
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Item18: TdxLayoutItem
                  Parent = dxLayoutControl3Group2
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = edtPJICMSSTAliquota
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item19: TdxLayoutItem
                  Parent = dxLayoutControl3Group8
                  CaptionOptions.Text = 'cxDBCheckBox10'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox10
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutControl3Item20: TdxLayoutItem
                  Parent = dxLayoutControl3Group8
                  CaptionOptions.Text = 'cxDBCheckBox11'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox11
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object dxLayoutControl3Item21: TdxLayoutItem
                  Parent = dxLayoutControl3Group3
                  CaptionOptions.Text = 'Classe de Enquadramento'
                  CaptionOptions.Layout = clTop
                  Control = edtPJIPIClasseEnquadramento
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item22: TdxLayoutItem
                  Parent = dxLayoutControl3Group3
                  CaptionOptions.Text = 'C'#243'digo do Enquadramento'
                  CaptionOptions.Layout = clTop
                  Control = edtPJIPICodigoEnquadramento
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Item6: TdxLayoutItem
                  Parent = dxLayoutControl3Group3
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = edtPJIPIAliquota
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutControl3Group4: TdxLayoutGroup
                  Parent = dxLayoutControl3Group10
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'PIS'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 1
                end
                object dxLayoutControl3Item8: TdxLayoutItem
                  Parent = dxLayoutControl3Group4
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = edtPJPISCST
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item9: TdxLayoutItem
                  Parent = dxLayoutControl3Group4
                  CaptionOptions.Text = 'Al'#237'quota Normal'
                  CaptionOptions.Layout = clTop
                  Control = edtPJPISAliquota
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item23: TdxLayoutItem
                  Parent = dxLayoutControl3Group4
                  CaptionOptions.Text = 'Al'#237'quota para ST'
                  CaptionOptions.Layout = clTop
                  Control = edtPJPISAliquotaST
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Group10: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl3Group_Root
                  AlignVert = avTop
                  LayoutDirection = ldHorizontal
                  Index = 1
                  AutoCreated = True
                end
                object dxLayoutControl3Group5: TdxLayoutGroup
                  Parent = dxLayoutControl3Group10
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'COFINS'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 2
                end
                object dxLayoutControl3Item10: TdxLayoutItem
                  Parent = dxLayoutControl3Group5
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = edtPJCOFINSCST
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item11: TdxLayoutItem
                  Parent = dxLayoutControl3Group5
                  CaptionOptions.Text = 'Al'#237'quota Normal'
                  CaptionOptions.Layout = clTop
                  Control = edtPJCOFINSAliquota
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item24: TdxLayoutItem
                  Parent = dxLayoutControl3Group5
                  CaptionOptions.Text = 'Al'#237'quota para ST'
                  CaptionOptions.Layout = clTop
                  Control = edtPJCOFINSAliquotaST
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Group7: TdxLayoutGroup
                  Parent = dxLayoutControl3Group9
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Simples Nacional'
                  ButtonOptions.Buttons = <>
                  Index = 2
                end
                object dxLayoutControl3Item14: TdxLayoutItem
                  Parent = dxLayoutControl3Group7
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CSOSN'
                  CaptionOptions.Layout = clTop
                  Control = edtPJCSOSN
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Group6: TdxLayoutGroup
                  Parent = dxLayoutControl3Group12
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Impostos Sobre Servi'#231'o'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 0
                end
                object dxLayoutControl3Item12: TdxLayoutItem
                  Parent = dxLayoutControl3Group6
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'Al'#237'quota ISS'
                  CaptionOptions.Layout = clTop
                  Control = edtPJISSAliquota
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item13: TdxLayoutItem
                  Parent = dxLayoutControl3Group6
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = edtPJISSReducaoBC
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item31: TdxLayoutItem
                  Parent = dxLayoutControl3Group8
                  CaptionOptions.Text = 'cxDBCheckBox12'
                  CaptionOptions.Visible = False
                  Control = cxDBCheckBox12
                  ControlOptions.ShowBorder = False
                  Index = 5
                end
                object dxLayoutControl3Group11: TdxLayoutGroup
                  Parent = dxLayoutControl3Group12
                  CaptionOptions.Text = 'Reten'#231#245'es'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 1
                end
                object dxLayoutControl3Item30: TdxLayoutItem
                  Parent = dxLayoutControl3Group11
                  CaptionOptions.Text = 'Reten'#231#227'o ISS'
                  CaptionOptions.Layout = clTop
                  Control = edtPJISSRetencao
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item25: TdxLayoutItem
                  Parent = dxLayoutControl3Group11
                  CaptionOptions.Text = 'Reten'#231#227'o IR'
                  CaptionOptions.Layout = clTop
                  Control = edtPJIRRetencao
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item26: TdxLayoutItem
                  Parent = dxLayoutControl3Group11
                  CaptionOptions.Text = 'Reten'#231#227'o PIS'
                  CaptionOptions.Layout = clTop
                  Control = edtPJPISRetencao
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Item27: TdxLayoutItem
                  Parent = dxLayoutControl3Group11
                  CaptionOptions.Text = 'Reten'#231#227'o COFINS'
                  CaptionOptions.Layout = clTop
                  Control = edtPJCOFINSRetencao
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object dxLayoutControl3Item28: TdxLayoutItem
                  Parent = dxLayoutControl3Group11
                  CaptionOptions.Text = 'Reten'#231#227'o CSLL'
                  CaptionOptions.Layout = clTop
                  Control = edtPJCSLLRetencao
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object dxLayoutControl3Item29: TdxLayoutItem
                  Parent = dxLayoutControl3Group11
                  CaptionOptions.Text = 'Reten'#231#227'o INSS'
                  CaptionOptions.Layout = clTop
                  Control = edtPJINSSRetencao
                  ControlOptions.ShowBorder = False
                  Index = 5
                end
                object dxLayoutControl3Group12: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl3Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 2
                  AutoCreated = True
                end
              end
            end
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl1Item18: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            Control = cxPageControl2
            ControlOptions.AutoColor = True
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
    end
    inherited dxLayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControlItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      Control = cxPageControl1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited DataSource: TDataSource
    DataSet = DM.cdsRegraFiscal
    Left = 736
    Top = 408
  end
end