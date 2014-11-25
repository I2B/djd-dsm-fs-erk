inherited frmCADRegraFiscal: TfrmCADRegraFiscal
  Caption = 'Regra Fiscal'
  ClientHeight = 690
  ClientWidth = 1276
  ExplicitWidth = 1292
  ExplicitHeight = 729
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 690
    ExplicitHeight = 690
    inherited lblRegistros: TLabel
      Top = 673
      ExplicitTop = 673
    end
    inherited imgImprimir: TcxImage
      Top = 559
      ExplicitTop = 559
    end
    inherited imgExportar: TcxImage
      Top = 616
      ExplicitTop = 616
    end
  end
  inherited pnlClient: TPanel
    Width = 1216
    Height = 690
    ExplicitWidth = 1216
    ExplicitHeight = 690
    inherited cxPageControl: TcxPageControl
      Width = 1216
      Height = 662
      ExplicitWidth = 1216
      ExplicitHeight = 662
      ClientRectBottom = 660
      ClientRectRight = 1214
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 1212
        ExplicitHeight = 630
        inherited cxGrid: TcxGrid
          Width = 1212
          Height = 560
          ExplicitWidth = 1212
          ExplicitHeight = 560
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidregrafiscal: TcxGridDBColumn
              DataBinding.FieldName = 'idregrafiscal'
            end
            object cxGridDBidpessoa: TcxGridDBColumn
              DataBinding.FieldName = 'idpessoa'
            end
            object cxGridDBidregrafiscalobservacao: TcxGridDBColumn
              Caption = 'ID OBserva'#231#227'o'
              DataBinding.FieldName = 'idregrafiscalobservacao'
            end
            object cxGridDBidcstpis: TcxGridDBColumn
              DataBinding.FieldName = 'idcstpis'
            end
            object cxGridDBidcstipi: TcxGridDBColumn
              DataBinding.FieldName = 'idcstipi'
            end
            object cxGridDBidtipooperacao: TcxGridDBColumn
              DataBinding.FieldName = 'idtipooperacao'
            end
            object cxGridDBidpais: TcxGridDBColumn
              DataBinding.FieldName = 'idpais'
            end
            object cxGridDBidmunicipio: TcxGridDBColumn
              DataBinding.FieldName = 'idmunicipio'
            end
            object cxGridDBidestado: TcxGridDBColumn
              DataBinding.FieldName = 'idestado'
            end
            object cxGridDBidunidadenegocio: TcxGridDBColumn
              DataBinding.FieldName = 'idunidadenegocio'
            end
            object cxGridDBidcfop: TcxGridDBColumn
              DataBinding.FieldName = 'idcfop'
            end
            object cxGridDBidncm: TcxGridDBColumn
              DataBinding.FieldName = 'idncm'
            end
            object cxGridDBidcstcofins: TcxGridDBColumn
              DataBinding.FieldName = 'idcstcofins'
            end
            object cxGridDBreducaoipi: TcxGridDBColumn
              DataBinding.FieldName = 'reducaoipi'
            end
            object cxGridDBipi: TcxGridDBColumn
              DataBinding.FieldName = 'ipi'
            end
            object cxGridDBreducaoicms: TcxGridDBColumn
              DataBinding.FieldName = 'reducaoicms'
            end
            object cxGridDBicms: TcxGridDBColumn
              DataBinding.FieldName = 'icms'
            end
            object cxGridDBpis: TcxGridDBColumn
              DataBinding.FieldName = 'pis'
            end
            object cxGridDBretencaopis: TcxGridDBColumn
              DataBinding.FieldName = 'retencaopis'
            end
            object cxGridDBcofins: TcxGridDBColumn
              DataBinding.FieldName = 'cofins'
            end
            object cxGridDBretencaocofins: TcxGridDBColumn
              DataBinding.FieldName = 'retencaocofins'
            end
            object cxGridDBativo: TcxGridDBColumn
              DataBinding.FieldName = 'ativo'
            end
            object cxGridDBmva: TcxGridDBColumn
              DataBinding.FieldName = 'mva'
            end
            object cxGridDBst: TcxGridDBColumn
              DataBinding.FieldName = 'st'
            end
            object cxGridDBreducaost: TcxGridDBColumn
              DataBinding.FieldName = 'reducaost'
            end
            object cxGridDBiss: TcxGridDBColumn
              DataBinding.FieldName = 'iss'
            end
            object cxGridDBreducaoiss: TcxGridDBColumn
              DataBinding.FieldName = 'reducaoiss'
            end
            object cxGridDBcsosn: TcxGridDBColumn
              DataBinding.FieldName = 'csosn'
            end
            object cxGridDBcssl: TcxGridDBColumn
              DataBinding.FieldName = 'cssl'
            end
            object cxGridDBinss: TcxGridDBColumn
              DataBinding.FieldName = 'inss'
            end
            object cxGridDBir: TcxGridDBColumn
              DataBinding.FieldName = 'ir'
            end
            object cxGridDBfunrural: TcxGridDBColumn
              DataBinding.FieldName = 'funrural'
            end
            object cxGridDBie: TcxGridDBColumn
              DataBinding.FieldName = 'ie'
            end
            object cxGridDBii: TcxGridDBColumn
              DataBinding.FieldName = 'ii'
            end
            object cxGridDBcfopdevolucao: TcxGridDBColumn
              DataBinding.FieldName = 'cfopdevolucao'
            end
            object cxGridDBidcsticms: TcxGridDBColumn
              DataBinding.FieldName = 'idcsticms'
            end
            object cxGridDBidcstcsosn: TcxGridDBColumn
              DataBinding.FieldName = 'idcstcsosn'
            end
            object cxGridDBpessoanome: TcxGridDBColumn
              DataBinding.FieldName = 'pessoanome'
            end
            object cxGridDBtipooperacaodescricao: TcxGridDBColumn
              DataBinding.FieldName = 'tipooperacaodescricao'
            end
            object cxGridDBpaisnome: TcxGridDBColumn
              DataBinding.FieldName = 'paisnome'
            end
            object cxGridDBmunicipionome: TcxGridDBColumn
              DataBinding.FieldName = 'municipionome'
            end
            object cxGridDBnomefantasia: TcxGridDBColumn
              DataBinding.FieldName = 'nomefantasia'
            end
            object cxGridDBcfopdescricao: TcxGridDBColumn
              DataBinding.FieldName = 'cfopdescricao'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 560
          Width = 1212
          ExplicitTop = 560
          ExplicitWidth = 1212
          inherited lblCampo: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 816
            Width = 816
          end
          inherited btnBuscar: TcxButton
            Left = 1108
            ExplicitLeft = 1108
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitWidth = 1212
        ExplicitHeight = 630
        inherited pnlCadastro: TPanel
          Height = 630
          ExplicitHeight = 630
        end
        inline FrameRegraFiscal: TFrameRegraFiscal
          Left = 60
          Top = 0
          Width = 1152
          Height = 630
          Align = alClient
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          ExplicitLeft = 60
          ExplicitWidth = 1152
          ExplicitHeight = 630
          inherited dxLayoutControl: TdxLayoutControl
            Width = 1152
            Height = 630
            ExplicitWidth = 1152
            ExplicitHeight = 630
            inherited cxPageControl1: TcxPageControl
              Width = 797
              Height = 453
              Align = alNone
              Anchors = [akLeft, akTop, akRight]
              Properties.ActivePage = FrameRegraFiscal.cxTabSheet1
              ExplicitWidth = 797
              ExplicitHeight = 453
              ClientRectBottom = 449
              ClientRectRight = 793
              inherited cxTabSheet1: TcxTabSheet
                ExplicitWidth = 789
                ExplicitHeight = 423
                inherited dxLayoutControl2: TdxLayoutControl
                  Width = 789
                  Height = 423
                  ExplicitWidth = 789
                  ExplicitHeight = 423
                  inherited edtIDMunicipio: TcxDBTextEdit
                    ExplicitWidth = 97
                    Width = 97
                  end
                  inherited edtIDPessoa: TcxDBTextEdit
                    ExplicitWidth = 102
                    Width = 102
                  end
                  inherited edtIDObservacao: TcxDBTextEdit
                    ExplicitWidth = 101
                    Width = 101
                  end
                  inherited edtMunicipioNome: TcxTextEdit
                    ExplicitWidth = 693
                    Width = 693
                  end
                  inherited edtPessoaNome: TcxTextEdit
                    ExplicitWidth = 555
                    Width = 555
                  end
                  inherited edtObservacaoDescricao: TcxMemo
                    ExplicitWidth = 689
                    Width = 689
                  end
                  inherited edtRazaoSocial: TcxTextEdit
                    ExplicitWidth = 677
                    Width = 677
                  end
                  inherited edtIDUnidadeNegocio: TcxDBTextEdit
                    ExplicitWidth = 89
                    Width = 89
                  end
                  inherited edtIDPais: TcxDBTextEdit
                    ExplicitWidth = 98
                    Width = 98
                  end
                  inherited edtPaisNome: TcxTextEdit
                    ExplicitWidth = 599
                    Width = 599
                  end
                  inherited edtEstadp: TcxDBTextEdit
                    ExplicitWidth = 86
                    Width = 86
                  end
                  inherited edtIDTipoOperacao: TcxDBTextEdit
                    ExplicitWidth = 101
                    Width = 101
                  end
                  inherited edtTipoOperacaoDescricao: TcxTextEdit
                    ExplicitWidth = 689
                    Width = 689
                  end
                  inherited edtNCM: TcxDBTextEdit
                    ExplicitWidth = 126
                    Width = 126
                  end
                  inherited dxLayoutControl2Group_Root: TdxLayoutGroup
                    Index = -1
                  end
                  inherited dxLayoutControl2Item14: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl2Item15: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl2Item18: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl2Item4: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl2Item5: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl2Item9: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl2Item2: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl2Group8: TdxLayoutGroup
                    Index = 0
                  end
                  inherited dxLayoutControl2Item12: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl2Group5: TdxLayoutGroup
                    Index = 2
                  end
                  inherited dxLayoutControl2Item13: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl2Item3: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl2Item11: TdxLayoutItem
                    Index = 2
                  end
                  inherited dxLayoutControl2Group3: TdxLayoutGroup
                    Index = 3
                  end
                  inherited dxLayoutControl2Group6: TdxLayoutGroup
                    Index = 4
                  end
                  inherited dxLayoutControl2Group2: TdxLayoutGroup
                    Index = 5
                  end
                  inherited dxLayoutControl2Group7: TdxLayoutGroup
                    Index = 1
                  end
                  inherited dxLayoutControl2Item10: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl2Item6: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl2Item16: TdxLayoutItem
                    Index = 2
                  end
                  inherited dxLayoutControl2Item1: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl2Group1: TdxLayoutGroup
                    Index = 6
                  end
                end
              end
              inherited cxTabSheet2: TcxTabSheet
                ExplicitWidth = 789
                ExplicitHeight = 423
                inherited dxLayoutControl1: TdxLayoutControl
                  Width = 789
                  Height = 423
                  ExplicitWidth = 789
                  ExplicitHeight = 423
                  inherited cxPageControl2: TcxPageControl
                    Width = 597
                    ExplicitWidth = 597
                    ClientRectRight = 593
                    inherited cxTabSheet3: TcxTabSheet
                      ExplicitLeft = 0
                      ExplicitTop = 0
                      ExplicitWidth = 0
                      ExplicitHeight = 0
                      inherited dxLayoutControl4: TdxLayoutControl
                        Width = 589
                        inherited dxLayoutControl4Group_Root: TdxLayoutGroup
                          Index = -1
                        end
                      end
                    end
                    inherited cxTabSheet4: TcxTabSheet
                      ExplicitLeft = 0
                      ExplicitTop = 0
                      ExplicitWidth = 0
                      ExplicitHeight = 0
                      inherited dxLayoutControl3: TdxLayoutControl
                        Width = 589
                        inherited dxLayoutControl3Group_Root: TdxLayoutGroup
                          Index = -1
                        end
                      end
                    end
                  end
                  inherited dxLayoutControl1Group_Root: TdxLayoutGroup
                    Index = -1
                  end
                  inherited dxLayoutControl1Item1: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl1Item3: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl1Item4: TdxLayoutItem
                    Index = 2
                  end
                  inherited dxLayoutControl1Group8: TdxLayoutGroup
                    Index = 0
                  end
                  inherited dxLayoutControl1Group1: TdxLayoutGroup
                    Index = 0
                  end
                  inherited dxLayoutControl1Item5: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl1Item8: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl1Group2: TdxLayoutGroup
                    Index = 1
                  end
                  inherited dxLayoutControl1Item16: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl1Item15: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup
                    Index = 0
                    AutoCreated = True
                  end
                  inherited dxLayoutControl1Group3: TdxLayoutGroup
                    Index = 1
                  end
                  inherited dxLayoutControl1Item7: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl1Item6: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup
                    Index = 1
                    AutoCreated = True
                  end
                  inherited dxLayoutControl1Group4: TdxLayoutGroup
                    Index = 2
                  end
                  inherited dxLayoutControl1Item9: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl1Item10: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl1Group7: TdxLayoutGroup
                    Index = 0
                  end
                  inherited dxLayoutControl1Item2: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl1Item11: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl1Group9: TdxLayoutGroup
                    Index = 1
                  end
                  inherited dxLayoutControl1Group10: TdxLayoutAutoCreatedGroup
                    Index = 2
                    AutoCreated = True
                  end
                  inherited dxLayoutControl1Item12: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl1Group11: TdxLayoutGroup
                    Index = 3
                  end
                  inherited dxLayoutControl1Item13: TdxLayoutItem
                    Index = 0
                  end
                  inherited dxLayoutControl1Item14: TdxLayoutItem
                    Index = 1
                  end
                  inherited dxLayoutControl1Item17: TdxLayoutItem
                    Index = 2
                  end
                  inherited dxLayoutControl1Item18: TdxLayoutItem
                    CaptionOptions.Text = 'cxPageControl2'
                    Index = 4
                  end
                end
              end
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 1212
        ExplicitHeight = 630
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 1212
          ExplicitHeight = 463
          Height = 463
          Width = 1212
          inherited cxGridFiltro: TcxGrid
            Height = 436
            ExplicitHeight = 436
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 824
            ExplicitHeight = 436
            Height = 436
            Width = 824
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 1212
          Width = 1212
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 738
            Width = 642
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 923
            ExplicitLeft = 923
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 1204
            Width = 1204
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 1177
              Width = 1177
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 1177
              Width = 1177
            end
            inherited imgFiltroSQL: TcxImage
              Left = 1180
              ExplicitLeft = 1180
            end
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 1018
            ExplicitLeft = 1114
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 1041
            ExplicitLeft = 1137
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 206
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 21
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 1216
      ExplicitWidth = 1216
      inherited lblPrimeiroEdit: TLabel
        Width = 179
        Caption = 'edtIDUnidadeNegocio'
        ExplicitWidth = 179
      end
      inherited lblFrame: TLabel
        Width = 138
        Caption = 'FrameRegraFiscal'
        ExplicitWidth = 138
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dts: TDataSource
    DataSet = DM.cdsRegraFiscal
  end
  inherited ServerMethod: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'filtro'
        ParamType = ptInput
      end>
    SQLConnection = DM.conServer
    ServerMethodName = 'TServerMethods.setSQLRegraFiscal'
  end
end
