unit unServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider,
  FireDAC.Comp.DataSet;

type
  TServerMethods = class(TDSServerModule)
    conexao: TFDConnection;
    PgDriverLink: TFDPhysPgDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    qryAuditoria: TFDQuery;
    dspAuditoria: TDataSetProvider;
    qryBanco: TFDQuery;
    qryCargo: TFDQuery;
    qryCBO: TFDQuery;
    qryCEP: TFDQuery;
    qryCFOP: TFDQuery;
    qryCNAE: TFDQuery;
    qryControle: TFDQuery;
    dspBanco: TDataSetProvider;
    dspCargo: TDataSetProvider;
    dspCBO: TDataSetProvider;
    dspCEP: TDataSetProvider;
    dspCFOP: TDataSetProvider;
    dspCNAE: TDataSetProvider;
    dspControle: TDataSetProvider;
    qryCSTCOFINS: TFDQuery;
    dspCSTCOFINS: TDataSetProvider;
    qryCSTIPI: TFDQuery;
    dspCSTIPI: TDataSetProvider;
    qryCSTPIS: TFDQuery;
    qryDocumento: TFDQuery;
    qryECFCabecalho: TFDQuery;
    qryECFItem: TFDQuery;
    qryEmpresa: TFDQuery;
    qryEndereco: TFDQuery;
    qryEntradaCabecalho: TFDQuery;
    qryEntradaDuplicata: TFDQuery;
    qryEntradaItem: TFDQuery;
    qryEntradaItemImposto: TFDQuery;
    dspCSTPIS: TDataSetProvider;
    dspDocumento: TDataSetProvider;
    dspECFCabecalho: TDataSetProvider;
    dspECFItem: TDataSetProvider;
    dspEmpresa: TDataSetProvider;
    dspEndereco: TDataSetProvider;
    dspEntradaCabecalho: TDataSetProvider;
    dspEntradaDuplicata: TDataSetProvider;
    dspEntradaItem: TDataSetProvider;
    dspEntradaItemImposto: TDataSetProvider;
    qryEntradaLocalEntregaRetirada: TFDQuery;
    qryEntradaTransportadora: TFDQuery;
    qryEntradaTransportadoraReboque: TFDQuery;
    qryEstado: TFDQuery;
    qryEstoqueContagemCabecalho: TFDQuery;
    qryEstoqueCor: TFDQuery;
    qryEstoqueContagemDetalhe: TFDQuery;
    qryEstoqueGrade: TFDQuery;
    qryEstoqueTamanho: TFDQuery;
    qryHistoricoMovimento: TFDQuery;
    dspEntradaLocalEntregaRetirada: TDataSetProvider;
    dspEntradaTransportadora: TDataSetProvider;
    dspEntradaTransportadoraReboque: TDataSetProvider;
    dspEstado: TDataSetProvider;
    dspEstoqueContagemCabecalho: TDataSetProvider;
    dspEstoqueCor: TDataSetProvider;
    dspEstoqueContagemDetalhe: TDataSetProvider;
    dspEstoqueGrade: TDataSetProvider;
    dspEstoqueTamanho: TDataSetProvider;
    dspHistoricoMovimento: TDataSetProvider;
    qryIndicadorEconomico: TFDQuery;
    qryIndice: TFDQuery;
    qryLicitacao: TFDQuery;
    qryLicitacaoDocumento: TFDQuery;
    qryModelo: TFDQuery;
    qryMovimento: TFDQuery;
    qryMovimentoCheque: TFDQuery;
    qryMunicipio: TFDQuery;
    qryNCM: TFDQuery;
    qryNFeCabecalho: TFDQuery;
    dspIndicadorEconomico: TDataSetProvider;
    dspIndice: TDataSetProvider;
    dspLicitacao: TDataSetProvider;
    dspLicitacaoDocumento: TDataSetProvider;
    dspModelo: TDataSetProvider;
    dspMovimento: TDataSetProvider;
    dspMovimentoCheque: TDataSetProvider;
    dspMunicipio: TDataSetProvider;
    dspNCM: TDataSetProvider;
    dspNFeCabecalho: TDataSetProvider;
    qryNFeCupomFiscalReferenciado: TFDQuery;
    qryNFeDeclaracaoImportacao: TFDQuery;
    qryNFeDestinatario: TFDQuery;
    qryNFeDuplicata: TFDQuery;
    qryNFeImportacaoDetalhe: TFDQuery;
    qryNFeItem: TFDQuery;
    qryNFeItemII: TFDQuery;
    qryNFeItemImposto: TFDQuery;
    qryNFeLocalEntregaRetirada: TFDQuery;
    qryNFeNFReferenciada: TFDQuery;
    dspNFeCupomFiscalReferenciado: TDataSetProvider;
    dspNFeDeclaracaoImportacao: TDataSetProvider;
    dspNFeDestinatario: TDataSetProvider;
    dspNFeDuplicata: TDataSetProvider;
    dspNFeImportacaoDetalhe: TDataSetProvider;
    dspNFeItem: TDataSetProvider;
    dspNFeItemII: TDataSetProvider;
    dspNFeItemImposto: TDataSetProvider;
    dspNFeLocalEntregaRetirada: TDataSetProvider;
    dspNFeNFReferenciada: TDataSetProvider;
    qryNFeProdutorRuralReferenciada: TFDQuery;
    qryNFeReferenciada: TFDQuery;
    qryNFeTransportadora: TFDQuery;
    qryNFeTransportadoraReboque: TFDQuery;
    qryOrcamentoCabecalho: TFDQuery;
    qryOrcamentoItem: TFDQuery;
    qryPais: TFDQuery;
    qryPedidoCabecalho: TFDQuery;
    qryPedidoItem: TFDQuery;
    qryPessoa: TFDQuery;
    dspNFeProdutorRuralReferenciada: TDataSetProvider;
    dspNFeReferenciada: TDataSetProvider;
    dspNFeTransportadora: TDataSetProvider;
    dspNFeTransportadoraReboque: TDataSetProvider;
    dspOrcamentoCabecalho: TDataSetProvider;
    dspOrcamentoItem: TDataSetProvider;
    dspPais: TDataSetProvider;
    dspPedidoCabecalho: TDataSetProvider;
    dspPedidoItem: TDataSetProvider;
    dspPessoa: TDataSetProvider;
    qryPessoaCliente: TFDQuery;
    qryPessoaColaborador: TFDQuery;
    qryPessoaContador: TFDQuery;
    qryPessoaFornecedor: TFDQuery;
    qryPessoaRepresentante: TFDQuery;
    qryPessoaTransportadora: TFDQuery;
    qryPessoaVendedor: TFDQuery;
    qryPlanoContasFinanceiro: TFDQuery;
    qryPlanoContasGerencial: TFDQuery;
    qryPortador: TFDQuery;
    dspPessoaCliente: TDataSetProvider;
    dspPessoaColaborador: TDataSetProvider;
    dspPessoaContador: TDataSetProvider;
    dspPessoaFornecedor: TDataSetProvider;
    dspPessoaRepresentante: TDataSetProvider;
    dspPessoaTransportadora: TDataSetProvider;
    dspPessoaVendedor: TDataSetProvider;
    dspPlanoContasFinanceiro: TDataSetProvider;
    dspPlanoContasGerencial: TDataSetProvider;
    dspPortador: TDataSetProvider;
    qryPortadorHistorico: TFDQuery;
    qryProduto: TFDQuery;
    qryProdutoFornecedor: TFDQuery;
    qryProdutoGrupo: TFDQuery;
    qryProdutoPromocao: TFDQuery;
    qryProdutoSubGrupo: TFDQuery;
    qryProdutoTabelaPreco: TFDQuery;
    qryProdutoUnidade: TFDQuery;
    qryProdutoUnidadeConversao: TFDQuery;
    qryRegraFiscal: TFDQuery;
    dspPortadorHistorico: TDataSetProvider;
    dspProduto: TDataSetProvider;
    dspProdutoFornecedor: TDataSetProvider;
    dspProdutoGrupo: TDataSetProvider;
    dspProdutoPromocao: TDataSetProvider;
    dspProdutoSubGrupo: TDataSetProvider;
    dspProdutoTabelaPreco: TDataSetProvider;
    dspProdutoUnidade: TDataSetProvider;
    dspProdutoUnidadeConversao: TDataSetProvider;
    dspRegraFiscal: TDataSetProvider;
    qryRegraFiscalObservacao: TFDQuery;
    qrySerie: TFDQuery;
    qrySetor: TFDQuery;
    qryTelefone: TFDQuery;
    qryTipoOperacao: TFDQuery;
    qryTipoTelefone: TFDQuery;
    qryUnidadeNegocio: TFDQuery;
    dspRegraFiscalObservacao: TDataSetProvider;
    dspSerie: TDataSetProvider;
    dspSetor: TDataSetProvider;
    dspTelefone: TDataSetProvider;
    dspTipoOperacao: TDataSetProvider;
    dspTipoTelefone: TDataSetProvider;
    dspUnidadeNegocio: TDataSetProvider;
    qrySerieidserie: TIntegerField;
    qrySeriedescricao: TWideStringField;
    qrySerienumeracao: TIntegerField;
    qryBancoidbanco: TWideStringField;
    qryBanconome: TWideStringField;
    qryCFOPidcfop: TIntegerField;
    qryCFOPidtipooperacao: TIntegerField;
    qryCFOPcfop: TIntegerField;
    qryCFOPdescricao: TWideStringField;
    qryCFOPdescricaonf: TWideStringField;
    qryCFOPaplicacao: TWideMemoField;
    qryCFOPtipooperacaodescricao: TWideStringField;
    qryControleidcontrole: TIntegerField;
    qryControlesequencia: TSmallintField;
    qryControledescricao: TWideStringField;
    qryCSTCOFINSidcstcofins: TIntegerField;
    qryCSTCOFINSdescricao: TWideStringField;
    qryCSTCOFINSobservacao: TWideMemoField;
    qryCSTIPIidcstipi: TIntegerField;
    qryCSTIPIdescricao: TWideStringField;
    qryCSTIPIobservacao: TWideMemoField;
    qryCSTPISidcstpis: TIntegerField;
    qryCSTPISdescricao: TWideStringField;
    qryDocumentoiddocumento: TIntegerField;
    qryDocumentocaminho: TWideMemoField;
    qryDocumentoarquivo: TWideMemoField;
    qryECFItemidecfitem: TIntegerField;
    qryECFItemidproduto: TIntegerField;
    qryECFItemidecfcabecalho: TIntegerField;
    qryECFItemgtin: TWideStringField;
    qryECFItemserieecf: TWideStringField;
    qryECFItemquantidade: TFloatField;
    qryECFItemvalorunitario: TFloatField;
    qryECFItemvalortotal: TFloatField;
    qryECFItemtotalitem: TFloatField;
    qryECFItembaseicms: TFloatField;
    qryECFItemtaxaicms: TFloatField;
    qryECFItemvaloricms: TFloatField;
    qryECFItemtaxadesconto: TFloatField;
    qryECFItemvalordesconto: TFloatField;
    qryECFItemtaxaissqn: TFloatField;
    qryECFItemvalorissqn: TFloatField;
    qryECFItemtaxapis: TFloatField;
    qryECFItemvalorpis: TFloatField;
    qryECFItemtaxacofins: TFloatField;
    qryECFItemvalorcofiins: TFloatField;
    qryECFItemtaxaacrescimo: TFloatField;
    qryECFItemvaloracrescimo: TFloatField;
    qryECFItemtotalizadorparcial: TFloatField;
    qryECFItemcst: TSmallintField;
    qryECFItemcancelado: TBooleanField;
    qryECFItemmovimentaestoque: TBooleanField;
    qryECFItemecficmsst: TWideStringField;
    qryECFItemprodutodescricao: TWideMemoField;
    qryEmpresaidempresa: TIntegerField;
    qryEmpresarazaosocial: TWideStringField;
    qryEmpresanomefantasia: TWideStringField;
    qryEmpresahomepage: TWideStringField;
    qryEmpresaimagemlogotipo: TWideMemoField;
    qryEmpresatiporegime: TWideStringField;
    qryEnderecoidendereco: TIntegerField;
    qryEnderecoidpessoa: TIntegerField;
    qryEnderecoidecfcabecalho: TIntegerField;
    qryEnderecoidentradalocalentregaretirada: TIntegerField;
    qryEnderecoidentradatransportadora: TIntegerField;
    qryEnderecoidunidadedenegocio: TIntegerField;
    qryEnderecoidestado: TWideStringField;
    qryEnderecoidcep: TWideStringField;
    qryEnderecoidmunicipio: TIntegerField;
    qryEnderecologradouro: TWideStringField;
    qryEndereconumero: TWideStringField;
    qryEnderecocomplemento: TWideStringField;
    qryEnderecobairro: TWideStringField;
    qryEnderecoprincipal: TWideStringField;
    qryEnderecoentrega: TWideStringField;
    qryEnderecocobranca: TWideStringField;
    qryEnderecocorrespondencia: TWideStringField;
    qryEntradaDuplicataidentradaduplicata: TIntegerField;
    qryEntradaDuplicataidentradacabecalho: TIntegerField;
    qryEntradaDuplicatanumero: TWideStringField;
    qryEntradaDuplicatavalor: TFloatField;
    qryEntradaDuplicatadatavencimento: TDateField;
    qryEntradaItemidentradaitem: TIntegerField;
    qryEntradaItemidentradacabecalho: TIntegerField;
    qryEntradaItemidproduto: TIntegerField;
    qryEntradaItemnumeroitem: TIntegerField;
    qryEntradaItemcodigoproduto: TWideStringField;
    qryEntradaItemgtin: TWideStringField;
    qryEntradaItemdescricaoproduto: TWideStringField;
    qryEntradaItemncm: TIntegerField;
    qryEntradaItemextipi: TIntegerField;
    qryEntradaItemcfop: TIntegerField;
    qryEntradaItemunidadecomercial: TWideStringField;
    qryEntradaItemquantidadecomercial: TFloatField;
    qryEntradaItemvaloriunitariocomercial: TFloatField;
    qryEntradaItemvalorbrutoproduto: TFloatField;
    qryEntradaItemunidadetributavel: TWideStringField;
    qryEntradaItemquantidadetributavel: TFloatField;
    qryEntradaItemvalorunitariotributavel: TFloatField;
    qryEntradaItemvalorfrete: TFloatField;
    qryEntradaItemvalorseguro: TFloatField;
    qryEntradaItemvalordesconto: TFloatField;
    qryEntradaItemvaloroutrasdespesas: TFloatField;
    qryEntradaItementratotal: TBooleanField;
    qryEntradaItemvalorsubtotal: TFloatField;
    qryEntradaItemvalortotal: TFloatField;
    qryEntradaItemnumeropedido: TFloatField;
    qryEntradaItemitempedido: TFloatField;
    qryEntradaIteminformacoesadicionais: TWideMemoField;
    qryEntradaItemprodutodescricao: TWideMemoField;
    qryEntradaItemImpostoidentradaitemimposto: TIntegerField;
    qryEntradaItemImpostoidentradaitem: TIntegerField;
    qryEntradaItemImpostoorigemmercadoria: TSmallintField;
    qryEntradaItemImpostoicmscst: TSmallintField;
    qryEntradaItemImpostocsosn: TSmallintField;
    qryEntradaItemImpostoicmsmodalidadebc: TSmallintField;
    qryEntradaItemImpostoicmsreducaobc: TFloatField;
    qryEntradaItemImpostoicmsbasecalculo: TFloatField;
    qryEntradaItemImpostoicmsaliquota: TFloatField;
    qryEntradaItemImpostoicmsvalor: TFloatField;
    qryEntradaItemImpostoicmsmotivodesoneracao: TWideStringField;
    qryEntradaItemImpostoicmsmodalidadebcst: TSmallintField;
    qryEntradaItemImpostoicmsmvast: TFloatField;
    qryEntradaItemImpostoicmsreducaobcst: TFloatField;
    qryEntradaItemImpostoicmsvalorbcst: TFloatField;
    qryEntradaItemImpostoicmsaliquotast: TFloatField;
    qryEntradaItemImpostoicmsvalorst: TFloatField;
    qryEntradaItemImpostoicmsvalorbcstretido: TFloatField;
    qryEntradaItemImpostoicmsvalorstretido: TFloatField;
    qryEntradaItemImpostoicmsvalorbcstdestino: TFloatField;
    qryEntradaItemImpostoicmsvalorstdestino: TFloatField;
    qryEntradaItemImpostoicmsaliquotacreditosn: TFloatField;
    qryEntradaItemImpostoicmsvalorcreditosn: TFloatField;
    qryEntradaItemImpostoprecentualbcoperacaopropria: TFloatField;
    qryEntradaItemImpostoufst: TWideStringField;
    qryEntradaItemImpostoipienquadramento: TWideStringField;
    qryEntradaItemImpostoipicnpjprodutor: TWideStringField;
    qryEntradaItemImpostoipicst: TSmallintField;
    qryEntradaItemImpostoipivalorbc: TFloatField;
    qryEntradaItemImpostoipialiquota: TFloatField;
    qryEntradaItemImpostoipiquantidadeunidadetributavel: TFloatField;
    qryEntradaItemImpostoipivalorunidadetributavel: TFloatField;
    qryEntradaItemImpostoipivalor: TFloatField;
    qryEntradaItemImpostocofinscst: TSmallintField;
    qryEntradaItemImpostocofinsquantidadevendida: TFloatField;
    qryEntradaItemImpostocofinsbc: TFloatField;
    qryEntradaItemImpostocofinsaliquotapercentual: TFloatField;
    qryEntradaItemImpostocofinsaliquotavalor: TFloatField;
    qryEntradaItemImpostocofinsvalor: TFloatField;
    qryEntradaItemImpostopiscst: TSmallintField;
    qryEntradaItemImpostopisquantidadevalor: TFloatField;
    qryEntradaItemImpostopisbc: TFloatField;
    qryEntradaItemImpostopisaliquotapercentual: TFloatField;
    qryEntradaItemImpostopisaliquotavalor: TFloatField;
    qryEntradaItemImpostopisvalor: TFloatField;
    qryEntradaItemImpostoissbc: TFloatField;
    qryEntradaItemImpostoissaliquota: TFloatField;
    qryEntradaItemImpostoissvalor: TFloatField;
    qryEntradaItemImpostoissmunicipio: TIntegerField;
    qryEntradaItemImpostoissitemlistaservico: TIntegerField;
    qryEntradaItemImpostoisstributacao: TSmallintField;
    qryEntradaLocalEntregaRetiradaidentradalocalentregaretirada: TIntegerField;
    qryEntradaLocalEntregaRetiradaidentradacabecalho: TIntegerField;
    qryEntradaLocalEntregaRetiradacpf_cnpj: TWideStringField;
    qryEntradaLocalEntregaRetiradalogradouro: TWideStringField;
    qryEntradaLocalEntregaRetiradanumero: TWideStringField;
    qryEntradaLocalEntregaRetiradacomplemento: TWideStringField;
    qryEntradaLocalEntregaRetiradabairro: TWideStringField;
    qryEntradaLocalEntregaRetiradatipo: TWideStringField;
    qryEstoqueContagemCabecalhoidestoquecontagemcabecalho: TIntegerField;
    qryEstoqueContagemCabecalhoidempresa: TIntegerField;
    qryEstoqueContagemCabecalhodatacontagem: TDateField;
    qryEstoqueContagemCabecalhoestoqueatualizado: TWideStringField;
    qryEstoqueContagemCabecalhonomefantasia: TWideStringField;
    qryEstoqueCoridestoquecor: TIntegerField;
    qryEstoqueCorcodigo: TWideStringField;
    qryEstoqueCornome: TWideStringField;
    qryEstoqueGradeidestoquegrade: TIntegerField;
    qryEstoqueGradeidproduto: TIntegerField;
    qryEstoqueGradeidestoquecor: TIntegerField;
    qryEstoqueGradeidestoquetamanho: TIntegerField;
    qryEstoqueGradecodigo: TWideStringField;
    qryEstoqueGradequantidade: TFloatField;
    qryEstoqueGradeprodutonome: TWideStringField;
    qryEstoqueGradecornome: TWideStringField;
    qryEstoqueGradetamanhonome: TWideStringField;
    qryEstoqueTamanhoidestoquetamanho: TIntegerField;
    qryEstoqueTamanhocodigo: TWideStringField;
    qryEstoqueTamanhonome: TWideStringField;
    qryHistoricoMovimentoidhistoricomovimento: TIntegerField;
    qryHistoricoMovimentodescricao: TWideStringField;
    qryHistoricoMovimentotipo: TWideStringField;
    qryHistoricoMovimentocontaliquidacao: TIntegerField;
    qryHistoricoMovimentoativo: TBooleanField;
    qryCBOidcbo: TIntegerField;
    qryCBOcodigo2002: TWideStringField;
    qryCBOcodigo1994: TWideStringField;
    qryCBOnome: TWideStringField;
    qryCBOobservacao: TWideMemoField;
    qryCargoidcargo: TIntegerField;
    qryCargoidcbo: TIntegerField;
    qryCargonome: TWideStringField;
    qryCargodescricao: TWideMemoField;
    qryCargosalario: TFloatField;
    qryCargocbonome: TWideStringField;
    qryAuditoriaidauditoria: TIntegerField;
    qryAuditoriadataregistro: TDateField;
    qryAuditoriahoraregistro: TTimeField;
    qryAuditoriaacao: TWideStringField;
    qryAuditoriadescricao: TWideMemoField;
    qryAuditoriaidunidadenegocio: TIntegerField;
    qryAuditorianomefantasia: TWideStringField;
    qryCEPidcep: TWideStringField;
    qryCEPidmunicipio: TIntegerField;
    qryCEPlogradouro: TWideStringField;
    qryCEPcomplemento: TWideStringField;
    qryCEPbairro: TWideStringField;
    qryCEPmunicipionome: TWideStringField;
    qryCNAEidcnae: TIntegerField;
    qryCNAEcodigo: TIntegerField;
    qryCNAEdenominacao: TWideMemoField;
    qryECFCabecalhoidecfcabecalho: TIntegerField;
    qryECFCabecalhoidpessoa: TIntegerField;
    qryECFCabecalhonomecaixa: TWideStringField;
    qryECFCabecalhoserieecf: TWideStringField;
    qryECFCabecalhodatavenda: TDateField;
    qryECFCabecalhohoravenda: TTimeField;
    qryECFCabecalhovalorvenda: TFloatField;
    qryECFCabecalhotaxadesconto: TFloatField;
    qryECFCabecalhovalordesconto: TIntegerField;
    qryECFCabecalhotaxaacrescimo: TFloatField;
    qryECFCabecalhovaloracrescimo: TFloatField;
    qryECFCabecalhovalorfinal: TFloatField;
    qryECFCabecalhovalorrecebido: TFloatField;
    qryECFCabecalhotroco: TFloatField;
    qryECFCabecalhovalorcancelado: TFloatField;
    qryECFCabecalhototalprodutos: TFloatField;
    qryECFCabecalhototaldocumento: TFloatField;
    qryECFCabecalhobaseicms: TFloatField;
    qryECFCabecalhovaloricms: TFloatField;
    qryECFCabecalhoicmsoutras: TFloatField;
    qryECFCabecalhoissqn: TFloatField;
    qryECFCabecalhopis: TFloatField;
    qryECFCabecalhocofins: TFloatField;
    qryECFCabecalhoacrescimoitens: TFloatField;
    qryECFCabecalhodescontoitens: TFloatField;
    qryECFCabecalhostatusvenda: TWideStringField;
    qryECFCabecalhonomecliente: TWideStringField;
    qryECFCabecalhocpfcnpjcliente: TWideStringField;
    qryECFCabecalhocupomcancelado: TBooleanField;
    qryECFCabecalhoidunidadenegocio: TIntegerField;
    qryECFCabecalhonomefantasia: TWideStringField;
    qryECFCabecalhopessoanome: TWideStringField;
    qryEntradaCabecalhoidentradacabecalho: TIntegerField;
    qryEntradaCabecalhoserie: TWideStringField;
    qryEntradaCabecalhomodelo: TWideStringField;
    qryEntradaCabecalhoufemitente: TWideStringField;
    qryEntradaCabecalhocodigonumerico: TWideStringField;
    qryEntradaCabecalhonaturezaoperacao: TIntegerField;
    qryEntradaCabecalhoindicadorformapagamento: TBooleanField;
    qryEntradaCabecalhonumero: TWideStringField;
    qryEntradaCabecalhodatahoraemisao: TSQLTimeStampField;
    qryEntradaCabecalhodatahorasaida: TSQLTimeStampField;
    qryEntradaCabecalhotipooperacao: TBooleanField;
    qryEntradaCabecalhoformatoimpressaodanfe: TWideStringField;
    qryEntradaCabecalhotipoemissao: TWideStringField;
    qryEntradaCabecalhochaveacesso: TWideStringField;
    qryEntradaCabecalhodigitochaveacesso: TWideStringField;
    qryEntradaCabecalhoambiente: TBooleanField;
    qryEntradaCabecalhofinalidadeemissao: TWideStringField;
    qryEntradaCabecalhoprocessoemissao: TWideStringField;
    qryEntradaCabecalhoversaoprocessoemissao: TWideStringField;
    qryEntradaCabecalhodataentradacontingencia: TSQLTimeStampField;
    qryEntradaCabecalhojustificativacontigencia: TWideStringField;
    qryEntradaCabecalhobasecalculoicms: TFloatField;
    qryEntradaCabecalhovaloricms: TFloatField;
    qryEntradaCabecalhobasecalculoicmsst: TFloatField;
    qryEntradaCabecalhovaloricmsst: TFloatField;
    qryEntradaCabecalhovalortotalprodutos: TFloatField;
    qryEntradaCabecalhovalorfrete: TFloatField;
    qryEntradaCabecalhovalorseguro: TFloatField;
    qryEntradaCabecalhovalordesconto: TFloatField;
    qryEntradaCabecalhovaloripi: TFloatField;
    qryEntradaCabecalhovalorpis: TFloatField;
    qryEntradaCabecalhovalorcofins: TFloatField;
    qryEntradaCabecalhovalordespesasacessorias: TFloatField;
    qryEntradaCabecalhovalortotal: TFloatField;
    qryEntradaCabecalhovalorservicos: TFloatField;
    qryEntradaCabecalhobasecalculoissqn: TFloatField;
    qryEntradaCabecalhovalorissqn: TFloatField;
    qryEntradaCabecalhovalorpisissqn: TFloatField;
    qryEntradaCabecalhovalorcofinsissqn: TFloatField;
    qryEntradaCabecalhovalorretidopis: TFloatField;
    qryEntradaCabecalhovalorretidocofins: TFloatField;
    qryEntradaCabecalhobasecalculoirrf: TFloatField;
    qryEntradaCabecalhovalorretidoirrf: TFloatField;
    qryEntradaCabecalhobasecalculoprevidencia: TFloatField;
    qryEntradaCabecalhovalorretidoprevidencia: TFloatField;
    qryEntradaCabecalhoinformacoesadicionaisfisco: TWideMemoField;
    qryEntradaCabecalhoinformacoesaddcontribuinte: TWideMemoField;
    qryEntradaCabecalhofaturanumero: TWideStringField;
    qryEntradaCabecalhofaturavalororiginal: TFloatField;
    qryEntradaCabecalhofaturavalordesconto: TFloatField;
    qryEntradaCabecalhofaturavalorliquido: TFloatField;
    qryEntradaCabecalhoidpessoa: TIntegerField;
    qryEntradaCabecalhoidunidadenegocio: TIntegerField;
    qryEntradaCabecalhonomefantasia: TWideStringField;
    qryEntradaCabecalhopessoanome: TWideStringField;
    qryEntradaTransportadoraidentradatransportadora: TIntegerField;
    qryEntradaTransportadoraidentradacabecalho: TIntegerField;
    qryEntradaTransportadoraidcfop: TIntegerField;
    qryEntradaTransportadoramodalidade: TSmallintField;
    qryEntradaTransportadoracpf_cnpj: TWideStringField;
    qryEntradaTransportadoranome: TWideStringField;
    qryEntradaTransportadorainscricaoestadual: TWideStringField;
    qryEntradaTransportadoraendereco: TWideStringField;
    qryEntradaTransportadoravalorservico: TFloatField;
    qryEntradaTransportadoravalorbcretencaoicms: TFloatField;
    qryEntradaTransportadoraaliquotaretencaoicms: TFloatField;
    qryEntradaTransportadoravaloricmsretido: TFloatField;
    qryEntradaTransportadoravolumequantidade: TSmallintField;
    qryEntradaTransportadoravolumeespecie: TWideStringField;
    qryEntradaTransportadoravolumemarca: TWideStringField;
    qryEntradaTransportadoravolumenumeracao: TWideStringField;
    qryEntradaTransportadoravolumepesoliquido: TFloatField;
    qryEntradaTransportadoravolumepesobruto: TFloatField;
    qryEntradaTransportadoraidpessoa: TIntegerField;
    qryEntradaTransportadorapessoanome: TWideStringField;
    qryEntradaTransportadoraReboqueidentradatransportadorareboque: TIntegerField;
    qryEntradaTransportadoraReboqueidentradacabecalho: TIntegerField;
    qryEntradaTransportadoraReboqueidestado: TWideStringField;
    qryEntradaTransportadoraReboqueplaca: TWideStringField;
    qryEntradaTransportadoraReboquerntc: TWideStringField;
    qryEstadoidestado: TWideStringField;
    qryEstadocodigoibge: TIntegerField;
    qryEstadonome: TWideStringField;
    qryEstadoidpais: TIntegerField;
    qryEstadopaisnome: TWideStringField;
    qryEstoqueContagemDetalheidestoquecotagemdetalhe: TIntegerField;
    qryEstoqueContagemDetalheidestoquecontagemcabecalho: TIntegerField;
    qryEstoqueContagemDetalheidproduto: TIntegerField;
    qryEstoqueContagemDetalhequantidadecontada: TFloatField;
    qryEstoqueContagemDetalhequantidadesistema: TFloatField;
    qryEstoqueContagemDetalhedivergencia: TFloatField;
    qryEstoqueContagemDetalheprodutonome: TWideStringField;
    qryIndicadorEconomicoidindicadoreconomico: TIntegerField;
    qryIndicadorEconomicodescricao: TWideStringField;
    qryIndicadorEconomicoativo: TBooleanField;
    qryIndiceidindice: TIntegerField;
    qryIndiceidindicadoreconomico: TIntegerField;
    qryIndicedataatualizacao: TDateField;
    qryIndicevalor: TFloatField;
    qryIndiceindicadordescricao: TWideStringField;
    qryLicitacaoidlicitacao: TIntegerField;
    qryLicitacaoidpessoa: TIntegerField;
    qryLicitacaodataabertura: TDateField;
    qryLicitacaodatafechamento: TDateField;
    qryLicitacaoobjeto: TWideMemoField;
    qryLicitacaoobservacao: TWideMemoField;
    qryLicitacaoidunidadenegocio: TIntegerField;
    qryLicitacaopessoanome: TWideStringField;
    qryLicitacaonomefantasia: TWideStringField;
    qryLicitacaoDocumentoidlicitacaodocumento: TIntegerField;
    qryLicitacaoDocumentoiddocumento: TIntegerField;
    qryLicitacaoDocumentoidlicitacao: TIntegerField;
    qryModeloidmodelo: TWideStringField;
    qryModelodescricao: TWideStringField;
    qryMovimentoidmovimento: TIntegerField;
    qryMovimentoidnfeduplicata: TIntegerField;
    qryMovimentoidplanocontasfinanceiro: TIntegerField;
    qryMovimentoidplanocontasgerencial: TIntegerField;
    qryMovimentoidhistoricomovimento: TIntegerField;
    qryMovimentoidportador: TIntegerField;
    qryMovimentoidpessoa: TIntegerField;
    qryMovimentodataregistro: TDateField;
    qryMovimentodatavencimento: TDateField;
    qryMovimentodataliquidacao: TDateField;
    qryMovimentoorigem: TWideStringField;
    qryMovimentonf: TIntegerField;
    qryMovimentofatura: TWideStringField;
    qryMovimentocontrapartida: TIntegerField;
    qryMovimentosituacao: TWideStringField;
    qryMovimentojurovalor: TFloatField;
    qryMovimentomultavalor: TFloatField;
    qryMovimentovalor: TFloatField;
    qryMovimentovalorsaldo: TFloatField;
    qryMovimentoidunidadenegocio: TIntegerField;
    qryMovimentoplanofinanceirodescricao: TWideStringField;
    qryMovimentoplanogerencialdescricao: TWideStringField;
    qryMovimentoportadordescricao: TWideStringField;
    qryMovimentonomefantasia: TWideStringField;
    qryMovimentopessoanome: TWideStringField;
    qryMovimentoChequeidmovimentocheque: TIntegerField;
    qryMovimentoChequeidbanco: TWideStringField;
    qryMovimentoChequeidmovimento: TIntegerField;
    qryMovimentoChequeagencia: TSmallintField;
    qryMovimentoChequeagenciadigito: TWideStringField;
    qryMovimentoChequeconta: TSmallintField;
    qryMovimentoChequecontadigito: TWideStringField;
    qryMovimentoChequenumero: TWideStringField;
    qryMovimentoChequebanconome: TWideStringField;
    qryMunicipioidmunicipio: TIntegerField;
    qryMunicipionome: TWideStringField;
    qryMunicipioidestado: TWideStringField;
    qryNCMidncm: TIntegerField;
    qryNCMdescricao: TWideStringField;
    qryNFeCabecalhoidnfecabecalho: TIntegerField;
    qryNFeCabecalhoidserie: TIntegerField;
    qryNFeCabecalhoidmodelo: TWideStringField;
    qryNFeCabecalhoufemitente: TWideStringField;
    qryNFeCabecalhocodigonumerico: TWideStringField;
    qryNFeCabecalhonaturezaoperacao: TIntegerField;
    qryNFeCabecalhoindicadorformapagamento: TBooleanField;
    qryNFeCabecalhonumero: TWideStringField;
    qryNFeCabecalhodatahoraemisao: TSQLTimeStampField;
    qryNFeCabecalhodatahorasaida: TSQLTimeStampField;
    qryNFeCabecalhotipooperacao: TBooleanField;
    qryNFeCabecalhoformatoimpressaodanfe: TWideStringField;
    qryNFeCabecalhotipoemissao: TWideStringField;
    qryNFeCabecalhochaveacesso: TWideStringField;
    qryNFeCabecalhodigitochaveacesso: TWideStringField;
    qryNFeCabecalhoambiente: TBooleanField;
    qryNFeCabecalhofinalidadeemissao: TWideStringField;
    qryNFeCabecalhoprocessoemissao: TWideStringField;
    qryNFeCabecalhoversaoprocessoemissao: TWideStringField;
    qryNFeCabecalhodataentradacontingencia: TSQLTimeStampField;
    qryNFeCabecalhojustificativacontigencia: TWideStringField;
    qryNFeCabecalhobasecalculoicms: TFloatField;
    qryNFeCabecalhovaloricms: TFloatField;
    qryNFeCabecalhobasecalculoicmsst: TFloatField;
    qryNFeCabecalhovaloricmsst: TFloatField;
    qryNFeCabecalhovalortotalprodutos: TFloatField;
    qryNFeCabecalhovalorfrete: TFloatField;
    qryNFeCabecalhovalorseguro: TFloatField;
    qryNFeCabecalhovalordesconto: TFloatField;
    qryNFeCabecalhovalorimpostoimportacao: TFloatField;
    qryNFeCabecalhovaloripi: TFloatField;
    qryNFeCabecalhovalorpis: TFloatField;
    qryNFeCabecalhovalorcofins: TFloatField;
    qryNFeCabecalhovalordespesasacessorias: TFloatField;
    qryNFeCabecalhovalortotal: TFloatField;
    qryNFeCabecalhovalorservicos: TFloatField;
    qryNFeCabecalhobasecalculoissqn: TFloatField;
    qryNFeCabecalhovalorissqn: TFloatField;
    qryNFeCabecalhovalorpisissqn: TFloatField;
    qryNFeCabecalhovalorcofinsissqn: TFloatField;
    qryNFeCabecalhovalorretidopis: TFloatField;
    qryNFeCabecalhovalorretidocofins: TFloatField;
    qryNFeCabecalhobasecalculoirrf: TFloatField;
    qryNFeCabecalhovalorretidoirrf: TFloatField;
    qryNFeCabecalhobasecalculoprevidencia: TFloatField;
    qryNFeCabecalhovalorretidoprevidencia: TFloatField;
    qryNFeCabecalhocomexufembarque: TWideStringField;
    qryNFeCabecalhocomexlocalembarque: TWideStringField;
    qryNFeCabecalhoinformacoesadicionaisfisco: TWideMemoField;
    qryNFeCabecalhoinformacoesaddcontribuinte: TWideMemoField;
    qryNFeCabecalhostatusnota: TWideStringField;
    qryNFeCabecalhofaturanumero: TWideStringField;
    qryNFeCabecalhofaturavalororiginal: TFloatField;
    qryNFeCabecalhofaturavalordesconto: TFloatField;
    qryNFeCabecalhofaturavalorliquido: TFloatField;
    qryNFeCabecalhoidunidadenegocio: TIntegerField;
    qryNFeCabecalhonomefantasia: TWideStringField;
    qryNFeCupomFiscalReferenciadoidnfecupomfiscalreferenciado: TIntegerField;
    qryNFeCupomFiscalReferenciadoidnfecabecalho: TIntegerField;
    qryNFeCupomFiscalReferenciadomodelodocumentofiscal: TWideStringField;
    qryNFeCupomFiscalReferenciadonumeroordemecf: TIntegerField;
    qryNFeCupomFiscalReferenciadocoo: TIntegerField;
    qryNFeCupomFiscalReferenciadodataemissaocupom: TDateField;
    qryNFeCupomFiscalReferenciadonumerocaixa: TIntegerField;
    qryNFeCupomFiscalReferenciadonumeroserieecf: TWideStringField;
    qryNFeDeclaracaoImportacaoidnfedeclaracaoimportacao: TIntegerField;
    qryNFeDeclaracaoImportacaoidnfeitem: TIntegerField;
    qryNFeDeclaracaoImportacaonumerdocumento: TWideStringField;
    qryNFeDeclaracaoImportacaodataregistro: TDateField;
    qryNFeDeclaracaoImportacaolocaldesembaraco: TWideStringField;
    qryNFeDeclaracaoImportacaouf: TWideStringField;
    qryNFeDeclaracaoImportacaodatadesembaraco: TDateField;
    qryNFeDeclaracaoImportacaocodigoexportador: TWideStringField;
    qryNFeDestinatarioidnfedestinatario: TIntegerField;
    qryNFeDestinatarioidnfecabecalho: TIntegerField;
    qryNFeDestinatarioidcep: TWideStringField;
    qryNFeDestinatarioidpais: TIntegerField;
    qryNFeDestinatarioidmunicipio: TIntegerField;
    qryNFeDestinatarioidestado: TWideStringField;
    qryNFeDestinatariocpf_cnpj: TWideStringField;
    qryNFeDestinatariorazaosocial: TWideStringField;
    qryNFeDestinatariologradouro: TWideStringField;
    qryNFeDestinatarionumero: TWideStringField;
    qryNFeDestinatariocomplemento: TWideStringField;
    qryNFeDestinatariobairro: TWideStringField;
    qryNFeDestinatariotelefone: TWideStringField;
    qryNFeDestinatarioinscricaoestadual: TWideStringField;
    qryNFeDestinatariosuframa: TWideStringField;
    qryNFeDestinatarioemail: TWideStringField;
    qryNFeDestinatariopaisnome: TWideStringField;
    qryNFeDestinatariomunicipionome: TWideStringField;
    qryNFeDuplicataidnfeduplicata: TIntegerField;
    qryNFeDuplicataidnfecabecalho: TIntegerField;
    qryNFeDuplicatanumero: TWideStringField;
    qryNFeDuplicatavalor: TFloatField;
    qryNFeDuplicatadatavencimento: TDateField;
    qryNFeImportacaoDetalheidnfeimportacaodetalhe: TIntegerField;
    qryNFeImportacaoDetalheidnfedeclaracaoimportacao: TIntegerField;
    qryNFeImportacaoDetalhenumeroadicao: TIntegerField;
    qryNFeImportacaoDetalhenumerosequencial: TIntegerField;
    qryNFeImportacaoDetalhecodigofabricanteestrangeiro: TWideStringField;
    qryNFeImportacaoDetalhevalordesconto: TFloatField;
    qryNFeItemidnfeitem: TIntegerField;
    qryNFeItemidnfecabecalho: TIntegerField;
    qryNFeItemidproduto: TIntegerField;
    qryNFeItemnumeroitem: TIntegerField;
    qryNFeItemcodigoproduto: TWideStringField;
    qryNFeItemgtin: TWideStringField;
    qryNFeItemdescricaoproduto: TWideStringField;
    qryNFeItemncm: TIntegerField;
    qryNFeItemextipi: TIntegerField;
    qryNFeItemcfop: TIntegerField;
    qryNFeItemunidadecomercial: TWideStringField;
    qryNFeItemquantidadecomercial: TFloatField;
    qryNFeItemvaloriunitariocomercial: TFloatField;
    qryNFeItemvalorbrutoproduto: TFloatField;
    qryNFeItemunidadetributavel: TWideStringField;
    qryNFeItemquantidadetributavel: TFloatField;
    qryNFeItemvalorunitariotributavel: TFloatField;
    qryNFeItemvalorfrete: TFloatField;
    qryNFeItemvalorseguro: TFloatField;
    qryNFeItemvalordesconto: TFloatField;
    qryNFeItemvaloroutrasdespesas: TFloatField;
    qryNFeItementratotal: TBooleanField;
    qryNFeItemvalorsubtotal: TFloatField;
    qryNFeItemvalortotal: TFloatField;
    qryNFeItemnumeropedido: TIntegerField;
    qryNFeItemitempedido: TIntegerField;
    qryNFeIteminformacoesadicionais: TWideMemoField;
    qryNFeItemprodutonome: TWideStringField;
    qryNFeItemIIidnfeitemii: TIntegerField;
    qryNFeItemIIidnfeitem: TIntegerField;
    qryNFeItemIIbcvalor: TFloatField;
    qryNFeItemIIvalordespesasaduaneiras: TFloatField;
    qryNFeItemIIvalorimposto: TFloatField;
    qryNFeItemIIvaloriof: TFloatField;
    qryNFeItemImpostoidnfeitemimposto: TIntegerField;
    qryNFeItemImpostoidnfeitem: TIntegerField;
    qryNFeItemImpostoorigemmercadoria: TSmallintField;
    qryNFeItemImpostoicmscst: TSmallintField;
    qryNFeItemImpostocsosn: TSmallintField;
    qryNFeItemImpostoicmsmodalidadebc: TSmallintField;
    qryNFeItemImpostoicmsreducaobc: TFloatField;
    qryNFeItemImpostoicmsbasecalculo: TFloatField;
    qryNFeItemImpostoicmsaliquota: TFloatField;
    qryNFeItemImpostoicmsvalor: TFloatField;
    qryNFeItemImpostoicmsmotivodesoneracao: TWideStringField;
    qryNFeItemImpostoicmsmodalidadebcst: TSmallintField;
    qryNFeItemImpostoicmsmvast: TFloatField;
    qryNFeItemImpostoicmsreducaobcst: TFloatField;
    qryNFeItemImpostoicmsvalorbcst: TFloatField;
    qryNFeItemImpostoicmsaliquotast: TFloatField;
    qryNFeItemImpostoicmsvalorst: TFloatField;
    qryNFeItemImpostoicmsvalorbcstretido: TFloatField;
    qryNFeItemImpostoicmsvalorstretido: TFloatField;
    qryNFeItemImpostoicmsvalorbcstdestino: TFloatField;
    qryNFeItemImpostoicmsvalorstdestino: TFloatField;
    qryNFeItemImpostoicmsaliquotacreditosn: TFloatField;
    qryNFeItemImpostoicmsvalorcreditosn: TFloatField;
    qryNFeItemImpostoprecentualbcoperacaopropria: TFloatField;
    qryNFeItemImpostoufst: TWideStringField;
    qryNFeItemImpostoipienquadramento: TWideStringField;
    qryNFeItemImpostoipicnpjprodutor: TWideStringField;
    qryNFeItemImpostoipicst: TSmallintField;
    qryNFeItemImpostoipivalorbc: TFloatField;
    qryNFeItemImpostoipialiquota: TFloatField;
    qryNFeItemImpostoipiquantidadeunidadetributavel: TFloatField;
    qryNFeItemImpostoipivalorunidadetributavel: TFloatField;
    qryNFeItemImpostoipivalor: TFloatField;
    qryNFeItemImpostocofinscst: TSmallintField;
    qryNFeItemImpostocofinsquantidadevendida: TFloatField;
    qryNFeItemImpostocofinsbc: TFloatField;
    qryNFeItemImpostocofinsaliquotapercentual: TFloatField;
    qryNFeItemImpostocofinsaliquotavalor: TFloatField;
    qryNFeItemImpostocofinsvalor: TFloatField;
    qryNFeItemImpostopiscst: TSmallintField;
    qryNFeItemImpostopisquantidadevalor: TFloatField;
    qryNFeItemImpostopisbc: TFloatField;
    qryNFeItemImpostopisaliquotapercentual: TFloatField;
    qryNFeItemImpostopisaliquotavalor: TFloatField;
    qryNFeItemImpostopisvalor: TFloatField;
    qryNFeItemImpostoissbc: TFloatField;
    qryNFeItemImpostoissaliquota: TFloatField;
    qryNFeItemImpostoissvalor: TFloatField;
    qryNFeItemImpostoissmunicipio: TIntegerField;
    qryNFeItemImpostoissitemlistaservico: TIntegerField;
    qryNFeItemImpostoisstributacao: TSmallintField;
    qryNFeLocalEntregaRetiradaidnfelocalentregaretirada: TIntegerField;
    qryNFeLocalEntregaRetiradaidnfecabecalho: TIntegerField;
    qryNFeLocalEntregaRetiradacpf_cnpj: TWideStringField;
    qryNFeLocalEntregaRetiradalogradouro: TWideStringField;
    qryNFeLocalEntregaRetiradanumero: TWideStringField;
    qryNFeLocalEntregaRetiradacomplemento: TWideStringField;
    qryNFeLocalEntregaRetiradabairro: TWideStringField;
    qryNFeLocalEntregaRetiradatipo: TWideStringField;
    qryNFeNFReferenciadaidnfenfreferenciada: TIntegerField;
    qryNFeNFReferenciadaidnfecabecalho: TIntegerField;
    qryNFeNFReferenciadaanomes: TWideStringField;
    qryNFeNFReferenciadacnpj: TWideStringField;
    qryNFeNFReferenciadamodelo: TWideStringField;
    qryNFeNFReferenciadaserie: TWideStringField;
    qryNFeNFReferenciadanumeronf: TIntegerField;
    qryNFeProdutorRuralReferenciadaidnfeprodutorruralreferenciada: TIntegerField;
    qryNFeProdutorRuralReferenciadaidnfecabecalho: TIntegerField;
    qryNFeProdutorRuralReferenciadaanomes: TWideStringField;
    qryNFeProdutorRuralReferenciadacnpj: TWideStringField;
    qryNFeProdutorRuralReferenciadacpf: TWideStringField;
    qryNFeProdutorRuralReferenciadainscricaoestadual: TWideStringField;
    qryNFeProdutorRuralReferenciadamodelo: TWideStringField;
    qryNFeProdutorRuralReferenciadaserie: TWideStringField;
    qryNFeProdutorRuralReferenciadanumeronf: TIntegerField;
    qryNFeReferenciadaidnfereferenciada: TIntegerField;
    qryNFeReferenciadaidnfecabecalho: TIntegerField;
    qryNFeReferenciadachaveacesso: TWideStringField;
    qryNFeTransportadoraidnfetransportadora: TIntegerField;
    qryNFeTransportadoraidnfecabecalho: TIntegerField;
    qryNFeTransportadoraidestado: TWideStringField;
    qryNFeTransportadoraidcfop: TIntegerField;
    qryNFeTransportadoraidmunicipio: TIntegerField;
    qryNFeTransportadoramodalidade: TSmallintField;
    qryNFeTransportadoracpf_cnpj: TWideStringField;
    qryNFeTransportadoranome: TWideStringField;
    qryNFeTransportadorainscricaoestadual: TWideStringField;
    qryNFeTransportadoraendereco: TWideStringField;
    qryNFeTransportadoravalorservico: TFloatField;
    qryNFeTransportadoravalorbcretencaoicms: TFloatField;
    qryNFeTransportadoraaliquotaretencaoicms: TFloatField;
    qryNFeTransportadoravaloricmsretido: TFloatField;
    qryNFeTransportadoravolumequantidade: TSmallintField;
    qryNFeTransportadoravolumeespecie: TWideStringField;
    qryNFeTransportadoravolumemarca: TWideStringField;
    qryNFeTransportadoravolumenumeracao: TWideStringField;
    qryNFeTransportadoravolumepesoliquido: TFloatField;
    qryNFeTransportadoravolumepesobruto: TFloatField;
    qryNFeTransportadoramunicipionome: TWideStringField;
    qryNFeTransportadoracfopdescricao: TWideStringField;
    qryNFeTransportadoraReboqueidnfetransportadorareboque: TIntegerField;
    qryNFeTransportadoraReboqueidnfecabecalho: TIntegerField;
    qryNFeTransportadoraReboqueidestado: TWideStringField;
    qryNFeTransportadoraReboqueplaca: TWideStringField;
    qryNFeTransportadoraReboquerntc: TWideStringField;
    qryOrcamentoCabecalhoidorcamentocabecalho: TIntegerField;
    qryOrcamentoCabecalhoidlicitacao: TIntegerField;
    qryOrcamentoCabecalhoidpessoa: TIntegerField;
    qryOrcamentoCabecalhodatacadastro: TDateField;
    qryOrcamentoCabecalhodataentrega: TDateField;
    qryOrcamentoCabecalhotipofrete: TWideStringField;
    qryOrcamentoCabecalhovalorsubtotal: TFloatField;
    qryOrcamentoCabecalhovalorfrete: TFloatField;
    qryOrcamentoCabecalhotaxacomissao: TFloatField;
    qryOrcamentoCabecalhovalorcomicao: TFloatField;
    qryOrcamentoCabecalhotaxadesconto: TFloatField;
    qryOrcamentoCabecalhovalordesconto: TFloatField;
    qryOrcamentoCabecalhovalortotal: TFloatField;
    qryOrcamentoCabecalhoobservacao: TWideMemoField;
    qryOrcamentoCabecalhosituacao: TWideStringField;
    qryOrcamentoCabecalhoidunidadenegocio: TIntegerField;
    qryOrcamentoCabecalhonomefantasia: TWideStringField;
    qryOrcamentoCabecalhopessoanome: TWideStringField;
    qryOrcamentoItemidorcamentoitem: TIntegerField;
    qryOrcamentoItemidorcamentocabecalho: TIntegerField;
    qryOrcamentoItemidproduto: TIntegerField;
    qryOrcamentoItemquantidade: TFloatField;
    qryOrcamentoItemvalorunitario: TFloatField;
    qryOrcamentoItemvalorsubtotal: TFloatField;
    qryOrcamentoItemtaxadesconto: TFloatField;
    qryOrcamentoItemvalordesconto: TFloatField;
    qryOrcamentoItemvalortotal: TFloatField;
    qryOrcamentoItemprodutonome: TWideStringField;
    qryPaisidpais: TIntegerField;
    qryPaisidindicadoreconomico: TIntegerField;
    qryPaisnome: TWideStringField;
    qryPaisindicadordescricao: TWideStringField;
    qryPedidoCabecalhoidpedidocabecalho: TIntegerField;
    qryPedidoCabecalhoidunidadenegocio: TIntegerField;
    qryPedidoCabecalhoidpessoa: TIntegerField;
    qryPedidoCabecalhoidorcamentocabecalho: TIntegerField;
    qryPedidoCabecalhodatalancamento: TDateField;
    qryPedidoCabecalhodataprevisaoentrega: TDateField;
    qryPedidoCabecalhovalorsubtotal: TFloatField;
    qryPedidoCabecalhotaxacomicao: TFloatField;
    qryPedidoCabecalhovalorcomicao: TFloatField;
    qryPedidoCabecalhotaxadesconto: TFloatField;
    qryPedidoCabecalhovalordesconto: TFloatField;
    qryPedidoCabecalhovalorfrete: TFloatField;
    qryPedidoCabecalhotipofrete: TFloatField;
    qryPedidoCabecalhovalorseguro: TFloatField;
    qryPedidoCabecalhoobservacao: TWideMemoField;
    qryPedidoCabecalhosituacao: TWideStringField;
    qryPedidoCabecalhonomefantasia: TWideStringField;
    qryPedidoCabecalhopessoanome: TWideStringField;
    qryPedidoItemidpedidoitem: TIntegerField;
    qryPedidoItemidproduto: TIntegerField;
    qryPedidoItemidpedidocabecalho: TIntegerField;
    qryPedidoItemquantidade: TFloatField;
    qryPedidoItemvalorunitario: TFloatField;
    qryPedidoItemvalorsubtotal: TFloatField;
    qryPedidoItemtaxadesconto: TFloatField;
    qryPedidoItemvalordesconto: TFloatField;
    qryPedidoItemvalortotal: TFloatField;
    qryPedidoItemprodutonome: TWideStringField;
    qryPessoaidpessoa: TIntegerField;
    qryPessoatipo: TWideStringField;
    qryPessoaemail: TWideStringField;
    qryPessoasite: TWideStringField;
    qryPessoacliente2: TBooleanField;
    qryPessoafornecedor2: TBooleanField;
    qryPessoacolaborador2: TBooleanField;
    qryPessoacontador2: TBooleanField;
    qryPessoatransportadora2: TBooleanField;
    qryPessoavendedor2: TBooleanField;
    qryPessoacpf: TWideStringField;
    qryPessoacnpj: TWideStringField;
    qryPessoarg: TWideStringField;
    qryPessoadatanascimento: TDateField;
    qryPessoasexo: TWideStringField;
    qryPessoaestadocivil: TWideStringField;
    qryPessoacnhnumero: TWideStringField;
    qryPessoacnhcategoria: TWideStringField;
    qryPessoacnhvencimento: TDateField;
    qryPessoanomemae: TWideStringField;
    qryPessoanomepai: TWideStringField;
    qryPessoanomefantasia: TWideStringField;
    qryPessoainscricaomunicipal: TWideStringField;
    qryPessoainscricaoestadual: TWideStringField;
    qryPessoatiporegime: TWideStringField;
    qryPessoacrt: TWideStringField;
    qryPessoasuframa: TWideStringField;
    qryPessoanome: TWideStringField;
    qryPessoaClienteidpessoa: TIntegerField;
    qryPessoaClientedatacadastro: TDateField;
    qryPessoaClienteobservacao: TWideMemoField;
    qryPessoaClientegerafinanceiro: TBooleanField;
    qryPessoaClientelimitecredito: TFloatField;
    qryPessoaClienteativo: TBooleanField;
    qryPessoaClienteestadocivil: TWideStringField;
    qryPessoaColaboradoridbanco: TWideStringField;
    qryPessoaColaboradoridsetor: TIntegerField;
    qryPessoaColaboradoridcargo: TIntegerField;
    qryPessoaColaboradoridpessoa: TIntegerField;
    qryPessoaColaboradormatricula: TWideStringField;
    qryPessoaColaboradorfoto3x4: TWideMemoField;
    qryPessoaColaboradordatacadastro: TDateField;
    qryPessoaColaboradordataadmissao: TDateField;
    qryPessoaColaboradorfgtsconta: TSmallintField;
    qryPessoaColaboradorformapagamento: TWideStringField;
    qryPessoaColaboradorexamedata: TDateField;
    qryPessoaColaboradorexamedataultimo: TDateField;
    qryPessoaColaboradorctpsnumero: TWideStringField;
    qryPessoaColaboradorctpsserie: TWideStringField;
    qryPessoaColaboradorctpsdataexpedicao: TDateField;
    qryPessoaColaboradorctpsuf: TWideStringField;
    qryPessoaColaboradorobservacao: TWideMemoField;
    qryPessoaColaboradordatademissao: TDateField;
    qryPessoaColaboradoridunidadenegocio: TIntegerField;
    qryPessoaColaboradorsetornome: TWideStringField;
    qryPessoaColaboradorcargonome: TWideStringField;
    qryPessoaContadoridpessoa: TIntegerField;
    qryPessoaContadornome: TWideStringField;
    qryPessoaContadorcpf: TWideStringField;
    qryPessoaContadorcrc: TWideStringField;
    qryPessoaContadoremail: TWideStringField;
    qryPessoaContadoridunidadenegocio: TIntegerField;
    qryPessoaFornecedoridpessoafornecedor: TIntegerField;
    qryPessoaFornecedoridpessoa: TIntegerField;
    qryPessoaFornecedordesde: TDateField;
    qryPessoaFornecedoroptandesimples: TBooleanField;
    qryPessoaFornecedorlocalizacao: TBooleanField;
    qryPessoaFornecedordatacadastro: TDateField;
    qryPessoaFornecedorsofreretencao: TBooleanField;
    qryPessoaFornecedorobservacao: TWideMemoField;
    qryPessoaFornecedorprazomedioentrega: TIntegerField;
    qryPessoaFornecedorgerafaturamento: TBooleanField;
    qryPessoaFornecedornumerodiasprimeirovencimento: TIntegerField;
    qryPessoaFornecedornumerodiasintervalo: TIntegerField;
    qryPessoaFornecedorquantidadeparcelas: TIntegerField;
    qryPessoaTransportadoraidpessoa: TIntegerField;
    qryPessoaTransportadoradatacadastro: TDateField;
    qryPessoaTransportadoraobservacao: TWideMemoField;
    qryPessoaVendedoridpessoa: TIntegerField;
    qryPessoaVendedorcomissao: TFloatField;
    qryPessoaVendedormetavendas: TFloatField;
    qryPessoaVendedoridunidadenegocio: TIntegerField;
    qryPessoaVendedornomefantasia: TWideStringField;
    qryPessoaRepresentanteidpessoa: TIntegerField;
    qryPessoaRepresentantecomissao: TFloatField;
    qryPessoaRepresentantemetavendas: TFloatField;
    qryPessoaRepresentanteidunidadenegocio: TIntegerField;
    qryPessoaRepresentantenomefantasia: TWideStringField;
    qryPessoaContadornomefantasia: TWideStringField;
    qryPlanoContasFinanceiroidplanocontasfinanceiro: TIntegerField;
    qryPlanoContasFinanceirocodigo: TWideStringField;
    qryPlanoContasFinanceirodescricao: TWideStringField;
    qryPlanoContasFinanceirotipo: TWideStringField;
    qryPlanoContasFinanceiroativo: TBooleanField;
    qryPlanoContasGerencialidplanocontasgerencial: TIntegerField;
    qryPlanoContasGerencialcodigo: TWideStringField;
    qryPlanoContasGerencialdescricao: TWideStringField;
    qryPlanoContasGerencialtipo: TWideStringField;
    qryPlanoContasGerencialnivel: TSmallintField;
    qryPlanoContasGerencialativo: TBooleanField;
    qryPortadoridportador: TIntegerField;
    qryPortadoridbanco: TWideStringField;
    qryPortadordescricao: TWideStringField;
    qryPortadorbanconome: TWideStringField;
    qryPortadorHistoricoidportadorhistorico: TIntegerField;
    qryPortadorHistoricoidportador: TIntegerField;
    qryPortadorHistoricodatamovimento: TDateField;
    qryPortadorHistoricosaldoinicial: TFloatField;
    qryPortadorHistoricoentrada: TFloatField;
    qryPortadorHistoricosaida: TFloatField;
    qryPortadorHistoricosaldofinal: TFloatField;
    qryProdutoidproduto: TIntegerField;
    qryProdutoidgrupoprodutos: TIntegerField;
    qryProdutoidsubgrupoprodutos: TIntegerField;
    qryProdutoidncm: TIntegerField;
    qryProdutoidprodutounidade: TIntegerField;
    qryProdutocodigointerno: TWideStringField;
    qryProdutogetin: TWideStringField;
    qryProdutonome: TWideStringField;
    qryProdutodescricao: TWideMemoField;
    qryProdutodescricaopdv: TWideStringField;
    qryProdutovalorcompra: TFloatField;
    qryProdutovalorvenda: TFloatField;
    qryProdutoprecovendaminimo: TFloatField;
    qryProdutoprecosugerido: TFloatField;
    qryProdutocustomedioliquido: TFloatField;
    qryProdutoprecolucrozero: TFloatField;
    qryProdutoprecolucrominimo: TFloatField;
    qryProdutoprecolucromaximo: TFloatField;
    qryProdutomarkup: TFloatField;
    qryProdutoquantidadeestoque: TFloatField;
    qryProdutoestoqueminimo: TFloatField;
    qryProdutoestoquemaximo: TFloatField;
    qryProdutoestoqueideal: TFloatField;
    qryProdutodatacadastro: TDateField;
    qryProdutofotoproduto: TWideMemoField;
    qryProdutocodigobalanca: TIntegerField;
    qryProdutotipo: TWideStringField;
    qryProdutoclasseabc: TWideStringField;
    qryProdutocodigolst: TWideStringField;
    qryProdutopeso: TFloatField;
    qryProdutopercentualcomissao: TFloatField;
    qryProdutoinativo: TWideStringField;
    qryProdutogruponome: TWideStringField;
    qryProdutosubgruponome: TWideStringField;
    qryProdutoFornecedoridprodutofornecedor: TIntegerField;
    qryProdutoFornecedorcodigoprodutofornecedor: TWideStringField;
    qryProdutoFornecedoridproduto: TIntegerField;
    qryProdutoFornecedordataultimacompra: TDateField;
    qryProdutoFornecedorprecoultimacompra: TFloatField;
    qryProdutoGrupoidgrupoprodutos: TIntegerField;
    qryProdutoGruponome2: TWideStringField;
    qryProdutoGrupodescricao: TWideMemoField;
    qryProdutoPromocaoidprodutopromocao: TIntegerField;
    qryProdutoPromocaoidproduto: TIntegerField;
    qryProdutoPromocaodatainicio: TDateField;
    qryProdutoPromocaodatafim: TDateField;
    qryProdutoPromocaoquantidadeempromocao: TFMTBCDField;
    qryProdutoPromocaoquantidademaximacliente: TFMTBCDField;
    qryProdutoPromocaovalor: TFMTBCDField;
    qryProdutoPromocaoprodutonome: TWideStringField;
    qryProdutoSubGrupoidsubgrupoprodutos: TIntegerField;
    qryProdutoSubGrupoidgrupoprodutos: TIntegerField;
    qryProdutoSubGruponome2: TWideStringField;
    qryProdutoSubGrupodescricao: TWideMemoField;
    qryProdutoSubGrupogruponome: TWideStringField;
    qryProdutoTabelaPrecoidprodutotabelapreco: TIntegerField;
    qryProdutoTabelaPrecoidproduto: TIntegerField;
    qryProdutoTabelaPreconome: TWideStringField;
    qryProdutoTabelaPrecopreco: TFloatField;
    qryProdutoTabelaPrecoprodutonome: TWideStringField;
    qryProdutoUnidadeidprodutounidade: TIntegerField;
    qryProdutoUnidadesigla: TWideStringField;
    qryProdutoUnidadedescricao: TWideMemoField;
    qryProdutoUnidadeConversaoidprodutounidadeconversao: TIntegerField;
    qryProdutoUnidadeConversaoidproduto: TIntegerField;
    qryProdutoUnidadeConversaoidprodutounidade: TIntegerField;
    qryProdutoUnidadeConversaosigla: TWideStringField;
    qryProdutoUnidadeConversaodescricao: TWideMemoField;
    qryProdutoUnidadeConversaofatorconversao: TFloatField;
    qryProdutoUnidadeConversaoprodutonome: TWideStringField;
    qryProdutoUnidadeConversaounidadesigla: TWideStringField;
    qryRegraFiscalObservacaoidregrafiscalobservacao: TIntegerField;
    qryRegraFiscalObservacaoobservacao: TWideMemoField;
    qrySetoridsetor: TIntegerField;
    qrySetornome: TWideStringField;
    qrySetordescricao: TWideStringField;
    qryTelefoneidtelefone: TIntegerField;
    qryTelefoneidpessoa: TIntegerField;
    qryTelefoneidunidadenegocio: TIntegerField;
    qryTelefoneidtipotelefone: TIntegerField;
    qryTelefonenumerotelefone: TWideStringField;
    qryTipoTelefoneidtipotelefone: TIntegerField;
    qryTipoTelefonedescricao: TWideStringField;
    qryUnidadeNegocioidunidadenegocio: TIntegerField;
    qryUnidadeNegocioidcnae: TIntegerField;
    qryUnidadeNegocioidempresa: TIntegerField;
    qryUnidadeNegociocnpj: TWideStringField;
    qryUnidadeNegocionomefantasia: TWideStringField;
    qryUnidadeNegociocnaedenominacao: TWideMemoField;
    qryUnidadeNegociorazaosocial: TWideStringField;
    qryCSTICMS: TFDQuery;
    qryCSTCSOSN: TFDQuery;
    dspCSTICMS: TDataSetProvider;
    dspCSTCSOSN: TDataSetProvider;
    qryCSTICMSidcsticms: TIntegerField;
    qryCSTICMSdescricao: TWideStringField;
    qryCSTICMSobservacao: TWideMemoField;
    qryRegraFiscalidregrafiscal: TIntegerField;
    qryRegraFiscalidpessoa: TIntegerField;
    qryRegraFiscalidregrafiscalobservacao: TIntegerField;
    qryRegraFiscalidcstpis: TIntegerField;
    qryRegraFiscalidcstipi: TIntegerField;
    qryRegraFiscalidtipooperacao: TIntegerField;
    qryRegraFiscalidpais: TIntegerField;
    qryRegraFiscalidmunicipio: TIntegerField;
    qryRegraFiscalidestado: TWideStringField;
    qryRegraFiscalidunidadenegocio: TIntegerField;
    qryRegraFiscalidcfop: TIntegerField;
    qryRegraFiscalidncm: TIntegerField;
    qryRegraFiscalidcstcofins: TIntegerField;
    qryRegraFiscalreducaoipi: TFloatField;
    qryRegraFiscalipi: TSmallintField;
    qryRegraFiscalreducaoicms: TFloatField;
    qryRegraFiscalicms: TSmallintField;
    qryRegraFiscalpis: TFloatField;
    qryRegraFiscalretencaopis: TFloatField;
    qryRegraFiscalcofins: TFloatField;
    qryRegraFiscalretencaocofins: TIntegerField;
    qryRegraFiscalativo: TBooleanField;
    qryRegraFiscalmva: TFloatField;
    qryRegraFiscalst: TFloatField;
    qryRegraFiscalreducaost: TFloatField;
    qryRegraFiscaliss: TFloatField;
    qryRegraFiscalreducaoiss: TFloatField;
    qryRegraFiscalcsosn: TSmallintField;
    qryRegraFiscalcssl: TFloatField;
    qryRegraFiscalinss: TFloatField;
    qryRegraFiscalir: TSmallintField;
    qryRegraFiscalfunrural: TFloatField;
    qryRegraFiscalie: TFloatField;
    qryRegraFiscalii: TFloatField;
    qryRegraFiscalcfopdevolucao: TSmallintField;
    qryRegraFiscalidcsticms: TIntegerField;
    qryRegraFiscalidcstcsosn: TIntegerField;
    qryRegraFiscalpessoanome: TWideStringField;
    qryRegraFiscaltipooperacaodescricao: TWideStringField;
    qryRegraFiscalpaisnome: TWideStringField;
    qryRegraFiscalmunicipionome: TWideStringField;
    qryRegraFiscalnomefantasia: TWideStringField;
    qryRegraFiscalcfopdescricao: TWideStringField;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
    //Funções para gestão do Arquivo LOG - DJD
    procedure LOGopen;
    procedure LOGclose;
    procedure LOGadd(msg: String);
    //Função para alterar SQL da Query e retornar ao cliente - DJD
    procedure alteraSQL(Query : TFDQuery; filtro, select, from, where, order:String);

    //Constantes com as definições das SQLs inicias de cada tabela - DJD
    //const select[NOMEDATABELA]: array[1..5] of string = ([SELECT],[FROM],[WHERE],[ORDER],[LIMIT]);
    const selectAuditoria: array[1..5] of string = ('select auditoria.*, unidadeNegocio.nomeFantasia',
      ' from auditoria inner join unidadeNegocio on auditoria.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio',' ',
      ' order by idAuditoria',' limit 0 ');
    const selectBanco: array[1..5] of string = ('select *',' from banco',' ',' order by idBanco',' limit 0 ');
    const selectCargo: array[1..5] of string = ('select cargo.*, cbo.nome  as CBOnome',
      ' from cargo inner join cbo on cargo.idCBO = cbo.idCBO',' ',' order by idCargo',' limit 0 ');
    const selectCBO: array[1..5] of string = ('select *',' from CBO',' ',' order by idCBO',' limit 0 ');
    const selectCEP: array[1..5] of string = ('select CEP.*, municipio.nome as municipioNome',
    ' from CEP inner join municipio on CEP.idMunicipio = Municipio.idMunicipio',' ',
    ' order by idCEP',' limit 0 ');
    const selectCFOP: array[1..5] of string = ('select cfop.*, tipoOperacao.descricao as tipoOperacaoDescricao',
      ' from cfop inner join tipoOperacao on cfop.idTipoOperacao = tipoOperacao.idTipoOperacao',' ',
      ' order by idCFOP',' limit 0 ');
    const selectCNAE: array[1..5] of string = ('select *',' from CNAE',' ',' order by idCNAE',' limit 0 ');
    const selectControle: array[1..5] of string = ('select *',' from controle',' ',' order by idControle',' limit 0 ');
    const selectCSTCOFINS: array[1..5] of string = ('select *',' from cstcofins',' ',' order by idCSTCOFINS',' limit 0 ');
    const selectCSTIPI: array[1..5] of string = ('select *',' from cstipi',' ',' order by idCSTIPI',' limit 0 ');
    const selectCSTPIS: array[1..5] of string = ('select *',' from cstpis',' ',' order by idCSTPIS',' limit 0 ');
    const selectDocumento: array[1..5] of string = ('select *',' from documento',' ',' order by idDocumento',' limit 0 ');
    const selectECFCabecalho: array[1..5] of string = ('select ecfCabecalho.*, unidadeNegocio.nomeFantasia, pessoa.nome as pessoaNome',
      ' from ecfCabecalho inner join unidadeNegocio on ecfCabecalho.idunidadenegocio = unidadeNegocio.idUnidadeNegocio'+
      ' inner join pessoa on ecfCabecalho.idPessoa = pessoa.idPessoa',' ',' order by idECFCabecalho',' limit 0 ');
    const selectECFItem: array[1..5] of string = ('select ecfitem.*, produto.descricao as produtoDescricao',' from ecfitem'+
      ' inner join produto on ecfitem.idProduto = produto.idProduto',' ',' order by idECFItem',' limit 0 ');
    const selectEmpresa: array[1..5] of string = ('select *',' from empresa',' ',' order by idEmpresa',' limit 0 ');
    const selectEndereco: array[1..5] of string = ('select *',' from endereco',' ',' order by idEndereco',' limit 0 ');
    const selectEntradaCabecalho: array[1..5] of string = ('select entradaCabecalho.*, unidadeNegocio.nomeFantasia, pessoa.nome as PessoaNome',
      ' from entradaCabecalho inner join unidadeNegocio on entradaCabecalho.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio'+
      ' inner join pessoa on entradaCabecalho.idPessoa = pessoa.idPessoa',' ',' order by idEntradaCabecalho',' limit 0 ');
    const selectEntradaDuplicata: array[1..5] of string = ('select *',' from entradaDuplicata',' ',' order by idEntradaDuplicata',' limit 0 ');
    const selectEntradaItem: array[1..5] of string = ('select entradaItem.*, produto.descricao as produtoDescricao',
      ' from entradaItem inner join produto on entradaItem.idProduto = produto.idProduto',' ',' order by idEntradaItem',' limit 0 ');
    const selectEntradaItemImposto: array[1..5] of string = ('select *',' from entradaItemImposto',' ',' order by idEntradaItemImposto',' limit 0 ');
    const selectEntradaLocalEntregaRetirada: array[1..5] of string = ('select *',' from entradaLocalEntregaRetirada',' ',
      ' order by idEntradaLocalEntregaRetirada',' limit 0 ');
    const selectEntradaTransportadora: array[1..5] of string = ('select entradaTransportadora.*, pessoa.nome as pessoaNome',
      ' from entradaTransportadora inner join pessoa on entradaTransportadora.idPessoa = pessoa.idPessoa',' ',
      ' order by idEntradaTransportadora',' limit 0 ');
    const selectEntradaTransportadoraReboque: array[1..5] of string = ('select *',' from entradaTransportadoraReboque',' ',
      ' order by idEntradaTransportadoraReboque',' limit 0 ');
    const selectEstado: array[1..5] of string = ('select estado.*, pais.nome as paisNome',' from estado'+
      ' inner join pais on estado.idPais = pais.idPais',' ',' order by idEstado',' limit 0 ');
    const selectEstoqueContagemCabecalho: array[1..5] of string = ('select estoqueContagemCabecalho.*, empresa.nomeFantasia',
      ' from estoqueContagemCabecalho inner join empresa on estoqueContagemCabecalho.idEmpresa = empresa.idEmpresa',
      ' ',' order by idEstoqueContagemCabecalho',' limit 0 ');
    const selectEstoqueContagemDetalhe: array[1..5] of string = ('select *',' from estoqueCor',' ',' order by idEstoqueCor',' limit 0 ');
    const selectEstoqueCor: array[1..5] of string = ('select estoqueContagemDetalhe.*, produto.nome as produtoNome',
      ' from estoqueContagemDetalhe inner join produto on estoqueContagemDetalhe.idProduto = produto.idProduto',
      ' ',' order by idEstoqueCotagemdetalhe',' limit 0 ');
    const selectEstoqueGrade: array[1..5] of string = ('select estoqueGrade.*, produto.nome as ProdutoNome, estoqueCor.nome as CorNome,'+
      ' estoqueTamanho.nome as TamanhoNome',' from estoqueGrade inner join produto on estoqueGrade.idProduto = produto.idProduto'+
      ' inner join estoqueCor on estoqueGrade.idEstoqueCor = estoqueCor.idEstoqueCor'+
      ' inner join estoqueTamanho on estoqueGrade.idEstoqueTamanho = estoqueTamanho.idEstoqueTamanho',' ',' order by idEstoqueGrade',' limit 0 ');
    const selectEstoqueTamanho: array[1..5] of string = ('select *',' from estoqueTamanho',' ',' order by idEstoqueTamanho',' limit 0 ');
    const selectHistoricoMovimento: array[1..5] of string = ('select *',' from historicoMovimento',' ',' order by idHistoricoMovimento',' limit 0 ');
    const selectIndicadorEconomico: array[1..5] of string = ('select *',' from indicadorEconomico',' ',' order by idIndicadorEconomico',' limit 0 ');
    const selectIndice: array[1..5] of string = ('select indice.*, indicadorEconomico.descricao as indicadorDescricao',
      ' from indice inner join indicadorEconomico on indice.idIndicadorEconomico = indicadorEconomico.idIndicadorEconomico',
      ' ',' order by idIndice',' limit 0 ');
    const selectLicitacao: array[1..5] of string = ('select licitacao.*, pessoa.nome as pessoaNome, unidadeNegocio.nomeFantasia',
      ' from licitacao inner join pessoa on licitacao.idPessoa = pessoa.idPessoa'+
      ' inner join unidadeNegocio on licitacao.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio',' ',' order by idLicitacao',' limit 0 ');
    const selectLicitacaoDocumento: array[1..5] of string = ('select *',' from licitacaoDocumento',' ',' order by idLicitacaoDocumento',' limit 0 ');
    const selectModelo: array[1..5] of string = ('select *',' from modelo',' ',' order by idModelo',' limit 0 ');
    const selectMovimento: array[1..5] of string = ('select movimento.*, planoContasFinanceiro.descricao as planoFinanceiroDescricao,'+
      ' planoContasGerencial.descricao as planoGerencialDescricao, portador.descricao as portadorDescricao,'+
      ' unidadeNegocio.nomeFantasia, pessoa.nome as pessoaNome',' from movimento'+
      ' inner join planoContasFinanceiro on movimento.idPlanoContasFinanceiro = planoContasFinanceiro.idPlanoContasFinanceiro'+
      ' inner join planoContasGerencial on movimento.idPlanoContasGerencial = planoContasGerencial.idPlanoContasGerencial'+
      ' inner join portador on movimento.idPortador = portador.idPortador'+
      ' inner join unidadeNegocio on movimento.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio'+
      ' inner join pessoa on movimento.idPessoa = pessoa.idPessoa',' ',' order by idMovimento',' limit 0 ');
    const selectMovimentoCheque: array[1..5] of string = ('select movimentoCheque.*, banco.nome as bancoNome',
      ' from movimentoCheque inner join banco on movimentoCheque.idBanco = banco.idBanco',' ',' order by idMovimentoCheque',' limit 0 ');
    const selectMunicipio: array[1..5] of string = ('select *',' from municipio',' ',' order by idEstado, nome',' limit 0 ');
    const selectNCM: array[1..5] of string = ('select *',' from ncm',' ',' order by idNCM',' limit 0 ');
    const selectNFeCabecalho: array[1..5] of string = ('select nfeCabecalho.*, unidadeNegocio.nomeFantasia',
      ' from nfeCabecalho inner join unidadeNegocio on nfeCabecalho.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio','',
      ' order by idNFeCabecalho',' limit 0 ');
    const selectNFeCupomFiscalReferenciado: array[1..5] of string = ('select *',' from NFeCupomFiscalReferenciado',' ',
      ' order by idNFeCupomFiscalReferenciado',' limit 0 ');
    const selectNFeDeclaracaoImportacao: array[1..5] of string = ('select *',' from NFeDeclaracaoImportacao',' ',
      ' order by idNFeDeclaracaoImportacao',' limit 0 ');
    const selectNFeDestinatario: array[1..5] of string = ('select NFeDestinatario.*, pais.nome as paisNome,'+
      ' municipio.nome as municipioNome',' from NFeDestinatario inner join pais on NFeDestinatario.idPais = pais.idPais'+
      ' inner join municipio on NFeDestinatario.idMunicipio = municipio.idMunicipio',' ',' order by idNFeDestinatario',' limit 0 ');
    const selectNFeDuplicata: array[1..5] of string = ('select *',' from NFeDuplicata',' ',' order by idNFeDuplicata',' limit 0 ');
    const selectNFeImportacaoDetalhe: array[1..5] of string = ('select *',' from NFeImportacaoDetalhe',' ',
      ' order by idNFeImportacaoDetalhe',' limit 0 ');
    const selectNFeItem: array[1..5] of string = ('select NFeItem.*, produto.nome as produtoNome',' from NFeItem'+
      ' inner join produto on NFeItem.idProduto = produto.idProduto',' ',' order by idNFeItem',' limit 0 ');
    const selectNFeItemII: array[1..5] of string = ('select *',' from NFeItemII',' ',' order by idNFeItemII',' limit 0 ');
    const selectNFeItemImposto: array[1..5] of string = ('select *',' from NFeItemImposto',' ',' order by idNFeItemImposto',' limit 0 ');
    const selectNFeLocalEntregaRetirada: array[1..5] of string = ('select *',' from NFeLocalEntregaRetirada',' ',
      ' order by idNFeLocalEntregaRetirada',' limit 0 ');
    const selectNFeNFReferenciada: array[1..5] of string = ('select *',' from NFeNFReferenciada',' ',' order by idNFeNFReferenciada',' limit 0 ');
    const selectNFeProdutorRuralReferenciada: array[1..5] of string = ('select *',' from NFeProdutorRuralReferenciada',
      ' ',' order by idNFeProdutorRuralReferenciada',' limit 0 ');
    const selectNFeReferenciada: array[1..5] of string = ('select *',' from NFeReferenciada',' ',
      ' order by idNFeReferenciada',' limit 0 ');
    const selectNFeTransportadora: array[1..5] of string = ('select NFeTransportadora.*, municipio.nome as municipioNome,'+
      ' cfop.descricao as cfopDescricao',' from NFeTransportadora'+
      ' inner join municipio on NFeTransportadora.idMunicipio = municipio.idMunicipio'+
      ' inner join cfop on NFeTransportadora.idCFOP = cfop.idCFOP',' ',' order by idNFeTransportadora',' limit 0 ');
    const selectNFeTransportadoraReboque: array[1..5] of string = ('select *',' from NFeTransportadoraReboque',
      ' ',' order by idNFeTransportadoraReboque',' limit 0 ');
    const selectOrcamentoCabecalho: array[1..5] of string = ('select orcamentoCabecalho.*, unidadeNegocio.nomeFantasia,'+
      ' pessoa.nome as pessoaNome',' from orcamentoCabecalho'+
      ' inner join unidadeNegocio on orcamentoCabecalho.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio'+
      ' inner join pessoa on orcamentoCabecalho.idPessoa = pessoa.idPessoa',
      ' ',' order by idOrcamentoCabecalho',' limit 0 ');
    const selectOrcamentoItem: array[1..5] of string = ('select orcamentoItem.*, produto.nome as produtoNome',
      ' from orcamentoItem inner join produto on orcamentoItem.idProduto = produto.idProduto',
      ' ',' order by idOrcamentoItem',' limit 0 ');
    const selectPais: array[1..5] of string = ('select pais.*, indicadorEconomico.descricao as indicadorDescricao',
      ' from pais inner join indicadorEconomico on pais.idIndicadorEconomico = indicadorEconomico.idIndicadorEconomico',
      ' ',' order by nome',' limit 0 ');
    const selectPedidoCabecalho: array[1..5] of string = ('select pedidoCabecalho.*, unidadeNegocio.nomeFantasia, '+
      ' pessoa.nome as pessoaNome',' from pedidoCabecalho '+
      ' inner join unidadeNegocio on pedidoCabecalho.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio'+
      ' inner join pessoa on pedidoCabecalho.idPessoa = pessoa.idPessoa',' ',' order by idpedidoCabecalho',' limit 0 ');
    const selectPedidoItem: array[1..5] of string = ('select pedidoItem.*, produto.nome as produtoNome',
      ' from pedidoItem inner join produto on pedidoItem.idProduto = produto.idProduto',' ',' order by idpedidoItem',' limit 0 ');
    const selectPessoa: array[1..5] of string = ('select *',' from pessoa',' ',' order by idPessoa',' limit 0 ');
    const selectPessoaCliente: array[1..5] of string = ('select *',' from pessoaCliente',' ',' order by idPessoa',' limit 0 ');
    const selectPessoaColaborador: array[1..5] of string = ('select pessoaColaborador.*, setor.nome as setorNome, '+
      ' cargo.nome as cargoNome',' from pessoaColaborador inner join setor on pessoaColaborador.idSetor = setor.idSetor'+
      ' inner join cargo on pessoaColaborador.idCargo = cargo.idCargo',' ',' order by idPessoa',' limit 0 ');
    const selectPessoaContador: array[1..5] of string = ('select pessoaContador.*, unidadeNegocio.nomeFantasia',
      ' from pessoaContador inner join unidadeNegocio on pessoaContador.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio',
      ' ',' order by idPessoa',' limit 0 ');
    const selectPessoaFornecedor: array[1..5] of string = ('select *',' from pessoaFornecedor',' ',' order by idPessoaFornecedor',' limit 0 ');
    const selectPessoaRepresentante: array[1..5] of string = ('select pessoaRepresentante.*, unidadeNegocio.nomeFantasia',
      ' from pessoaRepresentante inner join unidadeNegocio on pessoaRepresentante.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio',
      ' ',' order by idPessoa',' limit 0 ');
    const selectPessoaTransportadora: array[1..5] of string = ('select *',' from pessoaTransportadora',' ',
      ' order by idPessoa',' limit 0 ');
    const selectPessoaVendedor: array[1..5] of string = ('select pessoaVendedor.*, unidadeNegocio.nomeFantasia',
      ' from pessoaVendedor inner join unidadeNegocio on pessoaVendedor.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio',
      ' ',' order by idPessoa',' limit 0 ');
    const selectPlanoContasFinanceiro: array[1..5] of string = ('select *',' from planoContasFinanceiro',' ',
      ' order by idPlanoContasFinanceiro',' limit 0 ');
    const selectPlanoContasGerencial: array[1..5] of string = ('select *',' from planoContasGerencial',' ',
      ' order by idPlanoContasGerencial',' limit 0 ');
    const selectPortador: array[1..5] of string = ('select portador.*, banco.nome as bancoNome',' from portador'+
      ' inner join banco on portador.idBanco = banco.idBanco',' ',' order by idPortador',' limit 0 ');
    const selectPortadorHistorico: array[1..5] of string = ('select *',' from portadorHistorico',' ',
      ' order by idPortadorHistorico',' limit 0 ');
    const selectProduto: array[1..5] of string = ('select produto.*, produtoGrupo.nome as grupoNome, '+
      ' produtoSubGrupo.nome as subGrupoNome',' from produto'+
      ' inner join produtoGrupo on produto.idGrupoProdutos = produtoGrupo.idGrupoProdutos'+
      ' inner join produtoSubGrupo on produto.idSubGrupoProdutos = produtoSubGrupo.idSubGrupoProdutos',' ',
      ' order by idProduto',' limit 0 ');
    const selectProdutoFornecedor: array[1..5] of string = ('select *',' from produtoFornecedor',' ',
      ' order by idProdutoFornecedor',' limit 0 ');
    const selectProdutoGrupo: array[1..5] of string = ('select *',' from produtoGrupo',' ',' order by idGrupoProdutos',' limit 0 ');
    const selectProdutoPromocao: array[1..5] of string = ('select produtoPromocao.*, produto.nome as produtoNome',
      ' from produtoPromocao inner join produto on produtoPromocao.idProduto = produto.idProduto',
      ' ',' order by idProdutoPromocao',' limit 0 ');
    const selectProdutoSubGrupo: array[1..5] of string = ('select produtoSubGrupo.*, produtoGrupo.nome as grupoNome',
      ' from produtoSubGrupo inner join produtoGrupo on produtoSubGrupo.idGrupoProdutos = produtoGrupo.idGrupoProdutos',
      ' ',' order by idSubGrupoProdutos',' limit 0 ');
    const selectProdutoTabelaPreco: array[1..5] of string = ('select produtoTabelaPreco.*, produto.nome as produtoNome',
      ' from produtoTabelaPreco inner join produto on produtoTabelaPreco.idProduto = produto.idProduto',' ',
      ' order by idProdutoTabelaPreco',' limit 0 ');
    const selectProdutoUnidade: array[1..5] of string = ('select *',' from produtoUnidade',' ',' order by idProdutoUnidade',' limit 0 ');
    const selectProdutoUnidadeConversao: array[1..5] of string = ('select produtoUnidadeConversao.*, '+
      ' produto.nome as produtoNome, produtoUnidade.sigla as unidadeSigla',
      ' from produtoUnidadeConversao inner join produto on produtoUnidadeConversao.idProduto = produto.idProduto'+
      ' inner join produtoUnidade on produtoUnidadeConversao.idProdutoUnidade = produtoUnidade.idProdutoUnidade','',
      ' order by idProdutoUnidadeConversao',' limit 0 ');
    const selectRegraFiscal: array[1..5] of string = ('select regraFiscal.*, pessoa.nome as pessoaNome, '+
      ' tipoOperacao.descricao as tipoOperacaoDescricao, pais.nome as paisNome, municipio.nome as municipioNome, '+
      ' unidadeNegocio.nomeFantasia, cfop.descricao as cfopDescricao ',
      ' from regraFiscal inner join pessoa on regraFiscal.idPessoa = pessoa.idPessoa '+
      ' inner join tipoOperacao on regraFiscal.idTipoOperacao = tipoOperacao.idTipoOperacao '+
      ' inner join pais on regraFiscal.idPais = pais.idPais '+
      ' inner join municipio on regraFiscal.idMunicipio = municipio.idMunicipio '+
      ' inner join unidadeNegocio on regraFiscal.idUnidadeNegocio = unidadeNegocio.idUnidadeNegocio '+
      ' inner join cfop on regraFiscal.idCFOP = cfop.idCFOP ',' ',' order by idRegraFiscal',' limit 0 ');
    const selectRegraFiscalObservacao: array[1..5] of string = ('select *',' from regraFiscalObservacao',' ',
      ' order by idRegraFiscalObservacao',' limit 0 ');
    const selectSerie: array[1..5] of string = ('select * ',' from serie ',' ',' order by idserie ',' limit 0 ');
    const selectSetor: array[1..5] of string = ('select *',' from setor',' ',' order by idSetor',' limit 0 ');
    const selectTelefone: array[1..5] of string = ('select *',' from telefone',' ',' order by idTelefone',' limit 0 ');
    const selectTipoOperacao: array[1..5] of string = ('select *',' from tipoOperacao',' ',' order by tipoOperacao',' limit 0 ');
    const selectTipoTelefone: array[1..5] of string = ('select *',' from tipoTelefone',' ',' order by idTipoTelefone',' limit 0 ');
    const selectUnidadeNegocio: array[1..5] of string = ('select unidadeNegocio.*, cnae.denominacao as cnaeDenominacao, '+
      ' empresa.razaoSocial',' from unidadeNegocio inner join cnae on unidadeNegocio.idCNAE = cnae.idCNAE '+
      ' inner join empresa on unidadeNegocio.idEmpresa = empresa.idEmpresa',' ',' order by idUnidadeNegocio',' limit 0 ');
    const selectCSTICMS: array[1..5] of string = ('select *','from csticms','','order by idCSTICMS',' limit 0 ');
    const selectCSTCSOSN: array[1..5] of string = ('select *','from cstcsosn','','order by idCSTCSOSN',' limit 0 ');
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    //Procedures utilizadas pelo Cliente para aplicação de filtros - DJD
    procedure setSQLAuditoria(filtro: String);
    procedure setSQLBanco(filtro: String);
    procedure setSQLCargo(filtro: String);
    procedure setSQLCBO(filtro: String);
    procedure setSQLCEP(filtro: String);
    procedure setSQLCFOP(filtro: String);
    procedure setSQLCNAE(filtro: String);
    procedure setSQLControle(filtro: String);
    procedure setSQLCSTCOFINS(filtro: String);
    procedure setSQLCSTIPI(filtro: String);
    procedure setSQLCSTPIS(filtro: String);
    procedure setSQLDocumento(filtro: String);
    procedure setSQLECFCabecalho(filtro: String);
    procedure setSQLECFItem(filtro: String);
    procedure setSQLEmpresa(filtro: String);
    procedure setSQLEndereco(filtro: String);
    procedure setSQLEntradaCabecalho(filtro: String);
    procedure setSQLEntradaDuplicata(filtro: String);
    procedure setSQLEntradaItem(filtro: String);
    procedure setSQLEntradaItemImposto(filtro: String);
    procedure setSQLEntradaLocalEntregaRetirada(filtro: String);
    procedure setSQLEntradaTransportadora(filtro: String);
    procedure setSQLEntradaTransportadoraReboque(filtro: String);
    procedure setSQLEstado(filtro: String);
    procedure setSQLEstoqueContagemCabecalho(filtro: String);
    procedure setSQLEstoqueContagemDetalhe(filtro: String);
    procedure setSQLEstoqueCor(filtro: String);
    procedure setSQLEstoqueGrade(filtro: String);
    procedure setSQLEstoqueTamanho(filtro: String);
    procedure setSQLHistoricoMovimento(filtro: String);
    procedure setSQLIndicadorEconomico(filtro: String);
    procedure setSQLIndice(filtro: String);
    procedure setSQLLicitacao(filtro: String);
    procedure setSQLLicitacaoDocumento(filtro: String);
    procedure setSQLModelo(filtro: String);
    procedure setSQLMovimento(filtro: String);
    procedure setSQLMovimentoCheque(filtro: String);
    procedure setSQLMunicipio(filtro: String);
    procedure setSQLNCM(filtro: String);
    procedure setSQLNFeCabecalho(filtro: String);
    procedure setSQLNFeCupomFiscalReferenciado(filtro: String);
    procedure setSQLNFeDeclaracaoImportacao(filtro: String);
    procedure setSQLNFeDestinatario(filtro: String);
    procedure setSQLNFeDuplicata(filtro: String);
    procedure setSQLNFeImportacaoDetalhe(filtro: String);
    procedure setSQLNFeItem(filtro: String);
    procedure setSQLNFeItemII(filtro: String);
    procedure setSQLNFeItemImposto(filtro: String);
    procedure setSQLNFeLocalEntregaRetirada(filtro: String);
    procedure setSQLNFeNFReferenciada(filtro: String);
    procedure setSQLNFeProdutorRuralReferenciada(filtro: String);
    procedure setSQLNFeReferenciada(filtro: String);
    procedure setSQLNFeTransportadora(filtro: String);
    procedure setSQLNFeTransportadoraReboque(filtro: String);
    procedure setSQLOrcamentoCabecalho(filtro: String);
    procedure setSQLOrcamentoItem(filtro: String);
    procedure setSQLPais(filtro: String);
    procedure setSQLPedidoCabecalho(filtro: String);
    procedure setSQLPedidoItem(filtro: String);
    procedure setSQLPessoa(filtro: String);
    procedure setSQLPessoaCliente(filtro: String);
    procedure setSQLPessoaColaborador(filtro: String);
    procedure setSQLPessoaContador(filtro: String);
    procedure setSQLPessoaFornecedor(filtro: String);
    procedure setSQLPessoaRepresentante(filtro: String);
    procedure setSQLPessoaTransportadora(filtro: String);
    procedure setSQLPessoaVendedor(filtro: String);
    procedure setSQLPlanoContasFinanceiro(filtro: String);
    procedure setSQLPlanoContasGerencial(filtro: String);
    procedure setSQLPortador(filtro: String);
    procedure setSQLPortadorHistorico(filtro: String);
    procedure setSQLProduto(filtro: String);
    procedure setSQLProdutoFornecedor(filtro: String);
    procedure setSQLProdutoGrupo(filtro: String);
    procedure setSQLProdutoPromocao(filtro: String);
    procedure setSQLProdutoSubGrupo(filtro: String);
    procedure setSQLProdutoTabelaPreco(filtro: String);
    procedure setSQLProdutoUnidade(filtro: String);
    procedure setSQLProdutoUnidadeConversao(filtro: String);
    procedure setSQLRegraFiscal(filtro: String);
    procedure setSQLRegraFiscalObservacao(filtro: String);
    procedure setSQLSerie(filtro: String);
    procedure setSQLSetor(filtro: String);
    procedure setSQLTelefone(filtro: String);
    procedure setSQLTipoOperacao(filtro: String);
    procedure setSQLTipoTelefone(filtro: String);
    procedure setSQLUnidadeNegocio(filtro: String);
    procedure setSQLCSTICMS(filtro: String);
    procedure setSQLCSTCSOSN(filtro: String);
  end;

  var
    arq : TextFile;

implementation

{$R *.dfm}

uses System.StrUtils;

procedure TServerMethods.LOGopen;
var
  dia, mes, ano : Word;
begin
  DecodeDate(now, ano, mes, dia);

  if not DirectoryExists('C:/InsightSoft') then
    ForceDirectories('C:/InsightSoft');

  if not DirectoryExists('C:/InsightSoft/logs') then
    ForceDirectories('C:/InsightSoft/logs');

  if not FileExists('C:/InsightSoft/logs/logServer'+'-'+FormatFloat('00',dia)+'-'+
    FormatFloat('00',mes)+'-'+FormatFloat('0000',ano)+'.txt') then
  begin
    AssignFile(arq,'C:/InsightSoft/logs/logServer'+'-'+FormatFloat('00',dia)+'-'+
      FormatFloat('00',mes)+'-'+FormatFloat('0000',ano)+'.txt');
    Rewrite(arq);
    Writeln(arq);
    CloseFile(arq);
  end;

  AssignFile(arq, 'C:/InsightSoft/logs/logServer'+'-'+FormatFloat('00',dia)+'-'+
    FormatFloat('00',mes)+'-'+FormatFloat('0000',ano)+'.txt');
  Append(arq);
end;

procedure TServerMethods.LOGclose;
begin
  CloseFile(arq);
end;

procedure TServerMethods.LOGadd(msg: String);
begin
  try
    Writeln(arq, DateTimeToStr(now) + ': ' + msg);
  except

  end;
end;

procedure TServerMethods.alteraSQL(Query: TFDQuery; filtro, select, from, where, order: String);
begin
  Query.Close;
  Query.SQL.Clear;
  if filtro <> '*' then
  begin //Tem algo a Filtrar
    if where = '' then
    begin
      Query.SQL.Add(select+from+' where '+filtro+' '+order);
    end
    else
    begin
      Query.SQL.Add(select+from+where+' and '+filtro+' '+order);
    end;
  end
  else
  begin //Todos os dados
    Query.SQL.Add(select+from+where+order);
  end;

  LOGopen;
  LOGadd('SQL de '+Query.Name+' alterada para ['+Trim(Query.SQL.Text)+']');
  LOGclose;
end;

procedure TServerMethods.DSServerModuleCreate(Sender: TObject);
var
  I : Integer;
begin
  //qrySerie
  With qryAuditoria do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectAuditoria[I]);
  end;
  With qryBanco do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectBanco[I]);
  end;
  With qryCargo do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCargo[I]);
  end;
  With qryCBO do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCBO[I]);
  end;
  With qryCEP do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCEP[I]);
  end;
  With qryCFOP do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCFOP[I]);
  end;
  With qryCNAE do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCNAE[I]);
  end;
  With qryControle do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectControle[I]);
  end;
  With qryCSTCOFINS do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCSTCOFINS[I]);
  end;
  With qryCSTIPI do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCSTIPI[I]);
  end;
  With qryCSTPIS do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCSTPIS[I]);
  end;
  With qryDocumento do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectDocumento[I]);
  end;
  With qryECFCabecalho do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectECFCabecalho[I]);
  end;
  With qryECFItem do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectECFItem[I]);
  end;
  With qryEmpresa do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEmpresa[I]);
  end;
  With qryEndereco do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEndereco[I]);
  end;
  With qryEntradaCabecalho do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEntradaCabecalho[I]);
  end;
  With qryEntradaDuplicata do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEntradaDuplicata[I]);
  end;
  With qryEntradaItem do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEntradaItem[I]);
  end;
  With qryEntradaItemImposto do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEntradaItemImposto[I]);
  end;
  With qryEntradaLocalEntregaRetirada do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEntradaLocalEntregaRetirada[I]);
  end;
  With qryEntradaTransportadora do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEntradaTransportadora[I]);
  end;
  With qryEntradaTransportadoraReboque do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEntradaTransportadoraReboque[I]);
  end;
  With qryEstado do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEstado[I]);
  end;
  With qryEstoqueContagemCabecalho do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEstoqueContagemCabecalho[I]);
  end;
  With qryEstoqueContagemDetalhe do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEstoqueContagemDetalhe[I]);
  end;
  With qryEstoqueCor do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEstoqueCor[I]);
  end;
  With qryEstoqueGrade do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEstoqueGrade[I]);
  end;
  With qryEstoqueTamanho do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectEstoqueTamanho[I]);
  end;
  With qryHistoricoMovimento do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectHistoricoMovimento[I]);
  end;
  With qryIndicadorEconomico do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectIndicadorEconomico[I]);
  end;
  With qryIndice do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectIndice[I]);
  end;
  With qryLicitacao do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectLicitacao[I]);
  end;
  With qryLicitacaoDocumento do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectLicitacaoDocumento[I]);
  end;
  With qryModelo do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectModelo[I]);
  end;
  With qryMovimento do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectMovimento[I]);
  end;
  With qryMovimentoCheque do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectMovimentoCheque[I]);
  end;
  With qryMunicipio do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectMunicipio[I]);
  end;
  With qryNCM do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNCM[I]);
  end;
  With qryNFeCabecalho do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeCabecalho[I]);
  end;
  With qryNFeCupomFiscalReferenciado do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeCupomFiscalReferenciado[I]);
  end;
  With qryNFeDeclaracaoImportacao do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeDeclaracaoImportacao[I]);
  end;
  With qryNFeDestinatario do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeDestinatario[I]);
  end;
  With qryNFeDuplicata do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeDuplicata[I]);
  end;
  With qryNFeImportacaoDetalhe do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeImportacaoDetalhe[I]);
  end;
  With qryNFeItem do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeItem[I]);
  end;
  With qryNFeItemII do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeItemII[I]);
  end;
  With qryNFeItemImposto do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeItemImposto[I]);
  end;
  With qryNFeLocalEntregaRetirada do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeLocalEntregaRetirada[I]);
  end;
  With qryNFeNFReferenciada do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeNFReferenciada[I]);
  end;
  With qryNFeProdutorRuralReferenciada do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeProdutorRuralReferenciada[I]);
  end;
  With qryNFeReferenciada do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeReferenciada[I]);
  end;
  With qryNFeTransportadora do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeTransportadora[I]);
  end;
  With qryNFeTransportadoraReboque do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectNFeTransportadoraReboque[I]);
  end;
  With qryOrcamentoCabecalho do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectOrcamentoCabecalho[I]);
  end;
  With qryOrcamentoItem do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectOrcamentoItem[I]);
  end;
  With qryPais do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPais[I]);
  end;
  With qryPedidoCabecalho do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPedidoCabecalho[I]);
  end;
  With qryPedidoItem do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPedidoItem[I]);
  end;
  With qryPessoa do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPessoa[I]);
  end;
  With qryPessoaCliente do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPessoaCliente[I]);
  end;
  With qryPessoaColaborador do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPessoaColaborador[I]);
  end;
  With qryPessoaContador do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPessoaContador[I]);
  end;
  With qryPessoaFornecedor do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPessoaFornecedor[I]);
  end;
  With qryPessoaRepresentante do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPessoaRepresentante[I]);
  end;
  With qryPessoaTransportadora do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPessoaTransportadora[I]);
  end;
  With qryPessoaVendedor do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPessoaVendedor[I]);
  end;
  With qryPlanoContasFinanceiro do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPlanoContasFinanceiro[I]);
  end;
  With qryPlanoContasGerencial do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPlanoContasGerencial[I]);
  end;
  With qryPortador do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPortador[I]);
  end;
  With qryPortadorHistorico do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectPortadorHistorico[I]);
  end;
  With qryProduto do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProduto[I]);
  end;
  With qryProdutoFornecedor do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoFornecedor[I]);
  end;
  With qryProdutoGrupo do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoGrupo[I]);
  end;
  With qryProdutoPromocao do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoPromocao[I]);
  end;
  With qryProdutoSubGrupo do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoSubGrupo[I]);
  end;
  With qryProdutoTabelaPreco do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoTabelaPreco[I]);
  end;
  With qryProdutoUnidade do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoUnidade[I]);
  end;
  With qryProdutoUnidadeConversao do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoUnidadeConversao[I]);
  end;
  With qryRegraFiscal do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectRegraFiscal[I]);
  end;
  With qryRegraFiscalObservacao do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectRegraFiscalObservacao[I]);
  end;
  With qrySerie do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectSerie[I]);
  end;
  With qrySetor do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectSetor[I]);
  end;
  With qryTelefone do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectTelefone[I]);
  end;
  With qryTelefone do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectTelefone[I]);
  end;
  With qryTipoOperacao do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectTipoOperacao[I]);
  end;
  With qryTipoTelefone do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectTipoTelefone[I]);
  end;
  With qryUnidadeNegocio do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectUnidadeNegocio[I]);
  end;
  With qryCSTICMS do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCSTICMS[I]);
  end;
  With qryCSTCSOSN do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectCSTCSOSN[I]);
  end;
end;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TServerMethods.setSQLAuditoria(filtro: String);
begin
  alteraSQL(qryAuditoria,filtro,selectAuditoria[1],selectAuditoria[2],selectAuditoria[3],selectAuditoria[4]);
end;

procedure TServerMethods.setSQLBanco(filtro: String);
begin
  alteraSQL(qryBanco,filtro,selectBanco[1],selectBanco[2],selectBanco[3],selectBanco[4]);
end;

procedure TServerMethods.setSQLCargo(filtro: String);
begin
  alteraSQL(qryCargo,filtro,selectCargo[1],selectCargo[2],selectCargo[3],selectCargo[4]);
end;

procedure TServerMethods.setSQLCBO(filtro: String);
begin
  alteraSQL(qryCBO,filtro,selectCBO[1],selectCBO[2],selectCBO[3],selectCBO[4]);
end;

procedure TServerMethods.setSQLCEP(filtro: String);
begin
  alteraSQL(qryCEP,filtro,selectCEP[1],selectCEP[2],selectCEP[3],selectCEP[4]);
end;

procedure TServerMethods.setSQLCFOP(filtro: String);
begin
  alteraSQL(qryCFOP,filtro,selectCFOP[1],selectCFOP[2],selectCFOP[3],selectCFOP[4]);
end;

procedure TServerMethods.setSQLCNAE(filtro: String);
begin
  alteraSQL(qryCNAE,filtro,selectCNAE[1],selectCNAE[2],selectCNAE[3],selectCNAE[4]);
end;

procedure TServerMethods.setSQLControle(filtro: String);
begin
  alteraSQL(qryControle,filtro,selectControle[1],selectControle[2],selectControle[3],selectControle[4]);
end;

procedure TServerMethods.setSQLCSTCOFINS(filtro: String);
begin
  alteraSQL(qryCSTCOFINS,filtro,selectCSTCOFINS[1],selectCSTCOFINS[2],selectCSTCOFINS[3],selectCSTCOFINS[4]);
end;

procedure TServerMethods.setSQLCSTIPI(filtro: String);
begin
  alteraSQL(qryCSTIPI,filtro,selectCSTIPI[1],selectCSTIPI[2],selectCSTIPI[3],selectCSTIPI[4]);
end;

procedure TServerMethods.setSQLCSTPIS(filtro: String);
begin
  alteraSQL(qryCSTPIS,filtro,selectCSTPIS[1],selectCSTPIS[2],selectCSTPIS[3],selectCSTPIS[4]);
end;

procedure TServerMethods.setSQLDocumento(filtro: String);
begin
  alteraSQL(qryDocumento,filtro,selectDocumento[1],selectDocumento[2],selectDocumento[3],selectDocumento[4]);
end;

procedure TServerMethods.setSQLECFCabecalho(filtro: String);
begin
  alteraSQL(qryECFCabecalho,filtro,selectECFCabecalho[1],selectECFCabecalho[2],selectECFCabecalho[3],selectECFCabecalho[4]);
end;

procedure TServerMethods.setSQLECFItem(filtro: String);
begin
  alteraSQL(qryECFItem,filtro,selectECFItem[1],selectECFItem[2],selectECFItem[3],selectECFItem[4]);
end;

procedure TServerMethods.setSQLEmpresa(filtro: String);
begin
  alteraSQL(qryEmpresa,filtro,selectEmpresa[1],selectEmpresa[2],selectEmpresa[3],selectEmpresa[4]);
end;

procedure TServerMethods.setSQLEndereco(filtro: String);
begin
  alteraSQL(qryEndereco,filtro,selectEndereco[1],selectEndereco[2],selectEndereco[3],selectEndereco[4]);
end;

procedure TServerMethods.setSQLEntradaCabecalho(filtro: String);
begin
  alteraSQL(qryEntradaCabecalho,filtro,selectEntradaCabecalho[1],selectEntradaCabecalho[2],selectEntradaCabecalho[3],
    selectEntradaCabecalho[4]);
end;

procedure TServerMethods.setSQLEntradaDuplicata(filtro: String);
begin
  alteraSQL(qryEntradaDuplicata,filtro,selectEntradaDuplicata[1],selectEntradaDuplicata[2],selectEntradaDuplicata[3],
    selectEntradaDuplicata[4]);
end;

procedure TServerMethods.setSQLEntradaItem(filtro: String);
begin
  alteraSQL(qryEntradaItem,filtro,selectEntradaItem[1],selectEntradaItem[2],selectEntradaItem[3],selectEntradaItem[4]);
end;

procedure TServerMethods.setSQLEntradaItemImposto(filtro: String);
begin
  alteraSQL(qryEntradaItemImposto,filtro,selectEntradaItemImposto[1],selectEntradaItemImposto[2],selectEntradaItemImposto[3],
    selectEntradaItemImposto[4]);
end;

procedure TServerMethods.setSQLEntradaLocalEntregaRetirada(filtro: String);
begin
  alteraSQL(qryEntradaLocalEntregaRetirada,filtro,selectEntradaLocalEntregaRetirada[1],selectEntradaLocalEntregaRetirada[2],
    selectEntradaLocalEntregaRetirada[3],selectEntradaLocalEntregaRetirada[4]);
end;

procedure TServerMethods.setSQLEntradaTransportadora(filtro: String);
begin
  alteraSQL(qryEntradaTransportadora,filtro,selectEntradaTransportadora[1],selectEntradaTransportadora[2],
    selectEntradaTransportadora[3],selectEntradaTransportadora[4]);
end;

procedure TServerMethods.setSQLEntradaTransportadoraReboque(filtro: String);
begin
  alteraSQL(qryEntradaTransportadoraReboque,filtro,selectEntradaTransportadoraReboque[1],selectEntradaTransportadoraReboque[2],
    selectEntradaTransportadoraReboque[3],selectEntradaTransportadoraReboque[4]);
end;

procedure TServerMethods.setSQLEstado(filtro: String);
begin
  alteraSQL(qryEstado,filtro,selectEstado[1],selectEstado[2],selectEstado[3],selectEstado[4]);
end;

procedure TServerMethods.setSQLEstoqueContagemCabecalho(filtro: String);
begin
  alteraSQL(qryEstoqueContagemCabecalho,filtro,selectEstoqueContagemCabecalho[1],selectEstoqueContagemCabecalho[2],
    selectEstoqueContagemCabecalho[3],selectEstoqueContagemCabecalho[4]);
end;

procedure TServerMethods.setSQLEstoqueContagemDetalhe(filtro: String);
begin
  alteraSQL(qryEstoqueContagemDetalhe,filtro,selectEstoqueContagemDetalhe[1],selectEstoqueContagemDetalhe[2],
    selectEstoqueContagemDetalhe[3],selectEstoqueContagemDetalhe[4]);
end;

procedure TServerMethods.setSQLEstoqueCor(filtro: String);
begin
  alteraSQL(qryEstoqueCor,filtro,selectEstoqueCor[1],selectEstoqueCor[2],selectEstoqueCor[3],selectEstoqueCor[4]);
end;

procedure TServerMethods.setSQLEstoqueGrade(filtro: String);
begin
  alteraSQL(qryEstoqueGrade,filtro,selectEstoqueGrade[1],selectEstoqueGrade[2],selectEstoqueGrade[3],selectEstoqueGrade[4]);
end;

procedure TServerMethods.setSQLEstoqueTamanho(filtro: String);
begin
  alteraSQL(qryEstoqueTamanho,filtro,selectEstoqueTamanho[1],selectEstoqueTamanho[2],selectEstoqueTamanho[3],selectEstoqueTamanho[4]);
end;

procedure TServerMethods.setSQLHistoricoMovimento(filtro: String);
begin
  alteraSQL(qryHistoricoMovimento,filtro,selectHistoricoMovimento[1],selectHistoricoMovimento[2],selectHistoricoMovimento[3],
    selectHistoricoMovimento[4]);
end;

procedure TServerMethods.setSQLIndicadorEconomico(filtro: String);
begin
  alteraSQL(qryIndicadorEconomico,filtro,selectIndicadorEconomico[1],selectIndicadorEconomico[2],selectIndicadorEconomico[3],
    selectIndicadorEconomico[4]);
end;

procedure TServerMethods.setSQLIndice(filtro: String);
begin
  alteraSQL(qryIndice,filtro,selectIndice[1],selectIndice[2],selectIndice[3],selectIndice[4]);
end;

procedure TServerMethods.setSQLLicitacao(filtro: String);
begin
  alteraSQL(qryLicitacao,filtro,selectLicitacao[1],selectLicitacao[2],selectLicitacao[3],selectLicitacao[4]);
end;

procedure TServerMethods.setSQLLicitacaoDocumento(filtro: String);
begin
  alteraSQL(qryLicitacaoDocumento,filtro,selectLicitacaoDocumento[1],selectLicitacaoDocumento[2],selectLicitacaoDocumento[3],
    selectLicitacaoDocumento[4]);
end;

procedure TServerMethods.setSQLModelo(filtro: String);
begin
  alteraSQL(qryModelo,filtro,selectModelo[1],selectModelo[2],selectModelo[3],selectModelo[4]);
end;

procedure TServerMethods.setSQLMovimento(filtro: String);
begin
  alteraSQL(qryMovimento,filtro,selectMovimento[1],selectMovimento[2],selectMovimento[3],selectMovimento[4]);
end;

procedure TServerMethods.setSQLMovimentoCheque(filtro: String);
begin
  alteraSQL(qryMovimentoCheque,filtro,selectMovimentoCheque[1],selectMovimentoCheque[2],selectMovimentoCheque[3],
    selectMovimentoCheque[4]);
end;

procedure TServerMethods.setSQLMunicipio(filtro: String);
begin
  alteraSQL(qryMunicipio,filtro,selectMunicipio[1],selectMunicipio[2],selectMunicipio[3],selectMunicipio[4]);
end;

procedure TServerMethods.setSQLNCM(filtro: String);
begin
  alteraSQL(qryNCM,filtro,selectNCM[1],selectNCM[2],selectNCM[3],selectNCM[4]);
end;

procedure TServerMethods.setSQLNFeCabecalho(filtro: String);
begin
  alteraSQL(qryNFeCabecalho,filtro,selectNFeCabecalho[1],selectNFeCabecalho[2],selectNFeCabecalho[3],selectNFeCabecalho[4]);
end;

procedure TServerMethods.setSQLNFeCupomFiscalReferenciado(filtro: String);
begin
  alteraSQL(qryNFeCupomFiscalReferenciado,filtro,selectNFeCupomFiscalReferenciado[1],selectNFeCupomFiscalReferenciado[2],
    selectNFeCupomFiscalReferenciado[3],selectNFeCupomFiscalReferenciado[4]);
end;

procedure TServerMethods.setSQLNFeDeclaracaoImportacao(filtro: String);
begin
  alteraSQL(qryNFeDeclaracaoImportacao,filtro,selectNFeDeclaracaoImportacao[1],selectNFeDeclaracaoImportacao[2],
    selectNFeDeclaracaoImportacao[3],selectNFeDeclaracaoImportacao[4]);
end;

procedure TServerMethods.setSQLNFeDestinatario(filtro: String);
begin
  alteraSQL(qryNFeDestinatario,filtro,selectNFeDestinatario[1],selectNFeDestinatario[2],selectNFeDestinatario[3],selectNFeDestinatario[4]);
end;

procedure TServerMethods.setSQLNFeDuplicata(filtro: String);
begin
  alteraSQL(qryNFeDuplicata,filtro,selectNFeDuplicata[1],selectNFeDuplicata[2],selectNFeDuplicata[3],selectNFeDuplicata[4]);
end;

procedure TServerMethods.setSQLNFeImportacaoDetalhe(filtro: String);
begin
  alteraSQL(qryNFeImportacaoDetalhe,filtro,selectNFeImportacaoDetalhe[1],selectNFeImportacaoDetalhe[2],
    selectNFeImportacaoDetalhe[3],selectNFeImportacaoDetalhe[4]);
end;

procedure TServerMethods.setSQLNFeItem(filtro: String);
begin
  alteraSQL(qryNFeItem,filtro,selectNFeItem[1],selectNFeItem[2],selectNFeItem[3],selectNFeItem[4]);
end;

procedure TServerMethods.setSQLNFeItemII(filtro: String);
begin
  alteraSQL(qryNFeItemII,filtro,selectNFeItemII[1],selectNFeItemII[2],selectNFeItemII[3],selectNFeItemII[4]);
end;

procedure TServerMethods.setSQLNFeItemImposto(filtro: String);
begin
  alteraSQL(qryNFeItemImposto,filtro,selectNFeItemImposto[1],selectNFeItemImposto[2],selectNFeItemImposto[3],selectNFeItemImposto[4]);
end;

procedure TServerMethods.setSQLNFeLocalEntregaRetirada(filtro: String);
begin
  alteraSQL(qryNFeLocalEntregaRetirada,filtro,selectNFeLocalEntregaRetirada[1],selectNFeLocalEntregaRetirada[2],
    selectNFeLocalEntregaRetirada[3],selectNFeLocalEntregaRetirada[4]);
end;

procedure TServerMethods.setSQLNFeNFReferenciada(filtro: String);
begin
  alteraSQL(qryNFeNFReferenciada,filtro,selectNFeNFReferenciada[1],selectNFeNFReferenciada[2],selectNFeNFReferenciada[3],
    selectNFeNFReferenciada[4]);
end;

procedure TServerMethods.setSQLNFeProdutorRuralReferenciada(filtro: String);
begin
  alteraSQL(qryNFeProdutorRuralReferenciada,filtro,selectNFeProdutorRuralReferenciada[1],selectNFeProdutorRuralReferenciada[2],
    selectNFeProdutorRuralReferenciada[3],selectNFeProdutorRuralReferenciada[4]);
end;

procedure TServerMethods.setSQLNFeReferenciada(filtro: String);
begin
  alteraSQL(qryNFeReferenciada,filtro,selectNFeReferenciada[1],selectNFeReferenciada[2],selectNFeReferenciada[3],selectNFeReferenciada[4]);
end;

procedure TServerMethods.setSQLNFeTransportadora(filtro: String);
begin
  alteraSQL(qryNFeTransportadora,filtro,selectNFeTransportadora[1],selectNFeTransportadora[2],
    selectNFeTransportadora[3],selectNFeTransportadora[4]);
end;

procedure TServerMethods.setSQLNFeTransportadoraReboque(filtro: String);
begin
  alteraSQL(qryNFeTransportadoraReboque,filtro,selectNFeTransportadoraReboque[1],selectNFeTransportadoraReboque[2],
    selectNFeTransportadoraReboque[3],selectNFeTransportadoraReboque[4]);
end;

procedure TServerMethods.setSQLOrcamentoCabecalho(filtro: String);
begin
  alteraSQL(qryOrcamentoCabecalho,filtro,selectOrcamentoCabecalho[1],selectOrcamentoCabecalho[2],selectOrcamentoCabecalho[3],
    selectOrcamentoCabecalho[4]);
end;

procedure TServerMethods.setSQLOrcamentoItem(filtro: String);
begin
  alteraSQL(qryOrcamentoItem,filtro,selectOrcamentoItem[1],selectOrcamentoItem[2],selectOrcamentoItem[3],selectOrcamentoItem[4]);
end;

procedure TServerMethods.setSQLPais(filtro: String);
begin
  alteraSQL(qryPais,filtro,selectPais[1],selectPais[2],selectPais[3],selectPais[4]);
end;

procedure TServerMethods.setSQLPedidoCabecalho(filtro: String);
begin
  alteraSQL(qryPedidoCabecalho,filtro,selectPedidoCabecalho[1],selectPedidoCabecalho[2],selectPedidoCabecalho[3],selectPedidoCabecalho[4]);
end;

procedure TServerMethods.setSQLPedidoItem(filtro: String);
begin
  alteraSQL(qryPedidoItem,filtro,selectPedidoItem[1],selectPedidoItem[2],selectPedidoItem[3],selectPedidoItem[4]);
end;

procedure TServerMethods.setSQLPessoa(filtro: String);
begin
  alteraSQL(qryPessoa,filtro,selectPessoa[1],selectPessoa[2],selectPessoa[3],selectPessoa[4]);
end;

procedure TServerMethods.setSQLPessoaCliente(filtro: String);
begin
  alteraSQL(qryPessoaCliente,filtro,selectPessoaCliente[1],selectPessoaCliente[2],selectPessoaCliente[3],selectPessoaCliente[4]);
end;

procedure TServerMethods.setSQLPessoaColaborador(filtro: String);
begin
  alteraSQL(qryPessoaColaborador,filtro,selectPessoaColaborador[1],selectPessoaColaborador[2],selectPessoaColaborador[3],
    selectPessoaColaborador[4]);
end;

procedure TServerMethods.setSQLPessoaContador(filtro: String);
begin
  alteraSQL(qryPessoaContador,filtro,selectPessoaContador[1],selectPessoaContador[2],selectPessoaContador[3],selectPessoaContador[4]);
end;

procedure TServerMethods.setSQLPessoaFornecedor(filtro: String);
begin
  alteraSQL(qryPessoaFornecedor,filtro,selectPessoaFornecedor[1],selectPessoaFornecedor[2],selectPessoaFornecedor[3],
    selectPessoaFornecedor[4]);
end;

procedure TServerMethods.setSQLPessoaRepresentante(filtro: String);
begin
  alteraSQL(qryPessoaRepresentante,filtro,selectPessoaRepresentante[1],selectPessoaRepresentante[2],selectPessoaRepresentante[3],
    selectPessoaRepresentante[4]);
end;

procedure TServerMethods.setSQLPessoaTransportadora(filtro: String);
begin
  alteraSQL(qryPessoaTransportadora,filtro,selectPessoaTransportadora[1],selectPessoaTransportadora[2],selectPessoaTransportadora[3],
    selectPessoaTransportadora[4]);
end;

procedure TServerMethods.setSQLPessoaVendedor(filtro: String);
begin
  alteraSQL(qryPessoaVendedor,filtro,selectPessoaVendedor[1],selectPessoaVendedor[2],selectPessoaVendedor[3],selectPessoaVendedor[4]);
end;

procedure TServerMethods.setSQLPlanoContasFinanceiro(filtro: String);
begin
  alteraSQL(qryPlanoContasFinanceiro,filtro,selectPlanoContasFinanceiro[1],selectPlanoContasFinanceiro[2],selectPlanoContasFinanceiro[3],
    selectPlanoContasFinanceiro[4]);
end;

procedure TServerMethods.setSQLPlanoContasGerencial(filtro: String);
begin
  alteraSQL(qryPlanoContasGerencial,filtro,selectPlanoContasGerencial[1],selectPlanoContasGerencial[2],selectPlanoContasGerencial[3],
    selectPlanoContasGerencial[4]);
end;

procedure TServerMethods.setSQLPortador(filtro: String);
begin
  alteraSQL(qryPortador,filtro,selectPortador[1],selectPortador[2],selectPortador[3],selectPortador[4]);
end;

procedure TServerMethods.setSQLPortadorHistorico(filtro: String);
begin
  alteraSQL(qryPortadorHistorico,filtro,selectPortadorHistorico[1],selectPortadorHistorico[2],selectPortadorHistorico[3],
    selectPortadorHistorico[4]);
end;

procedure TServerMethods.setSQLProduto(filtro: String);
begin
  alteraSQL(qryProduto,filtro,selectProduto[1],selectProduto[2],selectProduto[3],selectProduto[4]);
end;

procedure TServerMethods.setSQLProdutoFornecedor(filtro: String);
begin
  alteraSQL(qryProdutoFornecedor,filtro,selectProdutoFornecedor[1],selectProdutoFornecedor[2],selectProdutoFornecedor[3],
    selectProdutoFornecedor[4]);
end;

procedure TServerMethods.setSQLProdutoGrupo(filtro: String);
begin
  alteraSQL(qryProdutoGrupo,filtro,selectProdutoGrupo[1],selectProdutoGrupo[2],selectProdutoGrupo[3],selectProdutoGrupo[4]);
end;

procedure TServerMethods.setSQLProdutoPromocao(filtro: String);
begin
  alteraSQL(qryProdutoPromocao,filtro,selectProdutoPromocao[1],selectProdutoPromocao[2],selectProdutoPromocao[3],
    selectProdutoPromocao[4]);
end;

procedure TServerMethods.setSQLProdutoSubGrupo(filtro: String);
begin
  alteraSQL(qryProdutoSubGrupo,filtro,selectProdutoSubGrupo[1],selectProdutoSubGrupo[2],selectProdutoSubGrupo[3],
    selectProdutoSubGrupo[4]);
end;

procedure TServerMethods.setSQLProdutoTabelaPreco(filtro: String);
begin
  alteraSQL(qryProdutoTabelaPreco,filtro,selectProdutoTabelaPreco[1],selectProdutoTabelaPreco[2],selectProdutoTabelaPreco[3],
    selectProdutoTabelaPreco[4]);
end;

procedure TServerMethods.setSQLProdutoUnidade(filtro: String);
begin
  alteraSQL(qryProdutoUnidade,filtro,selectProdutoUnidade[1],selectProdutoUnidade[2],selectProdutoUnidade[3],selectProdutoUnidade[4]);
end;

procedure TServerMethods.setSQLProdutoUnidadeConversao(filtro: String);
begin
  alteraSQL(qryProdutoUnidadeConversao,filtro,selectProdutoUnidadeConversao[1],selectProdutoUnidadeConversao[2],
    selectProdutoUnidadeConversao[3],selectProdutoUnidadeConversao[4]);
end;

procedure TServerMethods.setSQLRegraFiscal(filtro: String);
begin
  alteraSQL(qryRegraFiscal,filtro,selectRegraFiscal[1],selectRegraFiscal[2],selectRegraFiscal[3],selectRegraFiscal[4]);
end;

procedure TServerMethods.setSQLRegraFiscalObservacao(filtro: String);
begin
  alteraSQL(qryRegraFiscalObservacao,filtro,selectRegraFiscalObservacao[1],selectRegraFiscalObservacao[2],
    selectRegraFiscalObservacao[3],selectRegraFiscalObservacao[4]);
end;

procedure TServerMethods.setSQLSerie(filtro: String);
begin
  alteraSQL(qrySerie,filtro,selectSerie[1],selectSerie[2],selectSerie[3],selectSerie[4]);
end;

procedure TServerMethods.setSQLSetor(filtro: String);
begin
  alteraSQL(qrySetor,filtro,selectSetor[1],selectSetor[2],selectSetor[3],selectSetor[4]);
end;

procedure TServerMethods.setSQLTelefone(filtro: String);
begin
  alteraSQL(qryTelefone,filtro,selectTelefone[1],selectTelefone[2],selectTelefone[3],selectTelefone[4]);
end;

procedure TServerMethods.setSQLTipoOperacao(filtro: String);
begin
  alteraSQL(qryTipoOperacao,filtro,selectTipoOperacao[1],selectTipoOperacao[2],selectTipoOperacao[3],selectTipoOperacao[4]);
end;

procedure TServerMethods.setSQLTipoTelefone(filtro: String);
begin
  alteraSQL(qryTipoTelefone,filtro,selectTipoTelefone[1],selectTipoTelefone[2],selectTipoTelefone[3],selectTipoTelefone[4]);
end;

procedure TServerMethods.setSQLUnidadeNegocio(filtro: String);
begin
  alteraSQL(qryUnidadeNegocio,filtro,selectUnidadeNegocio[1],selectUnidadeNegocio[2],selectUnidadeNegocio[3],
    selectUnidadeNegocio[4]);
end;

procedure TServerMethods.setSQLCSTICMS(filtro: String);
begin
  alteraSQL(qryCSTICMS,filtro,selectCSTICMS[1],selectCSTICMS[2],selectCSTICMS[3],selectCSTICMS[4]);
end;

procedure TServerMethods.setSQLCSTCSOSN(filtro: String);
begin
  alteraSQL(qryCSTCSOSN,filtro,selectCSTCSOSN[1],selectCSTCSOSN[2],selectCSTCSOSN[3],selectCSTCSOSN[4]);
end;

end.
