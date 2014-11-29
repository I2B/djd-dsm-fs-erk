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
      Properties.ActivePage = cxTabGrid
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
          inherited cbCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 814
            ExplicitHeight = 23
            Width = 814
          end
          inherited btnBuscar: TcxButton
            Left = 1106
            ExplicitLeft = 1106
          end
          inherited cbSQL: TcxComboBox
            ExplicitHeight = 23
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited cbOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited dateInformacao: TcxDateEdit
            ExplicitHeight = 23
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 30
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
          ExplicitLeft = 89
          ExplicitTop = 72
          inherited dxLayoutControl: TdxLayoutControl
            Width = 1152
            Height = 630
            inherited cxPageControl1: TcxPageControl
              inherited cxTabSheet1: TcxTabSheet
                ExplicitLeft = 4
                ExplicitTop = 26
                ExplicitWidth = 1090
                ExplicitHeight = 423
                inherited dxLayoutControl2: TdxLayoutControl
                  inherited edtIDPessoa: TcxDBTextEdit
                    ExplicitWidth = 108
                    Width = 108
                  end
                  inherited edtPessoaNome: TcxTextEdit
                    ExplicitWidth = 854
                    Width = 854
                  end
                  inherited edtRazaoSocial: TcxTextEdit
                    ExplicitWidth = 801
                    Width = 801
                  end
                  inherited edtIDUnidadeNegocio: TcxDBTextEdit
                    ExplicitWidth = 91
                    Width = 91
                  end
                  inherited edtPaisNome: TcxTextEdit
                    ExplicitWidth = 897
                    Width = 897
                  end
                  inherited edtIDTipoOperacao: TcxDBTextEdit
                    ExplicitWidth = 93
                    Width = 93
                  end
                  inherited edtTipoOperacaoDescricao: TcxTextEdit
                    ExplicitWidth = 817
                    Width = 817
                  end
                  inherited edtNCM: TcxDBTextEdit
                    ExplicitWidth = 99
                    Width = 99
                  end
                  inherited cxDBCheckBox1: TcxDBCheckBox
                    ExplicitWidth = 632
                    Width = 632
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
                  inherited dxLayoutControl2Item7: TdxLayoutItem
                    Index = 1
                  end
                end
              end
              inherited cxTabSheet2: TcxTabSheet
                ExplicitLeft = 4
                ExplicitTop = 26
                ExplicitWidth = 1090
                ExplicitHeight = 423
                inherited dxLayoutControl1: TdxLayoutControl
                  inherited cxPageControl2: TcxPageControl
                    Width = 1061
                    ExplicitWidth = 1061
                    ClientRectRight = 1057
                    inherited cxTabSheet3: TcxTabSheet
                      ExplicitLeft = 4
                      ExplicitTop = 26
                      ExplicitWidth = 1053
                      ExplicitHeight = 351
                      inherited dxLayoutControl4: TdxLayoutControl
                        inherited edtPFICMSCST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFICMSAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFICMSPercentualReducao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFICMSSTMVA: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFICMSSTPercentualReducao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFIPICST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFISSAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFISSReducao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFICMSSTAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox2: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox3: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox4: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox8: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox9: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited ectPFIPIClasseEnquadramento: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFIPICodigoEnquadramento: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFIPIAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFPISCST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFPISAliquotaNormal: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFCOFINSCST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFCOFINSAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPFCSOSN: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox13: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited dxLayoutControl4Group_Root: TdxLayoutGroup
                          Index = -1
                        end
                        inherited dxLayoutControl1Group8: TdxLayoutGroup
                          Index = 0
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
                        inherited dxLayoutControl1Group2: TdxLayoutGroup
                          Index = 1
                        end
                        inherited dxLayoutControl1Item16: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl1Item15: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl4Group1: TdxLayoutAutoCreatedGroup
                          Index = 0
                          AutoCreated = True
                        end
                        inherited dxLayoutControl1Group1: TdxLayoutGroup
                          Index = 0
                        end
                        inherited dxLayoutControl1Item5: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl1Group7: TdxLayoutGroup
                          Index = 2
                        end
                        inherited dxLayoutControl1Item2: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl1Item11: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl4Item1: TdxLayoutItem
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
                        inherited dxLayoutControl4Item2: TdxLayoutItem
                          Index = 3
                        end
                        inherited dxLayoutControl4Item3: TdxLayoutItem
                          Index = 4
                        end
                        inherited dxLayoutControl4Item4: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl4Item5: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl1Item8: TdxLayoutItem
                          Index = 3
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
                        inherited dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup
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
                        inherited dxLayoutControl1Group9: TdxLayoutGroup
                          Index = 2
                        end
                        inherited dxLayoutControl1Item12: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl4Item6: TdxLayoutItem
                          Index = 5
                        end
                      end
                    end
                    inherited cxTabSheet4: TcxTabSheet
                      ExplicitLeft = 4
                      ExplicitTop = 26
                      ExplicitWidth = 1053
                      ExplicitHeight = 351
                      inherited dxLayoutControl3: TdxLayoutControl
                        Width = 1058
                        inherited edtPJICMSCST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJICMSSTMVA: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJIPICST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJICMSAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJICMSReducaoBC: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJICMSSTReducaoBC: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox6: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox7: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox5: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited edtPJICMSSTAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox10: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox11: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited edtPJIPIClasseEnquadramento: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJIPICodigoEnquadramento: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJIPIAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJPISCST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJPISAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJPISAliquotaST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJCOFINSCST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJCOFINSAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJCOFINSAliquotaST: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJCSOSN: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJISSAliquota: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJISSReducaoBC: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited cxDBCheckBox12: TcxDBCheckBox
                          ExplicitHeight = 23
                        end
                        inherited edtPJISSRetencao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJIRRetencao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJPISRetencao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJCOFINSRetencao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJCSLLRetencao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited edtPJINSSRetencao: TcxDBTextEdit
                          ExplicitHeight = 23
                        end
                        inherited dxLayoutControl3Group_Root: TdxLayoutGroup
                          Index = -1
                        end
                        inherited dxLayoutControl3Group1: TdxLayoutGroup
                          Index = 0
                        end
                        inherited dxLayoutControl3Group3: TdxLayoutGroup
                          Index = 0
                        end
                        inherited dxLayoutControl3Group8: TdxLayoutGroup
                          Index = 3
                        end
                        inherited dxLayoutControl3Group2: TdxLayoutGroup
                          Index = 1
                        end
                        inherited dxLayoutControl3Group9: TdxLayoutAutoCreatedGroup
                          Index = 0
                          AutoCreated = True
                        end
                        inherited dxLayoutControl3Item3: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Item4: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl3Item7: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Item2: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl3Item1: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl3Item5: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl3Item16: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Item17: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl3Item15: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl3Item18: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Item19: TdxLayoutItem
                          Index = 3
                        end
                        inherited dxLayoutControl3Item20: TdxLayoutItem
                          Index = 4
                        end
                        inherited dxLayoutControl3Item21: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl3Item22: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl3Item6: TdxLayoutItem
                          Index = 3
                        end
                        inherited dxLayoutControl3Group4: TdxLayoutGroup
                          Index = 1
                        end
                        inherited dxLayoutControl3Item8: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Item9: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl3Item23: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl3Group10: TdxLayoutAutoCreatedGroup
                          Index = 1
                          AutoCreated = True
                        end
                        inherited dxLayoutControl3Group5: TdxLayoutGroup
                          Index = 2
                        end
                        inherited dxLayoutControl3Item10: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Item11: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl3Item24: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl3Group7: TdxLayoutGroup
                          Index = 2
                        end
                        inherited dxLayoutControl3Item14: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Group6: TdxLayoutGroup
                          Index = 0
                        end
                        inherited dxLayoutControl3Item12: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Item13: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl3Item31: TdxLayoutItem
                          Index = 5
                        end
                        inherited dxLayoutControl3Group11: TdxLayoutGroup
                          Index = 1
                        end
                        inherited dxLayoutControl3Item30: TdxLayoutItem
                          Index = 0
                        end
                        inherited dxLayoutControl3Item25: TdxLayoutItem
                          Index = 1
                        end
                        inherited dxLayoutControl3Item26: TdxLayoutItem
                          Index = 2
                        end
                        inherited dxLayoutControl3Item27: TdxLayoutItem
                          Index = 3
                        end
                        inherited dxLayoutControl3Item28: TdxLayoutItem
                          Index = 4
                        end
                        inherited dxLayoutControl3Item29: TdxLayoutItem
                          Index = 5
                        end
                        inherited dxLayoutControl3Group12: TdxLayoutAutoCreatedGroup
                          Index = 2
                          AutoCreated = True
                        end
                      end
                    end
                  end
                  inherited dxLayoutControl1Group_Root: TdxLayoutGroup
                    Index = -1
                  end
                  inherited dxLayoutControl1Item18: TdxLayoutItem
                    Index = 0
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
            ExplicitWidth = 640
            ExplicitHeight = 23
            Width = 640
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 921
            ExplicitLeft = 921
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 1202
            Width = 1202
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 1175
              Width = 1175
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 1175
              Width = 1175
            end
            inherited imgFiltroSQL: TcxImage
              Left = 1178
              ExplicitLeft = 1178
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 1016
            ExplicitLeft = 1016
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 1039
            ExplicitLeft = 1039
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 204
            ExplicitWidth = 204
          end
          inherited cbFiltroSQL: TcxComboBox
            ExplicitHeight = 23
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
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
