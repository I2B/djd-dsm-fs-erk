inherited FrameRegraFiscal: TFrameRegraFiscal
  Width = 857
  Height = 505
  ExplicitWidth = 857
  ExplicitHeight = 505
  inherited dxLayoutControl: TdxLayoutControl
    Width = 857
    Height = 505
    ExplicitWidth = 857
    ExplicitHeight = 505
    object cxPageControl1: TcxPageControl [0]
      Left = 12
      Top = 12
      Width = 677
      Height = 461
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet2
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 457
      ClientRectLeft = 4
      ClientRectRight = 673
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Regra Fiscal'
        ImageIndex = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 669
          Height = 431
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          object edtIDMunicipio: TcxDBTextEdit
            Left = 12
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 77
          end
          object edtIDPessoa: TcxDBTextEdit
            Left = 12
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 80
          end
          object edtIDObservacao: TcxDBTextEdit
            Left = 12
            Top = 288
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 80
          end
          object edtMunicipioNome: TcxTextEdit
            Left = 96
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 547
          end
          object edtPessoaNome: TcxTextEdit
            Left = 99
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 454
          end
          object edtObservacaoDescricao: TcxMemo
            Left = 99
            Top = 267
            Lines.Strings = (
              'edtObservacaoDescricao')
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Height = 89
            Width = 544
          end
          object edtRazaoSocial: TcxTextEdit
            Left = 108
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 1
            Width = 535
          end
          object edtIDUnidadeNegocio: TcxDBTextEdit
            Left = 12
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 0
            Width = 80
          end
          object edtIDPais: TcxDBTextEdit
            Left = 12
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 77
          end
          object edtPaisNome: TcxTextEdit
            Left = 96
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 473
          end
          object edtEstadp: TcxDBTextEdit
            Left = 576
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 68
          end
          object edtIDTipoOperacao: TcxDBTextEdit
            Left = 12
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 80
          end
          object edtTipoOperacaoDescricao: TcxTextEdit
            Left = 99
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 544
          end
          object edtNCM: TcxDBTextEdit
            Left = 560
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Width = 83
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
            Width = 165
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
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
            AlignHorz = ahLeft
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = edtRazaoSocial
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Group8: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahLeft
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item12: TdxLayoutItem
            Parent = dxLayoutControl2Group8
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Unidade Negocio'
            CaptionOptions.Layout = clTop
            Control = edtIDUnidadeNegocio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Group5: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item13: TdxLayoutItem
            Parent = dxLayoutControl2Group5
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Pa'#237's'
            CaptionOptions.Layout = clTop
            Control = edtIDPais
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item3: TdxLayoutItem
            Parent = dxLayoutControl2Group5
            AlignVert = avBottom
            CaptionOptions.Layout = clTop
            Control = edtPaisNome
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item11: TdxLayoutItem
            Parent = dxLayoutControl2Group5
            CaptionOptions.Text = 'Estado'
            CaptionOptions.Layout = clTop
            Control = edtEstadp
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Group3: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahLeft
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 3
          end
          object dxLayoutControl2Group6: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahLeft
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 4
          end
          object dxLayoutControl2Group2: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahLeft
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object dxLayoutControl2Group7: TdxLayoutGroup
            Parent = dxLayoutControl2Group_Root
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item10: TdxLayoutItem
            Parent = dxLayoutControl2Group7
            CaptionOptions.Text = 'Tipo Opera'#231#227'o'
            CaptionOptions.Layout = clTop
            Control = edtIDTipoOperacao
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item6: TdxLayoutItem
            Parent = dxLayoutControl2Group7
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
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 669
          Height = 431
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          object edtCSTICMS: TcxDBTextEdit
            Left = 12
            Top = 33
            DataBinding.DataField = 'idcsticms'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 0
            Width = 69
          end
          object edtAliquotaICMS: TcxDBTextEdit
            Left = 88
            Top = 33
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 1
            Width = 126
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 221
            Top = 33
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 73
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 301
            Top = 33
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 117
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 425
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 69
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 501
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 73
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 168
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 296
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Width = 73
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 376
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 14
            Width = 121
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 12
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 125
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 145
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 97
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 249
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 113
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 369
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 129
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 12
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 69
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 88
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Width = 73
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            Parent = dxLayoutControl1Group8
            AlignHorz = ahClient
            CaptionOptions.Text = 'CST ICMS'
            CaptionOptions.Layout = clTop
            Control = edtCSTICMS
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Parent = dxLayoutControl1Group8
            CaptionOptions.Text = 'Base de C'#225'lculo'
            CaptionOptions.Layout = clTop
            Control = edtAliquotaICMS
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Parent = dxLayoutControl1Group8
            CaptionOptions.Text = 'Al'#237'quota'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit3
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Parent = dxLayoutControl1Group8
            CaptionOptions.Text = 'Percentual de Redu'#231#227'o'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit4
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Group8: TdxLayoutGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahLeft
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group1: TdxLayoutGroup
            Parent = dxLayoutControl1Group_Root
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            Parent = dxLayoutControl1Group_Root
            CaptionOptions.Text = 'New Group'
            ButtonOptions.Buttons = <>
            Index = 3
          end
          object dxLayoutControl1Group4: TdxLayoutGroup
            Parent = dxLayoutControl1Group_Root
            CaptionOptions.Text = 'New Group'
            ButtonOptions.Buttons = <>
            Index = 4
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Parent = dxLayoutControl1Group8
            CaptionOptions.Text = 'CST IPI'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            Parent = dxLayoutControl1Group8
            CaptionOptions.Text = 'Al'#237'quota'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit6
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'CST COFINS'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit7
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'Al'#237'quota'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit8
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'cxDBTextEdit10'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit10
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item14: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Base C'#225'lculo ICMS Subst.'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit12
            ControlOptions.ShowBorder = False
            Index = 0
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
          object dxLayoutControl1Item11: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'Al'#237'quota ICMS Esterno'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit9
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'CST PIS'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit5
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'Al'#237'quota'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit2
            ControlOptions.ShowBorder = False
            Index = 1
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
    Left = 688
    Top = 376
  end
end
