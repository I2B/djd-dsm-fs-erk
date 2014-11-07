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
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
	
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

