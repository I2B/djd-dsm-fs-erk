unit unServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json, Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.Provider, FireDAC.Comp.DataSet, Datasnap.DBClient;

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
    qryProdutoCor: TFDQuery;
    qryEstoqueContagemDetalhe: TFDQuery;
    qryProdutoGrade: TFDQuery;
    qryProdutoTamanho: TFDQuery;
    qryHistoricoMovimento: TFDQuery;
    dspEntradaLocalEntregaRetirada: TDataSetProvider;
    dspEntradaTransportadora: TDataSetProvider;
    dspEntradaTransportadoraReboque: TDataSetProvider;
    dspEstado: TDataSetProvider;
    dspEstoqueContagemCabecalho: TDataSetProvider;
    dspProdutoCor: TDataSetProvider;
    dspEstoqueContagemDetalhe: TDataSetProvider;
    dspProdutoGrade: TDataSetProvider;
    dspProdutoTamanho: TDataSetProvider;
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
    qryPessoaTransportadoraidpessoa: TIntegerField;
    qryPessoaTransportadoraobservacao: TWideMemoField;
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
    qryCSTICMS: TFDQuery;
    qryCSTCSOSN: TFDQuery;
    dspCSTICMS: TDataSetProvider;
    dspCSTCSOSN: TDataSetProvider;
    qryCSTICMSidcsticms: TIntegerField;
    qryCSTICMSdescricao: TWideStringField;
    qryCSTICMSobservacao: TWideMemoField;
    qryFiltroSalvo: TFDQuery;
    dspFiltroSalvo: TDataSetProvider;
    qryFiltroSalvoidfiltrosalvo: TIntegerField;
    qryFiltroSalvonome: TWideStringField;
    qryFiltroSalvousuario: TWideStringField;
    qryFiltroSalvoform: TWideStringField;
    qryProdutoCorcodigo: TWideStringField;
    qryProdutoCornome: TWideStringField;
    qryProdutoCoridprodutocor: TIntegerField;
    qryProdutoGradeidprodutograde: TIntegerField;
    qryProdutoGradeidproduto: TIntegerField;
    qryProdutoGradeidprodutocor: TIntegerField;
    qryProdutoGradeidprodutotamanho: TIntegerField;
    qryProdutoGradecodigo: TIntegerField;
    qryProdutoGradeprodutonome: TWideStringField;
    qryProdutoGradecornome: TWideStringField;
    qryProdutoGradetamanhonome: TWideStringField;
    qryProdutoTamanhoidprodutotamanho: TIntegerField;
    qryProdutoTamanhocodigo: TWideStringField;
    qryProdutoTamanhonome: TWideStringField;
    qrySQL: TFDQuery;
    qryTabelaPreco: TFDQuery;
    dspTabelaPreco: TDataSetProvider;
    qryTabelaPrecoidtabelapreco: TIntegerField;
    qryTabelaPreconome: TWideStringField;
    qryFiltroSalvofiltrosql: TMemoField;
    qryFiltroSalvofiltrodisplay: TMemoField;
    dspSQL: TDataSetProvider;
    qryGetClient: TFDQuery;
    dspGetClient: TDataSetProvider;
    qryPessoaClienteidpessoa: TIntegerField;
    qryPessoaClienteobservacao: TWideMemoField;
    qryPessoaClientegerafinanceiro: TBooleanField;
    qryPessoaClientelimitecredito: TFloatField;
    qryPessoaClienteativo: TBooleanField;
    qryPessoaColaboradoridbanco: TWideStringField;
    qryPessoaColaboradoridsetor: TIntegerField;
    qryPessoaColaboradoridcargo: TIntegerField;
    qryPessoaColaboradoridpessoa: TIntegerField;
    qryPessoaColaboradormatricula: TWideStringField;
    qryPessoaColaboradorfoto3x4: TWideMemoField;
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
    qryPessoaContadorcrc: TWideStringField;
    qryPessoaContadoridunidadenegocio: TIntegerField;
    qryPessoaContadornomefantasia: TWideStringField;
    qryPessoaFornecedoridpessoa: TIntegerField;
    qryPessoaFornecedordesde: TDateField;
    qryPessoaFornecedorlocalizacao: TBooleanField;
    qryPessoaFornecedorsofreretencao: TBooleanField;
    qryPessoaFornecedorobservacao: TWideMemoField;
    qryPessoaFornecedorprazomedioentrega: TIntegerField;
    qryPessoaFornecedorgerafaturamento: TBooleanField;
    qryPessoaFornecedornumerodiasprimeirovencimento: TIntegerField;
    qryPessoaFornecedornumerodiasintervalo: TIntegerField;
    qryPessoaFornecedorquantidadeparcelas: TIntegerField;
    qryPessoaRepresentanteidpessoa: TIntegerField;
    qryPessoaRepresentantecomissao: TFloatField;
    qryPessoaRepresentantemetavendas: TFloatField;
    qryPessoaRepresentanteidunidadenegocio: TIntegerField;
    qryPessoaRepresentantenomefantasia: TWideStringField;
    qryPessoaVendedoridpessoa: TIntegerField;
    qryPessoaVendedorcomissao: TFloatField;
    qryPessoaVendedormetavendas: TFloatField;
    qryPessoaVendedoridunidadenegocio: TIntegerField;
    qryPessoaVendedornomefantasia: TWideStringField;
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
    qryPessoarepresentante2: TBooleanField;
    qryPessoadatacadastro: TDateField;
    dsPessoa: TDataSource;
    qryMunicipioidmunicipio: TIntegerField;
    qryMunicipionome: TWideStringField;
    qryMunicipioidestado: TWideStringField;
    qryMunicipioestadonome: TWideStringField;
    qryPessoaColaboradorbanconome: TWideStringField;
    qryProdutoncmnome: TWideStringField;
    qryProdutoTabelaPrecoidtabelapreco: TIntegerField;
    qryProdutoTabelaPrecotabelapreconome: TWideStringField;
    qryProdutoFornecedoridprodutofornecedor: TIntegerField;
    qryProdutoFornecedorcodigoprodutofornecedor: TWideStringField;
    qryProdutoFornecedoridproduto: TIntegerField;
    qryProdutoFornecedordataultimacompra: TDateField;
    qryProdutoFornecedorprecoultimacompra: TFloatField;
    qryProdutoFornecedorprodutonome: TWideStringField;
    qryProdutoFornecedorfornecedornome: TWideStringField;
    qryPessoaativo: TBooleanField;
    qryUnidadeNegocioempresarazaosocial: TWideStringField;
    qryRegraFiscalidregrafiscal: TIntegerField;
    qryRegraFiscalidpessoa: TIntegerField;
    qryRegraFiscalidregrafiscalobservacao: TIntegerField;
    qryRegraFiscalidtipooperacao: TIntegerField;
    qryRegraFiscalidpais: TIntegerField;
    qryRegraFiscalidmunicipio: TIntegerField;
    qryRegraFiscalidestado: TWideStringField;
    qryRegraFiscalidunidadenegocio: TIntegerField;
    qryRegraFiscalidncm: TIntegerField;
    qryRegraFiscalpficmscst: TIntegerField;
    qryRegraFiscalpficmsaliquota: TFloatField;
    qryRegraFiscalpficmspercentualreducao: TFloatField;
    qryRegraFiscalpfcsosn: TIntegerField;
    qryRegraFiscalpfipicst: TIntegerField;
    qryRegraFiscalpfipiclasseenquadramento: TIntegerField;
    qryRegraFiscalpfipicodigoenquadramento: TIntegerField;
    qryRegraFiscalpfipialiquota: TFloatField;
    qryRegraFiscalpfpiscst: TIntegerField;
    qryRegraFiscalpfpisaliquota: TFloatField;
    qryRegraFiscalpfcofinscst: TIntegerField;
    qryRegraFiscalpfcofinsaliquota: TFloatField;
    qryRegraFiscalpfissaliquota: TIntegerField;
    qryRegraFiscalpfisspercentualreducao: TFloatField;
    qryRegraFiscalpfmovimentaestoque: TBooleanField;
    qryRegraFiscalpfcontrolaparcelas: TBooleanField;
    qryRegraFiscalpfadicionaipibcicms: TBooleanField;
    qryRegraFiscalpfadicionafretebcicms: TBooleanField;
    qryRegraFiscalpfadicionasegurobcicms: TBooleanField;
    qryRegraFiscalpfadicionaoutrasdespesasbcicms: TBooleanField;
    qryRegraFiscalpjicmscst: TIntegerField;
    qryRegraFiscalpjicmsaliquota: TFloatField;
    qryRegraFiscalpjicmspercentualreducao: TFloatField;
    qryRegraFiscalpjicmsstaliquota: TFloatField;
    qryRegraFiscalpjicmsstmva: TFloatField;
    qryRegraFiscalpjicmsstpercentualreducao: TFloatField;
    qryRegraFiscalpjcsosn: TIntegerField;
    qryRegraFiscalpjipicst: TIntegerField;
    qryRegraFiscalpjipiclasseenquadramento: TIntegerField;
    qryRegraFiscalpjipicodigoenquadramento: TIntegerField;
    qryRegraFiscalpjipialiquota: TFloatField;
    qryRegraFiscalpjpiscst: TIntegerField;
    qryRegraFiscalpjpisaliquota: TFloatField;
    qryRegraFiscalpjpisaliquotast: TFloatField;
    qryRegraFiscalpjcofinscst: TIntegerField;
    qryRegraFiscalpjcofinsaliquota: TFloatField;
    qryRegraFiscalpjcofinsaliquotast: TFloatField;
    qryRegraFiscalpjissaliquota: TFloatField;
    qryRegraFiscalpjissreducaobc: TFloatField;
    qryRegraFiscalpjissretencao: TFloatField;
    qryRegraFiscalpjirretencao: TFloatField;
    qryRegraFiscalpjpisretencao: TFloatField;
    qryRegraFiscalpjcofinsretencao: TFloatField;
    qryRegraFiscalpjcsllretencao: TFloatField;
    qryRegraFiscalpjinssretencao: TFloatField;
    qryRegraFiscalpjmovimentaestoque: TBooleanField;
    qryRegraFiscalpjcontrolaparcelas: TBooleanField;
    qryRegraFiscalpjadicionaipibcicms: TBooleanField;
    qryRegraFiscalpjadicionafretebcicms: TBooleanField;
    qryRegraFiscalpjadicionasegurobcicms: TBooleanField;
    qryRegraFiscalpjadicionaoutrasdespesasbcicms: TBooleanField;
    qryRegraFiscalinativo: TBooleanField;
    qryRegraFiscalidcfop: TIntegerField;
    qryRegraFiscalpessoanome: TWideStringField;
    qryRegraFiscaltipooperacaodescricao: TWideStringField;
    qryRegraFiscalpaisnome: TWideStringField;
    qryRegraFiscalmunicipionome: TWideStringField;
    qryRegraFiscalnomefantasia: TWideStringField;
    qryRegraFiscalcfopdescricao: TWideStringField;
    qryRegraFiscalobservacao2: TWideMemoField;
    qryRegraFiscalestadonome: TWideStringField;
    qryRegraFiscalncmdescricao: TWideStringField;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure BeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure UpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspPessoaAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure conexaoBeforeConnect(Sender: TObject);
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
    //nome das tabelas e campos sempre em minúsculo
    const selectauditoria: array[1..5] of string = ('select auditoria.*, unidadenegocio.nomefantasia',
      ' from auditoria inner join unidadenegocio on auditoria.idunidadenegocio = unidadenegocio.idunidadenegocio',' ',
      ' order by idauditoria',' limit 0 ');
    const selectbanco: array[1..5] of string = ('select *',' from banco',' ',' order by idbanco',' limit 0 ');
    const selectcargo: array[1..5] of string = ('select cargo.*, cbo.nome  as cbonome',
      ' from cargo inner join cbo on cargo.idcbo = cbo.idcbo',' ',' order by idcargo',' limit 0 ');
    const selectcbo: array[1..5] of string = ('select *',' from cbo',' ',' order by idcbo',' limit 0 ');
    const selectcep: array[1..5] of string = ('select cep.*, municipio.nome as municipionome',
    ' from cep inner join municipio on cep.idmunicipio = municipio.idmunicipio',' ',
    ' order by idcep',' limit 0 ');
    const selectcfop: array[1..5] of string = ('select cfop.*, tipooperacao.descricao as tipooperacaodescricao',
      ' from cfop inner join tipooperacao on cfop.idtipooperacao = tipooperacao.idtipooperacao',' ',
      ' order by idcfop',' limit 0 ');
    const selectcnae: array[1..5] of string = ('select *',' from cnae',' ',' order by idcnae',' limit 0 ');
    const selectcontrole: array[1..5] of string = ('select *',' from controle',' ',' order by idcontrole',' limit 0 ');
    const selectcstcofins: array[1..5] of string = ('select *',' from cstcofins',' ',' order by idcstcofins',' limit 0 ');
    const selectcstipi: array[1..5] of string = ('select *',' from cstipi',' ',' order by idcstipi',' limit 0 ');
    const selectcstpis: array[1..5] of string = ('select *',' from cstpis',' ',' order by idcstpis',' limit 0 ');
    const selectdocumento: array[1..5] of string = ('select *',' from documento',' ',' order by iddocumento',' limit 0 ');
    const selectecfcabecalho: array[1..5] of string = ('select ecfcabecalho.*, unidadenegocio.nomefantasia, pessoa.nome as pessoanome',
      ' from ecfcabecalho inner join unidadenegocio on ecfcabecalho.idunidadenegocio = unidadenegocio.idunidadenegocio'+
      ' inner join pessoa on ecfcabecalho.idpessoa = pessoa.idpessoa',' ',' order by idecfcabecalho',' limit 0 ');
    const selectecfitem: array[1..5] of string = ('select ecfitem.*, produto.descricao as produtodescricao',' from ecfitem'+
      ' inner join produto on ecfitem.idproduto = produto.idproduto',' ',' order by idecfitem',' limit 0 ');
    const selectempresa: array[1..5] of string = ('select *',' from empresa',' ',' order by idempresa',' limit 0 ');
    const selectendereco: array[1..5] of string = ('select *',' from endereco',' ',' order by idendereco',' limit 0 ');
    const selectentradacabecalho: array[1..5] of string = ('select entradacabecalho.*, unidadenegocio.nomefantasia, pessoa.nome as pessoanome',
      ' from entradacabecalho inner join unidadenegocio on entradacabecalho.idunidadenegocio = unidadenegocio.idunidadenegocio'+
      ' inner join pessoa on entradacabecalho.idpessoa = pessoa.idpessoa',' ',' order by identradacabecalho',' limit 0 ');
    const selectentradaduplicata: array[1..5] of string = ('select *',' from entradaduplicata',' ',' order by identradaduplicata',' limit 0 ');
    const selectentradaitem: array[1..5] of string = ('select entradaitem.*, produto.descricao as produtodescricao',
      ' from entradaitem inner join produto on entradaitem.idproduto = produto.idproduto',' ',' order by identradaitem',' limit 0 ');
    const selectentradaitemimposto: array[1..5] of string = ('select *',' from entradaitemimposto',' ',' order by identradaitemimposto',' limit 0 ');
    const selectentradalocalentregaretirada: array[1..5] of string = ('select *',' from entradalocalentregaretirada',' ',
      ' order by identradalocalentregaretirada',' limit 0 ');
    const selectentradatransportadora: array[1..5] of string = ('select entradatransportadora.*, pessoa.nome as pessoanome',
      ' from entradatransportadora inner join pessoa on entradatransportadora.idpessoa = pessoa.idpessoa',' ',
      ' order by identradatransportadora',' limit 0 ');
    const selectentradatransportadorareboque: array[1..5] of string = ('select *',' from entradatransportadorareboque',' ',
      ' order by identradatransportadorareboque',' limit 0 ');
    const selectestado: array[1..5] of string = ('select estado.*, pais.nome as paisnome',' from estado'+
      ' inner join pais on estado.idpais = pais.idpais',' ',' order by idestado',' limit 0 ');
    const selectestoquecontagemcabecalho: array[1..5] of string = ('select estoquecontagemcabecalho.*, empresa.nomefantasia',
      ' from estoquecontagemcabecalho inner join empresa on estoquecontagemcabecalho.idempresa = empresa.idempresa',
      ' ',' order by idestoquecontagemcabecalho',' limit 0 ');
    const selectprodutocor: array[1..5] of string = ('select *',' from produtocor',' ',' order by idprodutocor',' limit 0 ');
    const selectestoquecontagemdetalhe: array[1..5] of string = ('select estoquecontagemdetalhe.*, produto.nome as produtonome',
      ' from estoquecontagemdetalhe inner join produto on estoquecontagemdetalhe.idproduto = produto.idproduto',
      ' ',' order by idestoquecotagemdetalhe',' limit 0 ');
    const selectprodutograde: array[1..5] of string = ('select produtograde.*, produto.nome as produtonome, produtocor.nome as cornome,'+
      ' produtotamanho.nome as tamanhonome',' from produtograde inner join produto on produtograde.idproduto = produto.idproduto'+
      ' inner join produtocor on produtograde.idprodutocor = produtocor.idprodutocor'+
      ' inner join produtotamanho on produtograde.idprodutotamanho = produtotamanho.idprodutotamanho',' ',' order by idprodutograde',' limit 0 ');
    const selectprodutotamanho: array[1..5] of string = ('select *',' from produtotamanho',' ',' order by idprodutotamanho',' limit 0 ');
    const selectfiltrosalvo: array[1..5] of string = ('select *',' from filtrosalvo',' ',' order by idfiltrosalvo',' limit 0 ');
    const selecthistoricomovimento: array[1..5] of string = ('select *',' from historicomovimento',' ',' order by idhistoricomovimento',' limit 0 ');
    const selectindicadoreconomico: array[1..5] of string = ('select *',' from indicadoreconomico',' ',' order by idindicadoreconomico',' limit 0 ');
    const selectindice: array[1..5] of string = ('select indice.*, indicadoreconomico.descricao as indicadordescricao',
      ' from indice inner join indicadoreconomico on indice.idindicadoreconomico = indicadoreconomico.idindicadoreconomico',
      ' ',' order by idindice',' limit 0 ');
    const selectlicitacao: array[1..5] of string = ('select licitacao.*, pessoa.nome as pessoanome, unidadenegocio.nomefantasia',
      ' from licitacao inner join pessoa on licitacao.idpessoa = pessoa.idpessoa'+
      ' inner join unidadenegocio on licitacao.idunidadenegocio = unidadenegocio.idunidadenegocio',' ',' order by idlicitacao',' limit 0 ');
    const selectlicitacaodocumento: array[1..5] of string = ('select *',' from licitacaodocumento',' ',' order by idlicitacaodocumento',' limit 0 ');
    const selectmodelo: array[1..5] of string = ('select *',' from modelo',' ',' order by idmodelo',' limit 0 ');
    const selectmovimento: array[1..5] of string = ('select movimento.*, planocontasfinanceiro.descricao as planofinanceirodescricao,'+
      ' planocontasgerencial.descricao as planogerencialdescricao, portador.descricao as portadordescricao,'+
      ' unidadenegocio.nomefantasia, pessoa.nome as pessoanome',' from movimento'+
      ' inner join planocontasfinanceiro on movimento.idplanocontasfinanceiro = planocontasfinanceiro.idplanocontasfinanceiro'+
      ' inner join planocontasgerencial on movimento.idplanocontasgerencial = planocontasgerencial.idplanocontasgerencial'+
      ' inner join portador on movimento.idportador = portador.idportador'+
      ' inner join unidadenegocio on movimento.idunidadenegocio = unidadenegocio.idunidadenegocio'+
      ' inner join pessoa on movimento.idpessoa = pessoa.idpessoa',' ',' order by idmovimento',' limit 0 ');
    const selectmovimentocheque: array[1..5] of string = ('select movimentocheque.*, banco.nome as banconome',
      ' from movimentocheque inner join banco on movimentocheque.idbanco = banco.idbanco',' ',' order by idmovimentocheque',' limit 0 ');
    const selectmunicipio: array[1..5] of string = ('select municipio.*, estado.nome as estadonome',
      ' from municipio left join estado on municipio.idestado=estado.idestado',' ',' order by idestado, municipio.nome',' limit 0 ');
    const selectncm: array[1..5] of string = ('select *',' from ncm',' ',' order by idncm',' limit 0 ');
    const selectnfecabecalho: array[1..5] of string = ('select nfecabecalho.*, unidadenegocio.nomefantasia',
      ' from nfecabecalho inner join unidadenegocio on nfecabecalho.idunidadenegocio = unidadenegocio.idunidadenegocio','',
      ' order by idnfecabecalho',' limit 0 ');
    const selectnfecupomfiscalreferenciado: array[1..5] of string = ('select *',' from nfecupomfiscalreferenciado',' ',
      ' order by idnfecupomfiscalreferenciado',' limit 0 ');
    const selectnfedeclaracaoimportacao: array[1..5] of string = ('select *',' from nfedeclaracaoimportacao',' ',
      ' order by idnfedeclaracaoimportacao',' limit 0 ');
    const selectnfedestinatario: array[1..5] of string = ('select nfedestinatario.*, pais.nome as paisnome,'+
      ' municipio.nome as municipionome',' from nfedestinatario inner join pais on nfedestinatario.idpais = pais.idpais'+
      ' inner join municipio on nfedestinatario.idmunicipio = municipio.idmunicipio',' ',' order by idnfedestinatario',' limit 0 ');
    const selectnfeduplicata: array[1..5] of string = ('select *',' from nfeduplicata',' ',' order by idnfeduplicata',' limit 0 ');
    const selectnfeimportacaodetalhe: array[1..5] of string = ('select *',' from nfeimportacaodetalhe',' ',
      ' order by idnfeimportacaodetalhe',' limit 0 ');
    const selectnfeitem: array[1..5] of string = ('select nfeitem.*, produto.nome as produtonome',' from nfeitem'+
      ' inner join produto on nfeitem.idproduto = produto.idproduto',' ',' order by idnfeitem',' limit 0 ');
    const selectnfeitemii: array[1..5] of string = ('select *',' from nfeitemii',' ',' order by idnfeitemii',' limit 0 ');
    const selectnfeitemimposto: array[1..5] of string = ('select *',' from nfeitemimposto',' ',' order by idnfeitemimposto',' limit 0 ');
    const selectnfelocalentregaretirada: array[1..5] of string = ('select *',' from nfelocalentregaretirada',' ',
      ' order by idnfelocalentregaretirada',' limit 0 ');
    const selectnfenfreferenciada: array[1..5] of string = ('select *',' from nfenfreferenciada',' ',' order by idnfenfreferenciada',' limit 0 ');
    const selectnfeprodutorruralreferenciada: array[1..5] of string = ('select *',' from nfeprodutorruralreferenciada',
      ' ',' order by idnfeprodutorruralreferenciada',' limit 0 ');
    const selectnfereferenciada: array[1..5] of string = ('select *',' from nfereferenciada',' ',
      ' order by idnfereferenciada',' limit 0 ');
    const selectnfetransportadora: array[1..5] of string = ('select nfetransportadora.*, municipio.nome as municipionome,'+
      ' cfop.descricao as cfopdescricao',' from nfetransportadora'+
      ' inner join municipio on nfetransportadora.idmunicipio = municipio.idmunicipio'+
      ' inner join cfop on nfetransportadora.idcfop = cfop.idcfop',' ',' order by idnfetransportadora',' limit 0 ');
    const selectnfetransportadorareboque: array[1..5] of string = ('select *',' from nfetransportadorareboque',
      ' ',' order by idnfetransportadorareboque',' limit 0 ');
    const selectorcamentocabecalho: array[1..5] of string = ('select orcamentocabecalho.*, unidadenegocio.nomefantasia,'+
      ' pessoa.nome as pessoanome',' from orcamentocabecalho'+
      ' inner join unidadenegocio on orcamentocabecalho.idunidadenegocio = unidadenegocio.idunidadenegocio'+
      ' inner join pessoa on orcamentocabecalho.idpessoa = pessoa.idpessoa',
      ' ',' order by idorcamentocabecalho',' limit 0 ');
    const selectorcamentoitem: array[1..5] of string = ('select orcamentoitem.*, produto.nome as produtonome',
      ' from orcamentoitem inner join produto on orcamentoitem.idproduto = produto.idproduto',
      ' ',' order by idorcamentoitem',' limit 0 ');
    const selectpais: array[1..5] of string = ('select pais.*, indicadoreconomico.descricao as indicadordescricao',
      ' from pais inner join indicadoreconomico on pais.idindicadoreconomico = indicadoreconomico.idindicadoreconomico',
      ' ',' order by nome',' limit 0 ');
    const selectpedidocabecalho: array[1..5] of string = ('select pedidocabecalho.*, unidadenegocio.nomefantasia, '+
      ' pessoa.nome as pessoanome',' from pedidocabecalho '+
      ' inner join unidadenegocio on pedidocabecalho.idunidadenegocio = unidadenegocio.idunidadenegocio'+
      ' inner join pessoa on pedidocabecalho.idpessoa = pessoa.idpessoa',' ',' order by idpedidocabecalho',' limit 0 ');
    const selectpedidoitem: array[1..5] of string = ('select pedidoitem.*, produto.nome as produtonome',
      ' from pedidoitem inner join produto on pedidoitem.idproduto = produto.idproduto',' ',' order by idpedidoitem',' limit 0 ');
    const selectpessoa: array[1..5] of string = ('select pessoa.*',' from pessoa',' ',' order by idpessoa',' limit 0 ');
    const selectpessoacliente: array[1..5] of string = ('select *',' from pessoacliente',' where idpessoa = :idpessoa ',' ',' ');
    const selectpessoacolaborador: array[1..5] of string = ('select pessoacolaborador.*, setor.nome as setornome, '+
      ' cargo.nome as cargonome, banco.nome as banconome',' from pessoacolaborador inner join setor on pessoacolaborador.idsetor = setor.idsetor'+
      ' inner join cargo on pessoacolaborador.idcargo = cargo.idcargo inner join banco on pessoaColaborador.idBanco = banco.idBanco',
      ' where idpessoa = :idpessoa ',' ',' ');
    const selectpessoacontador: array[1..5] of string = ('select pessoacontador.*, unidadenegocio.nomefantasia',
      ' from pessoacontador inner join unidadenegocio on pessoacontador.idunidadenegocio = unidadenegocio.idunidadenegocio',
      ' where idpessoa = :idpessoa ',' ',' ');
    const selectpessoafornecedor: array[1..5] of string = ('select *',' from pessoafornecedor',' where idpessoa = :idpessoa ',' ',' ');
    const selectpessoarepresentante: array[1..5] of string = ('select pessoarepresentante.*, unidadenegocio.nomefantasia',
      ' from pessoarepresentante inner join unidadenegocio on pessoarepresentante.idunidadenegocio = unidadenegocio.idunidadenegocio',
      ' where idpessoa = :idpessoa ',' ',' ');
    const selectpessoatransportadora: array[1..5] of string = ('select *',' from pessoatransportadora',
      ' where idpessoa = :idpessoa ',' ',' ');
    const selectpessoavendedor: array[1..5] of string = ('select pessoavendedor.*, unidadenegocio.nomefantasia',
      ' from pessoavendedor inner join unidadenegocio on pessoavendedor.idunidadenegocio = unidadenegocio.idunidadenegocio',
      ' where idpessoa = :idpessoa ',' ',' ');
    const selectplanocontasfinanceiro: array[1..5] of string = ('select *',' from planocontasfinanceiro',' ',
      ' order by idplanocontasfinanceiro',' limit 0 ');
    const selectplanocontasgerencial: array[1..5] of string = ('select *',' from planocontasgerencial',' ',
      ' order by idplanocontasgerencial',' limit 0 ');
    const selectportador: array[1..5] of string = ('select portador.*, banco.nome as banconome',' from portador'+
      ' inner join banco on portador.idbanco = banco.idbanco',' ',' order by idportador',' limit 0 ');
    const selectportadorhistorico: array[1..5] of string = ('select *',' from portadorhistorico',' ',
      ' order by idportadorhistorico',' limit 0 ');
    const selectproduto: array[1..5] of string = ('select produto.*, produtoGrupo.nome as grupoNome,' +
      ' produtoSubGrupo.nome as subGrupoNome, ncm.descricao as ncmnome','from produto' +
      ' inner join produtoGrupo on produto.idGrupoProdutos = produtoGrupo.idGrupoProdutos' +
      ' inner join produtoSubGrupo on produto.idSubGrupoProdutos = produtoSubGrupo.idSubGrupoProdutos' +
      ' inner join ncm on produto.idncm=ncm.idncm', ' ', ' order by idProduto', ' limit 0 ');
    const selectprodutofornecedor: array[1..5] of string = ('select *, produto.nome as produtonome, pessoa.nome as fornecedornome',
      ' from produtofornecedor','inner join produto on produtoFornecedor.idProduto=produto.idProduto' +
      ' inner join pessoa on produtoFornecedor.idprodutoFornecedor=pessoa.idPessoa', ' order by idprodutofornecedor',' limit 0 ');
    const selectprodutogrupo: array[1..5] of string = ('select *',' from produtogrupo',' ',' order by idgrupoprodutos',' limit 0 ');
    const selectprodutopromocao: array[1..5] of string = ('select produtopromocao.*, produto.nome as produtonome',
      ' from produtopromocao inner join produto on produtopromocao.idproduto = produto.idproduto',
      ' ',' order by idprodutopromocao',' limit 0 ');
    const selectprodutosubgrupo: array[1..5] of string = ('select produtosubgrupo.*, produtogrupo.nome as gruponome',
      ' from produtosubgrupo inner join produtogrupo on produtosubgrupo.idgrupoprodutos = produtogrupo.idgrupoprodutos',
      ' ',' order by idsubgrupoprodutos',' limit 0 ');
    const selectprodutotabelapreco: array[1..5] of string = ('select produtoTabelaPreco.*, produto.nome as produtoNome,' +
      ' TabelaPreco.nome as TabelaPrecoNome',
      ' from produtotabelapreco inner join produto on produtotabelapreco.idproduto = produto.idproduto' +
      ' inner join TabelaPreco on TabelaPreco.idtabelapreco = ProdutoTabelaPreco.idprodutotabelapreco',' ',
      ' order by idprodutotabelapreco',' limit 0 ');
    const selectprodutounidade: array[1..5] of string = ('select *',' from produtounidade',' ',' order by idprodutounidade',' limit 0 ');
    const selectprodutounidadeconversao: array[1..5] of string = ('select produtounidadeconversao.*, '+
      ' produto.nome as produtonome, produtounidade.sigla as unidadesigla',
      ' from produtounidadeconversao inner join produto on produtounidadeconversao.idproduto = produto.idproduto'+
      ' inner join produtounidade on produtounidadeconversao.idprodutounidade = produtounidade.idprodutounidade','',
      ' order by idprodutounidadeconversao',' limit 0 ');
    const selectregrafiscal: array[1..5] of string = ('select regrafiscal.*, pessoa.nome as pessoanome, '+
      ' tipooperacao.descricao as tipooperacaodescricao, pais.nome as paisnome, municipio.nome as municipionome, '+
      ' unidadenegocio.nomefantasia, cfop.descricao as cfopdescricao, regrafiscalobservacao.observacao as observacao, '+
      ' estado.nome as estadonome, ncm.descricao as ncmdescricao ',
      ' from regrafiscal inner join pessoa on regrafiscal.idpessoa = pessoa.idpessoa '+
      ' inner join tipooperacao on regrafiscal.idtipooperacao = tipooperacao.idtipooperacao '+
      ' inner join pais on regrafiscal.idpais = pais.idpais '+
      ' inner join municipio on regrafiscal.idmunicipio = municipio.idmunicipio '+
      ' inner join unidadenegocio on regrafiscal.idunidadenegocio = unidadenegocio.idunidadenegocio '+
      ' inner join cfop on regrafiscal.idcfop = cfop.idcfop '+
      ' inner join regrafiscalobservacao on regrafiscal.idregrafiscalobservacao = regrafiscalobservacao.idregrafiscalobservacao'+
      ' inner join estado on regrafiscal.idestado = estado.idestado '+
      ' inner join ncm on regrafiscal.idncm = ncm.idncm ',
      ' ',' order by idregrafiscal',' limit 0 ');
    const selectregrafiscalobservacao: array[1..5] of string = ('select *',' from regrafiscalobservacao',' ',
      ' order by idregrafiscalobservacao',' limit 0 ');
    const selectserie: array[1..5] of string = ('select * ',' from serie ',' ',' order by idserie ',' limit 0 ');
    const selectsetor: array[1..5] of string = ('select *',' from setor',' ',' order by idsetor',' limit 0 ');
    const selecttabelapreco: array[1..5] of string = ('select * ','from tabelapreco ',' ','order by idtabelapreco ','limit 0');
    const selecttelefone: array[1..5] of string = ('select *',' from telefone',' ',' order by idtelefone',' limit 0 ');
    const selecttipooperacao: array[1..5] of string = ('select *',' from tipooperacao',' ',' order by tipooperacao',' limit 0 ');
    const selecttipotelefone: array[1..5] of string = ('select *',' from tipotelefone',' ',' order by idtipotelefone',' limit 0 ');
    const selectunidadenegocio: array[1..5] of string = ('select unidadenegocio.*, cnae.denominacao as cnaedenominacao, '+
      ' empresa.razaosocial as empresarazaosocial',
      ' from unidadenegocio inner join cnae on unidadenegocio.idcnae = cnae.idcnae '+
      ' inner join empresa on unidadenegocio.idempresa = empresa.idempresa',' ',' order by idunidadenegocio',' limit 0 ');
    const selectcsticms: array[1..5] of string = ('select *','from csticms','','order by idcsticms',' limit 0 ');
    const selectcstcsosn: array[1..5] of string = ('select *','from cstcsosn','','order by idcstcsosn',' limit 0 ');
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    //Procedures de manipulação dos Filtros
    procedure getFiltosSalvos(form, usuario:String);
    procedure newFiltro(nome,form,usuario,filtroDisplay,filtroSQL: String);
    procedure deleteFiltro(id : integer);

    procedure getClient(SQL: String);

    //Procedures utilizadas pelo Cliente para aplicação de filtros - DJD
    procedure setSQL(SQL: String);

    //Function que manipula a qrySQL para INSERT, UPDATE e DELETE no Banco de Dados
    function executaSQL(SQL: String): Boolean;
    function getErroExecutaSQL(): String;

    procedure setUsuario(Usuario : String);
    function getUsuario():String;

    procedure setSenha(Senha : String);
    function getSenha():String;

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
    procedure setSQLProdutoCor(filtro: String);
    procedure setSQLProdutoGrade(filtro: String);
    procedure setSQLProdutoTamanho(filtro: String);
    procedure setSQLFiltroSalvo(filtro: String);
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
    procedure setSQLTabelaPreco(filtro: String);
    procedure setSQLTelefone(filtro: String);
    procedure setSQLTipoOperacao(filtro: String);
    procedure setSQLTipoTelefone(filtro: String);
    procedure setSQLUnidadeNegocio(filtro: String);
    procedure setSQLCSTICMS(filtro: String);
    procedure setSQLCSTCSOSN(filtro: String);

    function getIDPessoaManipulado(): Integer;
    function pessoaBloqueada():Boolean;
    procedure setPessoaBloqueio(Bloquear:Boolean);
  end;

  var
    arq : TextFile;
    IDPessoaManipulada : Integer;
    bloqueiaPessoa : Boolean;
    erroExecutaSQL : String;
    vgUsuario : String;
    vgSenha : String;

implementation

{$R *.dfm}

uses System.StrUtils;

procedure TServerMethods.setUsuario(Usuario : String);
begin
  vgUsuario := Usuario;
  LOGopen;
  LOGadd('Usuário setado: ['+Usuario+']');
  LOGclose;
end;

function TServerMethods.getUsuario():String;
begin
  Result := vgUsuario;
end;

procedure TServerMethods.setSenha(Senha : String);
begin
  vgSenha := Senha;
  LOGopen;
  LOGadd('Senha setada: ['+Senha+']');
  LOGclose;
end;

function TServerMethods.getSenha():String;
begin
  Result := vgSenha;
end;

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

procedure TServerMethods.newFiltro(nome, form, usuario, filtroDisplay, filtroSQL: String);
begin
  LOGopen;
  LOGadd('Novo Filtro adicionado '+#13+'Nome: '+nome+#13+'Usuario: '+usuario+#13+'Form: '+form+#13+'Display: ['+
    filtroDisplay+']'+#13+'SQL: ['+filtroSQL+']');
  LOGclose;

  if not(qryFiltroSalvo.Active) then
    qryFiltroSalvo.Open();
  qryFiltroSalvo.Insert;
  qryFiltroSalvonome.AsString := nome;
  qryFiltroSalvousuario.AsString := usuario;
  qryFiltroSalvoform.AsString := form;
  qryFiltroSalvofiltrodisplay.AsString := filtroDisplay;
  qryFiltroSalvofiltrosql.AsString := filtroSQL;
  qryFiltroSalvo.Post;

  qryFiltroSalvo.Close;
end;

function TServerMethods.pessoaBloqueada: Boolean;
begin
  Result := bloqueiaPessoa;
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
    if (where = '') or (where = ' ') or (where = '  ') then
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

procedure TServerMethods.deleteFiltro(id: integer);
begin
  qrySQL.Close;
  qrySQL.SQL.Clear;
  qrySQL.SQL.Add('delete from filtrosalvo where idfiltrosalvo = '+IntToStr(id));
  qrySQL.ExecSQL;
end;

procedure TServerMethods.dspPessoaAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  if UpdateKind = ukInsert then
  begin
    getClient('select max(idpessoa) as idpessoa from pessoa');
    qryGetClient.Open();
    IDPessoaManipulada := qryGetClient.FieldByName('idpessoa').AsInteger;
    qryGetClient.Close;
  end
  else
  begin
    IDPessoaManipulada := DeltaDS.FieldByName('idpessoa').AsInteger;
  end;

  LOGopen;
  LOGadd('ID Pessoa: '+IntToStr(IDPessoaManipulada));
  LOGclose;
end;

procedure TServerMethods.UpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
  UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  LOGopen;
  LOGadd('Falha ocorrida: '+e.ToString);
  LOGclose;
  Response := rrAbort;
  raise Exception.Create(E.ToString);
end;

procedure TServerMethods.BeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
var
  TextoDeUpdate : String;
  I : Integer;
begin
  LOGopen;
  if UpdateKind = ukModify then
  begin
    TextoDeUpdate := 'Edição em '+SourceDS.Name+#13;
    for I := 0 to SourceDS.FieldCount - 1 do
    begin
      if DeltaDS.Fields[I].AsString <> '' then
        TextoDeUpdate := TextoDeUpdate + DeltaDS.Fields[I].DisplayName+' alterado para ['+DeltaDS.Fields[I].AsString+']'+#13;
    end;
  end
  else if UpdateKind = ukInsert then
  begin
    TextoDeUpdate := 'Inserção em '+SourceDS.Name+#13;
    for I := 0 to SourceDS.FieldCount - 1 do
    begin
      if DeltaDS.Fields[I].DataType in [ftString,ftWord,ftFixedChar,ftWideString,ftFixedWideChar,ftLongWord,ftExtended] then
      begin
        TextoDeUpdate := TextoDeUpdate + SourceDS.Fields[I].DisplayName+' = '+'['+DeltaDS.Fields[I].AsString+']'+#13;
      end
      else if DeltaDS.Fields[I].DataType in [ftSmallint,ftInteger,ftFloat,ftCurrency,ftBCD,ftLargeint,ftFMTBcd,ftShortint,ftSingle] then
      begin
        TextoDeUpdate := TextoDeUpdate + SourceDS.Fields[I].DisplayName+' = '+'['+IntToStr(DeltaDS.Fields[I].AsInteger)+']'+#13;
      end
      else if DeltaDS.Fields[I].DataType in [ftDate,ftDateTime] then
      begin
        TextoDeUpdate := TextoDeUpdate + SourceDS.Fields[I].DisplayName+' = '+'['+DateTimeToStr(DeltaDS.Fields[I].AsDateTime)+']'+#13;
      end;
    end;
  end
  else
  begin
    TextoDeUpdate := 'Removido registro de '+SourceDS.Name;
  end;
  LOGadd(TextoDeUpdate);
  LOGclose;
end;

procedure TServerMethods.conexaoBeforeConnect(Sender: TObject);
begin
  With conexao do
  begin
    Params.UserName := vgUsuario;
    Params.Password := vgSenha;
  end;
  LOGopen;
  LOGadd('Conexão ao Banco de Dados. Usuário ['+vgUsuario+']'+' Senha ['+vgSenha+']');
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
  With qryProdutoCor do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoCor[I]);
  end;
  With qryProdutoGrade do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoGrade[I]);
  end;
  With qryProdutoTamanho do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectProdutoTamanho[I]);
  end;
  With qryFiltroSalvo do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectFiltroSalvo[I]);
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
  With qryTabelaPreco do
  begin
    SQL.Clear;
    for I := 1 to 5 do
      SQL.Add(selectTabelaPreco[I]);
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

function TServerMethods.executaSQL(SQL: String): Boolean;
begin
  try
    if qrySQL.Active then
      qrySQL.Close;
    qrySQL.SQL.Clear;

    if (SQL <> '') then
    begin
      qrySQL.SQL.Add(SQL);
      qrySQL.ExecSQL;
      Result := True;

      LOGopen;
      LOGadd('SQL executada com Sucesso: ['+Trim(qrySQL.SQL.Text)+']');
      LOGclose;
    end;
  except
    On E : Exception do
    begin
      Result := False;
      erroExecutaSQL := E.ToString;
      LOGopen;
      LOGadd('SQL Falhou: ['+Trim(qrySQL.SQL.Text)+']');
      LOGadd('Motivo: ['+Trim(E.ToString)+']');
      LOGclose;
    end;
  end;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TServerMethods.getClient(SQL: String);
begin
  try
    if qryGetClient.Active then
      qryGetClient.Close;
    qryGetClient.SQL.Clear;

    if (SQL <> '') then
    begin
      qryGetClient.SQL.Add(SQL);
    end;
  finally

  end;
end;

function TServerMethods.getErroExecutaSQL: String;
begin
  Result := erroExecutaSQL;
end;

procedure TServerMethods.getFiltosSalvos(form, usuario:String);
begin
  qryFiltroSalvo.Close;
  qryFiltroSalvo.SQL.Clear;
  qryFiltroSalvo.SQL.Add('select * from filtrosalvo where form = '+QuotedStr(form)+' and usuario = '+QuotedStr(usuario));
end;

function TServerMethods.getIDPessoaManipulado: Integer;
begin
  while pessoaBloqueada do
  begin
    LOGopen;
    LOGadd('Aguardou outro usuário concluir o cadastro de Pessoa');
    LOGclose;
    sleep(1000);
  end;

  setPessoaBloqueio(True);
  Result := IDPessoaManipulada;
  setPessoaBloqueio(False);
end;

procedure TServerMethods.setPessoaBloqueio(Bloquear: Boolean);
begin
  bloqueiaPessoa := Bloquear;
end;

procedure TServerMethods.setSQL(SQL: String);
begin
  qrySQL.Close;
  qrySQL.SQL.Clear;

  if (SQL <> '') then
  begin
    qrySQL.SQL.Add(SQL);
  end;

  LOGopen;
  LOGadd('Realizada busca no Banco de Dados: ['+Trim(qrySQL.SQL.Text)+']');
  LOGclose;
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

procedure TServerMethods.setSQLProdutoCor(filtro: String);
begin
  alteraSQL(qryProdutoCor,filtro,selectProdutoCor[1],selectProdutoCor[2],selectProdutoCor[3],selectProdutoCor[4]);
end;

procedure TServerMethods.setSQLProdutoGrade(filtro: String);
begin
  alteraSQL(qryProdutoGrade,filtro,selectProdutoGrade[1],selectProdutoGrade[2],selectProdutoGrade[3],selectProdutoGrade[4]);
end;

procedure TServerMethods.setSQLProdutoTamanho(filtro: String);
begin
  alteraSQL(qryProdutoTamanho,filtro,selectProdutoTamanho[1],selectProdutoTamanho[2],selectProdutoTamanho[3],selectProdutoTamanho[4]);
end;

procedure TServerMethods.setSQLFiltroSalvo(filtro: String);
begin
  alteraSQL(qryFiltroSalvo,filtro,selectFiltroSalvo[1],selectFiltroSalvo[2],selectFiltroSalvo[3],selectFiltroSalvo[4]);
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

procedure TServerMethods.setSQLTabelaPreco(filtro: String);
begin
  alteraSQL(qryTabelaPreco,filtro,selectTabelaPreco[1],selectTabelaPreco[2],selectTabelaPreco[3],selectTabelaPreco[4]);
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
