inherited frmCADPessoa: TfrmCADPessoa
  Caption = 'Pessoa'
  ClientHeight = 634
  ClientWidth = 885
  ExplicitWidth = 901
  ExplicitHeight = 673
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlSide: TPanel
    Height = 634
    ExplicitHeight = 634
    inherited lblRegistros: TLabel
      Top = 617
      ExplicitTop = 617
    end
    inherited imgImprimir: TcxImage
      Top = 503
      ExplicitTop = 503
    end
    inherited imgExportar: TcxImage
      Top = 560
      ExplicitTop = 560
    end
  end
  inherited pnlClient: TPanel
    Width = 825
    Height = 634
    ExplicitWidth = 825
    ExplicitHeight = 634
    inherited cxPageControl: TcxPageControl
      Width = 825
      Height = 606
      ExplicitWidth = 825
      ExplicitHeight = 606
      ClientRectBottom = 604
      ClientRectRight = 823
      inherited cxTabGrid: TcxTabSheet
        ExplicitWidth = 821
        ExplicitHeight = 574
        inherited cxGrid: TcxGrid
          Width = 821
          Height = 504
          ExplicitWidth = 821
          ExplicitHeight = 504
          inherited cxGridDB: TcxGridDBTableView
            object cxGridDBidpessoa: TcxGridDBColumn
              DataBinding.FieldName = 'idpessoa'
            end
            object cxGridDBtipo: TcxGridDBColumn
              DataBinding.FieldName = 'tipo'
              Width = 46
            end
            object cxGridDBemail: TcxGridDBColumn
              DataBinding.FieldName = 'email'
              Width = 389
            end
            object cxGridDBsite: TcxGridDBColumn
              DataBinding.FieldName = 'site'
            end
            object cxGridDBcliente: TcxGridDBColumn
              DataBinding.FieldName = 'cliente'
            end
            object cxGridDBfornecedor: TcxGridDBColumn
              DataBinding.FieldName = 'fornecedor'
            end
            object cxGridDBcolaborador: TcxGridDBColumn
              DataBinding.FieldName = 'colaborador'
            end
            object cxGridDBcontador: TcxGridDBColumn
              DataBinding.FieldName = 'contador'
            end
            object cxGridDBtransportadora: TcxGridDBColumn
              DataBinding.FieldName = 'transportadora'
            end
            object cxGridDBvendedor: TcxGridDBColumn
              DataBinding.FieldName = 'vendedor'
            end
            object cxGridDBcpf: TcxGridDBColumn
              DataBinding.FieldName = 'cpf'
            end
            object cxGridDBcnpj: TcxGridDBColumn
              DataBinding.FieldName = 'cnpj'
            end
            object cxGridDBrg: TcxGridDBColumn
              DataBinding.FieldName = 'rg'
            end
            object cxGridDBdatanascimento: TcxGridDBColumn
              DataBinding.FieldName = 'datanascimento'
            end
            object cxGridDBsexo: TcxGridDBColumn
              DataBinding.FieldName = 'sexo'
            end
            object cxGridDBestadocivil: TcxGridDBColumn
              DataBinding.FieldName = 'estadocivil'
            end
            object cxGridDBcnhnumero: TcxGridDBColumn
              DataBinding.FieldName = 'cnhnumero'
            end
            object cxGridDBcnhcategoria: TcxGridDBColumn
              DataBinding.FieldName = 'cnhcategoria'
            end
            object cxGridDBcnhvencimento: TcxGridDBColumn
              DataBinding.FieldName = 'cnhvencimento'
            end
            object cxGridDBnomemae: TcxGridDBColumn
              DataBinding.FieldName = 'nomemae'
            end
            object cxGridDBnomepai: TcxGridDBColumn
              DataBinding.FieldName = 'nomepai'
            end
            object cxGridDBnomefantasia: TcxGridDBColumn
              DataBinding.FieldName = 'nomefantasia'
            end
            object cxGridDBinscricaomunicipal: TcxGridDBColumn
              DataBinding.FieldName = 'inscricaomunicipal'
            end
            object cxGridDBinscricaoestadual: TcxGridDBColumn
              DataBinding.FieldName = 'inscricaoestadual'
            end
            object cxGridDBtiporegime: TcxGridDBColumn
              DataBinding.FieldName = 'tiporegime'
            end
            object cxGridDBcrt: TcxGridDBColumn
              DataBinding.FieldName = 'crt'
            end
            object cxGridDBsuframa: TcxGridDBColumn
              DataBinding.FieldName = 'suframa'
            end
          end
        end
        inherited pnlBottom: TPanel
          Top = 504
          Width = 821
          ExplicitTop = 504
          ExplicitWidth = 821
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
            ExplicitWidth = 723
            ExplicitHeight = 23
            Width = 723
          end
          inherited btnBuscar: TcxButton
            Left = 717
            ExplicitLeft = 717
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
        ExplicitWidth = 821
        ExplicitHeight = 574
        inherited pnlCadastro: TPanel
          Height = 574
          ExplicitHeight = 574
        end
        inline FramePessoa: TFramePessoa
          Left = 60
          Top = 0
          Width = 761
          Height = 574
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
          ExplicitWidth = 761
          ExplicitHeight = 574
          inherited dxLayoutControl: TdxLayoutControl
            Width = 761
            Height = 574
            ExplicitWidth = 761
            ExplicitHeight = 574
            inherited grpTipo: TcxDBRadioGroup
              Top = 221
              TabOrder = 8
              ExplicitTop = 221
              ExplicitWidth = 328
              Width = 328
            end
            inherited edtCnhNumero: TcxDBTextEdit
              Top = 795
              TabOrder = 27
              ExplicitTop = 795
            end
            inherited edtCnhCategoria: TcxDBTextEdit
              Top = 795
              TabOrder = 28
              ExplicitTop = 795
            end
            inherited edtCnhVencimento: TcxDBTextEdit
              Top = 795
              TabOrder = 29
              ExplicitTop = 795
            end
            inherited chkCliente: TcxDBCheckBox
              Left = 340
              Top = 242
              TabOrder = 9
              ExplicitLeft = 340
              ExplicitTop = 242
            end
            inherited chkColaborador: TcxDBCheckBox
              Left = 340
              Top = 272
              TabOrder = 10
              ExplicitLeft = 340
              ExplicitTop = 272
            end
            inherited chkFornecedor: TcxDBCheckBox
              Left = 448
              Top = 242
              TabOrder = 11
              ExplicitLeft = 448
              ExplicitTop = 242
            end
            inherited chkVendedor: TcxDBCheckBox
              Left = 448
              Top = 272
              TabOrder = 12
              ExplicitLeft = 448
              ExplicitTop = 272
            end
            inherited chkTransportadora: TcxDBCheckBox
              Left = 653
              Top = 242
              TabOrder = 14
              ExplicitLeft = 653
              ExplicitTop = 242
            end
            inherited edtRazaoSocial: TcxDBTextEdit
              Top = 358
              TabOrder = 16
              ExplicitTop = 358
            end
            inherited edtFantasia: TcxDBTextEdit
              Top = 358
              TabOrder = 17
              ExplicitTop = 358
            end
            inherited edtCNPJ: TcxDBTextEdit
              Top = 409
              TabOrder = 18
              ExplicitTop = 409
              ExplicitWidth = 341
              Width = 341
            end
            inherited edtInscricaoMunicipal: TcxDBTextEdit
              Top = 460
              TabOrder = 19
              ExplicitTop = 460
              ExplicitWidth = 341
              Width = 341
            end
            inherited edtInscricaoEstadual: TcxDBTextEdit
              Top = 521
              TabOrder = 20
              ExplicitTop = 521
            end
            inherited grpCodigoRegimeTributario: TcxDBRadioGroup
              Top = 388
              TabOrder = 21
              ExplicitTop = 388
            end
            inherited edtDataFundacao: TcxDBDateEdit
              Top = 521
              TabOrder = 22
              ExplicitTop = 521
            end
            inherited grpRegimeTributario: TcxDBRadioGroup
              Top = 388
              TabOrder = 23
              ExplicitTop = 388
            end
            inherited edtNomeDoPai: TcxDBTextEdit
              Top = 75
              TabOrder = 0
              ExplicitTop = 75
              ExplicitWidth = 365
              Width = 365
            end
            inherited edtNomeDaMae: TcxDBTextEdit
              Left = 412
              Top = 126
              TabOrder = 6
              ExplicitLeft = 412
              ExplicitTop = 126
            end
            inherited grpSexo: TcxDBRadioGroup
              Left = 412
              Top = 156
              TabOrder = 7
              ExplicitLeft = 412
              ExplicitTop = 156
              ExplicitWidth = 261
              Width = 261
            end
            inherited edtCPF: TcxDBTextEdit
              Top = 177
              TabOrder = 2
              ExplicitTop = 177
            end
            inherited edtRG: TcxDBTextEdit
              Top = 177
              TabOrder = 3
              ExplicitTop = 177
            end
            inherited edtNome: TcxDBTextEdit
              Top = 126
              TabOrder = 1
              ExplicitTop = 126
            end
            inherited edtDataAniversário: TcxDBDateEdit
              Left = 412
              Top = 75
              TabOrder = 4
              ExplicitLeft = 412
              ExplicitTop = 75
            end
            inherited cmbEstadoCivil: TcxDBComboBox
              Left = 606
              Top = 75
              TabOrder = 5
              ExplicitLeft = 606
              ExplicitTop = 75
            end
            inherited edtEMail: TcxDBTextEdit
              Top = 607
              TabOrder = 24
              ExplicitTop = 607
              ExplicitWidth = 741
              Width = 741
            end
            inherited edtSite: TcxDBTextEdit
              Top = 658
              TabOrder = 25
              ExplicitTop = 658
              ExplicitWidth = 741
              Width = 741
            end
            inherited edtCodigoSuframa: TcxDBTextEdit
              Top = 709
              TabOrder = 26
              ExplicitTop = 709
              ExplicitWidth = 741
              Width = 741
            end
            inherited chkRepresentante: TcxDBCheckBox
              Left = 653
              Top = 272
              TabOrder = 15
              ExplicitLeft = 653
              ExplicitTop = 272
            end
            inherited chkContador: TcxDBCheckBox
              Left = 556
              Top = 242
              TabOrder = 13
              ExplicitLeft = 556
              ExplicitTop = 242
            end
            inherited dxLayoutControlGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited grpTela: TdxLayoutGroup
              Index = 0
            end
            inherited dxLayoutControlItem11: TdxLayoutItem
              Index = 0
            end
            inherited grpOculto: TdxLayoutGroup
              Index = -1
            end
            inherited grpColaborador: TdxLayoutGroup
              Index = 4
            end
            inherited dxLayoutControlItem8: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem9: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem10: TdxLayoutItem
              Index = 2
            end
            inherited grpRepresentante: TdxLayoutGroup
              Index = 5
            end
            inherited grpContador: TdxLayoutGroup
              Index = 6
            end
            inherited grpVendedor: TdxLayoutGroup
              Index = 7
            end
            inherited grpTransportadora: TdxLayoutGroup
              Index = 10
            end
            inherited grpCliente: TdxLayoutGroup
              Index = 9
            end
            inherited grpFornecedor: TdxLayoutGroup
              Index = 8
            end
            inherited grpTipoPessoa: TdxLayoutGroup
              Index = 1
            end
            inherited dxLayoutControlGroup7: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem17: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem12: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup13: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem14: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem15: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem13: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup16: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited grpPessoaJuridica: TdxLayoutGroup
              Index = 2
            end
            inherited dxLayoutControlGroup21: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem24: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem23: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup20: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlGroup24: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlGroup19: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem5: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem25: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem26: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup22: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlGroup23: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem28: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem20: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem27: TdxLayoutItem
              Index = 1
            end
            inherited grpPessoaFisica: TdxLayoutGroup
              Index = 0
            end
            inherited dxLayoutControlItem22: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem7: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem18: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem6: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup4: TdxLayoutAutoCreatedGroup
              Index = 2
              AutoCreated = True
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem19: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem21: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlGroup5: TdxLayoutGroup
              Index = 3
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem29: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlGroup6: TdxLayoutAutoCreatedGroup
              Index = 3
              AutoCreated = True
            end
            inherited dxLayoutControlItem30: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem16: TdxLayoutItem
              Index = 2
            end
          end
        end
      end
      inherited cxTabFiltro: TcxTabSheet
        ExplicitWidth = 821
        ExplicitHeight = 574
        inherited gbFiltroSalvo: TcxGroupBox
          ExplicitWidth = 821
          ExplicitHeight = 407
          Height = 407
          Width = 821
          inherited cxGridFiltro: TcxGrid
            Height = 380
            ExplicitHeight = 380
          end
          inherited cxMemoFiltroSalvo: TcxMemo
            ExplicitWidth = 433
            ExplicitHeight = 380
            Height = 380
            Width = 433
          end
        end
        inherited gbDesenvolvimentoFiltro: TcxGroupBox
          ExplicitWidth = 821
          Width = 821
          inherited edtFiltroCondicao: TcxTextEdit
            ExplicitWidth = 251
            ExplicitHeight = 23
            Width = 251
          end
          inherited rgFiltroAndOr: TcxRadioGroup
            Left = 532
            ExplicitLeft = 532
          end
          inherited gbFiltroDesenvolvido: TcxGroupBox
            ExplicitWidth = 813
            Width = 813
            inherited memoFiltroSQL: TcxMemo
              ExplicitWidth = 786
              Width = 786
            end
            inherited memoFiltroDesenvolvido: TcxMemo
              ExplicitWidth = 786
              Width = 786
            end
            inherited imgFiltroSQL: TcxImage
              Left = 789
              ExplicitLeft = 789
            end
          end
          inherited cbFiltroCampo: TcxComboBox
            ExplicitHeight = 23
          end
          inherited cbFiltroOperacao: TcxComboBox
            ExplicitHeight = 23
          end
          inherited btnAdicionarFiltro: TcxButton
            Left = 627
            ExplicitLeft = 627
          end
          inherited btnFiltroCancelar: TcxButton
            Left = 650
            ExplicitLeft = 650
          end
          inherited btnAplicarFiltro: TcxButton
            Width = 285
            ExplicitWidth = 285
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
      Width = 825
      ExplicitWidth = 825
      inherited lblPrimeiroEdit: TLabel
        Width = 77
        Caption = 'edtNome'
        ExplicitWidth = 77
      end
      inherited lblFrame: TLabel
        Width = 103
        Caption = 'FramePessoa'
        ExplicitWidth = 103
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
    DataSet = DM.cdsPessoa
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
    ServerMethodName = 'TServerMethods.setSQLPessoa'
  end
end
