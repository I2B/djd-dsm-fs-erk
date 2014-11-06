CREATE TABLE IndicadorEconomico (
  IDIndicadorEconomico SERIAL  NOT NULL ,
  Descricao character varying(30)   NOT NULL ,
  Ativo BOOL  DEFAULT FALSE NOT NULL   ,
PRIMARY KEY(IDIndicadorEconomico));

CREATE TABLE ProdutoGrupo (
  IDgrupoProdutos SERIAL  NOT NULL ,
  Nome character varying(100)    ,
  Descricao TEXT      ,
PRIMARY KEY(IDgrupoProdutos));

CREATE TABLE HistoricoMovimento (
  IDHistoricoMovimento SERIAL  NOT NULL ,
  Descricao character varying(60)    ,
  Tipo CHAR(1)    ,
  ContaLiquidacao INTEGER    ,
  Ativo BOOL      ,
PRIMARY KEY(IDHistoricoMovimento));

CREATE TABLE ProdutoUnidade (
  IDProdutoUnidade SERIAL  NOT NULL ,
  Sigla character varying(10)    ,
  Descricao TEXT      ,
PRIMARY KEY(IDProdutoUnidade));

CREATE TABLE Empresa (
  IDEmpresa SERIAL  NOT NULL ,
  RazaoSocial character varying(60)   NOT NULL ,
  NomeFantasia character varying(60)    ,
  HomePage character varying(300)    ,
  ImagemLogotipo TEXT    ,
  TipoRegime CHAR(1)      ,
PRIMARY KEY(IDEmpresa));

CREATE TABLE Pessoa (
  IDPessoa SERIAL  NOT NULL ,
  Tipo CHAR(1)   NOT NULL ,
  Email character varying(250)    ,
  Site character varying(250)    ,
  Cliente BOOL    ,
  Fornecedor BOOL    ,
  Colaborador BOOL    ,
  Contador BOOL    ,
  Transportadora BOOL    ,
  Vendedor BOOL    ,
  CPF CPF    ,
  CNPJ CNPJ    ,
  RG character varying(20)    ,
  DataNascimento DATE    ,
  Sexo CHAR(1)    ,
  EstadoCivil character varying(20)    ,
  CNHNumero character varying(20)    ,
  CNHCategoria CHAR(2)    ,
  CNHVencimento DATE    ,
  NomeMae character varying(60)    ,
  NomePai character varying(60)    ,
  NomeFantasia character varying(60)    ,
  InscricaoMunicipal character varying(30)    ,
  InscricaoEstadual character varying(30)    ,
  TipoRegime CHAR(1)    ,
  CRT CHAR(1)    ,
  SUFRAMA character varying(9)      ,
PRIMARY KEY(IDPessoa));

CREATE TABLE PlanoContasFinanceiro (
  IDPlanoContasFinanceiro SERIAL  NOT NULL ,
  Codigo character varying(7)    ,
  Descricao character varying(60)    ,
  Tipo CHAR(1)    ,
  Ativo BOOL      ,
PRIMARY KEY(IDPlanoContasFinanceiro));

CREATE TABLE Modelo (
  IDModelo CHAR(2)  NOT NULL ,
  Descricao character varying(50)   NOT NULL   ,
PRIMARY KEY(IDModelo));

CREATE TABLE EstoqueCor (
  IDEstoqueCor SERIAL  NOT NULL ,
  Codigo CHAR(2)    ,
  Nome character varying(30)      ,
PRIMARY KEY(IDEstoqueCor));

CREATE TABLE NCM (
  IDNCM SERIAL  NOT NULL ,
  Descricao character varying(50)   NOT NULL   ,
PRIMARY KEY(IDNCM));

CREATE TABLE EstoqueTamanho (
  IDEstoqueTamanho SERIAL  NOT NULL ,
  Codigo CHAR(3)    ,
  Nome character varying(30)      ,
PRIMARY KEY(IDEstoqueTamanho));

CREATE TABLE PlanoContasGerencial (
  IDPlanoContasGerencial SERIAL  NOT NULL ,
  Codigo character varying(18)   NOT NULL ,
  Descricao character varying(60)   NOT NULL ,
  Tipo CHAR(1)    ,
  Nivel SMALLINT    ,
  Ativo BOOL      ,
PRIMARY KEY(IDPlanoContasGerencial));

CREATE TABLE RegraFiscalObservacao (
  IDRegraFiscalObservacao SERIAL  NOT NULL ,
  Observacao TEXT      ,
PRIMARY KEY(IDRegraFiscalObservacao));

CREATE TABLE CBO (
  IDCBO SERIAL  NOT NULL ,
  Codigo2002 character varying(10)    ,
  Codigo1994 character varying(10)    ,
  Nome character varying(250)    ,
  Observacao TEXT      ,
PRIMARY KEY(IDCBO));

CREATE TABLE Setor (
  IDSetor SERIAL  NOT NULL ,
  Nome character varying(50)    ,
  Descricao character varying(250)      ,
PRIMARY KEY(IDSetor));

CREATE TABLE Serie (
  IDSerie INTEGER   NOT NULL ,
  Descricao character varying(50)   NOT NULL ,
  Numeracao INTEGER   NOT NULL   ,
PRIMARY KEY(IDSerie));

CREATE TABLE TipoTelefone (
  IDTipoTelefone SERIAL  NOT NULL ,
  Descricao character varying(50)   NOT NULL   ,
PRIMARY KEY(IDTipoTelefone));

CREATE TABLE Banco (
  IDBanco CHAR(4)   NOT NULL ,
  Nome character varying(60)      ,
PRIMARY KEY(IDBanco));

CREATE TABLE TipoOperacao (
  IDTipoOperacao SERIAL  NOT NULL ,
  Descricao character varying(20)      ,
PRIMARY KEY(IDTipoOperacao));

CREATE TABLE CNAE (
  IDCNAE SERIAL  NOT NULL ,
  Codigo INTEGER    ,
  Denominacao TEXT      ,
PRIMARY KEY(IDCNAE));

CREATE TABLE CSTPIS (
  IDCSTPIS SERIAL  NOT NULL ,
  Descricao character varying(250)      ,
PRIMARY KEY(IDCSTPIS));

CREATE TABLE Documento (
  IDDocumento SERIAL  NOT NULL ,
  Caminho TEXT    ,
  Arquivo TEXT      ,
PRIMARY KEY(IDDocumento));

CREATE TABLE CSTIPI (
  IDCSTIPI SERIAL  NOT NULL ,
  Descricao character varying(250)    ,
  Observacao TEXT      ,
PRIMARY KEY(IDCSTIPI));

CREATE TABLE Controle (
  IDControle SERIAL  NOT NULL ,
  Sequencia SMALLINT    ,
  Descricao character varying(50)      ,
PRIMARY KEY(IDControle));

CREATE TABLE CSTCOFINS (
  IDCSTCOFINS SERIAL  NOT NULL ,
  Descricao character varying(250)    ,
  Observacao TEXT      ,
PRIMARY KEY(IDCSTCOFINS));

CREATE TABLE ProdutoSubGrupo (
  IDSubGrupoProdutos SERIAL  NOT NULL ,
  IDgrupoProdutos INTEGER   NOT NULL ,
  Nome character varying(100)    ,
  Descricao TEXT      ,
PRIMARY KEY(IDSubGrupoProdutos)  ,
  FOREIGN KEY(IDgrupoProdutos)
    REFERENCES Produtogrupo(idgrupoProdutos));

CREATE INDEX FKGrupoComSubGrupo ON ProdutoSubGrupo (IDgrupoProdutos);

CREATE TABLE PessoaCliente (
  IDPessoa INTEGER   NOT NULL ,
  DataCadastro DATE    ,
  Observacao TEXT    ,
  GeraFinanceiro BOOL  DEFAULT FALSE NOT NULL ,
  LimiteCredito DOUBLE PRECISION  DEFAULT 0  ,
  Ativo BOOL   NOT NULL ,
  EstadoCivil character varying(20)      ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa));

CREATE INDEX FKPessoaComCliente ON PessoaCliente (IDPessoa);

CREATE TABLE Pais (
  IDPais SERIAL  NOT NULL ,
  IDIndicadorEconomico INTEGER   NOT NULL ,
  Nome character varying(100)   NOT NULL   ,
PRIMARY KEY(IDPais)  ,
  FOREIGN KEY(IDIndicadorEconomico)
    REFERENCES IndicadorEconomico(IDIndicadorEconomico));

CREATE INDEX FKIndicadorEconomicoComPais ON Pais (IDIndicadorEconomico);

CREATE TABLE PessoaFornecedor (
  IDPessoaFornecedor SERIAL  NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  Desde DATE    ,
  OptandeSimples BOOL    ,
  Localizacao BOOL    ,
  DataCadastro DATE    ,
  SofreRetencao BOOL    ,
  Observacao TEXT    ,
  PrazoMedioEntrega INTEGER    ,
  GeraFaturamento BOOL    ,
  NumeroDiasPrimeiroVencimento INTEGER    ,
  NumeroDiasIntervalo INTEGER    ,
  QuantidadeParcelas INTEGER      ,
PRIMARY KEY(IDPessoaFornecedor)  ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa));

CREATE INDEX FKPessoaComFornecedor ON PessoaFornecedor (IDPessoa);

CREATE TABLE Portador (
  IDPortador SERIAL  NOT NULL ,
  IDBanco CHAR(4)    ,
  Descricao character varying(50)      ,
PRIMARY KEY(IDPortador)  ,
  FOREIGN KEY(IDBanco)
    REFERENCES Banco(IDBanco));

CREATE INDEX FKBancoComPortador ON Portador (IDBanco);

CREATE TABLE PessoaTransportadora (
  IDPessoa INTEGER   NOT NULL ,
  DataCadastro DATE    ,
  Observacao TEXT      ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa)
      ON DELETE CASCADE);

CREATE INDEX FK_PessoaComTransportadora ON PessoaTransportadora (IDPessoa);

CREATE TABLE Estado (
  IDEstado UF   NOT NULL ,
  CodigoIBGE INTEGER    ,
  Nome character varying(100)   NOT NULL ,
  IDPais INTEGER   NOT NULL   ,
PRIMARY KEY(IDEstado)  ,
  FOREIGN KEY(IDPais)
    REFERENCES Pais(IDPais));

CREATE INDEX FKPaisComEstado ON Estado (IDPais);

CREATE TABLE Indice (
  IDIndice SERIAL  NOT NULL ,
  IDIndicadorEconomico INTEGER   NOT NULL ,
  DataAtualizacao DATE   NOT NULL ,
  Valor DOUBLE PRECISION   NOT NULL   ,
PRIMARY KEY(IDIndice)  ,
  FOREIGN KEY(IDIndicadorEconomico)
    REFERENCES IndicadorEconomico(IDIndicadorEconomico));

CREATE INDEX FKIndicadorEconomicoComIndice ON Indice (IDIndicadorEconomico);

CREATE TABLE CFOP (
  IDCFOP SERIAL  NOT NULL ,
  TipoOperacao_idTipoOperacao INTEGER   NOT NULL ,
  CFOP INTEGER    ,
  Descricao character varying(250)    ,
  DescricaoNF character varying(60)    ,
  Aplicacao TEXT      ,
PRIMARY KEY(IDCFOP)  ,
  FOREIGN KEY(TipoOperacao_idTipoOperacao)
    REFERENCES TipoOperacao(idTipoOperacao));

CREATE INDEX FKTipoOperacaoComCFOP ON CFOP (TipoOperacao_idTipoOperacao);

CREATE TABLE EntradaCabecalho (
  IDEntradaCabecalho SERIAL  NOT NULL ,
  IDEmpresa INTEGER   NOT NULL ,
  Serie CHAR(3)    ,
  Modelo CHAR(2)    ,
  UFEmitente CHAR(2)    ,
  CodigoNumerico character varying(8)    ,
  NaturezaOperacao INTEGER    ,
  IndicadorFormaPagamento BOOL    ,
  Numero character varying(9)    ,
  DataHoraEmisao TIMESTAMP    ,
  DataHoraSaida TIMESTAMP    ,
  TipoOperacao BOOL    ,
  FormatoImpressaoDanfe CHAR(1)    ,
  TipoEmissao CHAR(1)    ,
  ChaveAcesso character varying(44)    ,
  DigitoChaveAcesso CHAR(1)    ,
  Ambiente BOOL    ,
  FinalidadeEmissao CHAR(1)    ,
  ProcessoEmissao CHAR(1)    ,
  VersaoProcessoEmissao character varying(20)    ,
  DataEntradaContingencia TIMESTAMP    ,
  JustificativaContigencia character varying(255)    ,
  BaseCalculoICMS DOUBLE PRECISION    ,
  ValorICMS DOUBLE PRECISION    ,
  BaseCalculoICMSST DOUBLE PRECISION    ,
  ValorICMSST DOUBLE PRECISION    ,
  ValorTotalProdutos DOUBLE PRECISION    ,
  ValorFrete DOUBLE PRECISION    ,
  ValorSeguro DOUBLE PRECISION    ,
  ValorDesconto DOUBLE PRECISION    ,
  ValorIPI DOUBLE PRECISION    ,
  ValorPIS DOUBLE PRECISION    ,
  ValorCOFINS DOUBLE PRECISION    ,
  ValorDespesasAcessorias DOUBLE PRECISION    ,
  ValorTotal DOUBLE PRECISION    ,
  ValorServicos DOUBLE PRECISION    ,
  BaseCalculoISSQN DOUBLE PRECISION    ,
  ValorISSQN DOUBLE PRECISION    ,
  ValorPISISSQN DOUBLE PRECISION    ,
  ValorCOFINSISSQN DOUBLE PRECISION    ,
  ValorRetidoPIS DOUBLE PRECISION    ,
  ValorRetidoCOFINS DOUBLE PRECISION    ,
  BaseCalculoIRRF DOUBLE PRECISION    ,
  ValorRetidoIRRF DOUBLE PRECISION    ,
  BaseCalculoPrevidencia DOUBLE PRECISION    ,
  ValorRetidoPrevidencia DOUBLE PRECISION    ,
  InformacoesAdicionaisFisco TEXT    ,
  InformacoesAddContribuinte TEXT    ,
  FaturaNumero character varying(60)    ,
  FaturaValorOriginal DOUBLE PRECISION    ,
  FaturaValorDesconto DOUBLE PRECISION    ,
  FaturaValorLiquido DOUBLE PRECISION      ,
PRIMARY KEY(IDEntradaCabecalho)  ,
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa));

CREATE INDEX FKEmpresaComEntradaCabecalho ON EntradaCabecalho (IDEmpresa);

CREATE TABLE Auditoria (
  IDAuditoria SERIAL  NOT NULL ,
  IDEmpresa INTEGER   NOT NULL ,
  DataRegistro DATE    ,
  HoraRegistro TIME    ,
  Acao character varying(50)    ,
  Descricao TEXT      ,
PRIMARY KEY(IDAuditoria)  ,
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa));

CREATE INDEX FKEmpresaComAuditoria ON Auditoria (IDEmpresa);

CREATE TABLE EstoqueContagemCabecalho (
  IDEstoqueContagemCabecalho SERIAL  NOT NULL ,
  Empresa_IDEmpresa INTEGER   NOT NULL ,
  DataContagem DATE    ,
  EstoqueAtualizado CHAR(1)      ,
PRIMARY KEY(IDEstoqueContagemCabecalho)  ,
  FOREIGN KEY(Empresa_IDEmpresa)
    REFERENCES Empresa(IDEmpresa));

CREATE INDEX FKEmpresaComEstoqueContagemCabecalho ON EstoqueContagemCabecalho (Empresa_IDEmpresa);

CREATE TABLE Municipio (
  IDMunicipio INTEGER   NOT NULL ,
  Nome character varying(150)   NOT NULL ,
  IDEstado UF   NOT NULL   ,
PRIMARY KEY(IDMunicipio)  ,
  FOREIGN KEY(IDEstado)
    REFERENCES Estado(IDEstado));

CREATE INDEX FKEstadoComMunicipio ON Municipio (IDEstado);

CREATE TABLE Cargo (
  IDCargo SERIAL  NOT NULL ,
  IDCBO INTEGER   NOT NULL ,
  Nome character varying(30)    ,
  Descricao TEXT    ,
  Salario DOUBLE PRECISION      ,
PRIMARY KEY(IDCargo)  ,
  FOREIGN KEY(IDCBO)
    REFERENCES CBO(IDCBO));

CREATE INDEX FKCargoComCBO ON Cargo (IDCBO);

CREATE TABLE PessoaVendedor (
  IDEmpresa INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  Comissao DOUBLE PRECISION    ,
  MetaVendas DOUBLE PRECISION        ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa)
      ON DELETE CASCADE,
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa));

CREATE INDEX FKPessoaComVendedor ON PessoaVendedor (IDPessoa);
CREATE INDEX FKEmpresaComPessoaVendedor ON PessoaVendedor (IDEmpresa);

CREATE TABLE EntradaTransportadoraReboque (
  IDEntradaTransportadoraReboque SERIAL  NOT NULL ,
  IDEntradaCabecalho INTEGER   NOT NULL ,
  IDEstado UF   NOT NULL ,
  Placa character varying(8)    ,
  RNTC character varying(20)      ,
PRIMARY KEY(IDEntradaTransportadoraReboque)    ,
  FOREIGN KEY(IDEntradaCabecalho)
    REFERENCES EntradaCabecalho(IDEntradaCabecalho),
  FOREIGN KEY(IDEstado)
    REFERENCES Estado(IDEstado));

CREATE INDEX FKEntradaCabecalhoComEntradaTransportadoraReboque ON EntradaTransportadoraReboque (IDEntradaCabecalho);
CREATE INDEX FKEntradaEstadoComEntradaTransportadoraReboque ON EntradaTransportadoraReboque (IDEstado);

CREATE TABLE EntradaTransportadora (
  IDEntradaTransportadora SERIAL  NOT NULL ,
  IDEntradaCabecalho INTEGER   NOT NULL ,
  IDCFOP INTEGER   NOT NULL ,
  Modalidade SMALLINT    ,
  CPF_CNPJ CNPJ    ,
  Nome character varying(60)    ,
  InscricaoEstadual character varying(14)    ,
  Endereco character varying(60)    ,
  ValorServico DOUBLE PRECISION    ,
  ValorBCRetencaoICMS DOUBLE PRECISION    ,
  AliquotaRetencaoICMS DOUBLE PRECISION    ,
  ValorICMSRetido DOUBLE PRECISION    ,
  VolumeQuantidade SMALLINT    ,
  VolumeEspecie character varying(60)    ,
  VolumeMarca character varying(60)    ,
  VolumeNumeracao character varying(60)    ,
  VolumePesoLiquido DOUBLE PRECISION    ,
  VolumePesoBruto DOUBLE PRECISION      ,
PRIMARY KEY(IDEntradaTransportadora)    ,
  FOREIGN KEY(IDEntradaCabecalho)
    REFERENCES EntradaCabecalho(IDEntradaCabecalho),
  FOREIGN KEY(IDCFOP)
    REFERENCES CFOP(IDCFOP));

CREATE INDEX FKEntradaCabecalhoComEntradaTransportadora ON EntradaTransportadora (IDEntradaCabecalho);
CREATE INDEX FKCFOPComEntradaTransportadora ON EntradaTransportadora (IDCFOP);

CREATE TABLE ECFCabecalho (
  IDECFCabecalho INTEGER   NOT NULL ,
  IDEmpresa INTEGER   NOT NULL ,
  Pessoa_IDPessoa INTEGER   NOT NULL ,
  NomeCaixa character varying(30)    ,
  SerieECF character varying(20)    ,
  DataVenda DATE    ,
  HoraVenda TIME    ,
  ValorVenda DOUBLE PRECISION    ,
  TaxaDesconto DOUBLE PRECISION    ,
  ValorDesconto SERIAL   ,
  TaxaAcrescimo DOUBLE PRECISION    ,
  ValorAcrescimo DOUBLE PRECISION    ,
  VAlorFinal DOUBLE PRECISION    ,
  ValorRecebido DOUBLE PRECISION    ,
  Troco DOUBLE PRECISION    ,
  ValorCancelado DOUBLE PRECISION    ,
  TotalProdutos DOUBLE PRECISION    ,
  TotalDocumento DOUBLE PRECISION    ,
  BaseICMS DOUBLE PRECISION    ,
  ValorICMS DOUBLE PRECISION    ,
  ICMSOutras DOUBLE PRECISION    ,
  ISSQN DOUBLE PRECISION    ,
  PIS DOUBLE PRECISION    ,
  COFINS DOUBLE PRECISION    ,
  AcrescimoItens DOUBLE PRECISION    ,
  DescontoItens DOUBLE PRECISION    ,
  StatusVenda CHAR(1)    ,
  NomeCliente character varying(100)    ,
  CPFCNPJCliente character varying(14)    ,
  CupomCancelado BOOL      ,
PRIMARY KEY(IDECFCabecalho)    ,
  FOREIGN KEY(Pessoa_IDPessoa)
    REFERENCES Pessoa(IDPessoa),
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa));

CREATE INDEX FKPessoaComECFCabecalho ON ECFCabecalho (Pessoa_IDPessoa);
CREATE INDEX FKEmpresaComECFCabecalho ON ECFCabecalho (IDEmpresa);

CREATE TABLE UnidadeDeNegocio (
  IDUnidadeDeNegocio SERIAL  NOT NULL ,
  IDCNAE INTEGER   NOT NULL ,
  IDEmpresa INTEGER   NOT NULL ,
  CNPJ CNPJ   NOT NULL ,
  NomeFantasia character varying(60)   NOT NULL   ,
PRIMARY KEY(IDUnidadeDeNegocio)    ,
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa),
  FOREIGN KEY(IDCNAE)
    REFERENCES CNAE(IDCNAE));

CREATE INDEX FKEmpresaComUN ON UnidadeDeNegocio (IDEmpresa);
CREATE INDEX UnidadeDeNegocio_FKIndex3 ON UnidadeDeNegocio (IDCNAE);

CREATE TABLE Licitacao (
  IDLicitacao SERIAL  NOT NULL ,
  IDEmpresa INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  DataAbertura DATE    ,
  DataFechamento DATE    ,
  Objeto TEXT    ,
  Observacao TEXT      ,
PRIMARY KEY(IDLicitacao)    ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa),
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa));

CREATE INDEX FKPessoaComLicitacao ON Licitacao (IDPessoa);
CREATE INDEX FKEmpresaComLicitacao ON Licitacao (IDEmpresa);

CREATE TABLE LicitacaoDocumento (
  IDLicitacaoDocumento SERIAL  NOT NULL ,
  IDDocumento INTEGER   NOT NULL ,
  idLicitacao INTEGER   NOT NULL   ,
PRIMARY KEY(IDLicitacaoDocumento)  ,
  FOREIGN KEY(IDLicitacao)
    REFERENCES Licitacao(idLicitacao),
  FOREIGN KEY(IDDocumento)
    REFERENCES Documento(idDocumento));

CREATE INDEX FKLicitacaoComLicitacaoDocum ON LicitacaoDocumento (IDLicitacao);
CREATE INDEX FKDocumentoComLicitacaoDocum ON LicitacaoDocumento (IDDocumento);

CREATE TABLE PessoaContador (
  IDEmpresa INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  Nome character varying(60)    ,
  CPF CPF    ,
  CRC character varying(8)    ,
  Email character varying(150)        ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa)
      ON DELETE CASCADE,
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa));

CREATE INDEX FKPessoaComContador ON PessoaContador (IDPessoa);
CREATE INDEX FKEmpresaComPessoaContador ON PessoaContador (IDEmpresa);

CREATE TABLE PessoaRepresentante (
  IDEmpresa INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  Comissao DOUBLE PRECISION    ,
  MetaVendas DOUBLE PRECISION        ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa)
      ON DELETE CASCADE,
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa));

CREATE INDEX FKPessoaComRepresentante ON PessoaRepresentante (IDPessoa);
CREATE INDEX FKEmpresaComPessoaRepresentante ON PessoaRepresentante (IDEmpresa);

CREATE TABLE telefone
(
  idtelefone serial NOT NULL,
  idpessoa integer,
  idunidadenegocio integer,
  idtipotelefone integer,
  numerotelefone fone,
  CONSTRAINT idtelefone PRIMARY KEY (idtelefone),
  CONSTRAINT fktelefonecompessoa FOREIGN KEY (idpessoa)
      REFERENCES pessoa (idpessoa) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fktelefonecomtipo FOREIGN KEY (idtipotelefone)
      REFERENCES tipotelefone (idtipotelefone) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fktelefonecomun FOREIGN KEY (idunidadenegocio)
      REFERENCES unidadedenegocio (idunidadedenegocio) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE telefone
  OWNER TO postgres;

CREATE TABLE NFeCabecalho (
  IDNFeCabecalho SERIAL  NOT NULL ,
  IDUnidadeDeNegocio INTEGER   NOT NULL ,
  IDSerie INTEGER   NOT NULL ,
  IDModelo CHAR(2)   NOT NULL ,
  UFEmitente CHAR(2)    ,
  CodigoNumerico character varying(8)    ,
  NaturezaOperacao INTEGER    ,
  IndicadorFormaPagamento BOOL    ,
  Numero character varying(9)    ,
  DataHoraEmisao TIMESTAMP    ,
  DataHoraSaida TIMESTAMP    ,
  TipoOperacao BOOL    ,
  FormatoImpressaoDanfe CHAR(1)    ,
  TipoEmissao CHAR(1)    ,
  ChaveAcesso character varying(44)    ,
  DigitoChaveAcesso CHAR(1)    ,
  Ambiente BOOL    ,
  FinalidadeEmissao CHAR(1)    ,
  ProcessoEmissao CHAR(1)    ,
  VersaoProcessoEmissao character varying(20)    ,
  DataEntradaContingencia TIMESTAMP    ,
  JustificativaContigencia character varying(255)    ,
  BaseCalculoICMS DOUBLE PRECISION    ,
  ValorICMS DOUBLE PRECISION    ,
  BaseCalculoICMSST DOUBLE PRECISION    ,
  ValorICMSST DOUBLE PRECISION    ,
  ValorTotalProdutos DOUBLE PRECISION    ,
  ValorFrete DOUBLE PRECISION    ,
  ValorSeguro DOUBLE PRECISION    ,
  ValorDesconto DOUBLE PRECISION    ,
  ValorImpostoImportacao DOUBLE PRECISION    ,
  ValorIPI DOUBLE PRECISION    ,
  ValorPIS DOUBLE PRECISION    ,
  ValorCOFINS DOUBLE PRECISION    ,
  ValorDespesasAcessorias DOUBLE PRECISION    ,
  ValorTotal DOUBLE PRECISION    ,
  ValorServicos DOUBLE PRECISION    ,
  BaseCalculoISSQN DOUBLE PRECISION    ,
  ValorISSQN DOUBLE PRECISION    ,
  ValorPISISSQN DOUBLE PRECISION    ,
  ValorCOFINSISSQN DOUBLE PRECISION    ,
  ValorRetidoPIS DOUBLE PRECISION    ,
  ValorRetidoCOFINS DOUBLE PRECISION    ,
  BaseCalculoIRRF DOUBLE PRECISION    ,
  ValorRetidoIRRF DOUBLE PRECISION    ,
  BaseCalculoPrevidencia DOUBLE PRECISION    ,
  ValorRetidoPrevidencia DOUBLE PRECISION    ,
  ComexUFEmbarque CHAR(2)    ,
  ComexLocalEmbarque character varying(60)    ,
  InformacoesAdicionaisFisco TEXT    ,
  InformacoesAddContribuinte TEXT    ,
  StatusNota CHAR(1)    ,
  FaturaNumero character varying(60)    ,
  FaturaValorOriginal DOUBLE PRECISION    ,
  FaturaValorDesconto DOUBLE PRECISION    ,
  FaturaValorLiquido DOUBLE PRECISION      ,
PRIMARY KEY(IDNFeCabecalho)      ,
  FOREIGN KEY(IDModelo)
    REFERENCES Modelo(IDModelo),
  FOREIGN KEY(IDSerie)
    REFERENCES Serie(IDSerie),
  FOREIGN KEY(IDUnidadeDeNegocio)
    REFERENCES UnidadeDeNegocio(IDUnidadeDeNegocio));

CREATE INDEX FKModeloComNFeCabecalho ON NFeCabecalho (IDModelo);
CREATE INDEX FKSerieComNFeCabecalho ON NFeCabecalho (IDSerie);
CREATE INDEX FKUNComNFeCabecalho ON NFeCabecalho (IDUnidadeDeNegocio);

CREATE TABLE OrcamentoCabecalho (
  IDOrcamentoCabecalho SERIAL  NOT NULL ,
  IDUnidadeDeNegocio INTEGER   NOT NULL ,
  IDLicitacao INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  DataCadastro DATE    ,
  DataEntrega DATE    ,
  TipoFrete CHAR(1)    ,
  ValorSubtotal DOUBLE PRECISION  DEFAULT 0  ,
  ValorFrete DOUBLE PRECISION  DEFAULT 0  ,
  TaxaComissao DOUBLE PRECISION  DEFAULT 0  ,
  ValorComicao DOUBLE PRECISION  DEFAULT 0  ,
  TaxaDesconto DOUBLE PRECISION  DEFAULT 0  ,
  ValorDesconto DOUBLE PRECISION  DEFAULT 0  ,
  ValorTotal DOUBLE PRECISION  DEFAULT 0  ,
  Observacao TEXT    ,
  Situacao CHAR(1)      ,
PRIMARY KEY(IDOrcamentoCabecalho)      ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa),
  FOREIGN KEY(IDLicitacao)
    REFERENCES Licitacao(idLicitacao),
  FOREIGN KEY(IDUnidadeDeNegocio)
    REFERENCES UnidadeDeNegocio(IDUnidadeDeNegocio));

CREATE INDEX FKPessoaComOrcamentoCabecalho ON OrcamentoCabecalho (IDPessoa);
CREATE INDEX FKLicitacaoComOrcamentoCabecalho ON OrcamentoCabecalho (IDLicitacao);
CREATE INDEX FKUNComOrcamentoCabecalho ON OrcamentoCabecalho (IDUnidadeDeNegocio);

CREATE TABLE PedidoCabecalho (
  IDPedidoCabecalho SERIAL  NOT NULL ,
  IDUnidadeDeNegocio INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  IDOrcamentoCabecalho INTEGER    ,
  DataLancamento DATE    ,
  DataPrevisaoEntrega DATE    ,
  VAlorSubTotal DOUBLE PRECISION    ,
  TaxaComicao DOUBLE PRECISION    ,
  ValorComicao DOUBLE PRECISION    ,
  TaxaDesconto DOUBLE PRECISION    ,
  ValorDesconto DOUBLE PRECISION    ,
  ValorFrete DOUBLE PRECISION    ,
  TipoFrete DOUBLE PRECISION    ,
  ValorSeguro DOUBLE PRECISION    ,
  Observacao TEXT    ,
  Situacao CHAR(1)   ,
PRIMARY KEY(IDPedidoCabecalho)      ,
  FOREIGN KEY(IDOrcamentoCabecalho)
    REFERENCES OrcamentoCabecalho(IDOrcamentoCabecalho),
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa),
  FOREIGN KEY(IDUnidadeDeNegocio)
    REFERENCES UnidadeDeNegocio(IDUnidadeDeNegocio));

CREATE INDEX FKOrcamentoCabecalhoComPedidoCabecalho ON PedidoCabecalho (IDOrcamentoCabecalho);
CREATE INDEX FKPessoaComPedidoCabecalho ON PedidoCabecalho (IDPessoa);
CREATE INDEX FKUNComPedidoCabecalho ON PedidoCabecalho (IDUnidadeDeNegocio);

CREATE TABLE Produto (
  IDProduto SERIAL  NOT NULL ,
  IDgrupoProdutos INTEGER   NOT NULL ,
  IDSubGrupoProdutos INTEGER   NOT NULL ,
  IDNcm INTEGER   NOT NULL ,
  IDProdutoUnidade INTEGER   NOT NULL ,
  CodigoInterno character varying(60)    ,
  GETIN CHAR(14)    ,
  Nome character varying(100)    ,
  Descricao TEXT    ,
  DescricaoPDV character varying(30)    ,
  ValorCompra DOUBLE PRECISION    ,
  ValorVenda DOUBLE PRECISION    ,
  PrecoVendaMinimo DOUBLE PRECISION    ,
  PrecoSugerido DOUBLE PRECISION    ,
  CustoMedioLiquido DOUBLE PRECISION    ,
  PrecoLucroZero DOUBLE PRECISION    ,
  PrecoLucroMinimo DOUBLE PRECISION    ,
  PrecoLucroMaximo DOUBLE PRECISION    ,
  Markup DOUBLE PRECISION    ,
  QuantidadeEstoque DOUBLE PRECISION    ,
  EstoqueMinimo DOUBLE PRECISION  DEFAULT 0  ,
  EstoqueMaximo DOUBLE PRECISION    ,
  EstoqueIdeal DOUBLE PRECISION    ,
  DataCadastro DATE    ,
  FotoProduto TEXT    ,
  CodigoBalanca INTEGER    ,
  Tipo CHAR(1)    ,
  ClasseABC CHAR(1)    ,
  CodigoLST CHAR(4)    ,
  Peso DOUBLE PRECISION    ,
  PercentualComissao DOUBLE PRECISION    ,
  Inativo CHAR(1)      ,
PRIMARY KEY(IDProduto)        ,
  FOREIGN KEY(IDgrupoProdutos)
    REFERENCES Produtogrupo(idgrupoProdutos),
  FOREIGN KEY(IDSubGrupoProdutos)
    REFERENCES ProdutoSubGrupo(IDSubGrupoProdutos),
  FOREIGN KEY(IDProdutoUnidade)
    REFERENCES ProdutoUnidade(IDProdutoUnidade),
  FOREIGN KEY(IDNcm)
    REFERENCES NCM(IDNcm));

CREATE INDEX FKProdutoGrupoComProduto ON Produto (IDgrupoProdutos);
CREATE INDEX FKProdutoSubGrupoComProduto ON Produto (IDSubGrupoProdutos);
CREATE INDEX FKProdutoUnidadeComProduto ON Produto (IDProdutoUnidade);
CREATE INDEX FKNCMComProduto ON Produto (IDNcm);

CREATE TABLE NFeTransportadora (
  IDNFeTransportadora SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  IDEstado UF   NOT NULL ,
  IDCFOP INTEGER   NOT NULL ,
  IDMunicipio INTEGER   NOT NULL ,
  Modalidade SMALLINT    ,
  CPF_CNPJ CNPJ    ,
  Nome character varying(60)    ,
  InscricaoEstadual character varying(14)    ,
  Endereco character varying(60)    ,
  ValorServico DOUBLE PRECISION  DEFAULT 0  ,
  ValorBCRetencaoICMS DOUBLE PRECISION  DEFAULT 0  ,
  AliquotaRetencaoICMS DOUBLE PRECISION  DEFAULT 0  ,
  ValorICMSRetido DOUBLE PRECISION  DEFAULT 0  ,
  VolumeQuantidade SMALLINT    ,
  VolumeEspecie character varying(60)    ,
  VolumeMarca character varying(60)    ,
  VolumeNumeracao character varying(60)    ,
  VolumePesoLiquido DOUBLE PRECISION    ,
  VolumePesoBruto DOUBLE PRECISION      ,
PRIMARY KEY(IDNFeTransportadora)        ,
  FOREIGN KEY(IDMunicipio)
    REFERENCES Municipio(IDMunicipio),
  FOREIGN KEY(IDEstado)
    REFERENCES Estado(IDEstado),
  FOREIGN KEY(IDCFOP)
    REFERENCES CFOP(IDCFOP),
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX FKMunicipioComNFeTransportadora ON NFeTransportadora (IDMunicipio);
CREATE INDEX FKEstadoComNFeTransportadora ON NFeTransportadora (IDEstado);
CREATE INDEX FKCFOPComNFeTransportadora ON NFeTransportadora (IDCFOP);
CREATE INDEX FKNFeCabecalhoComNFeTransportadora ON NFeTransportadora (IDNFeCabecalho);

CREATE TABLE PessoaColaborador (
  IDBanco CHAR(4)   NOT NULL ,
  IDSetor INTEGER   NOT NULL ,
  IDCargo INTEGER   NOT NULL ,
  IDEmpresa INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  Matricula character varying(10)    ,
  Foto3x4 TEXT    ,
  DataCadastro DATE    ,
  DataAdmissao DATE    ,
  FGTSConta SMALLINT    ,
  FormaPagamento CHAR(1)    ,
  ExameData DATE    ,
  ExameDataUltimo DATE    ,
  CTPSNumero character varying(10)    ,
  CTPSSerie character varying(10)    ,
  CTPSDataExpedicao DATE    ,
  CTPSUF CHAR(2)    ,
  Observacao TEXT    ,
  DataDemissao DATE              ,
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa)
      ON DELETE CASCADE,
  FOREIGN KEY(IDEmpresa)
    REFERENCES Empresa(IDEmpresa),
  FOREIGN KEY(IDCargo)
    REFERENCES Cargo(IDCargo),
  FOREIGN KEY(IDSetor)
    REFERENCES Setor(IDSetor),
  FOREIGN KEY(IDBanco)
    REFERENCES Banco(IDBanco));

CREATE INDEX FKPessoaComColaborador ON PessoaColaborador (IDPessoa);
CREATE INDEX FKEmpresaComColaborador ON PessoaColaborador (IDEmpresa);
CREATE INDEX FKCargoComColaborador ON PessoaColaborador (IDCargo);
CREATE INDEX FKSetorComColaborador ON PessoaColaborador (IDSetor);
CREATE INDEX FKBancoComColaborador ON PessoaColaborador (IDBanco);

CREATE TABLE RegraFiscal (
  IDRegraFiscal INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  IDRegraFiscalObservacao INTEGER   NOT NULL ,
  IDCSTPIS INTEGER   NOT NULL ,
  IDCSTIPI INTEGER   NOT NULL ,
  IDTipoOperacao INTEGER   NOT NULL ,
  IDPais INTEGER   NOT NULL ,
  DMunicipio INTEGER   NOT NULL ,
  IDEstado UF   NOT NULL ,
  UnidadeDeNegocio_IDUnidadeDeNegocio INTEGER   NOT NULL ,
  IDCFOP INTEGER   NOT NULL ,
  IDNcm INTEGER   NOT NULL ,
  CSTCOFINS_IDCSTCOFINS INTEGER   NOT NULL ,
  ReducaoIPI DOUBLE PRECISION    ,
  IPI SMALLINT    ,
  ReducaoICMS DOUBLE PRECISION    ,
  ICMS SMALLINT    ,
  PIS DOUBLE PRECISION    ,
  RetencaoPIS DOUBLE PRECISION    ,
  COFINS DOUBLE PRECISION    ,
  RetencaoCOFINS SERIAL   ,
  Ativo BOOL    ,
  MVA DOUBLE PRECISION    ,
  ST DOUBLE PRECISION    ,
  ReducaoST DOUBLE PRECISION    ,
  ISS DOUBLE PRECISION    ,
  ReducaoISS DOUBLE PRECISION    ,
  CSOSN SMALLINT    ,
  CSSL DOUBLE PRECISION    ,
  INSS DOUBLE PRECISION    ,
  IR SMALLINT    ,
  FunRural DOUBLE PRECISION    ,
  IE DOUBLE PRECISION    ,
  II DOUBLE PRECISION    ,
  CFOPDevolucao SMALLINT      ,
PRIMARY KEY(IDRegraFiscal)                      ,
  FOREIGN KEY(DMunicipio)
    REFERENCES Municipio(IDMunicipio),
  FOREIGN KEY(IDEstado)
    REFERENCES Estado(IDEstado),
  FOREIGN KEY(IDPais)
    REFERENCES Pais(IDPais),
  FOREIGN KEY(IDNCM)
    REFERENCES NCM(IDNcm),
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa),
  FOREIGN KEY(IDTipoOperacao)
    REFERENCES TipoOperacao(idTipoOperacao),
  FOREIGN KEY(IDCSTIPI)
    REFERENCES CSTIPI(IDCSTIPI),
  FOREIGN KEY(CSTCOFINS_IDCSTCOFINS)
    REFERENCES CSTCOFINS(IDCSTCOFINS),
  FOREIGN KEY(IDCSTPIS)
    REFERENCES CSTPIS(IDCSTPIS),
  FOREIGN KEY(IDCFOP)
    REFERENCES CFOP(IDCFOP),
  FOREIGN KEY(UnidadeDeNegocio_IDUnidadeDeNegocio)
    REFERENCES UnidadeDeNegocio(IDUnidadeDeNegocio),
  FOREIGN KEY(IDRegraFiscalObservacao)
    REFERENCES RegraFiscalObservacao(idRegraFiscalObservacao));

CREATE INDEX FKMunicipioComRegraFiscal ON RegraFiscal (DMunicipio);
CREATE INDEX FKEstadoComRegraFiscal ON RegraFiscal (IDEstado);
CREATE INDEX FKPaisComRegraFiscal ON RegraFiscal (IDPais);
CREATE INDEX FKPessoaComRegraFiscal ON RegraFiscal (IDPessoa);
CREATE INDEX FKTipoOperacaoComRegraFiscal ON RegraFiscal (IDTipoOperacao);
CREATE INDEX FKCSTIPIComRegraFiscal ON RegraFiscal (IDCSTIPI);
CREATE INDEX FKCSTCOFINSComRegraFiscal ON RegraFiscal (CSTCOFINS_IDCSTCOFINS);
CREATE INDEX FKCSTPISComRegraFiscal ON RegraFiscal (IDCSTPIS);
CREATE INDEX FKCFOPComRegraFiscal ON RegraFiscal (IDCFOP);
CREATE INDEX FKUNComRegraFiscal ON RegraFiscal (UnidadeDeNegocio_IDUnidadeDeNegocio);
CREATE INDEX FKRegraFiscalObservacaoComRegraFiscal ON RegraFiscal (IDRegraFiscalObservacao);

CREATE TABLE NFeReferenciada (
  IDNFeReferenciada SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  ChaveAcesso character varying(44)      ,
PRIMARY KEY(IDNFeReferenciada)  ,
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX FKNFeCabecalhoComNFeReferenciada ON NFeReferenciada (IDNFeCabecalho);

CREATE TABLE NFeProdutorRuralReferenciada (
  IDNFeProdutorRuralReferenciada SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  AnoMes character varying(4)    ,
  CNPJ CNPJ    ,
  CPF CPF    ,
  InscricaoEstadual character varying(14)    ,
  Modelo CHAR(2)    ,
  Serie CHAR(3)    ,
  NumeroNF INTEGER      ,
PRIMARY KEY(IDNFeProdutorRuralReferenciada)  ,
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX FKNFeCabecalhoComNFeProdutorRuralReferenciada ON NFeProdutorRuralReferenciada (IDNFeCabecalho);

CREATE TABLE NFeDuplicata (
  IDNFeDuplicata SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  Numero character varying(60)    ,
  Valor DOUBLE PRECISION  DEFAULT 0  ,
  DataVencimento DATE      ,
PRIMARY KEY(IDNFeDuplicata)  ,
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX FKNFeCabecalhoComNFeDuplicata ON NFeDuplicata (IDNFeCabecalho);

CREATE TABLE NFeNFReferenciada (
  IDNFeNFReferenciada SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  AnoMes character varying(4)    ,
  CNPJ CNPJ    ,
  Modelo CHAR(2)    ,
  Serie CHAR(3)    ,
  NumeroNF INTEGER      ,
PRIMARY KEY(IDNFeNFReferenciada)  ,
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX FKNFeCabecalhoComNFeNFReferenciada ON NFeNFReferenciada (IDNFeCabecalho);

CREATE TABLE NFeLocalEntregaRetirada (
  IDNFeLocalEntregaRetirada SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  CPF_CNPJ CNPJ    ,
  Logradouro character varying(60)    ,
  Numero character varying(60)    ,
  Complemento character varying(60)    ,
  Bairro character varying(60)    ,
  Tipo CHAR(1)      ,
PRIMARY KEY(IDNFeLocalEntregaRetirada)  ,
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX FKNFeCabecalhoComNFeLocalEntregaRetirada ON NFeLocalEntregaRetirada (IDNFeCabecalho);

CREATE TABLE ProdutoFornecedor (
  IDProdutoFornecedor SERIAL  NOT NULL ,
  CodigoProdutoFornecedor character varying(20)   NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  DataUltimaCompra DATE    ,
  PrecoUltimaCompra DOUBLE PRECISION      ,
PRIMARY KEY(IDProdutoFornecedor, CodigoProdutoFornecedor)  ,
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKProdutoComProdutoFornecedor ON ProdutoFornecedor (IDProduto);

CREATE TABLE PortadorHistorico (
  IDPortadorHistorico SERIAL  NOT NULL ,
  IDPortador INTEGER   NOT NULL ,
  DataMovimento DATE   NOT NULL ,
  SaldoInicial DOUBLE PRECISION  DEFAULT 0 NOT NULL ,
  Entrada DOUBLE PRECISION  DEFAULT 0 NOT NULL ,
  Saida DOUBLE PRECISION  DEFAULT 0 NOT NULL ,
  SaldoFinal DOUBLE PRECISION  DEFAULT 0 NOT NULL   ,
PRIMARY KEY(IDPortadorHistorico)  ,
  FOREIGN KEY(IDPortador)
    REFERENCES Portador(IDPortador));

CREATE INDEX FKPortadorComPortadorHistorico ON PortadorHistorico (IDPortador);

CREATE TABLE ProdutoPromocao (
  IDProdutoPromocao SERIAL  NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  DataInicio DATE    ,
  DataFim DATE    ,
  QuantidadeEmPromocao DECIMAL(18,6)    ,
  QuantidadeMaximaCliente DECIMAL(18,6)    ,
  Valor DECIMAL(18,6)      ,
PRIMARY KEY(IDProdutoPromocao)  ,
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKProdutoComProdutoPromocao ON ProdutoPromocao (IDProduto);

CREATE TABLE ProdutoTabelaPreco (
  IDProdutoTabelaPreco SERIAL  NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  Nome character varying(100)    ,
  Preco DOUBLE PRECISION      ,
PRIMARY KEY(IDProdutoTabelaPreco)  ,
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKProdutoComProdutoTabelaPreco ON ProdutoTabelaPreco (IDProduto);

CREATE TABLE EntradaLocalEntregaRetirada (
  IDEntradaLocalEntregaRetirada SERIAL  NOT NULL ,
  IDEntradaCabecalho INTEGER   NOT NULL ,
  CPF_CNPJ CNPJ    ,
  Logradouro character varying(60)    ,
  Numero character varying(30)    ,
  Complemento character varying(60)    ,
  Bairro character varying(60)    ,
  Tipo CHAR(1)      ,
PRIMARY KEY(IDEntradaLocalEntregaRetirada)  ,
  FOREIGN KEY(IDEntradaCabecalho)
    REFERENCES EntradaCabecalho(IDEntradaCabecalho));

CREATE INDEX FKEntradaCabecalhoComEntradaLocalEntregaRetirada ON EntradaLocalEntregaRetirada (IDEntradaCabecalho);

CREATE TABLE EntradaDuplicata (
  IDEntradaDuplicata SERIAL  NOT NULL ,
  IDEntradaCabecalho INTEGER   NOT NULL ,
  Numero character varying(60)    ,
  Valor DOUBLE PRECISION    ,
  DataVencimento DATE      ,
PRIMARY KEY(IDEntradaDuplicata)  ,
  FOREIGN KEY(IDEntradaCabecalho)
    REFERENCES EntradaCabecalho(IDEntradaCabecalho));

CREATE INDEX FKEntradaCabecalhoComEntradaDuplicata ON EntradaDuplicata (IDEntradaCabecalho);

CREATE TABLE NFeCupomFiscalReferenciado (
  IDNFeCupomFiscalReferenciado SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  ModeloDocumentoFiscal CHAR(2)    ,
  NumeroOrdemECF INTEGER    ,
  COO INTEGER    ,
  DataEmissaoCupom DATE    ,
  NumeroCaixa INTEGER    ,
  NumeroSerieECF character varying(21)      ,
PRIMARY KEY(IDNFeCupomFiscalReferenciado)  ,
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX FKNFeCabacalhoComNFeCupomFiscalReferenciado ON NFeCupomFiscalReferenciado (IDNFeCabecalho);

CREATE TABLE CEP (
  IDCep character varying(9)   NOT NULL ,
  IDMunicipio INTEGER   NOT NULL ,
  Logradouro character varying(200)    ,
  Complemento character varying(60)    ,
  Bairro character varying(60)      ,
PRIMARY KEY(IDCep)  ,
  FOREIGN KEY(IDMunicipio)
    REFERENCES Municipio(IDMunicipio));

CREATE INDEX FKMunicipioComCEP ON CEP (IDMunicipio);

CREATE TABLE ProdutoUnidadeConversao (
  IDProdutoUnidadeConversao SERIAL  NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  IDProdutoUnidade INTEGER   NOT NULL ,
  Sigla character varying(10)    ,
  Descricao TEXT    ,
  FatorConversao DOUBLE PRECISION      ,
PRIMARY KEY(IDProdutoUnidadeConversao)    ,
  FOREIGN KEY(IDProdutoUnidade)
    REFERENCES ProdutoUnidade(IDProdutoUnidade),
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKProdutoUnidadeComProdutoUnidadeConversao ON ProdutoUnidadeConversao (IDProdutoUnidade);
CREATE INDEX FKProdutoComProdutoUnidadeComversao ON ProdutoUnidadeConversao (IDProduto);

CREATE TABLE EntradaItem (
  IDEntradaItem SERIAL  NOT NULL ,
  IDEntradaCabecalho INTEGER   NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  NumeroItem INTEGER    ,
  CodigoProduto character varying(60)    ,
  GTIN character varying(14)    ,
  DescricaoProduto character varying(100)    ,
  NCM INTEGER    ,
  EXTIPI INTEGER    ,
  CFOP INTEGER    ,
  UnidadeComercial character varying(6)    ,
  QuantidadeComercial DOUBLE PRECISION    ,
  ValorIUnitarioComercial DOUBLE PRECISION    ,
  ValorBrutoProduto DOUBLE PRECISION    ,
  UnidadeTributavel character varying(6)    ,
  QuantidadeTributavel DOUBLE PRECISION    ,
  ValorUnitarioTributavel DOUBLE PRECISION    ,
  ValorFrete DOUBLE PRECISION    ,
  ValorSeguro DOUBLE PRECISION    ,
  ValorDesconto DOUBLE PRECISION    ,
  ValorOutrasDespesas DOUBLE PRECISION    ,
  EntraTotal BOOL    ,
  ValorSubtotal DOUBLE PRECISION    ,
  ValorTotal DOUBLE PRECISION    ,
  NumeroPedido DOUBLE PRECISION    ,
  ItemPedido DOUBLE PRECISION    ,
  InformacoesAdicionais TEXT      ,
PRIMARY KEY(IDEntradaItem)    ,
  FOREIGN KEY(IDEntradaCabecalho)
    REFERENCES EntradaCabecalho(IDEntradaCabecalho),
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKEntradaCabecalhoComEntradaItem ON EntradaItem (IDEntradaCabecalho);
CREATE INDEX FKProdutoComEntradaItem ON EntradaItem (IDProduto);

CREATE TABLE ECFItem (
  IDECFItem SERIAL  NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  ECFCabecalho_IDECFCabecalho INTEGER   NOT NULL ,
  GTIN character varying(14)    ,
  SerieECF character varying(20)    ,
  Quantidade DOUBLE PRECISION    ,
  ValorUnitario DOUBLE PRECISION    ,
  ValorTotal DOUBLE PRECISION    ,
  TotalItem DOUBLE PRECISION    ,
  BaseICMS DOUBLE PRECISION    ,
  TaxaICMS DOUBLE PRECISION    ,
  ValorICMS DOUBLE PRECISION    ,
  TaxaDesconto DOUBLE PRECISION    ,
  ValorDesconto DOUBLE PRECISION    ,
  TaxaISSQN DOUBLE PRECISION    ,
  ValorISSQN DOUBLE PRECISION    ,
  TaxaPIS DOUBLE PRECISION    ,
  ValorPIS DOUBLE PRECISION    ,
  TaxaCOFINS DOUBLE PRECISION    ,
  ValorCOFIINS DOUBLE PRECISION    ,
  TaxaAcrescimo DOUBLE PRECISION    ,
  ValorAcrescimo DOUBLE PRECISION    ,
  TotalizadorParcial DOUBLE PRECISION    ,
  CST SMALLINT    ,
  Cancelado BOOL    ,
  MovimentaEstoque BOOL    ,
  ECFICMSST character varying(4)      ,
PRIMARY KEY(IDECFItem)    ,
  FOREIGN KEY(ECFCabecalho_IDECFCabecalho)
    REFERENCES ECFCabecalho(IDECFCabecalho),
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKECFItemComECFCabecalho ON ECFItem (ECFCabecalho_IDECFCabecalho);
CREATE INDEX FKProdutoComECFCabecalho ON ECFItem (IDProduto);

CREATE TABLE OrcamentoItem (
  IDOrcamentoItem SERIAL  NOT NULL ,
  IDOrcamentoCabecalho INTEGER   NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  Quantidade DOUBLE PRECISION  DEFAULT 0  ,
  ValorUnitario DOUBLE PRECISION  DEFAULT 0  ,
  ValorSubtotal DOUBLE PRECISION  DEFAULT 0  ,
  TaxaDesconto DOUBLE PRECISION  DEFAULT 0  ,
  ValorDesconto DOUBLE PRECISION  DEFAULT 0  ,
  ValorTotal DOUBLE PRECISION  DEFAULT 0    ,
PRIMARY KEY(IDOrcamentoItem)    ,
  FOREIGN KEY(IDOrcamentoCabecalho)
    REFERENCES OrcamentoCabecalho(IDOrcamentoCabecalho),
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKOrcamentoCabecalhoComOrcamentoItem ON OrcamentoItem (IDOrcamentoCabecalho);
CREATE INDEX FKProdutoComOrcamentoItem ON OrcamentoItem (IDProduto);

CREATE TABLE NFeTransportadoraReboque (
  IDNFeTransportadoraReboque SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  IDEstado UF   NOT NULL ,
  Placa character varying(8)    ,
  RNTC character varying(20)      ,
PRIMARY KEY(IDNFeTransportadoraReboque)    ,
  FOREIGN KEY(IDEstado)
    REFERENCES Estado(IDEstado),
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX FKEstadoComNFeTransportadoraReboque ON NFeTransportadoraReboque (IDEstado);
CREATE INDEX FKNFeCabecalhoComNFeTransportadoraReboque ON NFeTransportadoraReboque (IDNFeCabecalho);

CREATE TABLE PedidoItem (
  IDPedidoItem SERIAL  NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  IDPedidoCabecalho INTEGER   NOT NULL ,
  Quantidade DOUBLE PRECISION    ,
  ValorUnitario DOUBLE PRECISION    ,
  ValorSubTotal DOUBLE PRECISION    ,
  TaxaDesconto DOUBLE PRECISION    ,
  ValorDesconto DOUBLE PRECISION    ,
  ValorTotal DOUBLE PRECISION      ,
PRIMARY KEY(IDPedidoItem)    ,
  FOREIGN KEY(IDPedidoCabecalho)
    REFERENCES PedidoCabecalho(IDPedidoCabecalho),
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKPedidoCabecalhoComPedidoItem ON PedidoItem (IDPedidoCabecalho);
CREATE INDEX FKProdutoComPedidoItem ON PedidoItem (IDProduto);

CREATE TABLE EstoqueContagemDetalhe (
  IDEstoqueCotagemDetalhe SERIAL  NOT NULL ,
  IDEstoqueContagemCabecalho INTEGER   NOT NULL ,
  Produto_IDProduto INTEGER   NOT NULL ,
  QuantidadeContada DOUBLE PRECISION    ,
  QuantidadeSistema DOUBLE PRECISION    ,
  Divergencia DOUBLE PRECISION      ,
PRIMARY KEY(IDEstoqueCotagemDetalhe)    ,
  FOREIGN KEY(IDEstoqueContagemCabecalho)
    REFERENCES EstoqueContagemCabecalho(IdEstoqueContagemCabecalho),
  FOREIGN KEY(Produto_IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKEstoqueContagemCabecalhoComEstoqueContagemDetalhe ON EstoqueContagemDetalhe (IDEstoqueContagemCabecalho);
CREATE INDEX FKProdutoComEstoqueContagemDetalhe ON EstoqueContagemDetalhe (Produto_IDProduto);

CREATE TABLE NFeItem (
  IDNFeItem SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  NumeroItem INTEGER    ,
  CodigoProduto character varying(60)    ,
  GTIN character varying(14)    ,
  DescricaoProduto character varying(100)    ,
  NCM INTEGER    ,
  EXTIPI INTEGER    ,
  CFOP INTEGER    ,
  UnidadeComercial character varying(6)    ,
  QuantidadeComercial DOUBLE PRECISION    ,
  ValorIUnitarioComercial DOUBLE PRECISION    ,
  ValorBrutoProduto DOUBLE PRECISION    ,
  UnidadeTributavel character varying(6)    ,
  QuantidadeTributavel DOUBLE PRECISION    ,
  ValorUnitarioTributavel DOUBLE PRECISION    ,
  ValorFrete DOUBLE PRECISION    ,
  ValorSeguro DOUBLE PRECISION    ,
  ValorDesconto DOUBLE PRECISION    ,
  ValorOutrasDespesas DOUBLE PRECISION    ,
  EntraTotal BOOL    ,
  ValorSubtotal DOUBLE PRECISION    ,
  ValorTotal DOUBLE PRECISION    ,
  NumeroPedido INTEGER    ,
  ItemPedido INTEGER    ,
  InformacoesAdicionais TEXT      ,
PRIMARY KEY(IDNFeItem)    ,
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto),
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho));

CREATE INDEX ProdutoComNFeItens ON NFeItem (IDProduto);
CREATE INDEX NFeCabecalhoComNFeItens ON NFeItem (IDNFeCabecalho);

CREATE TABLE EstoqueGrade (
  IDEstoqueGrade SERIAL  NOT NULL ,
  IDProduto INTEGER   NOT NULL ,
  IDEstoqueCor INTEGER   NOT NULL ,
  IDEstoqueTamanho INTEGER   NOT NULL ,
  Codigo character varying(50)    ,
  Quantidade DOUBLE PRECISION      ,
PRIMARY KEY(IDEstoqueGrade)      ,
  FOREIGN KEY(IDEstoqueTamanho)
    REFERENCES EstoqueTamanho(IDEstoqueTamanho),
  FOREIGN KEY(IDEstoqueCor)
    REFERENCES EstoqueCor(IDEstoqueCor),
  FOREIGN KEY(IDProduto)
    REFERENCES Produto(IDProduto));

CREATE INDEX FKEstoqueTamanhoComEstoqueGrade ON EstoqueGrade (IDEstoqueTamanho);
CREATE INDEX FKEstoqueCorComEstoqueGrade ON EstoqueGrade (IDEstoqueCor);
CREATE INDEX FKProdutoComEstoqueGrade ON EstoqueGrade (IDProduto);

CREATE TABLE NFeDestinatario (
  IDNFeDestinatario SERIAL  NOT NULL ,
  IDNFeCabecalho INTEGER   NOT NULL ,
  IDCep character varying(9)   NOT NULL ,
  IDPais INTEGER   NOT NULL ,
  IDMunicipio INTEGER   NOT NULL ,
  IDEstado UF   NOT NULL ,
  CPF_CNPJ CNPJ    ,
  RazaoSocial character varying(60)    ,
  Logradouro character varying(60)    ,
  Numero character varying(60)    ,
  Complemento character varying(60)    ,
  Bairro character varying(60)    ,
  Telefone character varying(15)    ,
  InscricaoEstadual character varying(14)    ,
  SUFRAMA character varying(9)    ,
  Email character varying(60)      ,
PRIMARY KEY(IDNFeDestinatario)          ,
  FOREIGN KEY(IDNFeCabecalho)
    REFERENCES NFeCabecalho(IDNFeCabecalho),
  FOREIGN KEY(IDPais)
    REFERENCES Pais(IDPais),
  FOREIGN KEY(IDEstado)
    REFERENCES Estado(IDEstado),
  FOREIGN KEY(IDMunicipio)
    REFERENCES Municipio(IDMunicipio),
  FOREIGN KEY(IDCep)
    REFERENCES CEP(IDCep));

CREATE INDEX FKNFeCabecalhoComNFeDestinatario ON NFeDestinatario (IDNFeCabecalho);
CREATE INDEX FKPaisComNFeDestinatario ON NFeDestinatario (IDPais);
CREATE INDEX FKEstadoComNFeDestinatario ON NFeDestinatario (IDEstado);
CREATE INDEX FKMunicipioComNFeDestinatario ON NFeDestinatario (IDMunicipio);
CREATE INDEX FKCEPComNFeDestinatario ON NFeDestinatario (IDCep);

CREATE TABLE Movimento (
  IDMovimento SERIAL  NOT NULL ,
  IDNFeDuplicata INTEGER   NOT NULL ,
  IDPlanoContasFinanceiro INTEGER   NOT NULL ,
  IDPlanoContasGerencial INTEGER   NOT NULL ,
  IDHistoricoMovimento INTEGER   NOT NULL ,
  IDPortador INTEGER   NOT NULL ,
  IDUnidadeDeNegocio INTEGER   NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  DataRegistro DATE   NOT NULL ,
  DataVencimento DATE   NOT NULL ,
  DataLiquidacao DATE    ,
  Origem CHAR(1)  ,
  NF INTEGER    ,
  Fatura character varying(12)    ,
  ContraPartida INTEGER    ,
  Situacao CHAR(1)    ,
  JuroValor DOUBLE PRECISION    ,
  MultaValor DOUBLE PRECISION    ,
  Valor DOUBLE PRECISION    ,
  ValorSaldo DOUBLE PRECISION      ,
PRIMARY KEY(IDMovimento)              ,
  FOREIGN KEY(IDPlanoContasGerencial)
    REFERENCES PlanoContasGerencial(idPlanoContasGerencial),
  FOREIGN KEY(IDPlanoContasFinanceiro)
    REFERENCES PlanoContasFinanceiro(idPlanoContasFinanceiro),
  FOREIGN KEY(IDHistoricoMovimento)
    REFERENCES HistoricoMovimento(idHistoricoMovimento),
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa),
  FOREIGN KEY(IDNFeDuplicata)
    REFERENCES NFeDuplicata(idNFeDuplicata),
  FOREIGN KEY(IDPortador)
    REFERENCES Portador(IDPortador),
  FOREIGN KEY(IDUnidadeDeNegocio)
    REFERENCES UnidadeDeNegocio(IDUnidadeDeNegocio));

CREATE INDEX FKPlanoContasGerencialComMovimento ON Movimento (IDPlanoContasGerencial);
CREATE INDEX FKPlanoContasFinanceiroComMovimento ON Movimento (IDPlanoContasFinanceiro);
CREATE INDEX FKHistoricoMovimentoComMovimento ON Movimento (IDHistoricoMovimento);
CREATE INDEX FKPessoaComMovimento ON Movimento (IDPessoa);
CREATE INDEX FKNFeDuplicataComMovimento ON Movimento (IDNFeDuplicata);
CREATE INDEX FKPortadorComMovimento ON Movimento (IDPortador);
CREATE INDEX FKUnidadeNegocioComMovimento ON Movimento (IDUnidadeDeNegocio);

CREATE TABLE Endereco (
  IDEndereco SERIAL  NOT NULL ,
  IDPessoa INTEGER   NOT NULL ,
  IDECFCabecalho INTEGER   NOT NULL ,
  IDEntradaLocalEntregaRetirada INTEGER   NOT NULL ,
  IDEntradaTransportadora INTEGER   NOT NULL ,
  IDUnidadeDeNegocio INTEGER   NOT NULL ,
  IDEstado UF   NOT NULL ,
  IDCep character varying(9)   NOT NULL ,
  IDMunicipio INTEGER   NOT NULL ,
  Logradouro character varying(60)    ,
  Numero character varying(10)    ,
  Complemento character varying(60)    ,
  Bairro character varying(60)    ,
  Principal CHAR(1)    ,
  Entrega CHAR(1)    ,
  Cobranca CHAR(1)    ,
  Correspondencia CHAR(1)      ,
PRIMARY KEY(IDEndereco)                ,
  FOREIGN KEY(IDCep)
    REFERENCES CEP(IDCep),
  FOREIGN KEY(IDMunicipio)
    REFERENCES Municipio(IDMunicipio),
  FOREIGN KEY(IDEstado)
    REFERENCES Estado(IDEstado),
  FOREIGN KEY(IDUnidadeDeNegocio)
    REFERENCES UnidadeDeNegocio(IDUnidadeDeNegocio),
  FOREIGN KEY(IDEntradaTransportadora)
    REFERENCES EntradaTransportadora(IDEntradaTransportadora),
  FOREIGN KEY(IDEntradaLocalEntregaRetirada)
    REFERENCES EntradaLocalEntregaRetirada(IDEntradaLocalEntregaRetirada),
  FOREIGN KEY(IDECFCabecalho)
    REFERENCES ECFCabecalho(IDECFCabecalho),
  FOREIGN KEY(IDPessoa)
    REFERENCES Pessoa(IDPessoa));

CREATE INDEX FKCEPComEndereco ON Endereco (IDCep);
CREATE INDEX FKMunicipioComEndereco ON Endereco (IDMunicipio);
CREATE INDEX FKEstadoComEndereco ON Endereco (IDEstado);
CREATE INDEX FKUNComEndereco ON Endereco (IDUnidadeDeNegocio);
CREATE INDEX FKEntradaTransportadoraComEndereco ON Endereco (IDEntradaTransportadora);
CREATE INDEX FKEntradaLocalEntregaRetiradaComEndereco ON Endereco (IDEntradaLocalEntregaRetirada);
CREATE INDEX FKECFCabecalhoComEndereco ON Endereco (IDECFCabecalho);
CREATE INDEX FKPessoaComEndereco ON Endereco (IDPessoa);

CREATE TABLE NFeItemII (
  IDNFeItemII SERIAL  NOT NULL ,
  IDNFeItem INTEGER   NOT NULL ,
  BCValor DOUBLE PRECISION    ,
  ValorDespesasAduaneiras DOUBLE PRECISION    ,
  ValorImposto DOUBLE PRECISION    ,
  ValorIOF DOUBLE PRECISION      ,
PRIMARY KEY(IDNFeItemII)  ,
  FOREIGN KEY(IDNFeItem)
    REFERENCES NFeItem(IdNFeItem));

CREATE INDEX FKNFeItemComNFeItemII ON NFeItemII (IDNFeItem);

CREATE TABLE NFeItemImposto (
  IDNFeItemImposto SERIAL  NOT NULL ,
  IDNFeItem INTEGER   NOT NULL ,
  OrigemMercadoria SMALLINT    ,
  ICMSCST SMALLINT    ,
  CSOSN SMALLINT    ,
  ICMSModalidadeBC SMALLINT    ,
  ICMSReducaoBC DOUBLE PRECISION    ,
  ICMSBaseCalculo DOUBLE PRECISION    ,
  ICMSAliquota DOUBLE PRECISION    ,
  ICMSValor DOUBLE PRECISION    ,
  ICMSMotivoDesoneracao CHAR(1)    ,
  ICMSModalidadeBCST SMALLINT    ,
  ICMSMVAST DOUBLE PRECISION    ,
  ICMSReducaoBCST DOUBLE PRECISION    ,
  ICMSValorBCST DOUBLE PRECISION    ,
  ICMSAliquotaST DOUBLE PRECISION    ,
  ICMSValorST DOUBLE PRECISION    ,
  ICMSVALORBCSTRetido DOUBLE PRECISION    ,
  ICMSValorSTRetido DOUBLE PRECISION    ,
  ICMSValorBCSTDestino DOUBLE PRECISION    ,
  ICMSVALORSTDestino DOUBLE PRECISION    ,
  ICMSAliquotaCreditoSN DOUBLE PRECISION    ,
  ICMSValorCreditoSN DOUBLE PRECISION    ,
  PrecentualBCOperacaoPropria DOUBLE PRECISION    ,
  UFST UF    ,
  IPIEnquadramento character varying(5)    ,
  IPICNPJProdutor CNPJ    ,
  IPICST SMALLINT    ,
  IPIValorBC DOUBLE PRECISION    ,
  IPIAliquota DOUBLE PRECISION    ,
  IPIQuantidadeUnidadeTributavel DOUBLE PRECISION    ,
  IPIValorUnidadeTributavel DOUBLE PRECISION    ,
  IPIValor DOUBLE PRECISION    ,
  COFINSCST SMALLINT    ,
  COFINSQuantidadeVendida DOUBLE PRECISION    ,
  COFINSBC DOUBLE PRECISION    ,
  COFINSAliquotaPercentual DOUBLE PRECISION    ,
  COFINSAliquotaValor DOUBLE PRECISION    ,
  COFINSValor DOUBLE PRECISION    ,
  PISCST SMALLINT    ,
  PISQuantidadeValor DOUBLE PRECISION    ,
  PISBC DOUBLE PRECISION    ,
  PISAliquotaPercentual DOUBLE PRECISION    ,
  PISAliquotaValor DOUBLE PRECISION    ,
  PISValor DOUBLE PRECISION    ,
  ISSBC DOUBLE PRECISION    ,
  ISSAliquota DOUBLE PRECISION    ,
  ISSValor DOUBLE PRECISION    ,
  ISSMunicipio INTEGER    ,
  ISSItemListaServico INTEGER    ,
  ISSTributacao SMALLINT      ,
PRIMARY KEY(IDNFeItemImposto)  ,
  FOREIGN KEY(IDNFeItem)
    REFERENCES NFeItem(IdNFeItem)
      ON DELETE CASCADE);

CREATE INDEX FKNFeItemComNFeItemImposto ON NFeItemImposto (IDNFeItem);

CREATE TABLE EntradaItemImposto (
  IDEntradaItemImposto SERIAL  NOT NULL ,
  IDEntradaItem INTEGER   NOT NULL ,
  OrigemMercadoria SMALLINT    ,
  ICMSCST SMALLINT    ,
  CSOSN SMALLINT    ,
  ICMSModalidadeBC SMALLINT    ,
  ICMSReducaoBC DOUBLE PRECISION    ,
  ICMSBaseCalculo DOUBLE PRECISION    ,
  ICMSAliquota DOUBLE PRECISION    ,
  ICMSValor DOUBLE PRECISION    ,
  ICMSMotivoDesoneracao CHAR(1)    ,
  ICMSModalidadeBCST SMALLINT    ,
  ICMSMVAST DOUBLE PRECISION    ,
  ICMSReducaoBCST DOUBLE PRECISION    ,
  ICMSValorBCST DOUBLE PRECISION    ,
  ICMSAliquotaST DOUBLE PRECISION    ,
  ICMSValorST DOUBLE PRECISION    ,
  ICMSVALORBCSTRetido DOUBLE PRECISION    ,
  ICMSValorSTRetido DOUBLE PRECISION    ,
  ICMSValorBCSTDestino DOUBLE PRECISION    ,
  ICMSVALORSTDestino DOUBLE PRECISION    ,
  ICMSAliquotaCreditoSN DOUBLE PRECISION    ,
  ICMSValorCreditoSN DOUBLE PRECISION    ,
  PrecentualBCOperacaoPropria DOUBLE PRECISION    ,
  UFST UF    ,
  IPIEnquadramento character varying(5)    ,
  IPICNPJProdutor CNPJ    ,
  IPICST SMALLINT    ,
  IPIValorBC DOUBLE PRECISION    ,
  IPIAliquota DOUBLE PRECISION    ,
  IPIQuantidadeUnidadeTributavel DOUBLE PRECISION    ,
  IPIValorUnidadeTributavel DOUBLE PRECISION    ,
  IPIValor DOUBLE PRECISION    ,
  COFINSCST SMALLINT    ,
  COFINSQuantidadeVendida DOUBLE PRECISION    ,
  COFINSBC DOUBLE PRECISION    ,
  COFINSAliquotaPercentual DOUBLE PRECISION    ,
  COFINSAliquotaValor DOUBLE PRECISION    ,
  COFINSValor DOUBLE PRECISION    ,
  PISCST SMALLINT    ,
  PISQuantidadeValor DOUBLE PRECISION    ,
  PISBC DOUBLE PRECISION    ,
  PISAliquotaPercentual DOUBLE PRECISION    ,
  PISAliquotaValor DOUBLE PRECISION    ,
  PISValor DOUBLE PRECISION    ,
  ISSBC DOUBLE PRECISION    ,
  ISSAliquota DOUBLE PRECISION    ,
  ISSValor DOUBLE PRECISION    ,
  ISSMunicipio INTEGER    ,
  ISSItemListaServico INTEGER    ,
  ISSTributacao SMALLINT      ,
PRIMARY KEY(IDEntradaItemImposto)  ,
  FOREIGN KEY(IDEntradaItem)
    REFERENCES EntradaItem(IDEntradaItem));

CREATE INDEX FKEntradaItemComEntradaItemImposto ON EntradaItemImposto (IDEntradaItem);

CREATE TABLE NFeDeclaracaoImportacao (
  IDNFeDeclaracaoImportacao SERIAL  NOT NULL ,
  IDNFeItem INTEGER   NOT NULL ,
  NumerDocumento character varying(12)    ,
  DataRegistro DATE    ,
  LocalDesembaraco character varying(60)    ,
  UF UF    ,
  DataDesembaraco DATE    ,
  CodigoExportador character varying(60)      ,
PRIMARY KEY(IDNFeDeclaracaoImportacao)  ,
  FOREIGN KEY(IDNFeItem)
    REFERENCES NFeItem(IdNFeItem));

CREATE INDEX FKNFeItemComNFeDeclaracaoImportacao ON NFeDeclaracaoImportacao (IDNFeItem);

CREATE TABLE MovimentoCheque (
  IDMovimentoCheque SERIAL  NOT NULL ,
  IDBanco CHAR(4)   NOT NULL ,
  IDMovimento INTEGER   NOT NULL ,
  Agencia SMALLINT    ,
  AgenciaDigito CHAR(1)    ,
  Conta SMALLINT    ,
  ContaDigito CHAR(1)    ,
  Numero character varying(6)      ,
PRIMARY KEY(IDMovimentoCheque)    ,
  FOREIGN KEY(IDMovimento)
    REFERENCES Movimento(idMovimento),
  FOREIGN KEY(IDBanco)
    REFERENCES Banco(IDBanco));

CREATE INDEX FKMovimentoComMovimentoCheque ON MovimentoCheque (IDMovimento);
CREATE INDEX FKBancoCheque ON MovimentoCheque (IDBanco);

CREATE TABLE NFeImportacaoDetalhe (
  IDNFeImportacaoDetalhe SERIAL  NOT NULL ,
  NFeDeclaracaoImportacao_idNFeDeclaracaoImportacao INTEGER   NOT NULL ,
  NumeroAdicao INTEGER    ,
  NumeroSequencial INTEGER    ,
  CodigoFabricanteEstrangeiro character varying(60)    ,
  ValorDesconto DOUBLE PRECISION      ,
PRIMARY KEY(IDNFeImportacaoDetalhe)  ,
  FOREIGN KEY(NFeDeclaracaoImportacao_idNFeDeclaracaoImportacao)
    REFERENCES NFeDeclaracaoImportacao(idNFeDeclaracaoImportacao));

CREATE INDEX FKNFeDeclaracaoImportacaoComNFeImportacaoDetalhe ON NFeImportacaoDetalhe (NFeDeclaracaoImportacao_idNFeDeclaracaoImportacao);
