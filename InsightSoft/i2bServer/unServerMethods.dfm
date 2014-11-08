object ServerMethods: TServerMethods
  OldCreateOrder = False
  Height = 673
  Width = 1169
  object conexao: TFDConnection
    Params.Strings = (
      'Database=i2bdb'
      'User_Name=postgres'
      'Password=defd'
      'Server=127.0.0.1'
      'DriverID=PG')
    LoginPrompt = False
    Left = 176
    Top = 8
  end
  object PgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'C:\Program Files (x86)\PostgreSQL\9.3'
    Left = 232
    Top = 8
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 296
    Top = 8
  end
  object qryAuditoria: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from auditoria limit 0')
    Left = 56
    Top = 88
  end
  object dspAuditoria: TDataSetProvider
    DataSet = qryAuditoria
    Left = 88
    Top = 88
  end
  object qryBanco: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from banco limit 0')
    Left = 56
    Top = 144
  end
  object qryCargo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cargo limit 0')
    Left = 56
    Top = 200
  end
  object qryCBO: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cargo limit 0')
    Left = 56
    Top = 256
  end
  object qryCEP: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from CEP limit 0')
    Left = 56
    Top = 312
  end
  object qryCFOP: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from CFOP limit 0')
    Left = 56
    Top = 368
  end
  object qryCNAE: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from CNAE limit 0')
    Left = 56
    Top = 424
  end
  object qryControle: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from controle limit 0')
    Left = 56
    Top = 480
  end
  object dspBanco: TDataSetProvider
    DataSet = qryBanco
    Left = 88
    Top = 144
  end
  object dspCargo: TDataSetProvider
    DataSet = qryCargo
    Left = 88
    Top = 200
  end
  object dspCBO: TDataSetProvider
    DataSet = qryCBO
    Left = 88
    Top = 256
  end
  object dspCEP: TDataSetProvider
    DataSet = qryCEP
    Left = 88
    Top = 312
  end
  object dspCFOP: TDataSetProvider
    DataSet = qryCFOP
    Left = 88
    Top = 368
  end
  object dspCNAE: TDataSetProvider
    DataSet = qryCNAE
    Left = 88
    Top = 424
  end
  object dspControle: TDataSetProvider
    DataSet = qryControle
    Left = 88
    Top = 480
  end
  object qryCSTCOFINS: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cstcofins limit 0')
    Left = 56
    Top = 536
  end
  object dspCSTCOFINS: TDataSetProvider
    DataSet = qryCSTCOFINS
    Left = 88
    Top = 536
  end
  object qryCSTIPI: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cstipi limit 0')
    Left = 56
    Top = 592
  end
  object dspCSTIPI: TDataSetProvider
    DataSet = qryCSTIPI
    Left = 88
    Top = 592
  end
  object qryCSTPIS: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cstpis limit 0')
    Left = 160
    Top = 88
  end
  object qryDocumento: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from documento limit 0')
    Left = 160
    Top = 144
  end
  object qryECFCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from ecfcabecalho limit 0')
    Left = 160
    Top = 200
  end
  object qryECFItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from ecfitem limit 0')
    Left = 160
    Top = 256
  end
  object qryEmpresa: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from empresa limit 0')
    Left = 160
    Top = 312
  end
  object qryEndereco: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from endereco limit 0')
    Left = 160
    Top = 368
  end
  object qryEntradaCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from entradaCabecalho limit 0')
    Left = 160
    Top = 424
  end
  object qryEntradaDuplicata: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from entradaDuplicata limit 0')
    Left = 160
    Top = 480
  end
  object qryEntradaItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from entradaItem limit 0')
    Left = 160
    Top = 536
  end
  object qryEntradaItemImposto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from entradaItemImposto limit 0')
    Left = 160
    Top = 592
  end
  object dspCSTPIS: TDataSetProvider
    DataSet = qryCSTPIS
    Left = 192
    Top = 88
  end
  object dspDocumento: TDataSetProvider
    DataSet = qryDocumento
    Left = 192
    Top = 144
  end
  object dspECFCabecalho: TDataSetProvider
    DataSet = qryECFCabecalho
    Left = 192
    Top = 200
  end
  object dspECFItem: TDataSetProvider
    DataSet = qryECFItem
    Left = 192
    Top = 256
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 192
    Top = 312
  end
  object dspEndereco: TDataSetProvider
    DataSet = qryEndereco
    Left = 192
    Top = 368
  end
  object dspEntradaCabecalho: TDataSetProvider
    DataSet = qryEntradaCabecalho
    Left = 192
    Top = 424
  end
  object dspEntradaDuplicata: TDataSetProvider
    DataSet = qryEntradaDuplicata
    Left = 192
    Top = 480
  end
  object dspEntradaItem: TDataSetProvider
    DataSet = qryEntradaItem
    Left = 192
    Top = 536
  end
  object dspEntradaItemImposto: TDataSetProvider
    DataSet = qryEntradaItemImposto
    Left = 192
    Top = 592
  end
  object qryEntradaLocalEntregaRetirada: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from entradaLocalEntregaRetirada limit 0')
    Left = 264
    Top = 88
  end
  object qryEntradaTransportadora: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from entradaTransportadora limit 0')
    Left = 264
    Top = 144
  end
  object qryEntradaTransportadoraReboque: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from entradaTransportadoraReboque limit 0')
    Left = 264
    Top = 200
  end
  object qryEstado: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estado limit 0')
    Left = 264
    Top = 256
  end
  object qryEstoqueContagemCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estoqueContagemCabecalho limit 0')
    Left = 264
    Top = 312
  end
  object qryEstoqueCor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estoqueCor limit 0')
    Left = 264
    Top = 368
  end
  object qryEstoqueContagemDetalhe: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estoqueContagemDetalhe limit 0')
    Left = 264
    Top = 424
  end
  object qryEstoqueGrade: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estoqueGrade limit 0')
    Left = 264
    Top = 480
  end
  object qryEstoqueTamanho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estoqueTamanho limit 0')
    Left = 264
    Top = 536
  end
  object qryHistoricoMovimento: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from historicoMovimento limit 0')
    Left = 264
    Top = 592
  end
  object dspEntradaLocalEntregaRetirada: TDataSetProvider
    DataSet = qryEntradaLocalEntregaRetirada
    Left = 296
    Top = 88
  end
  object dspEntradaTransportadora: TDataSetProvider
    DataSet = qryEntradaTransportadora
    Left = 296
    Top = 144
  end
  object dspEntradaTransportadoraReboque: TDataSetProvider
    DataSet = qryEntradaTransportadoraReboque
    Left = 296
    Top = 200
  end
  object dspEstado: TDataSetProvider
    DataSet = qryEstado
    Left = 296
    Top = 256
  end
  object dspEstoqueContagemCabecalho: TDataSetProvider
    DataSet = qryEstoqueContagemCabecalho
    Left = 296
    Top = 312
  end
  object dspEstoqueCor: TDataSetProvider
    DataSet = qryEstoqueCor
    Left = 296
    Top = 368
  end
  object dspEstoqueContagemDetalhe: TDataSetProvider
    DataSet = qryEstoqueContagemDetalhe
    Left = 296
    Top = 424
  end
  object dspEstoqueGrade: TDataSetProvider
    DataSet = qryEstoqueGrade
    Left = 296
    Top = 480
  end
  object dspEstoqueTamanho: TDataSetProvider
    DataSet = qryEstoqueTamanho
    Left = 296
    Top = 536
  end
  object dspHistoricoMovimento: TDataSetProvider
    DataSet = qryHistoricoMovimento
    Left = 296
    Top = 592
  end
  object qryIndicadorEconomico: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from indicadorEconomico limit 0')
    Left = 368
    Top = 88
  end
  object qryIndice: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from indice limit 0')
    Left = 368
    Top = 144
  end
  object qryLicitacao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from licitacao limit 0')
    Left = 368
    Top = 200
  end
  object qryLicitacaoDocumento: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from licitacaoDocumento limit 0')
    Left = 368
    Top = 256
  end
  object qryModelo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from modelo limit 0')
    Left = 368
    Top = 312
  end
  object qryMovimento: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from movimento limit 0')
    Left = 368
    Top = 368
  end
  object qryMovimentoCheque: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from movimentoCheque limit 0')
    Left = 368
    Top = 424
  end
  object qryMunicipio: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from municipio limit 0')
    Left = 368
    Top = 480
  end
  object qryNCM: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from ncm limit 0')
    Left = 368
    Top = 536
  end
  object qryNFeCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeCabecalho limit 0')
    Left = 368
    Top = 592
  end
  object dspIndicadorEconomico: TDataSetProvider
    DataSet = qryIndicadorEconomico
    Left = 400
    Top = 88
  end
  object dspIndice: TDataSetProvider
    DataSet = qryIndice
    Left = 400
    Top = 144
  end
  object dspLicitacao: TDataSetProvider
    DataSet = qryLicitacao
    Left = 400
    Top = 200
  end
  object dspLicitacaoDocumento: TDataSetProvider
    DataSet = qryLicitacaoDocumento
    Left = 400
    Top = 256
  end
  object dspModelo: TDataSetProvider
    DataSet = qryModelo
    Left = 400
    Top = 312
  end
  object dspMovimento: TDataSetProvider
    DataSet = qryMovimento
    Left = 400
    Top = 368
  end
  object dspMovimentoCheque: TDataSetProvider
    DataSet = qryMovimentoCheque
    Left = 400
    Top = 424
  end
  object dspMunicipio: TDataSetProvider
    DataSet = qryMunicipio
    Left = 400
    Top = 480
  end
  object dspNCM: TDataSetProvider
    DataSet = qryNCM
    Left = 400
    Top = 536
  end
  object dspNFeCabecalho: TDataSetProvider
    DataSet = qryNFeCabecalho
    Left = 400
    Top = 592
  end
  object qryNFeCupomFiscalReferenciado: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeCupomFiscalReferenciado limit 0')
    Left = 472
    Top = 88
  end
  object qryNFeDeclaracaoImportacao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeDeclaracaoImportacao limit 0')
    Left = 472
    Top = 144
  end
  object qryNFeDestinatario: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeDestinatario limit 0')
    Left = 472
    Top = 200
  end
  object qryNFeDuplicata: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeDuplicata limit 0')
    Left = 472
    Top = 256
  end
  object qryNFeImportacaoDetalhe: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeImportacaoDetalhe limit 0')
    Left = 472
    Top = 312
  end
  object qryNFeItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeItem limit 0')
    Left = 472
    Top = 368
  end
  object qryNFeItemII: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeItemII limit 0')
    Left = 472
    Top = 424
  end
  object qryNFeItemImposto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeItemImposto limit 0')
    Left = 472
    Top = 480
  end
  object qryNFeLocalEntregaRetirada: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeLocalEntregaRetirada limit 0')
    Left = 472
    Top = 536
  end
  object qryNFeNFReferenciada: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeNFReferenciada limit 0')
    Left = 472
    Top = 592
  end
  object dspNFeCupomFiscalReferenciado: TDataSetProvider
    DataSet = qryNFeCupomFiscalReferenciado
    Left = 504
    Top = 88
  end
  object dspNFeDeclaracaoImportacao: TDataSetProvider
    DataSet = qryNFeDeclaracaoImportacao
    Left = 504
    Top = 144
  end
  object dspNFeDestinatario: TDataSetProvider
    DataSet = qryNFeDestinatario
    Left = 504
    Top = 200
  end
  object dspNFeDuplicata: TDataSetProvider
    DataSet = qryNFeDuplicata
    Left = 504
    Top = 256
  end
  object dspNFeImportacaoDetalhe: TDataSetProvider
    DataSet = qryNFeImportacaoDetalhe
    Left = 504
    Top = 312
  end
  object dspNFeItem: TDataSetProvider
    DataSet = qryNFeItem
    Left = 504
    Top = 368
  end
  object dspNFeItemII: TDataSetProvider
    DataSet = qryNFeItemII
    Left = 504
    Top = 424
  end
  object dspNFeItemImposto: TDataSetProvider
    DataSet = qryNFeItemImposto
    Left = 504
    Top = 480
  end
  object dspNFeLocalEntregaRetirada: TDataSetProvider
    DataSet = qryNFeLocalEntregaRetirada
    Left = 504
    Top = 536
  end
  object dspNFeNFReferenciada: TDataSetProvider
    DataSet = qryNFeNFReferenciada
    Left = 504
    Top = 592
  end
  object qryNFeProdutorRuralReferenciada: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeProdutorRuralReferenciada limit 0')
    Left = 576
    Top = 88
  end
  object qryNFeReferenciada: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeReferenciada limit 0')
    Left = 576
    Top = 144
  end
  object qryNFeTransportadora: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeTransportadora limit 0')
    Left = 576
    Top = 200
  end
  object qryNFeTransportadoraReboque: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeTransportadoraReboque limit 0')
    Left = 576
    Top = 256
  end
  object qryOrcamentoCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from orcamentoCabecalho limit 0')
    Left = 576
    Top = 312
  end
  object qryOrcamentoItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from orcamentoItem limit 0')
    Left = 576
    Top = 368
  end
  object qryPais: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pais limit 0')
    Left = 576
    Top = 424
  end
  object qryPedidoCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pedidoCabecalho limit 0')
    Left = 576
    Top = 480
  end
  object qryPedidoItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pedidoItem limit 0')
    Left = 576
    Top = 536
  end
  object qryPessoa: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoa limit 0')
    Left = 576
    Top = 592
  end
  object dspNFeProdutorRuralReferenciada: TDataSetProvider
    DataSet = qryNFeProdutorRuralReferenciada
    Left = 608
    Top = 88
  end
  object dspNFeReferenciada: TDataSetProvider
    DataSet = qryNFeReferenciada
    Left = 608
    Top = 144
  end
  object dspNFeTransportadora: TDataSetProvider
    DataSet = qryNFeTransportadora
    Left = 608
    Top = 200
  end
  object dspNFeTransportadoraReboque: TDataSetProvider
    DataSet = qryNFeTransportadoraReboque
    Left = 608
    Top = 256
  end
  object dspOrcamentoCabecalho: TDataSetProvider
    DataSet = qryOrcamentoCabecalho
    Left = 608
    Top = 312
  end
  object dspOrcamentoItem: TDataSetProvider
    DataSet = qryOrcamentoItem
    Left = 608
    Top = 368
  end
  object dspPais: TDataSetProvider
    DataSet = qryPais
    Left = 608
    Top = 424
  end
  object dspPedidoCabecalho: TDataSetProvider
    DataSet = qryPedidoCabecalho
    Left = 608
    Top = 480
  end
  object dspPedidoItem: TDataSetProvider
    DataSet = qryPedidoItem
    Left = 608
    Top = 536
  end
  object dspPessoa: TDataSetProvider
    DataSet = qryPessoa
    Left = 608
    Top = 592
  end
  object qryPessoaCliente: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoaCliente limit 0')
    Left = 680
    Top = 88
  end
  object qryPessoaColaborador: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoaColaborador limit 0')
    Left = 680
    Top = 144
  end
  object qryPessoaContador: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from PessoaContador limit 0')
    Left = 680
    Top = 200
  end
  object qryPessoaFornecedor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoaFornecedor limit 0')
    Left = 680
    Top = 256
  end
  object qryPessoaRepresentante: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoaRepresentante limit 0')
    Left = 680
    Top = 312
  end
  object qryPessoaTransportadora: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoaTransportadora limit 0')
    Left = 680
    Top = 368
  end
  object qryPessoaVendedor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoaVendedor limit 0')
    Left = 680
    Top = 424
  end
  object qryPlanoContasFinanceiro: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from planoContasFinanceiro limit 0')
    Left = 680
    Top = 480
  end
  object qryPlanoContasGerencial: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from planoContasGerencial limit 0')
    Left = 680
    Top = 536
  end
  object qryPortador: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from portador limit 0')
    Left = 680
    Top = 592
  end
  object dspPessoaCliente: TDataSetProvider
    DataSet = qryPessoaCliente
    Left = 712
    Top = 88
  end
  object dspPessoaColaborador: TDataSetProvider
    DataSet = qryPessoaColaborador
    Left = 712
    Top = 144
  end
  object dspPessoaContador: TDataSetProvider
    DataSet = qryPessoaContador
    Left = 712
    Top = 200
  end
  object dspPessoaFornecedor: TDataSetProvider
    DataSet = qryPessoaFornecedor
    Left = 712
    Top = 256
  end
  object dspPessoaRepresentante: TDataSetProvider
    DataSet = qryPessoaRepresentante
    Left = 712
    Top = 312
  end
  object dspPessoaTransportadora: TDataSetProvider
    DataSet = qryPessoaTransportadora
    Left = 712
    Top = 368
  end
  object dspPessoaVendedor: TDataSetProvider
    DataSet = qryPessoaVendedor
    Left = 712
    Top = 424
  end
  object dspPlanoContasFinanceiro: TDataSetProvider
    DataSet = qryPlanoContasFinanceiro
    Left = 712
    Top = 480
  end
  object dspPlanoContasGerencial: TDataSetProvider
    DataSet = qryPlanoContasGerencial
    Left = 712
    Top = 536
  end
  object dspPortador: TDataSetProvider
    DataSet = qryPortador
    Left = 712
    Top = 592
  end
  object qryPortadorHistorico: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from portadorHistorico limit 0')
    Left = 784
    Top = 88
  end
  object qryProduto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produto limit 0')
    Left = 784
    Top = 144
  end
  object qryProdutoFornecedor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoFornecedor limit 0')
    Left = 784
    Top = 200
  end
  object qryProdutoGrupo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoGrupo limit 0')
    Left = 784
    Top = 256
  end
  object qryProdutoPromocao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoPromocao limit 0')
    Left = 784
    Top = 312
  end
  object qryProdutoSubGrupo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoSubGrupo limit 0')
    Left = 784
    Top = 368
  end
  object qryProdutoTabelaPreco: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoTabelaPreco limit 0')
    Left = 784
    Top = 424
  end
  object qryProdutoUnidade: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoUnidade limit 0')
    Left = 784
    Top = 480
  end
  object qryProdutoUnidadeConversao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoUnidadeConversao limit 0')
    Left = 784
    Top = 536
  end
  object qryRegraFiscal: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from regraFiscal limit 0')
    Left = 784
    Top = 592
  end
  object dspPortadorHistorico: TDataSetProvider
    DataSet = qryPortadorHistorico
    Left = 816
    Top = 88
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 816
    Top = 144
  end
  object dspProdutoFornecedor: TDataSetProvider
    DataSet = qryProdutoFornecedor
    Left = 816
    Top = 200
  end
  object dspProdutoGrupo: TDataSetProvider
    DataSet = qryProdutoGrupo
    Left = 816
    Top = 256
  end
  object dspProdutoPromocao: TDataSetProvider
    DataSet = qryProdutoPromocao
    Left = 816
    Top = 312
  end
  object dspProdutoSubGrupo: TDataSetProvider
    DataSet = qryProdutoSubGrupo
    Left = 816
    Top = 368
  end
  object dspProdutoTabelaPreco: TDataSetProvider
    DataSet = qryProdutoTabelaPreco
    Left = 816
    Top = 424
  end
  object dspProdutoUnidade: TDataSetProvider
    DataSet = qryProdutoUnidade
    Left = 816
    Top = 480
  end
  object dspProdutoUnidadeConversao: TDataSetProvider
    DataSet = qryProdutoUnidadeConversao
    Left = 816
    Top = 536
  end
  object dspRegraFiscal: TDataSetProvider
    DataSet = qryRegraFiscal
    Left = 816
    Top = 592
  end
  object qryRegraFiscalObservacao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from regraFiscalObservacao limit 0')
    Left = 888
    Top = 88
  end
  object qrySerie: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from serie limit 0')
    Left = 888
    Top = 144
  end
  object qrySetor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from setor limit 0')
    Left = 888
    Top = 200
  end
  object qryTelefone: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from telefone limit 0')
    Left = 888
    Top = 256
  end
  object qryTipoOperacao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from tipoOperacao limit 0')
    Left = 888
    Top = 312
  end
  object qryTipoTelefone: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from tipoTelefone limit 0')
    Left = 888
    Top = 368
  end
  object qryUnidadeNegocio: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from unidadeNegocio limit 0')
    Left = 888
    Top = 424
  end
  object dspRegraFiscalObservacao: TDataSetProvider
    DataSet = qryRegraFiscalObservacao
    Left = 920
    Top = 88
  end
  object dspSerie: TDataSetProvider
    DataSet = qrySerie
    Left = 920
    Top = 144
  end
  object dspSetor: TDataSetProvider
    DataSet = qrySetor
    Left = 920
    Top = 200
  end
  object dspTelefone: TDataSetProvider
    DataSet = qryTelefone
    Left = 920
    Top = 256
  end
  object dspTipoOperacao: TDataSetProvider
    DataSet = qryTipoOperacao
    Left = 920
    Top = 312
  end
  object dspTipoTelefone: TDataSetProvider
    DataSet = qryTipoTelefone
    Left = 920
    Top = 368
  end
  object dspUnidadeNegocio: TDataSetProvider
    DataSet = qryUnidadeNegocio
    Left = 920
    Top = 424
  end
end
