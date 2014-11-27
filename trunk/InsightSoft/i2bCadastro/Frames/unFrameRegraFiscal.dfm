inherited FrameRegraFiscal: TFrameRegraFiscal
  Width = 1081
  Height = 520
  ExplicitWidth = 1081
  ExplicitHeight = 520
  inherited dxLayoutControl: TdxLayoutControl
    Width = 1081
    Height = 520
    ExplicitWidth = 975
    ExplicitHeight = 505
    object cxPageControl1: TcxPageControl [0]
      Left = 12
      Top = 12
      Width = 1098
      Height = 437
      BiDiMode = bdRightToLeft
      Color = clBtnFace
      ParentBiDiMode = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 433
      ClientRectLeft = 4
      ClientRectRight = 1094
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Regra Fiscal'
        ImageIndex = 0
        ExplicitWidth = 941
        ExplicitHeight = 439
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1090
          Height = 407
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          ExplicitWidth = 941
          ExplicitHeight = 439
          object edtIDMunicipio: TcxDBTextEdit
            Left = 12
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 91
          end
          object edtIDPessoa: TcxDBTextEdit
            Left = 12
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 91
          end
          object edtIDObservacao: TcxDBTextEdit
            Left = 12
            Top = 288
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 91
          end
          object edtMunicipioNome: TcxTextEdit
            Left = 125
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 818
          end
          object edtPessoaNome: TcxTextEdit
            Left = 131
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 668
          end
          object edtObservacaoDescricao: TcxMemo
            Left = 125
            Top = 267
            Lines.Strings = (
              'edtObservacaoDescricao')
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Height = 89
            Width = 814
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 0
            Width = 91
          end
          object edtIDPais: TcxDBTextEdit
            Left = 12
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 93
          end
          object edtPaisNome: TcxTextEdit
            Left = 129
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 742
          end
          object edtEstadp: TcxDBTextEdit
            Left = 1011
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 57
          end
          object edtIDTipoOperacao: TcxDBTextEdit
            Left = 12
            Top = 84
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
            Left = 957
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
            DataBinding.DataField = 'ativo'
            DataBinding.DataSource = DataSource
            Properties.NullStyle = nssUnchecked
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 14
            Width = 632
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
            CaptionOptions.Text = 'OBserva'#231#227'o'
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
          object dxLayoutControl2Item9: TdxLayoutItem
            Parent = dxLayoutControl2Group2
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = edtObservacaoDescricao
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
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Al'#237'quotas'
        ImageIndex = 1
        ExplicitWidth = 941
        ExplicitHeight = 439
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1090
          Height = 407
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          ExplicitWidth = 941
          ExplicitHeight = 439
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
              ExplicitWidth = 909
              ExplicitHeight = 391
              object dxLayoutControl4: TdxLayoutControl
                Left = 0
                Top = 0
                Width = 1053
                Height = 351
                Align = alClient
                ParentBackground = True
                TabOrder = 0
                ExplicitWidth = 909
                ExplicitHeight = 391
                object edtCSTICMS: TcxDBTextEdit
                  Left = 26
                  Top = 54
                  DataBinding.DataField = 'idcsticms'
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 0
                  Width = 69
                end
                object cxDBTextEdit3: TcxDBTextEdit
                  Left = 102
                  Top = 54
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 1
                  Width = 73
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 182
                  Top = 54
                  DataBinding.DataSource = DataSource
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 2
                  Width = 117
                end
                object cxDBTextEdit14: TcxDBTextEdit
                  Left = 623
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 4
                  Width = 73
                end
                object cxDBTextEdit13: TcxDBTextEdit
                  Left = 703
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 5
                  Width = 117
                end
                object cxDBTextEdit1: TcxDBTextEdit
                  Left = 26
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 6
                  Width = 69
                end
                object cxDBTextEdit9: TcxDBTextEdit
                  Left = 26
                  Top = 226
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 16
                  Width = 73
                end
                object cxDBTextEdit10: TcxDBTextEdit
                  Left = 106
                  Top = 226
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 17
                  Width = 117
                end
                object cxDBTextEdit11: TcxDBTextEdit
                  Left = 658
                  Top = 226
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 18
                  Width = 117
                end
                object cxDBTextEdit28: TcxDBTextEdit
                  Left = 543
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
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 19
                  Width = 135
                end
                object cxDBCheckBox3: TcxDBCheckBox
                  Left = 168
                  Top = 291
                  Caption = 'Controla Parcelas'
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 20
                  Width = 121
                end
                object cxDBCheckBox4: TcxDBCheckBox
                  Left = 296
                  Top = 291
                  Caption = 'Adiciona IPI na BC ICMS'
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 21
                  Width = 153
                end
                object cxDBCheckBox8: TcxDBCheckBox
                  Left = 456
                  Top = 291
                  Caption = 'Adiciona Frete na BC ICMS'
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 22
                  Width = 161
                end
                object cxDBCheckBox9: TcxDBCheckBox
                  Left = 624
                  Top = 291
                  Caption = 'Adiciona Seguro na BC ICMS'
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 23
                  Width = 174
                end
                object cxDBTextEdit32: TcxDBTextEdit
                  Left = 102
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 7
                  Width = 121
                end
                object cxDBTextEdit33: TcxDBTextEdit
                  Left = 241
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 8
                  Width = 121
                end
                object cxDBTextEdit6: TcxDBTextEdit
                  Left = 387
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 9
                  Width = 73
                end
                object cxDBTextEdit5: TcxDBTextEdit
                  Left = 495
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 10
                  Width = 69
                end
                object cxDBTextEdit2: TcxDBTextEdit
                  Left = 571
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 11
                  Width = 73
                end
                object cxDBTextEdit34: TcxDBTextEdit
                  Left = 662
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 12
                  Width = 73
                end
                object cxDBTextEdit7: TcxDBTextEdit
                  Left = 781
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 13
                  Width = 69
                end
                object cxDBTextEdit8: TcxDBTextEdit
                  Left = 857
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 14
                  Width = 73
                end
                object cxDBTextEdit35: TcxDBTextEdit
                  Left = 948
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 15
                  Width = 84
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
                  Control = edtCSTICMS
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  Parent = dxLayoutControl1Group8
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  Parent = dxLayoutControl1Group8
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit4
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
                  Control = cxDBTextEdit14
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl1Item15: TdxLayoutItem
                  Parent = dxLayoutControl1Group2
                  CaptionOptions.Text = 'Percentual Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit13
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
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Group7: TdxLayoutGroup
                  Parent = dxLayoutControl4Group3
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'ISSQN'
                  ButtonOptions.Buttons = <>
                  LayoutDirection = ldHorizontal
                  Index = 0
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  Parent = dxLayoutControl1Group7
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit9
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item11: TdxLayoutItem
                  Parent = dxLayoutControl1Group7
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit10
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl4Group3: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl4Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 2
                  AutoCreated = True
                end
                object dxLayoutControl1Group9: TdxLayoutGroup
                  Parent = dxLayoutControl4Group3
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Simples Nacional'
                  ButtonOptions.Buttons = <>
                  Index = 1
                end
                object dxLayoutControl1Item12: TdxLayoutItem
                  Parent = dxLayoutControl1Group9
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CSOSN'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit11
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl4Item1: TdxLayoutItem
                  Parent = dxLayoutControl1Group2
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit28
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
                  Control = cxDBTextEdit32
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl4Item5: TdxLayoutItem
                  Parent = dxLayoutControl1Group1
                  CaptionOptions.Text = 'C'#243'digo do Enquadramento'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit33
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl1Item8: TdxLayoutItem
                  Parent = dxLayoutControl1Group1
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit6
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
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item6: TdxLayoutItem
                  Parent = dxLayoutControl1Group3
                  CaptionOptions.Text = 'Al'#237'quota Normal'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit2
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl4Item6: TdxLayoutItem
                  Parent = dxLayoutControl1Group3
                  CaptionOptions.Text = 'Al'#237'quota para ST'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit34
                  ControlOptions.ShowBorder = False
                  Index = 2
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
                  Control = cxDBTextEdit7
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl1Item10: TdxLayoutItem
                  Parent = dxLayoutControl1Group4
                  CaptionOptions.Text = 'Al'#237'quota Normal'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit8
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl4Item7: TdxLayoutItem
                  Parent = dxLayoutControl1Group4
                  CaptionOptions.Text = 'Al'#237'quota para ST'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit35
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
              end
            end
            object cxTabSheet4: TcxTabSheet
              Caption = 'Pessoa Jur'#237'dica'
              ImageIndex = 1
              ExplicitWidth = 892
              ExplicitHeight = 391
              object dxLayoutControl3: TdxLayoutControl
                Left = 0
                Top = 0
                Width = 1053
                Height = 351
                Align = alClient
                ParentBackground = True
                TabOrder = 0
                ExplicitWidth = 892
                ExplicitHeight = 391
                object cxDBTextEdit16: TcxDBTextEdit
                  Left = 26
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 0
                  Width = 69
                end
                object cxDBTextEdit17: TcxDBTextEdit
                  Left = 623
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 4
                  Width = 73
                end
                object cxDBTextEdit20: TcxDBTextEdit
                  Left = 26
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 6
                  Width = 69
                end
                object cxDBTextEdit25: TcxDBTextEdit
                  Left = 26
                  Top = 226
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 16
                  Width = 73
                end
                object cxDBTextEdit27: TcxDBTextEdit
                  Left = 658
                  Top = 226
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 18
                  Width = 117
                end
                object cxDBTextEdit15: TcxDBTextEdit
                  Left = 102
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 1
                  Width = 73
                end
                object cxDBTextEdit12: TcxDBTextEdit
                  Left = 182
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 2
                  Width = 117
                end
                object cxDBTextEdit18: TcxDBTextEdit
                  Left = 703
                  Top = 54
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 5
                  Width = 117
                end
                object cxDBTextEdit26: TcxDBTextEdit
                  Left = 106
                  Top = 226
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 17
                  Width = 117
                end
                object cxDBCheckBox6: TcxDBCheckBox
                  Left = 26
                  Top = 291
                  Caption = 'Movimenta Estoque'
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 19
                  Width = 135
                end
                object cxDBCheckBox7: TcxDBCheckBox
                  Left = 168
                  Top = 291
                  Caption = 'Controla Parcelas'
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 20
                  Width = 121
                end
                object cxDBCheckBox5: TcxDBCheckBox
                  Left = 296
                  Top = 291
                  Caption = 'Adiciona IPI na BC ICMS'
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 21
                  Width = 153
                end
                object cxDBTextEdit29: TcxDBTextEdit
                  Left = 543
                  Top = 54
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
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 22
                  Width = 161
                end
                object cxDBCheckBox11: TcxDBCheckBox
                  Left = 624
                  Top = 291
                  Caption = 'Adiciona Seguro na BC ICMS'
                  Properties.NullStyle = nssUnchecked
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 23
                  Width = 174
                end
                object cxDBTextEdit30: TcxDBTextEdit
                  Left = 102
                  Top = 140
                  Hint = 'Aplic'#225'vel apenas para bebidas e cigarros'
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 7
                  Width = 121
                end
                object cxDBTextEdit31: TcxDBTextEdit
                  Left = 241
                  Top = 140
                  Hint = 'Preencher com 999'
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 8
                  Width = 121
                end
                object cxDBTextEdit19: TcxDBTextEdit
                  Left = 387
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 9
                  Width = 73
                end
                object cxDBTextEdit21: TcxDBTextEdit
                  Left = 495
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 10
                  Width = 69
                end
                object cxDBTextEdit22: TcxDBTextEdit
                  Left = 571
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 11
                  Width = 73
                end
                object cxDBTextEdit36: TcxDBTextEdit
                  Left = 662
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 12
                  Width = 84
                end
                object cxDBTextEdit23: TcxDBTextEdit
                  Left = 781
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 13
                  Width = 69
                end
                object cxDBTextEdit24: TcxDBTextEdit
                  Left = 857
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 14
                  Width = 73
                end
                object cxDBTextEdit37: TcxDBTextEdit
                  Left = 948
                  Top = 140
                  Style.BorderColor = clWindowFrame
                  Style.BorderStyle = ebs3D
                  Style.HotTrack = False
                  TabOrder = 15
                  Width = 84
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
                object dxLayoutControl3Group6: TdxLayoutGroup
                  Parent = dxLayoutControl3Group11
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'ISSQN'
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
                object dxLayoutControl3Group7: TdxLayoutGroup
                  Parent = dxLayoutControl3Group11
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Simples Nacional'
                  ButtonOptions.Buttons = <>
                  Index = 1
                end
                object dxLayoutControl3Group11: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl3Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 2
                  AutoCreated = True
                end
                object dxLayoutControl3Item3: TdxLayoutItem
                  Parent = dxLayoutControl3Group1
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit16
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item4: TdxLayoutItem
                  Parent = dxLayoutControl3Group2
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'MVA'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit17
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item7: TdxLayoutItem
                  Parent = dxLayoutControl3Group3
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CST'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit20
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item12: TdxLayoutItem
                  Parent = dxLayoutControl3Group6
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit25
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item14: TdxLayoutItem
                  Parent = dxLayoutControl3Group7
                  AlignHorz = ahLeft
                  CaptionOptions.Text = 'CSOSN'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit27
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item2: TdxLayoutItem
                  Parent = dxLayoutControl3Group1
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit15
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item1: TdxLayoutItem
                  Parent = dxLayoutControl3Group1
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit12
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Item5: TdxLayoutItem
                  Parent = dxLayoutControl3Group2
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit18
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Item13: TdxLayoutItem
                  Parent = dxLayoutControl3Group6
                  CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit26
                  ControlOptions.ShowBorder = False
                  Index = 1
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
                  Control = cxDBTextEdit29
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
                  Control = cxDBTextEdit30
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item22: TdxLayoutItem
                  Parent = dxLayoutControl3Group3
                  CaptionOptions.Text = 'C'#243'digo do Enquadramento'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit31
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object dxLayoutControl3Item6: TdxLayoutItem
                  Parent = dxLayoutControl3Group3
                  CaptionOptions.Text = 'Al'#237'quota'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit19
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
                  Control = cxDBTextEdit21
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item9: TdxLayoutItem
                  Parent = dxLayoutControl3Group4
                  CaptionOptions.Text = 'Al'#237'quota Normal'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit22
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item23: TdxLayoutItem
                  Parent = dxLayoutControl3Group4
                  CaptionOptions.Text = 'Al'#237'quota para ST'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit36
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
                  Control = cxDBTextEdit23
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object dxLayoutControl3Item11: TdxLayoutItem
                  Parent = dxLayoutControl3Group5
                  CaptionOptions.Text = 'Al'#237'quota Normal'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit24
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl3Item24: TdxLayoutItem
                  Parent = dxLayoutControl3Group5
                  CaptionOptions.Text = 'Al'#237'quota para ST'
                  CaptionOptions.Layout = clTop
                  Control = cxDBTextEdit37
                  ControlOptions.ShowBorder = False
                  Index = 2
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
