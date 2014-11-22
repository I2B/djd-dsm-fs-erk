inherited frmCADRegraFiscal: TfrmCADRegraFiscal
  Caption = 'Regra Fiscal'
  ClientHeight = 520
  ClientWidth = 879
  ExplicitWidth = 895
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 520
    ExplicitHeight = 0
    inherited lblRegistros: TLabel
      Top = 503
    end
    inherited imgImprimir: TcxImage
      Top = 389
      ExplicitTop = -131
    end
    inherited imgExportar: TcxImage
      Top = 446
      ExplicitTop = -74
    end
  end
  inherited pnlClient: TPanel
    Width = 819
    Height = 520
    ExplicitWidth = 64
    ExplicitHeight = 0
    inherited cxPageControl: TcxPageControl
      Width = 819
      Height = 492
      ExplicitWidth = 64
      ClientRectBottom = 490
      ClientRectRight = 817
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 815
        ExplicitHeight = 404
        inherited cxGrid: TcxGrid
          Width = 815
          Height = 390
          ExplicitWidth = 815
          ExplicitHeight = 334
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
          Top = 390
          Width = 815
          ExplicitTop = 334
          ExplicitWidth = 815
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
            ExplicitWidth = 419
            ExplicitHeight = 23
            Width = 419
          end
          inherited btnBuscar: TcxButton
            Left = 711
            ExplicitLeft = 711
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
        ExplicitWidth = 60
        inherited pnlCadastro: TPanel
          Height = 460
        end
        inline FrameRegraFiscal: TFrameRegraFiscal
          Left = 60
          Top = 0
          Width = 755
          Height = 460
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
          ExplicitWidth = 0
          ExplicitHeight = 339
          inherited dxLayoutControl: TdxLayoutControl
            Width = 755
            Height = 460
            ExplicitWidth = 0
            ExplicitHeight = 339
            inherited cxPageControl1: TcxPageControl
              inherited cxTabSheet1: TcxTabSheet
                ExplicitWidth = 661
                inherited dxLayoutControl2: TdxLayoutControl
                  ExplicitWidth = 661
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
                ExplicitWidth = 661
                inherited dxLayoutControl1: TdxLayoutControl
                  ExplicitWidth = 661
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
        ExplicitWidth = 60
        ExplicitHeight = 339
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 60
          Height = 293
          Width = 815
          inherited cxGridFiltro: TcxGrid
            Height = 266
            ExplicitLeft = 3
            ExplicitTop = 17
            ExplicitHeight = 326
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            Height = 266
            Width = 507
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 60
          Width = 815
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 245
            ExplicitHeight = 23
            Width = 245
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 526
            ExplicitLeft = -229
          end
          inherited dateFiltroCondicao: TcxDateEdit
            ExplicitHeight = 23
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 52
            Width = 807
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 46
              Width = 801
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 621
            ExplicitLeft = 621
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 644
            ExplicitLeft = 644
          end
          inherited cxButton1: TcxButton
            Width = 279
            ExplicitWidth = 279
          end
        end
      end
    end
    inherited pnlTop: TPanel
      Width = 819
      ExplicitWidth = 64
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
