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
              Caption = 'ID'
              DataBinding.FieldName = 'idpessoa'
            end
            object cxGridDBnome: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'nome'
              Width = 395
            end
            object cxGridDBdatacadastro: TcxGridDBColumn
              Caption = 'Data Cadastro'
              DataBinding.FieldName = 'datacadastro'
              Width = 78
            end
            object cxGridDBtipo: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'tipo'
              Width = 46
            end
            object cxGridDBemail: TcxGridDBColumn
              Caption = 'e-Mail'
              DataBinding.FieldName = 'email'
              Width = 233
            end
            object cxGridDBsite: TcxGridDBColumn
              Caption = 'Site'
              DataBinding.FieldName = 'site'
              Width = 395
            end
            object cxGridDBcliente: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'cliente'
            end
            object cxGridDBfornecedor: TcxGridDBColumn
              Caption = 'Fornecedor'
              DataBinding.FieldName = 'fornecedor'
            end
            object cxGridDBcolaborador: TcxGridDBColumn
              Caption = 'Colaborador'
              DataBinding.FieldName = 'colaborador'
            end
            object cxGridDBcontador: TcxGridDBColumn
              Caption = 'Contador'
              DataBinding.FieldName = 'contador'
            end
            object cxGridDBtransportadora: TcxGridDBColumn
              Caption = 'Transportadora'
              DataBinding.FieldName = 'transportadora'
            end
            object cxGridDBvendedor: TcxGridDBColumn
              Caption = 'Vendedor'
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
              Width = 306
            end
            object cxGridDBnomepai: TcxGridDBColumn
              DataBinding.FieldName = 'nomepai'
              Width = 276
            end
            object cxGridDBnomefantasia: TcxGridDBColumn
              DataBinding.FieldName = 'nomefantasia'
              Width = 258
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
            object cxGridDBrepresentante: TcxGridDBColumn
              DataBinding.FieldName = 'representante'
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
          inherited lblInformacao: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtInformacao: TcxTextEdit
            ExplicitWidth = 723
            Width = 723
          end
          inherited btnBuscar: TcxButton
            Left = 717
            ExplicitLeft = 717
          end
          inherited lblOperacao: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabCadastro: TcxTabSheet
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
            inherited imgFoto3x4: TImage
              Top = 658
              Width = 177
              ExplicitTop = 658
              ExplicitWidth = 177
            end
            inherited grpTipo: TcxDBRadioGroup
              ExplicitWidth = 330
              Width = 330
            end
            inherited chkCliente: TcxDBCheckBox
              Left = 375
              ExplicitLeft = 375
            end
            inherited chkColaborador: TcxDBCheckBox
              Left = 375
              ExplicitLeft = 375
            end
            inherited chkFornecedor: TcxDBCheckBox
              Left = 483
              ExplicitLeft = 483
            end
            inherited chkVendedor: TcxDBCheckBox
              Left = 483
              ExplicitLeft = 483
            end
            inherited chkTransportadora: TcxDBCheckBox
              Left = 591
              ExplicitLeft = 591
              ExplicitWidth = 123
              Width = 123
            end
            inherited chkRepresentante: TcxDBCheckBox
              Left = 591
              Properties.DisplayGrayed = 'false'
              ExplicitLeft = 591
              ExplicitWidth = 121
              Width = 121
            end
            inherited memTransportadoraObservacao: TcxDBMemo
              ExplicitWidth = 947
              Width = 947
            end
            inherited edtCnhCategoria: TcxDBTextEdit
              Left = 601
              TabOrder = 18
              ExplicitLeft = 601
            end
            inherited edtCTPSNumero: TcxDBTextEdit
              Top = 959
              TabOrder = 39
              ExplicitTop = 959
            end
            inherited memObservacao: TcxDBMemo
              Left = 207
              Top = 658
              TabOrder = 27
              ExplicitLeft = 207
              ExplicitTop = 658
              ExplicitWidth = 668
              Width = 668
            end
            inherited edtDataAdmissao: TcxDBDateEdit
              Top = 806
              TabOrder = 28
              ExplicitTop = 806
            end
            inherited edtDataDemissão: TcxDBDateEdit
              Top = 806
              TabOrder = 29
              ExplicitTop = 806
            end
            inherited edtBanco: TcxDBTextEdit
              Left = 40
              Top = 857
              TabOrder = 32
              ExplicitLeft = 40
              ExplicitTop = 857
            end
            inherited edtCTPSDataExpedicao: TcxDBDateEdit
              Top = 959
              TabOrder = 40
              ExplicitTop = 959
            end
            inherited edtUnidadeNegocio: TcxDBTextEdit
              Top = 908
              TabOrder = 36
              ExplicitTop = 908
            end
            inherited edtCargo: TcxDBTextEdit
              Top = 908
              TabOrder = 37
              ExplicitTop = 908
            end
            inherited edtSetor: TcxDBTextEdit
              Top = 908
              TabOrder = 38
              ExplicitTop = 908
            end
            inherited edtCTPSSerie: TcxDBTextEdit
              Top = 959
              TabOrder = 41
              ExplicitTop = 959
            end
            inherited edtCTPSUF: TcxDBTextEdit
              Top = 959
              TabOrder = 42
              ExplicitTop = 959
            end
            inherited edtFGTSConta: TcxDBTextEdit
              Left = 227
              Top = 857
              TabOrder = 33
              ExplicitLeft = 227
              ExplicitTop = 857
            end
            inherited edtDataCadastro: TcxDBDateEdit
              Top = 1045
              TabOrder = 43
              ExplicitTop = 1045
            end
            inherited edtCodigoSuframa: TcxDBTextEdit
              Top = 1045
              TabOrder = 44
              ExplicitTop = 1045
            end
            inherited edtEMail: TcxDBTextEdit
              Top = 1096
              TabOrder = 45
              ExplicitTop = 1096
            end
            inherited edtSite: TcxDBTextEdit
              Top = 1096
              TabOrder = 46
              ExplicitTop = 1096
            end
            inherited edtMatricula: TcxDBTextEdit
              Left = 414
              Top = 857
              TabOrder = 34
              ExplicitLeft = 414
              ExplicitTop = 857
            end
            inherited edtExameData: TcxDBDateEdit
              Top = 806
              TabOrder = 30
              ExplicitTop = 806
            end
            inherited edtExameDataUltimo: TcxDBDateEdit
              Top = 806
              TabOrder = 31
              ExplicitTop = 806
            end
            inherited cmbFormaDePagamento: TcxDBComboBox
              Left = 601
              Top = 857
              TabOrder = 35
              ExplicitLeft = 601
              ExplicitTop = 857
            end
            inherited edtCNHVencimento: TcxDBDateEdit
              Left = 414
              TabOrder = 17
              ExplicitLeft = 414
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
            inherited grpColaborador: TdxLayoutGroup
              Index = 3
            end
            inherited grpRepresentante: TdxLayoutGroup
              Index = 6
            end
            inherited grpContador: TdxLayoutGroup
              Index = 9
            end
            inherited grpFornecedor: TdxLayoutGroup
              Index = 10
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
              Index = 0
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
            inherited dxLayoutControlGroup6: TdxLayoutAutoCreatedGroup
              Index = 2
              AutoCreated = True
            end
            inherited dxLayoutControlItem30: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem16: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem31: TdxLayoutItem
              Index = 2
            end
            inherited grpTransportadora: TdxLayoutGroup
              Index = 7
            end
            inherited dxLayoutControlItem34: TdxLayoutItem
              Index = 0
            end
            inherited grpVendedor: TdxLayoutGroup
              Index = 8
            end
            inherited dxLayoutControlItem36: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem37: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem33: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem32: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem38: TdxLayoutItem
              Index = 0
            end
            inherited grpCliente: TdxLayoutGroup
              Index = 5
            end
            inherited dxLayoutControlItem42: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem39: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem40: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup10: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem41: TdxLayoutItem
              Index = 0
            end
            inherited grpPessoaFisica: TdxLayoutGroup
              Index = 1
            end
            inherited dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem1: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup4: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem6: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem4: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem22: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem8: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem19: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem21: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem18: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem7: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem9: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem49: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup12: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem55: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem58: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem50: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup25: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem65: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem64: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup14: TdxLayoutAutoCreatedGroup
              Index = 2
              AutoCreated = True
            end
            inherited dxLayoutControlItem59: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem47: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem57: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup15: TdxLayoutAutoCreatedGroup
              Index = 4
              AutoCreated = True
            end
            inherited dxLayoutControlItem60: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem43: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup17: TdxLayoutAutoCreatedGroup
              Index = 3
              AutoCreated = True
            end
            inherited dxLayoutControlItem46: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem54: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem44: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem51: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem61: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem66: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup18: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlGroup27: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem67: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup28: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlGroup26: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem69: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem70: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup30: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem71: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem63: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup31: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem68: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem62: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup5: TdxLayoutGroup
              Index = 4
            end
            inherited dxLayoutControlGroup8: TdxLayoutAutoCreatedGroup
              Index = 0
              AutoCreated = True
            end
            inherited dxLayoutControlItem35: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem29: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlGroup11: TdxLayoutAutoCreatedGroup
              Index = 1
              AutoCreated = True
            end
            inherited dxLayoutControlItem2: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlItem3: TdxLayoutItem
              Index = 1
            end
            inherited dxLayoutControlItem45: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem52: TdxLayoutItem
              Index = 2
            end
            inherited dxLayoutControlItem53: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem56: TdxLayoutItem
              Index = 3
            end
            inherited dxLayoutControlItem48: TdxLayoutItem
              Index = 0
            end
            inherited dxLayoutControlGroup9: TdxLayoutAutoCreatedGroup
              Index = 3
              AutoCreated = True
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
