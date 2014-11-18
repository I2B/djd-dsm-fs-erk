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
      Width = 821
      Height = 477
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet2
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 473
      ClientRectLeft = 4
      ClientRectRight = 817
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Regra Fiscal'
        ImageIndex = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 813
          Height = 447
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          object edtIDPais: TcxDBTextEdit
            Left = 12
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object edtIDMunicipio: TcxDBTextEdit
            Left = 12
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object edtIDPessoa: TcxDBTextEdit
            Left = 12
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object edtNCM: TcxDBTextEdit
            Left = 12
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object edtCFOP: TcxDBTextEdit
            Left = 12
            Top = 288
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object edtIDObservacao: TcxDBTextEdit
            Left = 12
            Top = 339
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 24
          end
          object edtIDUnidadeNegocio: TcxDBTextEdit
            Left = 12
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 0
            Width = 64
          end
          object edtRazaoSocial: TcxTextEdit
            Left = 140
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 121
          end
          object edtMunicipioNome: TcxTextEdit
            Left = 140
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 121
          end
          object edtPessoaNome: TcxTextEdit
            Left = 140
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Width = 121
          end
          object edtTipoOperacaoDescricao: TcxTextEdit
            Left = 268
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Width = 121
          end
          object edtCFOPDescricao: TcxTextEdit
            Left = 140
            Top = 288
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 14
            Width = 121
          end
          object edtObservacaoDescricao: TcxMemo
            Left = 140
            Top = 339
            Lines.Strings = (
              'edtObservacaoDescricao')
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 15
            Height = 89
            Width = 621
          end
          object edtEstadp: TcxDBTextEdit
            Left = 697
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 64
          end
          object edtIDTipoOperacao: TcxDBTextEdit
            Left = 140
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          object edtPaisNome: TcxTextEdit
            Left = 140
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl2Item13: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            CaptionOptions.Text = 'ID Pa'#237's'
            CaptionOptions.Layout = clTop
            Control = edtIDPais
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item14: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            CaptionOptions.Text = 'ID Munic'#237'pio'
            CaptionOptions.Layout = clTop
            Control = edtIDMunicipio
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item15: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            CaptionOptions.Text = 'ID Pessoa'
            CaptionOptions.Layout = clTop
            Control = edtIDPessoa
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl2Item16: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            CaptionOptions.Text = 'NCM'
            CaptionOptions.Layout = clTop
            Control = edtNCM
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl2Item17: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            CaptionOptions.Text = 'CFOP'
            CaptionOptions.Layout = clTop
            Control = edtCFOP
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl2Item18: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            CaptionOptions.Text = 'ID OBserva'#231#227'o'
            CaptionOptions.Layout = clTop
            Control = edtIDObservacao
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutControl2Item12: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            CaptionOptions.Text = 'ID Unidade Negocio'
            CaptionOptions.Layout = clTop
            Control = edtIDUnidadeNegocio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item2: TdxLayoutItem
            Parent = dxLayoutControl2Group2
            CaptionOptions.Text = 'Raz'#227'o Social'
            CaptionOptions.Layout = clTop
            Control = edtRazaoSocial
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group_Root
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group_Root
            Index = 1
            AutoCreated = True
          end
          object dxLayoutControl2Item4: TdxLayoutItem
            Parent = dxLayoutControl2Group2
            AlignHorz = ahClient
            CaptionOptions.Text = 'Nome'
            CaptionOptions.Layout = clTop
            Control = edtMunicipioNome
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item5: TdxLayoutItem
            Parent = dxLayoutControl2Group2
            AlignHorz = ahClient
            CaptionOptions.Text = 'Nome'
            CaptionOptions.Layout = clTop
            Control = edtPessoaNome
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl2Item6: TdxLayoutItem
            Parent = dxLayoutControl2Group4
            AlignHorz = ahClient
            CaptionOptions.Text = 'Descri'#231#227'o'
            CaptionOptions.Layout = clTop
            Control = edtTipoOperacaoDescricao
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item8: TdxLayoutItem
            Parent = dxLayoutControl2Group2
            AlignHorz = ahClient
            CaptionOptions.Text = 'Descri'#231#227'o'
            CaptionOptions.Layout = clTop
            Control = edtCFOPDescricao
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl2Item9: TdxLayoutItem
            Parent = dxLayoutControl2Group2
            AlignHorz = ahClient
            CaptionOptions.Text = 'Descri'#231#227'o'
            CaptionOptions.Layout = clTop
            Control = edtObservacaoDescricao
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutControl2Item11: TdxLayoutItem
            Parent = dxLayoutControl2Group3
            CaptionOptions.Text = 'Estado'
            CaptionOptions.Layout = clTop
            Control = edtEstadp
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item10: TdxLayoutItem
            Parent = dxLayoutControl2Group4
            CaptionOptions.Text = 'ID Tipo Opera'#231#227'o'
            CaptionOptions.Layout = clTop
            Control = edtIDTipoOperacao
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Group4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group2
            LayoutDirection = ldHorizontal
            Index = 4
            AutoCreated = True
          end
          object dxLayoutControl2Item3: TdxLayoutItem
            Parent = dxLayoutControl2Group3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Nome'
            CaptionOptions.Layout = clTop
            Control = edtPaisNome
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Group3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl2Group2
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Al'#237'quotas'
        ImageIndex = 1
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 813
          Height = 447
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          ExplicitLeft = 16
          object edtCSTICMS: TcxDBTextEdit
            Left = 12
            Top = 33
            DataBinding.DataField = 'idcsticms'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 12
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 12
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 12
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxDBTextEdit21: TcxDBTextEdit
            Left = 12
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object edtAliquotaICMS: TcxDBTextEdit
            Left = 140
            Top = 33
            DataBinding.DataField = 'icms'
            DataBinding.DataSource = DataSource
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 268
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 396
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 15
            Width = 121
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 524
            Top = 33
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 20
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 140
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 268
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Width = 121
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 396
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 16
            Width = 121
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 524
            Top = 84
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 21
            Width = 121
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 140
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 121
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 268
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 396
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 17
            Width = 121
          end
          object cxDBTextEdit16: TcxDBTextEdit
            Left = 524
            Top = 135
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 22
            Width = 121
          end
          object cxDBTextEdit17: TcxDBTextEdit
            Left = 140
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 268
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Width = 121
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 396
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 18
            Width = 121
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 524
            Top = 186
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 23
            Width = 121
          end
          object cxDBTextEdit22: TcxDBTextEdit
            Left = 140
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 121
          end
          object cxDBTextEdit23: TcxDBTextEdit
            Left = 268
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 14
            Width = 121
          end
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 396
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 19
            Width = 121
          end
          object cxDBTextEdit25: TcxDBTextEdit
            Left = 524
            Top = 237
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 24
            Width = 121
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            AlignHorz = ahClient
            CaptionOptions.Text = 'CST ICMS'
            CaptionOptions.Layout = clTop
            Control = edtCSTICMS
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'cxDBTextEdit10'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit10
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item14: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            AlignHorz = ahClient
            CaptionOptions.Text = 'cxDBTextEdit14'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit14
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item15: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'cxDBTextEdit15'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit15
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item21: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'cxDBTextEdit21'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit21
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'Al'#237'quota'
            CaptionOptions.Layout = clTop
            Control = edtAliquotaICMS
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Parent = dxLayoutControl1Group6
            CaptionOptions.Text = 'cxDBTextEdit3'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit3
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            CaptionOptions.Text = 'cxDBTextEdit4'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit4
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            CaptionOptions.Text = 'cxDBTextEdit5'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit5
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'cxDBTextEdit6'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit6
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            Index = 1
            AutoCreated = True
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Parent = dxLayoutControl1Group6
            CaptionOptions.Text = 'cxDBTextEdit7'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit7
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            CaptionOptions.Text = 'cxDBTextEdit8'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit8
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            Index = 3
            AutoCreated = True
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            CaptionOptions.Text = 'cxDBTextEdit9'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit9
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            Index = 4
            AutoCreated = True
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'cxDBTextEdit11'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit11
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            Parent = dxLayoutControl1Group6
            CaptionOptions.Text = 'cxDBTextEdit12'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit12
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            CaptionOptions.Text = 'cxDBTextEdit13'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit13
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item16: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            CaptionOptions.Text = 'cxDBTextEdit16'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit16
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item17: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'cxDBTextEdit17'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit17
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            Index = 2
            AutoCreated = True
          end
          object dxLayoutControl1Item18: TdxLayoutItem
            Parent = dxLayoutControl1Group6
            CaptionOptions.Text = 'cxDBTextEdit18'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit18
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item19: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            CaptionOptions.Text = 'cxDBTextEdit19'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit19
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item20: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            CaptionOptions.Text = 'cxDBTextEdit20'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit20
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item22: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'cxDBTextEdit22'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit22
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item23: TdxLayoutItem
            Parent = dxLayoutControl1Group6
            CaptionOptions.Text = 'cxDBTextEdit23'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit23
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item24: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            CaptionOptions.Text = 'cxDBTextEdit24'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit24
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item25: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            CaptionOptions.Text = 'cxDBTextEdit25'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit25
            ControlOptions.ShowBorder = False
            Index = 4
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
    Left = 672
    Top = 400
  end
end
