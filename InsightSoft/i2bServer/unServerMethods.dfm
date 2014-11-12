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
    Connected = True
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
      'select auditoria.*, unidadeNegocio.nomeFantasia from auditoria '
      
        'inner join unidadeNegocio on auditoria.idUnidadeNegocio = unidad' +
        'eNegocio.idUnidadeNegocio'
      'order by idAuditoria limit 0')
    Left = 56
    Top = 88
    object qryAuditoriaidauditoria: TIntegerField
      FieldName = 'idauditoria'
      Origin = 'idauditoria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAuditoriadataregistro: TDateField
      FieldName = 'dataregistro'
      Origin = 'dataregistro'
    end
    object qryAuditoriahoraregistro: TTimeField
      FieldName = 'horaregistro'
      Origin = 'horaregistro'
    end
    object qryAuditoriaacao: TWideStringField
      FieldName = 'acao'
      Origin = 'acao'
      Size = 50
    end
    object qryAuditoriadescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object qryAuditoriaidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryAuditorianomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
  end
  object dspAuditoria: TDataSetProvider
    DataSet = qryAuditoria
    Left = 88
    Top = 88
  end
  object qryBanco: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from banco order by idBanco limit 0')
    Left = 56
    Top = 144
    object qryBancoidbanco: TWideStringField
      FieldName = 'idbanco'
      Origin = 'idbanco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 4
    end
    object qryBanconome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
  end
  object qryCargo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select cargo.*, cbo.nome  as CBOnome from cargo '
      'inner join cbo on cargo.idCBO = cbo.idCBO'
      'order by idCargo limit 0')
    Left = 56
    Top = 200
    object qryCargoidcargo: TIntegerField
      FieldName = 'idcargo'
      Origin = 'idcargo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCargoidcbo: TIntegerField
      FieldName = 'idcbo'
      Origin = 'idcbo'
    end
    object qryCargonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object qryCargodescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object qryCargosalario: TFloatField
      FieldName = 'salario'
      Origin = 'salario'
    end
    object qryCargocbonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cbonome'
      Origin = 'cbonome'
      Size = 250
    end
  end
  object qryCBO: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from CBO order by idCBO limit 0')
    Left = 56
    Top = 256
    object qryCBOidcbo: TIntegerField
      FieldName = 'idcbo'
      Origin = 'idcbo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCBOcodigo2002: TWideStringField
      FieldName = 'codigo2002'
      Origin = 'codigo2002'
      Size = 10
    end
    object qryCBOcodigo1994: TWideStringField
      FieldName = 'codigo1994'
      Origin = 'codigo1994'
      Size = 10
    end
    object qryCBOnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 250
    end
    object qryCBOobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object qryCEP: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select CEP.*, municipio.nome as municipioNome from CEP '
      'inner join municipio on CEP.idMunicipio = Municipio.idMunicipio '
      'order by idCEP, idMunicipio limit 0')
    Left = 56
    Top = 312
    object qryCEPidcep: TWideStringField
      FieldName = 'idcep'
      Origin = 'idcep'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 9
    end
    object qryCEPidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
      Origin = 'idmunicipio'
    end
    object qryCEPlogradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 200
    end
    object qryCEPcomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 60
    end
    object qryCEPbairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 60
    end
    object qryCEPmunicipionome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipionome'
      Origin = 'municipionome'
      Size = 150
    end
  end
  object qryCFOP: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select cfop.*, tipoOperacao.descricao as tipoOperacaoDescricao f' +
        'rom cfop '
      
        'inner join tipoOperacao on cfop.idTipoOperacao = tipoOperacao.id' +
        'TipoOperacao '
      'order by cfop.idCFOP limit 0')
    Left = 56
    Top = 368
    object qryCFOPidcfop: TIntegerField
      FieldName = 'idcfop'
      Origin = 'idcfop'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCFOPidtipooperacao: TIntegerField
      FieldName = 'idtipooperacao'
      Origin = 'idtipooperacao'
    end
    object qryCFOPcfop: TIntegerField
      FieldName = 'cfop'
      Origin = 'cfop'
    end
    object qryCFOPdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 250
    end
    object qryCFOPdescricaonf: TWideStringField
      FieldName = 'descricaonf'
      Origin = 'descricaonf'
      Size = 60
    end
    object qryCFOPaplicacao: TWideMemoField
      FieldName = 'aplicacao'
      Origin = 'aplicacao'
      BlobType = ftWideMemo
    end
    object qryCFOPtipooperacaodescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipooperacaodescricao'
      Origin = 'tipooperacaodescricao'
    end
  end
  object qryCNAE: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from CNAE order by idCNAE limit 0')
    Left = 56
    Top = 424
    object qryCNAEidcnae: TIntegerField
      FieldName = 'idcnae'
      Origin = 'idcnae'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCNAEcodigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object qryCNAEdenominacao: TWideMemoField
      FieldName = 'denominacao'
      Origin = 'denominacao'
      BlobType = ftWideMemo
    end
  end
  object qryControle: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from controle order by idControle limit 0')
    Left = 56
    Top = 480
    object qryControleidcontrole: TIntegerField
      FieldName = 'idcontrole'
      Origin = 'idcontrole'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryControlesequencia: TSmallintField
      FieldName = 'sequencia'
      Origin = 'sequencia'
    end
    object qryControledescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
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
      'select * from cstcofins order by idCSTCOFINS limit 0')
    Left = 56
    Top = 536
    object qryCSTCOFINSidcstcofins: TIntegerField
      FieldName = 'idcstcofins'
      Origin = 'idcstcofins'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCSTCOFINSdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 250
    end
    object qryCSTCOFINSobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object dspCSTCOFINS: TDataSetProvider
    DataSet = qryCSTCOFINS
    Left = 88
    Top = 536
  end
  object qryCSTIPI: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cstipi order by idCSTIPI limit 0')
    Left = 56
    Top = 592
    object qryCSTIPIidcstipi: TIntegerField
      FieldName = 'idcstipi'
      Origin = 'idcstipi'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCSTIPIdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 250
    end
    object qryCSTIPIobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object dspCSTIPI: TDataSetProvider
    DataSet = qryCSTIPI
    Left = 88
    Top = 592
  end
  object qryCSTPIS: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cstpis order by idCSTPIS limit 0')
    Left = 160
    Top = 88
    object qryCSTPISidcstpis: TIntegerField
      FieldName = 'idcstpis'
      Origin = 'idcstpis'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCSTPISdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 250
    end
  end
  object qryDocumento: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from documento order by idDocumento limit 0')
    Left = 160
    Top = 144
    object qryDocumentoiddocumento: TIntegerField
      FieldName = 'iddocumento'
      Origin = 'iddocumento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDocumentocaminho: TWideMemoField
      FieldName = 'caminho'
      Origin = 'caminho'
      BlobType = ftWideMemo
    end
    object qryDocumentoarquivo: TWideMemoField
      FieldName = 'arquivo'
      Origin = 'arquivo'
      BlobType = ftWideMemo
    end
  end
  object qryECFCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select ecfCabecalho.*, unidadeNegocio.nomeFantasia, pessoa.nome ' +
        'as pessoaNome from ecfCabecalho '
      
        'inner join unidadeNegocio on ecfCabecalho.idunidadenegocio = uni' +
        'dadeNegocio.idUnidadeNegocio'
      'inner join pessoa on ecfCabecalho.idPessoa = pessoa.idPessoa '
      'order by idECFCabecalho limit 0')
    Left = 160
    Top = 200
    object qryECFCabecalhoidecfcabecalho: TIntegerField
      FieldName = 'idecfcabecalho'
      Origin = 'idecfcabecalho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryECFCabecalhoidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryECFCabecalhonomecaixa: TWideStringField
      FieldName = 'nomecaixa'
      Origin = 'nomecaixa'
      Size = 30
    end
    object qryECFCabecalhoserieecf: TWideStringField
      FieldName = 'serieecf'
      Origin = 'serieecf'
    end
    object qryECFCabecalhodatavenda: TDateField
      FieldName = 'datavenda'
      Origin = 'datavenda'
    end
    object qryECFCabecalhohoravenda: TTimeField
      FieldName = 'horavenda'
      Origin = 'horavenda'
    end
    object qryECFCabecalhovalorvenda: TFloatField
      FieldName = 'valorvenda'
      Origin = 'valorvenda'
    end
    object qryECFCabecalhotaxadesconto: TFloatField
      FieldName = 'taxadesconto'
      Origin = 'taxadesconto'
    end
    object qryECFCabecalhovalordesconto: TIntegerField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryECFCabecalhotaxaacrescimo: TFloatField
      FieldName = 'taxaacrescimo'
      Origin = 'taxaacrescimo'
    end
    object qryECFCabecalhovaloracrescimo: TFloatField
      FieldName = 'valoracrescimo'
      Origin = 'valoracrescimo'
    end
    object qryECFCabecalhovalorfinal: TFloatField
      FieldName = 'valorfinal'
      Origin = 'valorfinal'
    end
    object qryECFCabecalhovalorrecebido: TFloatField
      FieldName = 'valorrecebido'
      Origin = 'valorrecebido'
    end
    object qryECFCabecalhotroco: TFloatField
      FieldName = 'troco'
      Origin = 'troco'
    end
    object qryECFCabecalhovalorcancelado: TFloatField
      FieldName = 'valorcancelado'
      Origin = 'valorcancelado'
    end
    object qryECFCabecalhototalprodutos: TFloatField
      FieldName = 'totalprodutos'
      Origin = 'totalprodutos'
    end
    object qryECFCabecalhototaldocumento: TFloatField
      FieldName = 'totaldocumento'
      Origin = 'totaldocumento'
    end
    object qryECFCabecalhobaseicms: TFloatField
      FieldName = 'baseicms'
      Origin = 'baseicms'
    end
    object qryECFCabecalhovaloricms: TFloatField
      FieldName = 'valoricms'
      Origin = 'valoricms'
    end
    object qryECFCabecalhoicmsoutras: TFloatField
      FieldName = 'icmsoutras'
      Origin = 'icmsoutras'
    end
    object qryECFCabecalhoissqn: TFloatField
      FieldName = 'issqn'
      Origin = 'issqn'
    end
    object qryECFCabecalhopis: TFloatField
      FieldName = 'pis'
      Origin = 'pis'
    end
    object qryECFCabecalhocofins: TFloatField
      FieldName = 'cofins'
      Origin = 'cofins'
    end
    object qryECFCabecalhoacrescimoitens: TFloatField
      FieldName = 'acrescimoitens'
      Origin = 'acrescimoitens'
    end
    object qryECFCabecalhodescontoitens: TFloatField
      FieldName = 'descontoitens'
      Origin = 'descontoitens'
    end
    object qryECFCabecalhostatusvenda: TWideStringField
      FieldName = 'statusvenda'
      Origin = 'statusvenda'
      FixedChar = True
      Size = 1
    end
    object qryECFCabecalhonomecliente: TWideStringField
      FieldName = 'nomecliente'
      Origin = 'nomecliente'
      Size = 100
    end
    object qryECFCabecalhocpfcnpjcliente: TWideStringField
      FieldName = 'cpfcnpjcliente'
      Origin = 'cpfcnpjcliente'
      Size = 14
    end
    object qryECFCabecalhocupomcancelado: TBooleanField
      FieldName = 'cupomcancelado'
      Origin = 'cupomcancelado'
    end
    object qryECFCabecalhoidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryECFCabecalhonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryECFCabecalhopessoanome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
  end
  object qryECFItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select ecfitem.*, produto.descricao as produtoDescricao from ecf' +
        'item '
      'inner join produto on ecfitem.idProduto = produto.idProduto '
      'order by idECFItem limit 0')
    Left = 160
    Top = 256
    object qryECFItemidecfitem: TIntegerField
      FieldName = 'idecfitem'
      Origin = 'idecfitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryECFItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryECFItemidecfcabecalho: TIntegerField
      FieldName = 'idecfcabecalho'
      Origin = 'idecfcabecalho'
    end
    object qryECFItemgtin: TWideStringField
      FieldName = 'gtin'
      Origin = 'gtin'
      Size = 14
    end
    object qryECFItemserieecf: TWideStringField
      FieldName = 'serieecf'
      Origin = 'serieecf'
    end
    object qryECFItemquantidade: TFloatField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object qryECFItemvalorunitario: TFloatField
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
    end
    object qryECFItemvalortotal: TFloatField
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object qryECFItemtotalitem: TFloatField
      FieldName = 'totalitem'
      Origin = 'totalitem'
    end
    object qryECFItembaseicms: TFloatField
      FieldName = 'baseicms'
      Origin = 'baseicms'
    end
    object qryECFItemtaxaicms: TFloatField
      FieldName = 'taxaicms'
      Origin = 'taxaicms'
    end
    object qryECFItemvaloricms: TFloatField
      FieldName = 'valoricms'
      Origin = 'valoricms'
    end
    object qryECFItemtaxadesconto: TFloatField
      FieldName = 'taxadesconto'
      Origin = 'taxadesconto'
    end
    object qryECFItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryECFItemtaxaissqn: TFloatField
      FieldName = 'taxaissqn'
      Origin = 'taxaissqn'
    end
    object qryECFItemvalorissqn: TFloatField
      FieldName = 'valorissqn'
      Origin = 'valorissqn'
    end
    object qryECFItemtaxapis: TFloatField
      FieldName = 'taxapis'
      Origin = 'taxapis'
    end
    object qryECFItemvalorpis: TFloatField
      FieldName = 'valorpis'
      Origin = 'valorpis'
    end
    object qryECFItemtaxacofins: TFloatField
      FieldName = 'taxacofins'
      Origin = 'taxacofins'
    end
    object qryECFItemvalorcofiins: TFloatField
      FieldName = 'valorcofiins'
      Origin = 'valorcofiins'
    end
    object qryECFItemtaxaacrescimo: TFloatField
      FieldName = 'taxaacrescimo'
      Origin = 'taxaacrescimo'
    end
    object qryECFItemvaloracrescimo: TFloatField
      FieldName = 'valoracrescimo'
      Origin = 'valoracrescimo'
    end
    object qryECFItemtotalizadorparcial: TFloatField
      FieldName = 'totalizadorparcial'
      Origin = 'totalizadorparcial'
    end
    object qryECFItemcst: TSmallintField
      FieldName = 'cst'
      Origin = 'cst'
    end
    object qryECFItemcancelado: TBooleanField
      FieldName = 'cancelado'
      Origin = 'cancelado'
    end
    object qryECFItemmovimentaestoque: TBooleanField
      FieldName = 'movimentaestoque'
      Origin = 'movimentaestoque'
    end
    object qryECFItemecficmsst: TWideStringField
      FieldName = 'ecficmsst'
      Origin = 'ecficmsst'
      Size = 4
    end
    object qryECFItemprodutodescricao: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'produtodescricao'
      Origin = 'produtodescricao'
      BlobType = ftWideMemo
    end
  end
  object qryEmpresa: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from empresa order by idEmpresa limit 0')
    Left = 160
    Top = 312
    object qryEmpresaidempresa: TIntegerField
      FieldName = 'idempresa'
      Origin = 'idempresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEmpresarazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 60
    end
    object qryEmpresanomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryEmpresahomepage: TWideStringField
      FieldName = 'homepage'
      Origin = 'homepage'
      Size = 300
    end
    object qryEmpresaimagemlogotipo: TWideMemoField
      FieldName = 'imagemlogotipo'
      Origin = 'imagemlogotipo'
      BlobType = ftWideMemo
    end
    object qryEmpresatiporegime: TWideStringField
      FieldName = 'tiporegime'
      Origin = 'tiporegime'
      FixedChar = True
      Size = 1
    end
  end
  object qryEndereco: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from endereco order by idEndereco limit 0')
    Left = 160
    Top = 368
    object qryEnderecoidendereco: TIntegerField
      FieldName = 'idendereco'
      Origin = 'idendereco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEnderecoidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryEnderecoidecfcabecalho: TIntegerField
      FieldName = 'idecfcabecalho'
      Origin = 'idecfcabecalho'
    end
    object qryEnderecoidentradalocalentregaretirada: TIntegerField
      FieldName = 'identradalocalentregaretirada'
      Origin = 'identradalocalentregaretirada'
    end
    object qryEnderecoidentradatransportadora: TIntegerField
      FieldName = 'identradatransportadora'
      Origin = 'identradatransportadora'
    end
    object qryEnderecoidunidadedenegocio: TIntegerField
      FieldName = 'idunidadedenegocio'
      Origin = 'idunidadedenegocio'
    end
    object qryEnderecoidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      FixedChar = True
      Size = 2
    end
    object qryEnderecoidcep: TWideStringField
      FieldName = 'idcep'
      Origin = 'idcep'
      Size = 9
    end
    object qryEnderecoidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
      Origin = 'idmunicipio'
    end
    object qryEnderecologradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 60
    end
    object qryEndereconumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object qryEnderecocomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 60
    end
    object qryEnderecobairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 60
    end
    object qryEnderecoprincipal: TWideStringField
      FieldName = 'principal'
      Origin = 'principal'
      FixedChar = True
      Size = 1
    end
    object qryEnderecoentrega: TWideStringField
      FieldName = 'entrega'
      Origin = 'entrega'
      FixedChar = True
      Size = 1
    end
    object qryEnderecocobranca: TWideStringField
      FieldName = 'cobranca'
      Origin = 'cobranca'
      FixedChar = True
      Size = 1
    end
    object qryEnderecocorrespondencia: TWideStringField
      FieldName = 'correspondencia'
      Origin = 'correspondencia'
      FixedChar = True
      Size = 1
    end
  end
  object qryEntradaCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select entradaCabecalho.*, unidadeNegocio.nomeFantasia, pessoa.n' +
        'ome as PessoaNome '
      'from entradaCabecalho'
      
        'inner join unidadeNegocio on entradaCabecalho.idUnidadeNegocio =' +
        ' unidadeNegocio.idUnidadeNegocio'
      'inner join pessoa on entradaCabecalho.idPessoa = pessoa.idPessoa'
      'order by idEntradaCabecalho limit 0')
    Left = 160
    Top = 424
    object qryEntradaCabecalhoidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
      Origin = 'identradacabecalho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEntradaCabecalhoserie: TWideStringField
      FieldName = 'serie'
      Origin = 'serie'
      FixedChar = True
      Size = 3
    end
    object qryEntradaCabecalhomodelo: TWideStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      FixedChar = True
      Size = 2
    end
    object qryEntradaCabecalhoufemitente: TWideStringField
      FieldName = 'ufemitente'
      Origin = 'ufemitente'
      FixedChar = True
      Size = 2
    end
    object qryEntradaCabecalhocodigonumerico: TWideStringField
      FieldName = 'codigonumerico'
      Origin = 'codigonumerico'
      Size = 8
    end
    object qryEntradaCabecalhonaturezaoperacao: TIntegerField
      FieldName = 'naturezaoperacao'
      Origin = 'naturezaoperacao'
    end
    object qryEntradaCabecalhoindicadorformapagamento: TBooleanField
      FieldName = 'indicadorformapagamento'
      Origin = 'indicadorformapagamento'
    end
    object qryEntradaCabecalhonumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 9
    end
    object qryEntradaCabecalhodatahoraemisao: TSQLTimeStampField
      FieldName = 'datahoraemisao'
      Origin = 'datahoraemisao'
    end
    object qryEntradaCabecalhodatahorasaida: TSQLTimeStampField
      FieldName = 'datahorasaida'
      Origin = 'datahorasaida'
    end
    object qryEntradaCabecalhotipooperacao: TBooleanField
      FieldName = 'tipooperacao'
      Origin = 'tipooperacao'
    end
    object qryEntradaCabecalhoformatoimpressaodanfe: TWideStringField
      FieldName = 'formatoimpressaodanfe'
      Origin = 'formatoimpressaodanfe'
      FixedChar = True
      Size = 1
    end
    object qryEntradaCabecalhotipoemissao: TWideStringField
      FieldName = 'tipoemissao'
      Origin = 'tipoemissao'
      FixedChar = True
      Size = 1
    end
    object qryEntradaCabecalhochaveacesso: TWideStringField
      FieldName = 'chaveacesso'
      Origin = 'chaveacesso'
      Size = 44
    end
    object qryEntradaCabecalhodigitochaveacesso: TWideStringField
      FieldName = 'digitochaveacesso'
      Origin = 'digitochaveacesso'
      FixedChar = True
      Size = 1
    end
    object qryEntradaCabecalhoambiente: TBooleanField
      FieldName = 'ambiente'
      Origin = 'ambiente'
    end
    object qryEntradaCabecalhofinalidadeemissao: TWideStringField
      FieldName = 'finalidadeemissao'
      Origin = 'finalidadeemissao'
      FixedChar = True
      Size = 1
    end
    object qryEntradaCabecalhoprocessoemissao: TWideStringField
      FieldName = 'processoemissao'
      Origin = 'processoemissao'
      FixedChar = True
      Size = 1
    end
    object qryEntradaCabecalhoversaoprocessoemissao: TWideStringField
      FieldName = 'versaoprocessoemissao'
      Origin = 'versaoprocessoemissao'
    end
    object qryEntradaCabecalhodataentradacontingencia: TSQLTimeStampField
      FieldName = 'dataentradacontingencia'
      Origin = 'dataentradacontingencia'
    end
    object qryEntradaCabecalhojustificativacontigencia: TWideStringField
      FieldName = 'justificativacontigencia'
      Origin = 'justificativacontigencia'
      Size = 255
    end
    object qryEntradaCabecalhobasecalculoicms: TFloatField
      FieldName = 'basecalculoicms'
      Origin = 'basecalculoicms'
    end
    object qryEntradaCabecalhovaloricms: TFloatField
      FieldName = 'valoricms'
      Origin = 'valoricms'
    end
    object qryEntradaCabecalhobasecalculoicmsst: TFloatField
      FieldName = 'basecalculoicmsst'
      Origin = 'basecalculoicmsst'
    end
    object qryEntradaCabecalhovaloricmsst: TFloatField
      FieldName = 'valoricmsst'
      Origin = 'valoricmsst'
    end
    object qryEntradaCabecalhovalortotalprodutos: TFloatField
      FieldName = 'valortotalprodutos'
      Origin = 'valortotalprodutos'
    end
    object qryEntradaCabecalhovalorfrete: TFloatField
      FieldName = 'valorfrete'
      Origin = 'valorfrete'
    end
    object qryEntradaCabecalhovalorseguro: TFloatField
      FieldName = 'valorseguro'
      Origin = 'valorseguro'
    end
    object qryEntradaCabecalhovalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryEntradaCabecalhovaloripi: TFloatField
      FieldName = 'valoripi'
      Origin = 'valoripi'
    end
    object qryEntradaCabecalhovalorpis: TFloatField
      FieldName = 'valorpis'
      Origin = 'valorpis'
    end
    object qryEntradaCabecalhovalorcofins: TFloatField
      FieldName = 'valorcofins'
      Origin = 'valorcofins'
    end
    object qryEntradaCabecalhovalordespesasacessorias: TFloatField
      FieldName = 'valordespesasacessorias'
      Origin = 'valordespesasacessorias'
    end
    object qryEntradaCabecalhovalortotal: TFloatField
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object qryEntradaCabecalhovalorservicos: TFloatField
      FieldName = 'valorservicos'
      Origin = 'valorservicos'
    end
    object qryEntradaCabecalhobasecalculoissqn: TFloatField
      FieldName = 'basecalculoissqn'
      Origin = 'basecalculoissqn'
    end
    object qryEntradaCabecalhovalorissqn: TFloatField
      FieldName = 'valorissqn'
      Origin = 'valorissqn'
    end
    object qryEntradaCabecalhovalorpisissqn: TFloatField
      FieldName = 'valorpisissqn'
      Origin = 'valorpisissqn'
    end
    object qryEntradaCabecalhovalorcofinsissqn: TFloatField
      FieldName = 'valorcofinsissqn'
      Origin = 'valorcofinsissqn'
    end
    object qryEntradaCabecalhovalorretidopis: TFloatField
      FieldName = 'valorretidopis'
      Origin = 'valorretidopis'
    end
    object qryEntradaCabecalhovalorretidocofins: TFloatField
      FieldName = 'valorretidocofins'
      Origin = 'valorretidocofins'
    end
    object qryEntradaCabecalhobasecalculoirrf: TFloatField
      FieldName = 'basecalculoirrf'
      Origin = 'basecalculoirrf'
    end
    object qryEntradaCabecalhovalorretidoirrf: TFloatField
      FieldName = 'valorretidoirrf'
      Origin = 'valorretidoirrf'
    end
    object qryEntradaCabecalhobasecalculoprevidencia: TFloatField
      FieldName = 'basecalculoprevidencia'
      Origin = 'basecalculoprevidencia'
    end
    object qryEntradaCabecalhovalorretidoprevidencia: TFloatField
      FieldName = 'valorretidoprevidencia'
      Origin = 'valorretidoprevidencia'
    end
    object qryEntradaCabecalhoinformacoesadicionaisfisco: TWideMemoField
      FieldName = 'informacoesadicionaisfisco'
      Origin = 'informacoesadicionaisfisco'
      BlobType = ftWideMemo
    end
    object qryEntradaCabecalhoinformacoesaddcontribuinte: TWideMemoField
      FieldName = 'informacoesaddcontribuinte'
      Origin = 'informacoesaddcontribuinte'
      BlobType = ftWideMemo
    end
    object qryEntradaCabecalhofaturanumero: TWideStringField
      FieldName = 'faturanumero'
      Origin = 'faturanumero'
      Size = 60
    end
    object qryEntradaCabecalhofaturavalororiginal: TFloatField
      FieldName = 'faturavalororiginal'
      Origin = 'faturavalororiginal'
    end
    object qryEntradaCabecalhofaturavalordesconto: TFloatField
      FieldName = 'faturavalordesconto'
      Origin = 'faturavalordesconto'
    end
    object qryEntradaCabecalhofaturavalorliquido: TFloatField
      FieldName = 'faturavalorliquido'
      Origin = 'faturavalorliquido'
    end
    object qryEntradaCabecalhoidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryEntradaCabecalhoidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryEntradaCabecalhonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryEntradaCabecalhopessoanome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
  end
  object qryEntradaDuplicata: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from entradaDuplicata order by idEntradaDuplicata limit' +
        ' 0')
    Left = 160
    Top = 480
    object qryEntradaDuplicataidentradaduplicata: TIntegerField
      FieldName = 'identradaduplicata'
      Origin = 'identradaduplicata'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEntradaDuplicataidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
      Origin = 'identradacabecalho'
    end
    object qryEntradaDuplicatanumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 60
    end
    object qryEntradaDuplicatavalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object qryEntradaDuplicatadatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
  end
  object qryEntradaItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select entradaItem.*, produto.descricao as produtoDescricao from' +
        ' entradaItem '
      'inner join produto on entradaItem.idProduto = produto.idProduto'
      'order by idEntradaItem limit 0')
    Left = 160
    Top = 536
    object qryEntradaItemidentradaitem: TIntegerField
      FieldName = 'identradaitem'
      Origin = 'identradaitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEntradaItemidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
      Origin = 'identradacabecalho'
    end
    object qryEntradaItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryEntradaItemnumeroitem: TIntegerField
      FieldName = 'numeroitem'
      Origin = 'numeroitem'
    end
    object qryEntradaItemcodigoproduto: TWideStringField
      FieldName = 'codigoproduto'
      Origin = 'codigoproduto'
      Size = 60
    end
    object qryEntradaItemgtin: TWideStringField
      FieldName = 'gtin'
      Origin = 'gtin'
      Size = 14
    end
    object qryEntradaItemdescricaoproduto: TWideStringField
      FieldName = 'descricaoproduto'
      Origin = 'descricaoproduto'
      Size = 100
    end
    object qryEntradaItemncm: TIntegerField
      FieldName = 'ncm'
      Origin = 'ncm'
    end
    object qryEntradaItemextipi: TIntegerField
      FieldName = 'extipi'
      Origin = 'extipi'
    end
    object qryEntradaItemcfop: TIntegerField
      FieldName = 'cfop'
      Origin = 'cfop'
    end
    object qryEntradaItemunidadecomercial: TWideStringField
      FieldName = 'unidadecomercial'
      Origin = 'unidadecomercial'
      Size = 6
    end
    object qryEntradaItemquantidadecomercial: TFloatField
      FieldName = 'quantidadecomercial'
      Origin = 'quantidadecomercial'
    end
    object qryEntradaItemvaloriunitariocomercial: TFloatField
      FieldName = 'valoriunitariocomercial'
      Origin = 'valoriunitariocomercial'
    end
    object qryEntradaItemvalorbrutoproduto: TFloatField
      FieldName = 'valorbrutoproduto'
      Origin = 'valorbrutoproduto'
    end
    object qryEntradaItemunidadetributavel: TWideStringField
      FieldName = 'unidadetributavel'
      Origin = 'unidadetributavel'
      Size = 6
    end
    object qryEntradaItemquantidadetributavel: TFloatField
      FieldName = 'quantidadetributavel'
      Origin = 'quantidadetributavel'
    end
    object qryEntradaItemvalorunitariotributavel: TFloatField
      FieldName = 'valorunitariotributavel'
      Origin = 'valorunitariotributavel'
    end
    object qryEntradaItemvalorfrete: TFloatField
      FieldName = 'valorfrete'
      Origin = 'valorfrete'
    end
    object qryEntradaItemvalorseguro: TFloatField
      FieldName = 'valorseguro'
      Origin = 'valorseguro'
    end
    object qryEntradaItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryEntradaItemvaloroutrasdespesas: TFloatField
      FieldName = 'valoroutrasdespesas'
      Origin = 'valoroutrasdespesas'
    end
    object qryEntradaItementratotal: TBooleanField
      FieldName = 'entratotal'
      Origin = 'entratotal'
    end
    object qryEntradaItemvalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
      Origin = 'valorsubtotal'
    end
    object qryEntradaItemvalortotal: TFloatField
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object qryEntradaItemnumeropedido: TFloatField
      FieldName = 'numeropedido'
      Origin = 'numeropedido'
    end
    object qryEntradaItemitempedido: TFloatField
      FieldName = 'itempedido'
      Origin = 'itempedido'
    end
    object qryEntradaIteminformacoesadicionais: TWideMemoField
      FieldName = 'informacoesadicionais'
      Origin = 'informacoesadicionais'
      BlobType = ftWideMemo
    end
    object qryEntradaItemprodutodescricao: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'produtodescricao'
      Origin = 'produtodescricao'
      BlobType = ftWideMemo
    end
  end
  object qryEntradaItemImposto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from entradaItemImposto order by idEntradaItemImposto l' +
        'imit 0')
    Left = 160
    Top = 592
    object qryEntradaItemImpostoidentradaitemimposto: TIntegerField
      FieldName = 'identradaitemimposto'
      Origin = 'identradaitemimposto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEntradaItemImpostoidentradaitem: TIntegerField
      FieldName = 'identradaitem'
      Origin = 'identradaitem'
    end
    object qryEntradaItemImpostoorigemmercadoria: TSmallintField
      FieldName = 'origemmercadoria'
      Origin = 'origemmercadoria'
    end
    object qryEntradaItemImpostoicmscst: TSmallintField
      FieldName = 'icmscst'
      Origin = 'icmscst'
    end
    object qryEntradaItemImpostocsosn: TSmallintField
      FieldName = 'csosn'
      Origin = 'csosn'
    end
    object qryEntradaItemImpostoicmsmodalidadebc: TSmallintField
      FieldName = 'icmsmodalidadebc'
      Origin = 'icmsmodalidadebc'
    end
    object qryEntradaItemImpostoicmsreducaobc: TFloatField
      FieldName = 'icmsreducaobc'
      Origin = 'icmsreducaobc'
    end
    object qryEntradaItemImpostoicmsbasecalculo: TFloatField
      FieldName = 'icmsbasecalculo'
      Origin = 'icmsbasecalculo'
    end
    object qryEntradaItemImpostoicmsaliquota: TFloatField
      FieldName = 'icmsaliquota'
      Origin = 'icmsaliquota'
    end
    object qryEntradaItemImpostoicmsvalor: TFloatField
      FieldName = 'icmsvalor'
      Origin = 'icmsvalor'
    end
    object qryEntradaItemImpostoicmsmotivodesoneracao: TWideStringField
      FieldName = 'icmsmotivodesoneracao'
      Origin = 'icmsmotivodesoneracao'
      FixedChar = True
      Size = 1
    end
    object qryEntradaItemImpostoicmsmodalidadebcst: TSmallintField
      FieldName = 'icmsmodalidadebcst'
      Origin = 'icmsmodalidadebcst'
    end
    object qryEntradaItemImpostoicmsmvast: TFloatField
      FieldName = 'icmsmvast'
      Origin = 'icmsmvast'
    end
    object qryEntradaItemImpostoicmsreducaobcst: TFloatField
      FieldName = 'icmsreducaobcst'
      Origin = 'icmsreducaobcst'
    end
    object qryEntradaItemImpostoicmsvalorbcst: TFloatField
      FieldName = 'icmsvalorbcst'
      Origin = 'icmsvalorbcst'
    end
    object qryEntradaItemImpostoicmsaliquotast: TFloatField
      FieldName = 'icmsaliquotast'
      Origin = 'icmsaliquotast'
    end
    object qryEntradaItemImpostoicmsvalorst: TFloatField
      FieldName = 'icmsvalorst'
      Origin = 'icmsvalorst'
    end
    object qryEntradaItemImpostoicmsvalorbcstretido: TFloatField
      FieldName = 'icmsvalorbcstretido'
      Origin = 'icmsvalorbcstretido'
    end
    object qryEntradaItemImpostoicmsvalorstretido: TFloatField
      FieldName = 'icmsvalorstretido'
      Origin = 'icmsvalorstretido'
    end
    object qryEntradaItemImpostoicmsvalorbcstdestino: TFloatField
      FieldName = 'icmsvalorbcstdestino'
      Origin = 'icmsvalorbcstdestino'
    end
    object qryEntradaItemImpostoicmsvalorstdestino: TFloatField
      FieldName = 'icmsvalorstdestino'
      Origin = 'icmsvalorstdestino'
    end
    object qryEntradaItemImpostoicmsaliquotacreditosn: TFloatField
      FieldName = 'icmsaliquotacreditosn'
      Origin = 'icmsaliquotacreditosn'
    end
    object qryEntradaItemImpostoicmsvalorcreditosn: TFloatField
      FieldName = 'icmsvalorcreditosn'
      Origin = 'icmsvalorcreditosn'
    end
    object qryEntradaItemImpostoprecentualbcoperacaopropria: TFloatField
      FieldName = 'precentualbcoperacaopropria'
      Origin = 'precentualbcoperacaopropria'
    end
    object qryEntradaItemImpostoufst: TWideStringField
      FieldName = 'ufst'
      Origin = 'ufst'
      FixedChar = True
      Size = 2
    end
    object qryEntradaItemImpostoipienquadramento: TWideStringField
      FieldName = 'ipienquadramento'
      Origin = 'ipienquadramento'
      Size = 5
    end
    object qryEntradaItemImpostoipicnpjprodutor: TWideStringField
      FieldName = 'ipicnpjprodutor'
      Origin = 'ipicnpjprodutor'
      Size = 9
    end
    object qryEntradaItemImpostoipicst: TSmallintField
      FieldName = 'ipicst'
      Origin = 'ipicst'
    end
    object qryEntradaItemImpostoipivalorbc: TFloatField
      FieldName = 'ipivalorbc'
      Origin = 'ipivalorbc'
    end
    object qryEntradaItemImpostoipialiquota: TFloatField
      FieldName = 'ipialiquota'
      Origin = 'ipialiquota'
    end
    object qryEntradaItemImpostoipiquantidadeunidadetributavel: TFloatField
      FieldName = 'ipiquantidadeunidadetributavel'
      Origin = 'ipiquantidadeunidadetributavel'
    end
    object qryEntradaItemImpostoipivalorunidadetributavel: TFloatField
      FieldName = 'ipivalorunidadetributavel'
      Origin = 'ipivalorunidadetributavel'
    end
    object qryEntradaItemImpostoipivalor: TFloatField
      FieldName = 'ipivalor'
      Origin = 'ipivalor'
    end
    object qryEntradaItemImpostocofinscst: TSmallintField
      FieldName = 'cofinscst'
      Origin = 'cofinscst'
    end
    object qryEntradaItemImpostocofinsquantidadevendida: TFloatField
      FieldName = 'cofinsquantidadevendida'
      Origin = 'cofinsquantidadevendida'
    end
    object qryEntradaItemImpostocofinsbc: TFloatField
      FieldName = 'cofinsbc'
      Origin = 'cofinsbc'
    end
    object qryEntradaItemImpostocofinsaliquotapercentual: TFloatField
      FieldName = 'cofinsaliquotapercentual'
      Origin = 'cofinsaliquotapercentual'
    end
    object qryEntradaItemImpostocofinsaliquotavalor: TFloatField
      FieldName = 'cofinsaliquotavalor'
      Origin = 'cofinsaliquotavalor'
    end
    object qryEntradaItemImpostocofinsvalor: TFloatField
      FieldName = 'cofinsvalor'
      Origin = 'cofinsvalor'
    end
    object qryEntradaItemImpostopiscst: TSmallintField
      FieldName = 'piscst'
      Origin = 'piscst'
    end
    object qryEntradaItemImpostopisquantidadevalor: TFloatField
      FieldName = 'pisquantidadevalor'
      Origin = 'pisquantidadevalor'
    end
    object qryEntradaItemImpostopisbc: TFloatField
      FieldName = 'pisbc'
      Origin = 'pisbc'
    end
    object qryEntradaItemImpostopisaliquotapercentual: TFloatField
      FieldName = 'pisaliquotapercentual'
      Origin = 'pisaliquotapercentual'
    end
    object qryEntradaItemImpostopisaliquotavalor: TFloatField
      FieldName = 'pisaliquotavalor'
      Origin = 'pisaliquotavalor'
    end
    object qryEntradaItemImpostopisvalor: TFloatField
      FieldName = 'pisvalor'
      Origin = 'pisvalor'
    end
    object qryEntradaItemImpostoissbc: TFloatField
      FieldName = 'issbc'
      Origin = 'issbc'
    end
    object qryEntradaItemImpostoissaliquota: TFloatField
      FieldName = 'issaliquota'
      Origin = 'issaliquota'
    end
    object qryEntradaItemImpostoissvalor: TFloatField
      FieldName = 'issvalor'
      Origin = 'issvalor'
    end
    object qryEntradaItemImpostoissmunicipio: TIntegerField
      FieldName = 'issmunicipio'
      Origin = 'issmunicipio'
    end
    object qryEntradaItemImpostoissitemlistaservico: TIntegerField
      FieldName = 'issitemlistaservico'
      Origin = 'issitemlistaservico'
    end
    object qryEntradaItemImpostoisstributacao: TSmallintField
      FieldName = 'isstributacao'
      Origin = 'isstributacao'
    end
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
      
        'select * from entradaLocalEntregaRetirada order by idEntradaLoca' +
        'lEntregaRetirada limit 0')
    Left = 264
    Top = 88
    object qryEntradaLocalEntregaRetiradaidentradalocalentregaretirada: TIntegerField
      FieldName = 'identradalocalentregaretirada'
      Origin = 'identradalocalentregaretirada'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEntradaLocalEntregaRetiradaidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
      Origin = 'identradacabecalho'
    end
    object qryEntradaLocalEntregaRetiradacpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 9
    end
    object qryEntradaLocalEntregaRetiradalogradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 60
    end
    object qryEntradaLocalEntregaRetiradanumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 30
    end
    object qryEntradaLocalEntregaRetiradacomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 60
    end
    object qryEntradaLocalEntregaRetiradabairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 60
    end
    object qryEntradaLocalEntregaRetiradatipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
  end
  object qryEntradaTransportadora: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select entradaTransportadora.*, pessoa.nome as pessoaNome from e' +
        'ntradaTransportadora '
      
        'inner join pessoa on entradaTransportadora.idPessoa = pessoa.idP' +
        'essoa'
      'order by idEntradaTransportadora limit 0')
    Left = 264
    Top = 144
    object qryEntradaTransportadoraidentradatransportadora: TIntegerField
      FieldName = 'identradatransportadora'
      Origin = 'identradatransportadora'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEntradaTransportadoraidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
      Origin = 'identradacabecalho'
    end
    object qryEntradaTransportadoraidcfop: TIntegerField
      FieldName = 'idcfop'
      Origin = 'idcfop'
    end
    object qryEntradaTransportadoramodalidade: TSmallintField
      FieldName = 'modalidade'
      Origin = 'modalidade'
    end
    object qryEntradaTransportadoracpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 9
    end
    object qryEntradaTransportadoranome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object qryEntradaTransportadorainscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Origin = 'inscricaoestadual'
      Size = 14
    end
    object qryEntradaTransportadoraendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object qryEntradaTransportadoravalorservico: TFloatField
      FieldName = 'valorservico'
      Origin = 'valorservico'
    end
    object qryEntradaTransportadoravalorbcretencaoicms: TFloatField
      FieldName = 'valorbcretencaoicms'
      Origin = 'valorbcretencaoicms'
    end
    object qryEntradaTransportadoraaliquotaretencaoicms: TFloatField
      FieldName = 'aliquotaretencaoicms'
      Origin = 'aliquotaretencaoicms'
    end
    object qryEntradaTransportadoravaloricmsretido: TFloatField
      FieldName = 'valoricmsretido'
      Origin = 'valoricmsretido'
    end
    object qryEntradaTransportadoravolumequantidade: TSmallintField
      FieldName = 'volumequantidade'
      Origin = 'volumequantidade'
    end
    object qryEntradaTransportadoravolumeespecie: TWideStringField
      FieldName = 'volumeespecie'
      Origin = 'volumeespecie'
      Size = 60
    end
    object qryEntradaTransportadoravolumemarca: TWideStringField
      FieldName = 'volumemarca'
      Origin = 'volumemarca'
      Size = 60
    end
    object qryEntradaTransportadoravolumenumeracao: TWideStringField
      FieldName = 'volumenumeracao'
      Origin = 'volumenumeracao'
      Size = 60
    end
    object qryEntradaTransportadoravolumepesoliquido: TFloatField
      FieldName = 'volumepesoliquido'
      Origin = 'volumepesoliquido'
    end
    object qryEntradaTransportadoravolumepesobruto: TFloatField
      FieldName = 'volumepesobruto'
      Origin = 'volumepesobruto'
    end
    object qryEntradaTransportadoraidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryEntradaTransportadorapessoanome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
  end
  object qryEntradaTransportadoraReboque: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from entradaTransportadoraReboque limit 0')
    Left = 264
    Top = 200
    object qryEntradaTransportadoraReboqueidentradatransportadorareboque: TIntegerField
      FieldName = 'identradatransportadorareboque'
      Origin = 'identradatransportadorareboque'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEntradaTransportadoraReboqueidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
      Origin = 'identradacabecalho'
    end
    object qryEntradaTransportadoraReboqueidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      FixedChar = True
      Size = 2
    end
    object qryEntradaTransportadoraReboqueplaca: TWideStringField
      FieldName = 'placa'
      Origin = 'placa'
      Size = 8
    end
    object qryEntradaTransportadoraReboquerntc: TWideStringField
      FieldName = 'rntc'
      Origin = 'rntc'
    end
  end
  object qryEstado: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select estado.*, pais.nome as paisNome from estado '
      'inner join pais on estado.idPais = pais.idPais'
      'order by idEstado limit 0')
    Left = 264
    Top = 256
    object qryEstadoidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object qryEstadocodigoibge: TIntegerField
      FieldName = 'codigoibge'
      Origin = 'codigoibge'
    end
    object qryEstadonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryEstadoidpais: TIntegerField
      FieldName = 'idpais'
      Origin = 'idpais'
    end
    object qryEstadopaisnome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'paisnome'
      Origin = 'paisnome'
      Size = 100
    end
  end
  object qryEstoqueContagemCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select estoqueContagemCabecalho.*, empresa.nomeFantasia from est' +
        'oqueContagemCabecalho '
      
        'inner join empresa on estoqueContagemCabecalho.idEmpresa = empre' +
        'sa.idEmpresa'
      'order by idEstoqueContagemCabecalho limit 0')
    Left = 264
    Top = 312
    object qryEstoqueContagemCabecalhoidestoquecontagemcabecalho: TIntegerField
      FieldName = 'idestoquecontagemcabecalho'
      Origin = 'idestoquecontagemcabecalho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstoqueContagemCabecalhoidempresa: TIntegerField
      FieldName = 'idempresa'
      Origin = 'idempresa'
    end
    object qryEstoqueContagemCabecalhodatacontagem: TDateField
      FieldName = 'datacontagem'
      Origin = 'datacontagem'
    end
    object qryEstoqueContagemCabecalhoestoqueatualizado: TWideStringField
      FieldName = 'estoqueatualizado'
      Origin = 'estoqueatualizado'
      FixedChar = True
      Size = 1
    end
    object qryEstoqueContagemCabecalhonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
  end
  object qryEstoqueCor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estoqueCor order by idEstoqueCor limit 0')
    Left = 264
    Top = 368
    object qryEstoqueCoridestoquecor: TIntegerField
      FieldName = 'idestoquecor'
      Origin = 'idestoquecor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstoqueCorcodigo: TWideStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      FixedChar = True
      Size = 2
    end
    object qryEstoqueCornome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
  end
  object qryEstoqueContagemDetalhe: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select estoqueContagemDetalhe.*, produto.nome as produtoNome fro' +
        'm estoqueContagemDetalhe '
      
        'inner join produto on estoqueContagemDetalhe.idProduto = produto' +
        '.idProduto'
      'order by idEstoqueCotagemdetalhe limit 0')
    Left = 264
    Top = 424
    object qryEstoqueContagemDetalheidestoquecotagemdetalhe: TIntegerField
      FieldName = 'idestoquecotagemdetalhe'
      Origin = 'idestoquecotagemdetalhe'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstoqueContagemDetalheidestoquecontagemcabecalho: TIntegerField
      FieldName = 'idestoquecontagemcabecalho'
      Origin = 'idestoquecontagemcabecalho'
    end
    object qryEstoqueContagemDetalheidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryEstoqueContagemDetalhequantidadecontada: TFloatField
      FieldName = 'quantidadecontada'
      Origin = 'quantidadecontada'
    end
    object qryEstoqueContagemDetalhequantidadesistema: TFloatField
      FieldName = 'quantidadesistema'
      Origin = 'quantidadesistema'
    end
    object qryEstoqueContagemDetalhedivergencia: TFloatField
      FieldName = 'divergencia'
      Origin = 'divergencia'
    end
    object qryEstoqueContagemDetalheprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 100
    end
  end
  object qryEstoqueGrade: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select estoqueGrade.*, produto.nome as ProdutoNome, estoqueCor.n' +
        'ome as CorNome, '
      'estoqueTamanho.nome as TamanhoNome from estoqueGrade'
      'inner join produto on estoqueGrade.idProduto = produto.idProduto'
      
        'inner join estoqueCor on estoqueGrade.idEstoqueCor = estoqueCor.' +
        'idEstoqueCor'
      
        'inner join estoqueTamanho on estoqueGrade.idEstoqueTamanho = est' +
        'oqueTamanho.idEstoqueTamanho'
      'order by idEstoqueGrade limit 0')
    Left = 264
    Top = 480
    object qryEstoqueGradeidestoquegrade: TIntegerField
      FieldName = 'idestoquegrade'
      Origin = 'idestoquegrade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstoqueGradeidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryEstoqueGradeidestoquecor: TIntegerField
      FieldName = 'idestoquecor'
      Origin = 'idestoquecor'
    end
    object qryEstoqueGradeidestoquetamanho: TIntegerField
      FieldName = 'idestoquetamanho'
      Origin = 'idestoquetamanho'
    end
    object qryEstoqueGradecodigo: TWideStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 50
    end
    object qryEstoqueGradequantidade: TFloatField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object qryEstoqueGradeprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 100
    end
    object qryEstoqueGradecornome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cornome'
      Origin = 'cornome'
      Size = 30
    end
    object qryEstoqueGradetamanhonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tamanhonome'
      Origin = 'tamanhonome'
      Size = 30
    end
  end
  object qryEstoqueTamanho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from estoqueTamanho order by idEstoqueTamanho limit 0')
    Left = 264
    Top = 536
    object qryEstoqueTamanhoidestoquetamanho: TIntegerField
      FieldName = 'idestoquetamanho'
      Origin = 'idestoquetamanho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEstoqueTamanhocodigo: TWideStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      FixedChar = True
      Size = 3
    end
    object qryEstoqueTamanhonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
  end
  object qryHistoricoMovimento: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from historicoMovimento order by idHistoricoMovimento l' +
        'imit 0')
    Left = 264
    Top = 592
    object qryHistoricoMovimentoidhistoricomovimento: TIntegerField
      FieldName = 'idhistoricomovimento'
      Origin = 'idhistoricomovimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryHistoricoMovimentodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 60
    end
    object qryHistoricoMovimentotipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qryHistoricoMovimentocontaliquidacao: TIntegerField
      FieldName = 'contaliquidacao'
      Origin = 'contaliquidacao'
    end
    object qryHistoricoMovimentoativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
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
      
        'select * from indicadorEconomico order by idIndicadorEconomico l' +
        'imit 0')
    Left = 368
    Top = 88
    object qryIndicadorEconomicoidindicadoreconomico: TIntegerField
      FieldName = 'idindicadoreconomico'
      Origin = 'idindicadoreconomico'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryIndicadorEconomicodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 30
    end
    object qryIndicadorEconomicoativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
  end
  object qryIndice: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select indice.*, indicadorEconomico.descricao as indicadorDescri' +
        'cao from indice '
      
        'inner join indicadorEconomico on indice.idIndicadorEconomico = i' +
        'ndicadorEconomico.idIndicadorEconomico '
      'order by idIndice limit 0')
    Left = 368
    Top = 144
    object qryIndiceidindice: TIntegerField
      FieldName = 'idindice'
      Origin = 'idindice'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryIndiceidindicadoreconomico: TIntegerField
      FieldName = 'idindicadoreconomico'
      Origin = 'idindicadoreconomico'
    end
    object qryIndicedataatualizacao: TDateField
      FieldName = 'dataatualizacao'
      Origin = 'dataatualizacao'
    end
    object qryIndicevalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object qryIndiceindicadordescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'indicadordescricao'
      Origin = 'indicadordescricao'
      Size = 30
    end
  end
  object qryLicitacao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select licitacao.*, pessoa.nome as pessoaNome, unidadeNegocio.no' +
        'meFantasia from licitacao '
      'inner join pessoa on licitacao.idPessoa = pessoa.idPessoa '
      
        'inner join unidadeNegocio on licitacao.idUnidadeNegocio = unidad' +
        'eNegocio.idUnidadeNegocio'
      'order by idLicitacao limit 0')
    Left = 368
    Top = 200
    object qryLicitacaoidlicitacao: TIntegerField
      FieldName = 'idlicitacao'
      Origin = 'idlicitacao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLicitacaoidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryLicitacaodataabertura: TDateField
      FieldName = 'dataabertura'
      Origin = 'dataabertura'
    end
    object qryLicitacaodatafechamento: TDateField
      FieldName = 'datafechamento'
      Origin = 'datafechamento'
    end
    object qryLicitacaoobjeto: TWideMemoField
      FieldName = 'objeto'
      Origin = 'objeto'
      BlobType = ftWideMemo
    end
    object qryLicitacaoobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
    object qryLicitacaoidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryLicitacaopessoanome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
    object qryLicitacaonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
  end
  object qryLicitacaoDocumento: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from licitacaoDocumento order by idLicitacaoDocumento l' +
        'imit 0')
    Left = 368
    Top = 256
    object qryLicitacaoDocumentoidlicitacaodocumento: TIntegerField
      FieldName = 'idlicitacaodocumento'
      Origin = 'idlicitacaodocumento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLicitacaoDocumentoiddocumento: TIntegerField
      FieldName = 'iddocumento'
      Origin = 'iddocumento'
    end
    object qryLicitacaoDocumentoidlicitacao: TIntegerField
      FieldName = 'idlicitacao'
      Origin = 'idlicitacao'
    end
  end
  object qryModelo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from modelo order by idModelo limit 0')
    Left = 368
    Top = 312
    object qryModeloidmodelo: TWideStringField
      FieldName = 'idmodelo'
      Origin = 'idmodelo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object qryModelodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
  end
  object qryMovimento: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select movimento.*, planoContasFinanceiro.descricao as planoFina' +
        'nceiroDescricao, '
      
        'planoContasGerencial.descricao as planoGerencialDescricao, porta' +
        'dor.descricao as portadorDescricao, '
      
        'unidadeNegocio.nomeFantasia, pessoa.nome as pessoaNome from movi' +
        'mento '
      
        'inner join planoContasFinanceiro on movimento.idPlanoContasFinan' +
        'ceiro = planoContasFinanceiro.idPlanoContasFinanceiro'
      
        'inner join planoContasGerencial on movimento.idPlanoContasGerenc' +
        'ial = planoContasGerencial.idPlanoContasGerencial'
      
        'inner join portador on movimento.idPortador = portador.idPortado' +
        'r'
      
        'inner join unidadeNegocio on movimento.idUnidadeNegocio = unidad' +
        'eNegocio.idUnidadeNegocio'
      'inner join pessoa on movimento.idPessoa = pessoa.idPessoa'
      'order by idMovimento limit 0')
    Left = 368
    Top = 368
    object qryMovimentoidmovimento: TIntegerField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMovimentoidnfeduplicata: TIntegerField
      FieldName = 'idnfeduplicata'
      Origin = 'idnfeduplicata'
    end
    object qryMovimentoidplanocontasfinanceiro: TIntegerField
      FieldName = 'idplanocontasfinanceiro'
      Origin = 'idplanocontasfinanceiro'
    end
    object qryMovimentoidplanocontasgerencial: TIntegerField
      FieldName = 'idplanocontasgerencial'
      Origin = 'idplanocontasgerencial'
    end
    object qryMovimentoidhistoricomovimento: TIntegerField
      FieldName = 'idhistoricomovimento'
      Origin = 'idhistoricomovimento'
    end
    object qryMovimentoidportador: TIntegerField
      FieldName = 'idportador'
      Origin = 'idportador'
    end
    object qryMovimentoidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryMovimentodataregistro: TDateField
      FieldName = 'dataregistro'
      Origin = 'dataregistro'
    end
    object qryMovimentodatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
    object qryMovimentodataliquidacao: TDateField
      FieldName = 'dataliquidacao'
      Origin = 'dataliquidacao'
    end
    object qryMovimentoorigem: TWideStringField
      FieldName = 'origem'
      Origin = 'origem'
      FixedChar = True
      Size = 1
    end
    object qryMovimentonf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object qryMovimentofatura: TWideStringField
      FieldName = 'fatura'
      Origin = 'fatura'
      Size = 12
    end
    object qryMovimentocontrapartida: TIntegerField
      FieldName = 'contrapartida'
      Origin = 'contrapartida'
    end
    object qryMovimentosituacao: TWideStringField
      FieldName = 'situacao'
      Origin = 'situacao'
      FixedChar = True
      Size = 1
    end
    object qryMovimentojurovalor: TFloatField
      FieldName = 'jurovalor'
      Origin = 'jurovalor'
    end
    object qryMovimentomultavalor: TFloatField
      FieldName = 'multavalor'
      Origin = 'multavalor'
    end
    object qryMovimentovalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object qryMovimentovalorsaldo: TFloatField
      FieldName = 'valorsaldo'
      Origin = 'valorsaldo'
    end
    object qryMovimentoidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryMovimentoplanofinanceirodescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'planofinanceirodescricao'
      Origin = 'planofinanceirodescricao'
      Size = 60
    end
    object qryMovimentoplanogerencialdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'planogerencialdescricao'
      Origin = 'planogerencialdescricao'
      Size = 60
    end
    object qryMovimentoportadordescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'portadordescricao'
      Origin = 'portadordescricao'
      Size = 50
    end
    object qryMovimentonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryMovimentopessoanome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
  end
  object qryMovimentoCheque: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select movimentoCheque.*, banco.nome as bancoNome from movimento' +
        'Cheque '
      'inner join banco on movimentoCheque.idBanco = banco.idBanco'
      'order by idMovimentoCheque limit 0')
    Left = 368
    Top = 424
    object qryMovimentoChequeidmovimentocheque: TIntegerField
      FieldName = 'idmovimentocheque'
      Origin = 'idmovimentocheque'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMovimentoChequeidbanco: TWideStringField
      FieldName = 'idbanco'
      Origin = 'idbanco'
      FixedChar = True
      Size = 4
    end
    object qryMovimentoChequeidmovimento: TIntegerField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
    end
    object qryMovimentoChequeagencia: TSmallintField
      FieldName = 'agencia'
      Origin = 'agencia'
    end
    object qryMovimentoChequeagenciadigito: TWideStringField
      FieldName = 'agenciadigito'
      Origin = 'agenciadigito'
      FixedChar = True
      Size = 1
    end
    object qryMovimentoChequeconta: TSmallintField
      FieldName = 'conta'
      Origin = 'conta'
    end
    object qryMovimentoChequecontadigito: TWideStringField
      FieldName = 'contadigito'
      Origin = 'contadigito'
      FixedChar = True
      Size = 1
    end
    object qryMovimentoChequenumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 6
    end
    object qryMovimentoChequebanconome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'banconome'
      Origin = 'banconome'
      Size = 60
    end
  end
  object qryMunicipio: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from municipio limit 0')
    Left = 368
    Top = 480
    object qryMunicipioidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
      Origin = 'idmunicipio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryMunicipionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 150
    end
    object qryMunicipioidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      FixedChar = True
      Size = 2
    end
  end
  object qryNCM: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from ncm limit 0')
    Left = 368
    Top = 536
    object qryNCMidncm: TIntegerField
      FieldName = 'idncm'
      Origin = 'idncm'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNCMdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
  end
  object qryNFeCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select nfeCabecalho.*, unidadeNegocio.nomeFantasia from nfeCabec' +
        'alho '
      
        'inner join unidadeNegocio on nfeCabecalho.idUnidadeNegocio = uni' +
        'dadeNegocio.idUnidadeNegocio'
      'order by idNFeCabecalho limit 0')
    Left = 368
    Top = 592
    object qryNFeCabecalhoidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeCabecalhoidserie: TIntegerField
      FieldName = 'idserie'
      Origin = 'idserie'
    end
    object qryNFeCabecalhoidmodelo: TWideStringField
      FieldName = 'idmodelo'
      Origin = 'idmodelo'
      FixedChar = True
      Size = 2
    end
    object qryNFeCabecalhoufemitente: TWideStringField
      FieldName = 'ufemitente'
      Origin = 'ufemitente'
      FixedChar = True
      Size = 2
    end
    object qryNFeCabecalhocodigonumerico: TWideStringField
      FieldName = 'codigonumerico'
      Origin = 'codigonumerico'
      Size = 8
    end
    object qryNFeCabecalhonaturezaoperacao: TIntegerField
      FieldName = 'naturezaoperacao'
      Origin = 'naturezaoperacao'
    end
    object qryNFeCabecalhoindicadorformapagamento: TBooleanField
      FieldName = 'indicadorformapagamento'
      Origin = 'indicadorformapagamento'
    end
    object qryNFeCabecalhonumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 9
    end
    object qryNFeCabecalhodatahoraemisao: TSQLTimeStampField
      FieldName = 'datahoraemisao'
      Origin = 'datahoraemisao'
    end
    object qryNFeCabecalhodatahorasaida: TSQLTimeStampField
      FieldName = 'datahorasaida'
      Origin = 'datahorasaida'
    end
    object qryNFeCabecalhotipooperacao: TBooleanField
      FieldName = 'tipooperacao'
      Origin = 'tipooperacao'
    end
    object qryNFeCabecalhoformatoimpressaodanfe: TWideStringField
      FieldName = 'formatoimpressaodanfe'
      Origin = 'formatoimpressaodanfe'
      FixedChar = True
      Size = 1
    end
    object qryNFeCabecalhotipoemissao: TWideStringField
      FieldName = 'tipoemissao'
      Origin = 'tipoemissao'
      FixedChar = True
      Size = 1
    end
    object qryNFeCabecalhochaveacesso: TWideStringField
      FieldName = 'chaveacesso'
      Origin = 'chaveacesso'
      Size = 44
    end
    object qryNFeCabecalhodigitochaveacesso: TWideStringField
      FieldName = 'digitochaveacesso'
      Origin = 'digitochaveacesso'
      FixedChar = True
      Size = 1
    end
    object qryNFeCabecalhoambiente: TBooleanField
      FieldName = 'ambiente'
      Origin = 'ambiente'
    end
    object qryNFeCabecalhofinalidadeemissao: TWideStringField
      FieldName = 'finalidadeemissao'
      Origin = 'finalidadeemissao'
      FixedChar = True
      Size = 1
    end
    object qryNFeCabecalhoprocessoemissao: TWideStringField
      FieldName = 'processoemissao'
      Origin = 'processoemissao'
      FixedChar = True
      Size = 1
    end
    object qryNFeCabecalhoversaoprocessoemissao: TWideStringField
      FieldName = 'versaoprocessoemissao'
      Origin = 'versaoprocessoemissao'
    end
    object qryNFeCabecalhodataentradacontingencia: TSQLTimeStampField
      FieldName = 'dataentradacontingencia'
      Origin = 'dataentradacontingencia'
    end
    object qryNFeCabecalhojustificativacontigencia: TWideStringField
      FieldName = 'justificativacontigencia'
      Origin = 'justificativacontigencia'
      Size = 255
    end
    object qryNFeCabecalhobasecalculoicms: TFloatField
      FieldName = 'basecalculoicms'
      Origin = 'basecalculoicms'
    end
    object qryNFeCabecalhovaloricms: TFloatField
      FieldName = 'valoricms'
      Origin = 'valoricms'
    end
    object qryNFeCabecalhobasecalculoicmsst: TFloatField
      FieldName = 'basecalculoicmsst'
      Origin = 'basecalculoicmsst'
    end
    object qryNFeCabecalhovaloricmsst: TFloatField
      FieldName = 'valoricmsst'
      Origin = 'valoricmsst'
    end
    object qryNFeCabecalhovalortotalprodutos: TFloatField
      FieldName = 'valortotalprodutos'
      Origin = 'valortotalprodutos'
    end
    object qryNFeCabecalhovalorfrete: TFloatField
      FieldName = 'valorfrete'
      Origin = 'valorfrete'
    end
    object qryNFeCabecalhovalorseguro: TFloatField
      FieldName = 'valorseguro'
      Origin = 'valorseguro'
    end
    object qryNFeCabecalhovalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryNFeCabecalhovalorimpostoimportacao: TFloatField
      FieldName = 'valorimpostoimportacao'
      Origin = 'valorimpostoimportacao'
    end
    object qryNFeCabecalhovaloripi: TFloatField
      FieldName = 'valoripi'
      Origin = 'valoripi'
    end
    object qryNFeCabecalhovalorpis: TFloatField
      FieldName = 'valorpis'
      Origin = 'valorpis'
    end
    object qryNFeCabecalhovalorcofins: TFloatField
      FieldName = 'valorcofins'
      Origin = 'valorcofins'
    end
    object qryNFeCabecalhovalordespesasacessorias: TFloatField
      FieldName = 'valordespesasacessorias'
      Origin = 'valordespesasacessorias'
    end
    object qryNFeCabecalhovalortotal: TFloatField
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object qryNFeCabecalhovalorservicos: TFloatField
      FieldName = 'valorservicos'
      Origin = 'valorservicos'
    end
    object qryNFeCabecalhobasecalculoissqn: TFloatField
      FieldName = 'basecalculoissqn'
      Origin = 'basecalculoissqn'
    end
    object qryNFeCabecalhovalorissqn: TFloatField
      FieldName = 'valorissqn'
      Origin = 'valorissqn'
    end
    object qryNFeCabecalhovalorpisissqn: TFloatField
      FieldName = 'valorpisissqn'
      Origin = 'valorpisissqn'
    end
    object qryNFeCabecalhovalorcofinsissqn: TFloatField
      FieldName = 'valorcofinsissqn'
      Origin = 'valorcofinsissqn'
    end
    object qryNFeCabecalhovalorretidopis: TFloatField
      FieldName = 'valorretidopis'
      Origin = 'valorretidopis'
    end
    object qryNFeCabecalhovalorretidocofins: TFloatField
      FieldName = 'valorretidocofins'
      Origin = 'valorretidocofins'
    end
    object qryNFeCabecalhobasecalculoirrf: TFloatField
      FieldName = 'basecalculoirrf'
      Origin = 'basecalculoirrf'
    end
    object qryNFeCabecalhovalorretidoirrf: TFloatField
      FieldName = 'valorretidoirrf'
      Origin = 'valorretidoirrf'
    end
    object qryNFeCabecalhobasecalculoprevidencia: TFloatField
      FieldName = 'basecalculoprevidencia'
      Origin = 'basecalculoprevidencia'
    end
    object qryNFeCabecalhovalorretidoprevidencia: TFloatField
      FieldName = 'valorretidoprevidencia'
      Origin = 'valorretidoprevidencia'
    end
    object qryNFeCabecalhocomexufembarque: TWideStringField
      FieldName = 'comexufembarque'
      Origin = 'comexufembarque'
      FixedChar = True
      Size = 2
    end
    object qryNFeCabecalhocomexlocalembarque: TWideStringField
      FieldName = 'comexlocalembarque'
      Origin = 'comexlocalembarque'
      Size = 60
    end
    object qryNFeCabecalhoinformacoesadicionaisfisco: TWideMemoField
      FieldName = 'informacoesadicionaisfisco'
      Origin = 'informacoesadicionaisfisco'
      BlobType = ftWideMemo
    end
    object qryNFeCabecalhoinformacoesaddcontribuinte: TWideMemoField
      FieldName = 'informacoesaddcontribuinte'
      Origin = 'informacoesaddcontribuinte'
      BlobType = ftWideMemo
    end
    object qryNFeCabecalhostatusnota: TWideStringField
      FieldName = 'statusnota'
      Origin = 'statusnota'
      FixedChar = True
      Size = 1
    end
    object qryNFeCabecalhofaturanumero: TWideStringField
      FieldName = 'faturanumero'
      Origin = 'faturanumero'
      Size = 60
    end
    object qryNFeCabecalhofaturavalororiginal: TFloatField
      FieldName = 'faturavalororiginal'
      Origin = 'faturavalororiginal'
    end
    object qryNFeCabecalhofaturavalordesconto: TFloatField
      FieldName = 'faturavalordesconto'
      Origin = 'faturavalordesconto'
    end
    object qryNFeCabecalhofaturavalorliquido: TFloatField
      FieldName = 'faturavalorliquido'
      Origin = 'faturavalorliquido'
    end
    object qryNFeCabecalhoidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryNFeCabecalhonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
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
      
        'select * from NFeCupomFiscalReferenciado order by idNFeCupomFisc' +
        'alReferenciado limit 0')
    Left = 472
    Top = 88
    object qryNFeCupomFiscalReferenciadoidnfecupomfiscalreferenciado: TIntegerField
      FieldName = 'idnfecupomfiscalreferenciado'
      Origin = 'idnfecupomfiscalreferenciado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeCupomFiscalReferenciadoidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeCupomFiscalReferenciadomodelodocumentofiscal: TWideStringField
      FieldName = 'modelodocumentofiscal'
      Origin = 'modelodocumentofiscal'
      FixedChar = True
      Size = 2
    end
    object qryNFeCupomFiscalReferenciadonumeroordemecf: TIntegerField
      FieldName = 'numeroordemecf'
      Origin = 'numeroordemecf'
    end
    object qryNFeCupomFiscalReferenciadocoo: TIntegerField
      FieldName = 'coo'
      Origin = 'coo'
    end
    object qryNFeCupomFiscalReferenciadodataemissaocupom: TDateField
      FieldName = 'dataemissaocupom'
      Origin = 'dataemissaocupom'
    end
    object qryNFeCupomFiscalReferenciadonumerocaixa: TIntegerField
      FieldName = 'numerocaixa'
      Origin = 'numerocaixa'
    end
    object qryNFeCupomFiscalReferenciadonumeroserieecf: TWideStringField
      FieldName = 'numeroserieecf'
      Origin = 'numeroserieecf'
      Size = 21
    end
  end
  object qryNFeDeclaracaoImportacao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from NFeDeclaracaoImportacao order by idNFeDeclaracaoIm' +
        'portacao limit 0')
    Left = 472
    Top = 144
    object qryNFeDeclaracaoImportacaoidnfedeclaracaoimportacao: TIntegerField
      FieldName = 'idnfedeclaracaoimportacao'
      Origin = 'idnfedeclaracaoimportacao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeDeclaracaoImportacaoidnfeitem: TIntegerField
      FieldName = 'idnfeitem'
      Origin = 'idnfeitem'
    end
    object qryNFeDeclaracaoImportacaonumerdocumento: TWideStringField
      FieldName = 'numerdocumento'
      Origin = 'numerdocumento'
      Size = 12
    end
    object qryNFeDeclaracaoImportacaodataregistro: TDateField
      FieldName = 'dataregistro'
      Origin = 'dataregistro'
    end
    object qryNFeDeclaracaoImportacaolocaldesembaraco: TWideStringField
      FieldName = 'localdesembaraco'
      Origin = 'localdesembaraco'
      Size = 60
    end
    object qryNFeDeclaracaoImportacaouf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object qryNFeDeclaracaoImportacaodatadesembaraco: TDateField
      FieldName = 'datadesembaraco'
      Origin = 'datadesembaraco'
    end
    object qryNFeDeclaracaoImportacaocodigoexportador: TWideStringField
      FieldName = 'codigoexportador'
      Origin = 'codigoexportador'
      Size = 60
    end
  end
  object qryNFeDestinatario: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select NFeDestinatario.*, pais.nome as paisNome, municipio.nome ' +
        'as municipioNome '
      'from NFeDestinatario '
      'inner join pais on NFeDestinatario.idPais = pais.idPais '
      
        'inner join municipio on NFeDestinatario.idMunicipio = municipio.' +
        'idMunicipio '
      'order by idNFeDestinatario limit 0')
    Left = 472
    Top = 200
    object qryNFeDestinatarioidnfedestinatario: TIntegerField
      FieldName = 'idnfedestinatario'
      Origin = 'idnfedestinatario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeDestinatarioidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeDestinatarioidcep: TWideStringField
      FieldName = 'idcep'
      Origin = 'idcep'
      Size = 9
    end
    object qryNFeDestinatarioidpais: TIntegerField
      FieldName = 'idpais'
      Origin = 'idpais'
    end
    object qryNFeDestinatarioidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
      Origin = 'idmunicipio'
    end
    object qryNFeDestinatarioidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      FixedChar = True
      Size = 2
    end
    object qryNFeDestinatariocpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 9
    end
    object qryNFeDestinatariorazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 60
    end
    object qryNFeDestinatariologradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 60
    end
    object qryNFeDestinatarionumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 60
    end
    object qryNFeDestinatariocomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 60
    end
    object qryNFeDestinatariobairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 60
    end
    object qryNFeDestinatariotelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object qryNFeDestinatarioinscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Origin = 'inscricaoestadual'
      Size = 14
    end
    object qryNFeDestinatariosuframa: TWideStringField
      FieldName = 'suframa'
      Origin = 'suframa'
      Size = 9
    end
    object qryNFeDestinatarioemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object qryNFeDestinatariopaisnome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'paisnome'
      Origin = 'paisnome'
      Size = 100
    end
    object qryNFeDestinatariomunicipionome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipionome'
      Origin = 'municipionome'
      Size = 150
    end
  end
  object qryNFeDuplicata: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeDuplicata order by idNFeDuplicata limit 0')
    Left = 472
    Top = 256
    object qryNFeDuplicataidnfeduplicata: TIntegerField
      FieldName = 'idnfeduplicata'
      Origin = 'idnfeduplicata'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeDuplicataidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeDuplicatanumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 60
    end
    object qryNFeDuplicatavalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object qryNFeDuplicatadatavencimento: TDateField
      FieldName = 'datavencimento'
      Origin = 'datavencimento'
    end
  end
  object qryNFeImportacaoDetalhe: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from NFeImportacaoDetalhe order by idNFeImportacaoDetal' +
        'he limit 0')
    Left = 472
    Top = 312
    object qryNFeImportacaoDetalheidnfeimportacaodetalhe: TIntegerField
      FieldName = 'idnfeimportacaodetalhe'
      Origin = 'idnfeimportacaodetalhe'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeImportacaoDetalheidnfedeclaracaoimportacao: TIntegerField
      FieldName = 'idnfedeclaracaoimportacao'
      Origin = 'idnfedeclaracaoimportacao'
    end
    object qryNFeImportacaoDetalhenumeroadicao: TIntegerField
      FieldName = 'numeroadicao'
      Origin = 'numeroadicao'
    end
    object qryNFeImportacaoDetalhenumerosequencial: TIntegerField
      FieldName = 'numerosequencial'
      Origin = 'numerosequencial'
    end
    object qryNFeImportacaoDetalhecodigofabricanteestrangeiro: TWideStringField
      FieldName = 'codigofabricanteestrangeiro'
      Origin = 'codigofabricanteestrangeiro'
      Size = 60
    end
    object qryNFeImportacaoDetalhevalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
  end
  object qryNFeItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select NFeItem.*, produto.nome as produtoNome from NFeItem '
      'inner join produto on NFeItem.idProduto = produto.idProduto'
      'order by idNFeItem limit 0')
    Left = 472
    Top = 368
    object qryNFeItemidnfeitem: TIntegerField
      FieldName = 'idnfeitem'
      Origin = 'idnfeitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeItemidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryNFeItemnumeroitem: TIntegerField
      FieldName = 'numeroitem'
      Origin = 'numeroitem'
    end
    object qryNFeItemcodigoproduto: TWideStringField
      FieldName = 'codigoproduto'
      Origin = 'codigoproduto'
      Size = 60
    end
    object qryNFeItemgtin: TWideStringField
      FieldName = 'gtin'
      Origin = 'gtin'
      Size = 14
    end
    object qryNFeItemdescricaoproduto: TWideStringField
      FieldName = 'descricaoproduto'
      Origin = 'descricaoproduto'
      Size = 100
    end
    object qryNFeItemncm: TIntegerField
      FieldName = 'ncm'
      Origin = 'ncm'
    end
    object qryNFeItemextipi: TIntegerField
      FieldName = 'extipi'
      Origin = 'extipi'
    end
    object qryNFeItemcfop: TIntegerField
      FieldName = 'cfop'
      Origin = 'cfop'
    end
    object qryNFeItemunidadecomercial: TWideStringField
      FieldName = 'unidadecomercial'
      Origin = 'unidadecomercial'
      Size = 6
    end
    object qryNFeItemquantidadecomercial: TFloatField
      FieldName = 'quantidadecomercial'
      Origin = 'quantidadecomercial'
    end
    object qryNFeItemvaloriunitariocomercial: TFloatField
      FieldName = 'valoriunitariocomercial'
      Origin = 'valoriunitariocomercial'
    end
    object qryNFeItemvalorbrutoproduto: TFloatField
      FieldName = 'valorbrutoproduto'
      Origin = 'valorbrutoproduto'
    end
    object qryNFeItemunidadetributavel: TWideStringField
      FieldName = 'unidadetributavel'
      Origin = 'unidadetributavel'
      Size = 6
    end
    object qryNFeItemquantidadetributavel: TFloatField
      FieldName = 'quantidadetributavel'
      Origin = 'quantidadetributavel'
    end
    object qryNFeItemvalorunitariotributavel: TFloatField
      FieldName = 'valorunitariotributavel'
      Origin = 'valorunitariotributavel'
    end
    object qryNFeItemvalorfrete: TFloatField
      FieldName = 'valorfrete'
      Origin = 'valorfrete'
    end
    object qryNFeItemvalorseguro: TFloatField
      FieldName = 'valorseguro'
      Origin = 'valorseguro'
    end
    object qryNFeItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryNFeItemvaloroutrasdespesas: TFloatField
      FieldName = 'valoroutrasdespesas'
      Origin = 'valoroutrasdespesas'
    end
    object qryNFeItementratotal: TBooleanField
      FieldName = 'entratotal'
      Origin = 'entratotal'
    end
    object qryNFeItemvalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
      Origin = 'valorsubtotal'
    end
    object qryNFeItemvalortotal: TFloatField
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object qryNFeItemnumeropedido: TIntegerField
      FieldName = 'numeropedido'
      Origin = 'numeropedido'
    end
    object qryNFeItemitempedido: TIntegerField
      FieldName = 'itempedido'
      Origin = 'itempedido'
    end
    object qryNFeIteminformacoesadicionais: TWideMemoField
      FieldName = 'informacoesadicionais'
      Origin = 'informacoesadicionais'
      BlobType = ftWideMemo
    end
    object qryNFeItemprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 100
    end
  end
  object qryNFeItemII: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeItemII order by idNFeItemII limit 0')
    Left = 472
    Top = 424
    object qryNFeItemIIidnfeitemii: TIntegerField
      FieldName = 'idnfeitemii'
      Origin = 'idnfeitemii'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeItemIIidnfeitem: TIntegerField
      FieldName = 'idnfeitem'
      Origin = 'idnfeitem'
    end
    object qryNFeItemIIbcvalor: TFloatField
      FieldName = 'bcvalor'
      Origin = 'bcvalor'
    end
    object qryNFeItemIIvalordespesasaduaneiras: TFloatField
      FieldName = 'valordespesasaduaneiras'
      Origin = 'valordespesasaduaneiras'
    end
    object qryNFeItemIIvalorimposto: TFloatField
      FieldName = 'valorimposto'
      Origin = 'valorimposto'
    end
    object qryNFeItemIIvaloriof: TFloatField
      FieldName = 'valoriof'
      Origin = 'valoriof'
    end
  end
  object qryNFeItemImposto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeItemImposto order by idNFeItemImposto limit 0')
    Left = 472
    Top = 480
    object qryNFeItemImpostoidnfeitemimposto: TIntegerField
      FieldName = 'idnfeitemimposto'
      Origin = 'idnfeitemimposto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeItemImpostoidnfeitem: TIntegerField
      FieldName = 'idnfeitem'
      Origin = 'idnfeitem'
    end
    object qryNFeItemImpostoorigemmercadoria: TSmallintField
      FieldName = 'origemmercadoria'
      Origin = 'origemmercadoria'
    end
    object qryNFeItemImpostoicmscst: TSmallintField
      FieldName = 'icmscst'
      Origin = 'icmscst'
    end
    object qryNFeItemImpostocsosn: TSmallintField
      FieldName = 'csosn'
      Origin = 'csosn'
    end
    object qryNFeItemImpostoicmsmodalidadebc: TSmallintField
      FieldName = 'icmsmodalidadebc'
      Origin = 'icmsmodalidadebc'
    end
    object qryNFeItemImpostoicmsreducaobc: TFloatField
      FieldName = 'icmsreducaobc'
      Origin = 'icmsreducaobc'
    end
    object qryNFeItemImpostoicmsbasecalculo: TFloatField
      FieldName = 'icmsbasecalculo'
      Origin = 'icmsbasecalculo'
    end
    object qryNFeItemImpostoicmsaliquota: TFloatField
      FieldName = 'icmsaliquota'
      Origin = 'icmsaliquota'
    end
    object qryNFeItemImpostoicmsvalor: TFloatField
      FieldName = 'icmsvalor'
      Origin = 'icmsvalor'
    end
    object qryNFeItemImpostoicmsmotivodesoneracao: TWideStringField
      FieldName = 'icmsmotivodesoneracao'
      Origin = 'icmsmotivodesoneracao'
      FixedChar = True
      Size = 1
    end
    object qryNFeItemImpostoicmsmodalidadebcst: TSmallintField
      FieldName = 'icmsmodalidadebcst'
      Origin = 'icmsmodalidadebcst'
    end
    object qryNFeItemImpostoicmsmvast: TFloatField
      FieldName = 'icmsmvast'
      Origin = 'icmsmvast'
    end
    object qryNFeItemImpostoicmsreducaobcst: TFloatField
      FieldName = 'icmsreducaobcst'
      Origin = 'icmsreducaobcst'
    end
    object qryNFeItemImpostoicmsvalorbcst: TFloatField
      FieldName = 'icmsvalorbcst'
      Origin = 'icmsvalorbcst'
    end
    object qryNFeItemImpostoicmsaliquotast: TFloatField
      FieldName = 'icmsaliquotast'
      Origin = 'icmsaliquotast'
    end
    object qryNFeItemImpostoicmsvalorst: TFloatField
      FieldName = 'icmsvalorst'
      Origin = 'icmsvalorst'
    end
    object qryNFeItemImpostoicmsvalorbcstretido: TFloatField
      FieldName = 'icmsvalorbcstretido'
      Origin = 'icmsvalorbcstretido'
    end
    object qryNFeItemImpostoicmsvalorstretido: TFloatField
      FieldName = 'icmsvalorstretido'
      Origin = 'icmsvalorstretido'
    end
    object qryNFeItemImpostoicmsvalorbcstdestino: TFloatField
      FieldName = 'icmsvalorbcstdestino'
      Origin = 'icmsvalorbcstdestino'
    end
    object qryNFeItemImpostoicmsvalorstdestino: TFloatField
      FieldName = 'icmsvalorstdestino'
      Origin = 'icmsvalorstdestino'
    end
    object qryNFeItemImpostoicmsaliquotacreditosn: TFloatField
      FieldName = 'icmsaliquotacreditosn'
      Origin = 'icmsaliquotacreditosn'
    end
    object qryNFeItemImpostoicmsvalorcreditosn: TFloatField
      FieldName = 'icmsvalorcreditosn'
      Origin = 'icmsvalorcreditosn'
    end
    object qryNFeItemImpostoprecentualbcoperacaopropria: TFloatField
      FieldName = 'precentualbcoperacaopropria'
      Origin = 'precentualbcoperacaopropria'
    end
    object qryNFeItemImpostoufst: TWideStringField
      FieldName = 'ufst'
      Origin = 'ufst'
      FixedChar = True
      Size = 2
    end
    object qryNFeItemImpostoipienquadramento: TWideStringField
      FieldName = 'ipienquadramento'
      Origin = 'ipienquadramento'
      Size = 5
    end
    object qryNFeItemImpostoipicnpjprodutor: TWideStringField
      FieldName = 'ipicnpjprodutor'
      Origin = 'ipicnpjprodutor'
      Size = 9
    end
    object qryNFeItemImpostoipicst: TSmallintField
      FieldName = 'ipicst'
      Origin = 'ipicst'
    end
    object qryNFeItemImpostoipivalorbc: TFloatField
      FieldName = 'ipivalorbc'
      Origin = 'ipivalorbc'
    end
    object qryNFeItemImpostoipialiquota: TFloatField
      FieldName = 'ipialiquota'
      Origin = 'ipialiquota'
    end
    object qryNFeItemImpostoipiquantidadeunidadetributavel: TFloatField
      FieldName = 'ipiquantidadeunidadetributavel'
      Origin = 'ipiquantidadeunidadetributavel'
    end
    object qryNFeItemImpostoipivalorunidadetributavel: TFloatField
      FieldName = 'ipivalorunidadetributavel'
      Origin = 'ipivalorunidadetributavel'
    end
    object qryNFeItemImpostoipivalor: TFloatField
      FieldName = 'ipivalor'
      Origin = 'ipivalor'
    end
    object qryNFeItemImpostocofinscst: TSmallintField
      FieldName = 'cofinscst'
      Origin = 'cofinscst'
    end
    object qryNFeItemImpostocofinsquantidadevendida: TFloatField
      FieldName = 'cofinsquantidadevendida'
      Origin = 'cofinsquantidadevendida'
    end
    object qryNFeItemImpostocofinsbc: TFloatField
      FieldName = 'cofinsbc'
      Origin = 'cofinsbc'
    end
    object qryNFeItemImpostocofinsaliquotapercentual: TFloatField
      FieldName = 'cofinsaliquotapercentual'
      Origin = 'cofinsaliquotapercentual'
    end
    object qryNFeItemImpostocofinsaliquotavalor: TFloatField
      FieldName = 'cofinsaliquotavalor'
      Origin = 'cofinsaliquotavalor'
    end
    object qryNFeItemImpostocofinsvalor: TFloatField
      FieldName = 'cofinsvalor'
      Origin = 'cofinsvalor'
    end
    object qryNFeItemImpostopiscst: TSmallintField
      FieldName = 'piscst'
      Origin = 'piscst'
    end
    object qryNFeItemImpostopisquantidadevalor: TFloatField
      FieldName = 'pisquantidadevalor'
      Origin = 'pisquantidadevalor'
    end
    object qryNFeItemImpostopisbc: TFloatField
      FieldName = 'pisbc'
      Origin = 'pisbc'
    end
    object qryNFeItemImpostopisaliquotapercentual: TFloatField
      FieldName = 'pisaliquotapercentual'
      Origin = 'pisaliquotapercentual'
    end
    object qryNFeItemImpostopisaliquotavalor: TFloatField
      FieldName = 'pisaliquotavalor'
      Origin = 'pisaliquotavalor'
    end
    object qryNFeItemImpostopisvalor: TFloatField
      FieldName = 'pisvalor'
      Origin = 'pisvalor'
    end
    object qryNFeItemImpostoissbc: TFloatField
      FieldName = 'issbc'
      Origin = 'issbc'
    end
    object qryNFeItemImpostoissaliquota: TFloatField
      FieldName = 'issaliquota'
      Origin = 'issaliquota'
    end
    object qryNFeItemImpostoissvalor: TFloatField
      FieldName = 'issvalor'
      Origin = 'issvalor'
    end
    object qryNFeItemImpostoissmunicipio: TIntegerField
      FieldName = 'issmunicipio'
      Origin = 'issmunicipio'
    end
    object qryNFeItemImpostoissitemlistaservico: TIntegerField
      FieldName = 'issitemlistaservico'
      Origin = 'issitemlistaservico'
    end
    object qryNFeItemImpostoisstributacao: TSmallintField
      FieldName = 'isstributacao'
      Origin = 'isstributacao'
    end
  end
  object qryNFeLocalEntregaRetirada: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from NFeLocalEntregaRetirada order by idNFeLocalEntrega' +
        'Retirada limit 0')
    Left = 472
    Top = 536
    object qryNFeLocalEntregaRetiradaidnfelocalentregaretirada: TIntegerField
      FieldName = 'idnfelocalentregaretirada'
      Origin = 'idnfelocalentregaretirada'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeLocalEntregaRetiradaidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeLocalEntregaRetiradacpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 9
    end
    object qryNFeLocalEntregaRetiradalogradouro: TWideStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 60
    end
    object qryNFeLocalEntregaRetiradanumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 60
    end
    object qryNFeLocalEntregaRetiradacomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 60
    end
    object qryNFeLocalEntregaRetiradabairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 60
    end
    object qryNFeLocalEntregaRetiradatipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
  end
  object qryNFeNFReferenciada: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from NFeNFReferenciada order by idNFeNFReferenciada lim' +
        'it 0')
    Left = 472
    Top = 592
    object qryNFeNFReferenciadaidnfenfreferenciada: TIntegerField
      FieldName = 'idnfenfreferenciada'
      Origin = 'idnfenfreferenciada'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeNFReferenciadaidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeNFReferenciadaanomes: TWideStringField
      FieldName = 'anomes'
      Origin = 'anomes'
      Size = 4
    end
    object qryNFeNFReferenciadacnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 9
    end
    object qryNFeNFReferenciadamodelo: TWideStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      FixedChar = True
      Size = 2
    end
    object qryNFeNFReferenciadaserie: TWideStringField
      FieldName = 'serie'
      Origin = 'serie'
      FixedChar = True
      Size = 3
    end
    object qryNFeNFReferenciadanumeronf: TIntegerField
      FieldName = 'numeronf'
      Origin = 'numeronf'
    end
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
      
        'select * from NFeProdutorRuralReferenciada order by idNFeProduto' +
        'rRuralReferenciada limit 0')
    Left = 576
    Top = 88
    object qryNFeProdutorRuralReferenciadaidnfeprodutorruralreferenciada: TIntegerField
      FieldName = 'idnfeprodutorruralreferenciada'
      Origin = 'idnfeprodutorruralreferenciada'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeProdutorRuralReferenciadaidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeProdutorRuralReferenciadaanomes: TWideStringField
      FieldName = 'anomes'
      Origin = 'anomes'
      Size = 4
    end
    object qryNFeProdutorRuralReferenciadacnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 9
    end
    object qryNFeProdutorRuralReferenciadacpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 14
    end
    object qryNFeProdutorRuralReferenciadainscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Origin = 'inscricaoestadual'
      Size = 14
    end
    object qryNFeProdutorRuralReferenciadamodelo: TWideStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      FixedChar = True
      Size = 2
    end
    object qryNFeProdutorRuralReferenciadaserie: TWideStringField
      FieldName = 'serie'
      Origin = 'serie'
      FixedChar = True
      Size = 3
    end
    object qryNFeProdutorRuralReferenciadanumeronf: TIntegerField
      FieldName = 'numeronf'
      Origin = 'numeronf'
    end
  end
  object qryNFeReferenciada: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from NFeReferenciada order by idNFeReferenciada limit 0')
    Left = 576
    Top = 144
    object qryNFeReferenciadaidnfereferenciada: TIntegerField
      FieldName = 'idnfereferenciada'
      Origin = 'idnfereferenciada'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeReferenciadaidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeReferenciadachaveacesso: TWideStringField
      FieldName = 'chaveacesso'
      Origin = 'chaveacesso'
      Size = 44
    end
  end
  object qryNFeTransportadora: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select NFeTransportadora.*, municipio.nome as municipioNome, cfo' +
        'p.descricao as cfopDescricao '
      'from NFeTransportadora '
      
        'inner join municipio on NFeTransportadora.idMunicipio = municipi' +
        'o.idMunicipio '
      'inner join cfop on NFeTransportadora.idCFOP = cfop.idCFOP '
      'order by idNFeTransportadora limit 0')
    Left = 576
    Top = 200
    object qryNFeTransportadoraidnfetransportadora: TIntegerField
      FieldName = 'idnfetransportadora'
      Origin = 'idnfetransportadora'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeTransportadoraidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeTransportadoraidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      FixedChar = True
      Size = 2
    end
    object qryNFeTransportadoraidcfop: TIntegerField
      FieldName = 'idcfop'
      Origin = 'idcfop'
    end
    object qryNFeTransportadoraidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
      Origin = 'idmunicipio'
    end
    object qryNFeTransportadoramodalidade: TSmallintField
      FieldName = 'modalidade'
      Origin = 'modalidade'
    end
    object qryNFeTransportadoracpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 9
    end
    object qryNFeTransportadoranome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object qryNFeTransportadorainscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Origin = 'inscricaoestadual'
      Size = 14
    end
    object qryNFeTransportadoraendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object qryNFeTransportadoravalorservico: TFloatField
      FieldName = 'valorservico'
      Origin = 'valorservico'
    end
    object qryNFeTransportadoravalorbcretencaoicms: TFloatField
      FieldName = 'valorbcretencaoicms'
      Origin = 'valorbcretencaoicms'
    end
    object qryNFeTransportadoraaliquotaretencaoicms: TFloatField
      FieldName = 'aliquotaretencaoicms'
      Origin = 'aliquotaretencaoicms'
    end
    object qryNFeTransportadoravaloricmsretido: TFloatField
      FieldName = 'valoricmsretido'
      Origin = 'valoricmsretido'
    end
    object qryNFeTransportadoravolumequantidade: TSmallintField
      FieldName = 'volumequantidade'
      Origin = 'volumequantidade'
    end
    object qryNFeTransportadoravolumeespecie: TWideStringField
      FieldName = 'volumeespecie'
      Origin = 'volumeespecie'
      Size = 60
    end
    object qryNFeTransportadoravolumemarca: TWideStringField
      FieldName = 'volumemarca'
      Origin = 'volumemarca'
      Size = 60
    end
    object qryNFeTransportadoravolumenumeracao: TWideStringField
      FieldName = 'volumenumeracao'
      Origin = 'volumenumeracao'
      Size = 60
    end
    object qryNFeTransportadoravolumepesoliquido: TFloatField
      FieldName = 'volumepesoliquido'
      Origin = 'volumepesoliquido'
    end
    object qryNFeTransportadoravolumepesobruto: TFloatField
      FieldName = 'volumepesobruto'
      Origin = 'volumepesobruto'
    end
    object qryNFeTransportadoramunicipionome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipionome'
      Origin = 'municipionome'
      Size = 150
    end
    object qryNFeTransportadoracfopdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfopdescricao'
      Origin = 'cfopdescricao'
      Size = 250
    end
  end
  object qryNFeTransportadoraReboque: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from NFeTransportadoraReboque order by idNFeTransportad' +
        'oraReboque limit 0')
    Left = 576
    Top = 256
    object qryNFeTransportadoraReboqueidnfetransportadorareboque: TIntegerField
      FieldName = 'idnfetransportadorareboque'
      Origin = 'idnfetransportadorareboque'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryNFeTransportadoraReboqueidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
      Origin = 'idnfecabecalho'
    end
    object qryNFeTransportadoraReboqueidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      FixedChar = True
      Size = 2
    end
    object qryNFeTransportadoraReboqueplaca: TWideStringField
      FieldName = 'placa'
      Origin = 'placa'
      Size = 8
    end
    object qryNFeTransportadoraReboquerntc: TWideStringField
      FieldName = 'rntc'
      Origin = 'rntc'
    end
  end
  object qryOrcamentoCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select orcamentoCabecalho.*, unidadeNegocio.nomeFantasia, pessoa' +
        '.nome as pessoaNome '
      'from orcamentoCabecalho '
      
        'inner join unidadeNegocio on orcamentoCabecalho.idUnidadeNegocio' +
        ' = unidadeNegocio.idUnidadeNegocio'
      
        'inner join pessoa on orcamentoCabecalho.idPessoa = pessoa.idPess' +
        'oa '
      'order by idOrcamentoCabecalho limit 0')
    Left = 576
    Top = 312
    object qryOrcamentoCabecalhoidorcamentocabecalho: TIntegerField
      FieldName = 'idorcamentocabecalho'
      Origin = 'idorcamentocabecalho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOrcamentoCabecalhoidlicitacao: TIntegerField
      FieldName = 'idlicitacao'
      Origin = 'idlicitacao'
    end
    object qryOrcamentoCabecalhoidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryOrcamentoCabecalhodatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object qryOrcamentoCabecalhodataentrega: TDateField
      FieldName = 'dataentrega'
      Origin = 'dataentrega'
    end
    object qryOrcamentoCabecalhotipofrete: TWideStringField
      FieldName = 'tipofrete'
      Origin = 'tipofrete'
      FixedChar = True
      Size = 1
    end
    object qryOrcamentoCabecalhovalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
      Origin = 'valorsubtotal'
    end
    object qryOrcamentoCabecalhovalorfrete: TFloatField
      FieldName = 'valorfrete'
      Origin = 'valorfrete'
    end
    object qryOrcamentoCabecalhotaxacomissao: TFloatField
      FieldName = 'taxacomissao'
      Origin = 'taxacomissao'
    end
    object qryOrcamentoCabecalhovalorcomicao: TFloatField
      FieldName = 'valorcomicao'
      Origin = 'valorcomicao'
    end
    object qryOrcamentoCabecalhotaxadesconto: TFloatField
      FieldName = 'taxadesconto'
      Origin = 'taxadesconto'
    end
    object qryOrcamentoCabecalhovalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryOrcamentoCabecalhovalortotal: TFloatField
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object qryOrcamentoCabecalhoobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
    object qryOrcamentoCabecalhosituacao: TWideStringField
      FieldName = 'situacao'
      Origin = 'situacao'
      FixedChar = True
      Size = 1
    end
    object qryOrcamentoCabecalhoidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryOrcamentoCabecalhonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryOrcamentoCabecalhopessoanome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
  end
  object qryOrcamentoItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select orcamentoItem.*, produto.nome as produtoNome from orcamen' +
        'toItem '
      
        'inner join produto on orcamentoItem.idProduto = produto.idProdut' +
        'o '
      'order by idOrcamentoItem limit 0')
    Left = 576
    Top = 368
    object qryOrcamentoItemidorcamentoitem: TIntegerField
      FieldName = 'idorcamentoitem'
      Origin = 'idorcamentoitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOrcamentoItemidorcamentocabecalho: TIntegerField
      FieldName = 'idorcamentocabecalho'
      Origin = 'idorcamentocabecalho'
    end
    object qryOrcamentoItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryOrcamentoItemquantidade: TFloatField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object qryOrcamentoItemvalorunitario: TFloatField
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
    end
    object qryOrcamentoItemvalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
      Origin = 'valorsubtotal'
    end
    object qryOrcamentoItemtaxadesconto: TFloatField
      FieldName = 'taxadesconto'
      Origin = 'taxadesconto'
    end
    object qryOrcamentoItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryOrcamentoItemvalortotal: TFloatField
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object qryOrcamentoItemprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 100
    end
  end
  object qryPais: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select pais.*, indicadorEconomico.descricao as indicadorDescrica' +
        'o from pais '
      
        'inner join indicadorEconomico on pais.idIndicadorEconomico = ind' +
        'icadorEconomico.idIndicadorEconomico'
      'order by nome limit 0')
    Left = 576
    Top = 424
    object qryPaisidpais: TIntegerField
      FieldName = 'idpais'
      Origin = 'idpais'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPaisidindicadoreconomico: TIntegerField
      FieldName = 'idindicadoreconomico'
      Origin = 'idindicadoreconomico'
    end
    object qryPaisnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryPaisindicadordescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'indicadordescricao'
      Origin = 'indicadordescricao'
      Size = 30
    end
  end
  object qryPedidoCabecalho: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select pedidoCabecalho.*, unidadeNegocio.nomeFantasia, pessoa.no' +
        'me as pessoaNome '
      'from pedidoCabecalho '
      
        'inner join unidadeNegocio on pedidoCabecalho.idUnidadeNegocio = ' +
        'unidadeNegocio.idUnidadeNegocio'
      'inner join pessoa on pedidoCabecalho.idPessoa = pessoa.idPessoa '
      'order by idpedidoCabecalho limit 0')
    Left = 576
    Top = 480
    object qryPedidoCabecalhoidpedidocabecalho: TIntegerField
      FieldName = 'idpedidocabecalho'
      Origin = 'idpedidocabecalho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPedidoCabecalhoidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryPedidoCabecalhoidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryPedidoCabecalhoidorcamentocabecalho: TIntegerField
      FieldName = 'idorcamentocabecalho'
      Origin = 'idorcamentocabecalho'
    end
    object qryPedidoCabecalhodatalancamento: TDateField
      FieldName = 'datalancamento'
      Origin = 'datalancamento'
    end
    object qryPedidoCabecalhodataprevisaoentrega: TDateField
      FieldName = 'dataprevisaoentrega'
      Origin = 'dataprevisaoentrega'
    end
    object qryPedidoCabecalhovalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
      Origin = 'valorsubtotal'
    end
    object qryPedidoCabecalhotaxacomicao: TFloatField
      FieldName = 'taxacomicao'
      Origin = 'taxacomicao'
    end
    object qryPedidoCabecalhovalorcomicao: TFloatField
      FieldName = 'valorcomicao'
      Origin = 'valorcomicao'
    end
    object qryPedidoCabecalhotaxadesconto: TFloatField
      FieldName = 'taxadesconto'
      Origin = 'taxadesconto'
    end
    object qryPedidoCabecalhovalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryPedidoCabecalhovalorfrete: TFloatField
      FieldName = 'valorfrete'
      Origin = 'valorfrete'
    end
    object qryPedidoCabecalhotipofrete: TFloatField
      FieldName = 'tipofrete'
      Origin = 'tipofrete'
    end
    object qryPedidoCabecalhovalorseguro: TFloatField
      FieldName = 'valorseguro'
      Origin = 'valorseguro'
    end
    object qryPedidoCabecalhoobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
    object qryPedidoCabecalhosituacao: TWideStringField
      FieldName = 'situacao'
      Origin = 'situacao'
      FixedChar = True
      Size = 1
    end
    object qryPedidoCabecalhonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryPedidoCabecalhopessoanome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
  end
  object qryPedidoItem: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select pedidoItem.*, produto.nome as produtoNome from pedidoItem' +
        ' '
      'inner join produto on pedidoItem.idProduto = produto.idProduto'
      'order by idpedidoItem limit 0')
    Left = 576
    Top = 536
    object qryPedidoItemidpedidoitem: TIntegerField
      FieldName = 'idpedidoitem'
      Origin = 'idpedidoitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPedidoItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryPedidoItemidpedidocabecalho: TIntegerField
      FieldName = 'idpedidocabecalho'
      Origin = 'idpedidocabecalho'
    end
    object qryPedidoItemquantidade: TFloatField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object qryPedidoItemvalorunitario: TFloatField
      FieldName = 'valorunitario'
      Origin = 'valorunitario'
    end
    object qryPedidoItemvalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
      Origin = 'valorsubtotal'
    end
    object qryPedidoItemtaxadesconto: TFloatField
      FieldName = 'taxadesconto'
      Origin = 'taxadesconto'
    end
    object qryPedidoItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
      Origin = 'valordesconto'
    end
    object qryPedidoItemvalortotal: TFloatField
      FieldName = 'valortotal'
      Origin = 'valortotal'
    end
    object qryPedidoItemprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 100
    end
  end
  object qryPessoa: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoa limit 0')
    Left = 576
    Top = 592
    object qryPessoaidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPessoatipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qryPessoaemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 250
    end
    object qryPessoasite: TWideStringField
      FieldName = 'site'
      Origin = 'site'
      Size = 250
    end
    object qryPessoacliente2: TBooleanField
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object qryPessoafornecedor2: TBooleanField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
    end
    object qryPessoacolaborador2: TBooleanField
      FieldName = 'colaborador'
      Origin = 'colaborador'
    end
    object qryPessoacontador2: TBooleanField
      FieldName = 'contador'
      Origin = 'contador'
    end
    object qryPessoatransportadora2: TBooleanField
      FieldName = 'transportadora'
      Origin = 'transportadora'
    end
    object qryPessoavendedor2: TBooleanField
      FieldName = 'vendedor'
      Origin = 'vendedor'
    end
    object qryPessoacpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 14
    end
    object qryPessoacnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 9
    end
    object qryPessoarg: TWideStringField
      FieldName = 'rg'
      Origin = 'rg'
    end
    object qryPessoadatanascimento: TDateField
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
    end
    object qryPessoasexo: TWideStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      FixedChar = True
      Size = 1
    end
    object qryPessoaestadocivil: TWideStringField
      FieldName = 'estadocivil'
      Origin = 'estadocivil'
    end
    object qryPessoacnhnumero: TWideStringField
      FieldName = 'cnhnumero'
      Origin = 'cnhnumero'
    end
    object qryPessoacnhcategoria: TWideStringField
      FieldName = 'cnhcategoria'
      Origin = 'cnhcategoria'
      FixedChar = True
      Size = 2
    end
    object qryPessoacnhvencimento: TDateField
      FieldName = 'cnhvencimento'
      Origin = 'cnhvencimento'
    end
    object qryPessoanomemae: TWideStringField
      FieldName = 'nomemae'
      Origin = 'nomemae'
      Size = 60
    end
    object qryPessoanomepai: TWideStringField
      FieldName = 'nomepai'
      Origin = 'nomepai'
      Size = 60
    end
    object qryPessoanomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryPessoainscricaomunicipal: TWideStringField
      FieldName = 'inscricaomunicipal'
      Origin = 'inscricaomunicipal'
      Size = 30
    end
    object qryPessoainscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Origin = 'inscricaoestadual'
      Size = 30
    end
    object qryPessoatiporegime: TWideStringField
      FieldName = 'tiporegime'
      Origin = 'tiporegime'
      FixedChar = True
      Size = 1
    end
    object qryPessoacrt: TWideStringField
      FieldName = 'crt'
      Origin = 'crt'
      FixedChar = True
      Size = 1
    end
    object qryPessoasuframa: TWideStringField
      FieldName = 'suframa'
      Origin = 'suframa'
      Size = 9
    end
    object qryPessoanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 250
    end
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
      'select * from pessoaCliente order by idPessoa limit 0')
    Left = 680
    Top = 88
    object qryPessoaClienteidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryPessoaClientedatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object qryPessoaClienteobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
    object qryPessoaClientegerafinanceiro: TBooleanField
      FieldName = 'gerafinanceiro'
      Origin = 'gerafinanceiro'
    end
    object qryPessoaClientelimitecredito: TFloatField
      FieldName = 'limitecredito'
      Origin = 'limitecredito'
    end
    object qryPessoaClienteativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object qryPessoaClienteestadocivil: TWideStringField
      FieldName = 'estadocivil'
      Origin = 'estadocivil'
    end
  end
  object qryPessoaColaborador: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select pessoaColaborador.*, setor.nome as setorNome, cargo.nome ' +
        'as cargoNome '
      'from pessoaColaborador '
      'inner join setor on pessoaColaborador.idSetor = setor.idSetor'
      'inner join cargo on pessoaColaborador.idCargo = cargo.idCargo'
      'order by idPessoa limit 0')
    Left = 680
    Top = 144
    object qryPessoaColaboradoridbanco: TWideStringField
      FieldName = 'idbanco'
      Origin = 'idbanco'
      FixedChar = True
      Size = 4
    end
    object qryPessoaColaboradoridsetor: TIntegerField
      FieldName = 'idsetor'
      Origin = 'idsetor'
    end
    object qryPessoaColaboradoridcargo: TIntegerField
      FieldName = 'idcargo'
      Origin = 'idcargo'
    end
    object qryPessoaColaboradoridpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryPessoaColaboradormatricula: TWideStringField
      FieldName = 'matricula'
      Origin = 'matricula'
      Size = 10
    end
    object qryPessoaColaboradorfoto3x4: TWideMemoField
      FieldName = 'foto3x4'
      Origin = 'foto3x4'
      BlobType = ftWideMemo
    end
    object qryPessoaColaboradordatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object qryPessoaColaboradordataadmissao: TDateField
      FieldName = 'dataadmissao'
      Origin = 'dataadmissao'
    end
    object qryPessoaColaboradorfgtsconta: TSmallintField
      FieldName = 'fgtsconta'
      Origin = 'fgtsconta'
    end
    object qryPessoaColaboradorformapagamento: TWideStringField
      FieldName = 'formapagamento'
      Origin = 'formapagamento'
      FixedChar = True
      Size = 1
    end
    object qryPessoaColaboradorexamedata: TDateField
      FieldName = 'examedata'
      Origin = 'examedata'
    end
    object qryPessoaColaboradorexamedataultimo: TDateField
      FieldName = 'examedataultimo'
      Origin = 'examedataultimo'
    end
    object qryPessoaColaboradorctpsnumero: TWideStringField
      FieldName = 'ctpsnumero'
      Origin = 'ctpsnumero'
      Size = 10
    end
    object qryPessoaColaboradorctpsserie: TWideStringField
      FieldName = 'ctpsserie'
      Origin = 'ctpsserie'
      Size = 10
    end
    object qryPessoaColaboradorctpsdataexpedicao: TDateField
      FieldName = 'ctpsdataexpedicao'
      Origin = 'ctpsdataexpedicao'
    end
    object qryPessoaColaboradorctpsuf: TWideStringField
      FieldName = 'ctpsuf'
      Origin = 'ctpsuf'
      FixedChar = True
      Size = 2
    end
    object qryPessoaColaboradorobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
    object qryPessoaColaboradordatademissao: TDateField
      FieldName = 'datademissao'
      Origin = 'datademissao'
    end
    object qryPessoaColaboradoridunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryPessoaColaboradorsetornome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'setornome'
      Origin = 'setornome'
      Size = 50
    end
    object qryPessoaColaboradorcargonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cargonome'
      Origin = 'cargonome'
      Size = 30
    end
  end
  object qryPessoaContador: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select pessoaContador.*, unidadeNegocio.nomeFantasia from pessoa' +
        'Contador '
      
        'inner join unidadeNegocio on pessoaContador.idUnidadeNegocio = u' +
        'nidadeNegocio.idUnidadeNegocio'
      'order by idPessoa limit 0')
    Left = 680
    Top = 200
    object qryPessoaContadoridpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryPessoaContadornome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object qryPessoaContadorcpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 14
    end
    object qryPessoaContadorcrc: TWideStringField
      FieldName = 'crc'
      Origin = 'crc'
      Size = 8
    end
    object qryPessoaContadoremail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 150
    end
    object qryPessoaContadoridunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryPessoaContadornomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
  end
  object qryPessoaFornecedor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from pessoaFornecedor order by idPessoaFornecedor limit' +
        ' 0')
    Left = 680
    Top = 256
    object qryPessoaFornecedoridpessoafornecedor: TIntegerField
      FieldName = 'idpessoafornecedor'
      Origin = 'idpessoafornecedor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPessoaFornecedoridpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryPessoaFornecedordesde: TDateField
      FieldName = 'desde'
      Origin = 'desde'
    end
    object qryPessoaFornecedoroptandesimples: TBooleanField
      FieldName = 'optandesimples'
      Origin = 'optandesimples'
    end
    object qryPessoaFornecedorlocalizacao: TBooleanField
      FieldName = 'localizacao'
      Origin = 'localizacao'
    end
    object qryPessoaFornecedordatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object qryPessoaFornecedorsofreretencao: TBooleanField
      FieldName = 'sofreretencao'
      Origin = 'sofreretencao'
    end
    object qryPessoaFornecedorobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
    object qryPessoaFornecedorprazomedioentrega: TIntegerField
      FieldName = 'prazomedioentrega'
      Origin = 'prazomedioentrega'
    end
    object qryPessoaFornecedorgerafaturamento: TBooleanField
      FieldName = 'gerafaturamento'
      Origin = 'gerafaturamento'
    end
    object qryPessoaFornecedornumerodiasprimeirovencimento: TIntegerField
      FieldName = 'numerodiasprimeirovencimento'
      Origin = 'numerodiasprimeirovencimento'
    end
    object qryPessoaFornecedornumerodiasintervalo: TIntegerField
      FieldName = 'numerodiasintervalo'
      Origin = 'numerodiasintervalo'
    end
    object qryPessoaFornecedorquantidadeparcelas: TIntegerField
      FieldName = 'quantidadeparcelas'
      Origin = 'quantidadeparcelas'
    end
  end
  object qryPessoaRepresentante: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select pessoaRepresentante.*, unidadeNegocio.nomeFantasia from p' +
        'essoaRepresentante '
      
        'inner join unidadeNegocio on pessoaRepresentante.idUnidadeNegoci' +
        'o = unidadeNegocio.idUnidadeNegocio '
      'order by idPessoa limit 0')
    Left = 680
    Top = 312
    object qryPessoaRepresentanteidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryPessoaRepresentantecomissao: TFloatField
      FieldName = 'comissao'
      Origin = 'comissao'
    end
    object qryPessoaRepresentantemetavendas: TFloatField
      FieldName = 'metavendas'
      Origin = 'metavendas'
    end
    object qryPessoaRepresentanteidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryPessoaRepresentantenomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
  end
  object qryPessoaTransportadora: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from pessoaTransportadora order by idPessoa limit 0')
    Left = 680
    Top = 368
    object qryPessoaTransportadoraidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryPessoaTransportadoradatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object qryPessoaTransportadoraobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object qryPessoaVendedor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select pessoaVendedor.*, unidadeNegocio.nomeFantasia from pessoa' +
        'Vendedor '
      
        'inner join unidadeNegocio on pessoaVendedor.idUnidadeNegocio = u' +
        'nidadeNegocio.idUnidadeNegocio'
      'order by idPessoa limit 0')
    Left = 680
    Top = 424
    object qryPessoaVendedoridpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryPessoaVendedorcomissao: TFloatField
      FieldName = 'comissao'
      Origin = 'comissao'
    end
    object qryPessoaVendedormetavendas: TFloatField
      FieldName = 'metavendas'
      Origin = 'metavendas'
    end
    object qryPessoaVendedoridunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryPessoaVendedornomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
  end
  object qryPlanoContasFinanceiro: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from planoContasFinanceiro order by idPlanoContasFinanc' +
        'eiro limit 0')
    Left = 680
    Top = 480
    object qryPlanoContasFinanceiroidplanocontasfinanceiro: TIntegerField
      FieldName = 'idplanocontasfinanceiro'
      Origin = 'idplanocontasfinanceiro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPlanoContasFinanceirocodigo: TWideStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 7
    end
    object qryPlanoContasFinanceirodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 60
    end
    object qryPlanoContasFinanceirotipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qryPlanoContasFinanceiroativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
  end
  object qryPlanoContasGerencial: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from planoContasGerencial order by idPlanoContasGerenci' +
        'al limit 0')
    Left = 680
    Top = 536
    object qryPlanoContasGerencialidplanocontasgerencial: TIntegerField
      FieldName = 'idplanocontasgerencial'
      Origin = 'idplanocontasgerencial'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPlanoContasGerencialcodigo: TWideStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 18
    end
    object qryPlanoContasGerencialdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 60
    end
    object qryPlanoContasGerencialtipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qryPlanoContasGerencialnivel: TSmallintField
      FieldName = 'nivel'
      Origin = 'nivel'
    end
    object qryPlanoContasGerencialativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
  end
  object qryPortador: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select portador.*, banco.nome as bancoNome from portador '
      'inner join banco on portador.idBanco = banco.idBanco'
      'order by idPortador limit 0')
    Left = 680
    Top = 592
    object qryPortadoridportador: TIntegerField
      FieldName = 'idportador'
      Origin = 'idportador'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPortadoridbanco: TWideStringField
      FieldName = 'idbanco'
      Origin = 'idbanco'
      FixedChar = True
      Size = 4
    end
    object qryPortadordescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object qryPortadorbanconome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'banconome'
      Origin = 'banconome'
      Size = 60
    end
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
      
        'select * from portadorHistorico order by idPortadorHistorico lim' +
        'it 0')
    Left = 784
    Top = 88
    object qryPortadorHistoricoidportadorhistorico: TIntegerField
      FieldName = 'idportadorhistorico'
      Origin = 'idportadorhistorico'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPortadorHistoricoidportador: TIntegerField
      FieldName = 'idportador'
      Origin = 'idportador'
    end
    object qryPortadorHistoricodatamovimento: TDateField
      FieldName = 'datamovimento'
      Origin = 'datamovimento'
    end
    object qryPortadorHistoricosaldoinicial: TFloatField
      FieldName = 'saldoinicial'
      Origin = 'saldoinicial'
    end
    object qryPortadorHistoricoentrada: TFloatField
      FieldName = 'entrada'
      Origin = 'entrada'
    end
    object qryPortadorHistoricosaida: TFloatField
      FieldName = 'saida'
      Origin = 'saida'
    end
    object qryPortadorHistoricosaldofinal: TFloatField
      FieldName = 'saldofinal'
      Origin = 'saldofinal'
    end
  end
  object qryProduto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select produto.*, produtoGrupo.nome as grupoNome, produtoSubGrup' +
        'o.nome as subGrupoNome '
      'from produto '
      
        'inner join produtoGrupo on produto.idGrupoProdutos = produtoGrup' +
        'o.idGrupoProdutos'
      
        'inner join produtoSubGrupo on produto.idSubGrupoProdutos = produ' +
        'toSubGrupo.idSubGrupoProdutos'
      'order by idProduto limit 0')
    Left = 784
    Top = 144
    object qryProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoidgrupoprodutos: TIntegerField
      FieldName = 'idgrupoprodutos'
      Origin = 'idgrupoprodutos'
    end
    object qryProdutoidsubgrupoprodutos: TIntegerField
      FieldName = 'idsubgrupoprodutos'
      Origin = 'idsubgrupoprodutos'
    end
    object qryProdutoidncm: TIntegerField
      FieldName = 'idncm'
      Origin = 'idncm'
    end
    object qryProdutoidprodutounidade: TIntegerField
      FieldName = 'idprodutounidade'
      Origin = 'idprodutounidade'
    end
    object qryProdutocodigointerno: TWideStringField
      FieldName = 'codigointerno'
      Origin = 'codigointerno'
      Size = 60
    end
    object qryProdutogetin: TWideStringField
      FieldName = 'getin'
      Origin = 'getin'
      FixedChar = True
      Size = 14
    end
    object qryProdutonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryProdutodescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object qryProdutodescricaopdv: TWideStringField
      FieldName = 'descricaopdv'
      Origin = 'descricaopdv'
      Size = 30
    end
    object qryProdutovalorcompra: TFloatField
      FieldName = 'valorcompra'
      Origin = 'valorcompra'
    end
    object qryProdutovalorvenda: TFloatField
      FieldName = 'valorvenda'
      Origin = 'valorvenda'
    end
    object qryProdutoprecovendaminimo: TFloatField
      FieldName = 'precovendaminimo'
      Origin = 'precovendaminimo'
    end
    object qryProdutoprecosugerido: TFloatField
      FieldName = 'precosugerido'
      Origin = 'precosugerido'
    end
    object qryProdutocustomedioliquido: TFloatField
      FieldName = 'customedioliquido'
      Origin = 'customedioliquido'
    end
    object qryProdutoprecolucrozero: TFloatField
      FieldName = 'precolucrozero'
      Origin = 'precolucrozero'
    end
    object qryProdutoprecolucrominimo: TFloatField
      FieldName = 'precolucrominimo'
      Origin = 'precolucrominimo'
    end
    object qryProdutoprecolucromaximo: TFloatField
      FieldName = 'precolucromaximo'
      Origin = 'precolucromaximo'
    end
    object qryProdutomarkup: TFloatField
      FieldName = 'markup'
      Origin = 'markup'
    end
    object qryProdutoquantidadeestoque: TFloatField
      FieldName = 'quantidadeestoque'
      Origin = 'quantidadeestoque'
    end
    object qryProdutoestoqueminimo: TFloatField
      FieldName = 'estoqueminimo'
      Origin = 'estoqueminimo'
    end
    object qryProdutoestoquemaximo: TFloatField
      FieldName = 'estoquemaximo'
      Origin = 'estoquemaximo'
    end
    object qryProdutoestoqueideal: TFloatField
      FieldName = 'estoqueideal'
      Origin = 'estoqueideal'
    end
    object qryProdutodatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object qryProdutofotoproduto: TWideMemoField
      FieldName = 'fotoproduto'
      Origin = 'fotoproduto'
      BlobType = ftWideMemo
    end
    object qryProdutocodigobalanca: TIntegerField
      FieldName = 'codigobalanca'
      Origin = 'codigobalanca'
    end
    object qryProdutotipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qryProdutoclasseabc: TWideStringField
      FieldName = 'classeabc'
      Origin = 'classeabc'
      FixedChar = True
      Size = 1
    end
    object qryProdutocodigolst: TWideStringField
      FieldName = 'codigolst'
      Origin = 'codigolst'
      FixedChar = True
      Size = 4
    end
    object qryProdutopeso: TFloatField
      FieldName = 'peso'
      Origin = 'peso'
    end
    object qryProdutopercentualcomissao: TFloatField
      FieldName = 'percentualcomissao'
      Origin = 'percentualcomissao'
    end
    object qryProdutoinativo: TWideStringField
      FieldName = 'inativo'
      Origin = 'inativo'
      FixedChar = True
      Size = 1
    end
    object qryProdutogruponome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'gruponome'
      Origin = 'gruponome'
      Size = 100
    end
    object qryProdutosubgruponome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'subgruponome'
      Origin = 'subgruponome'
      Size = 100
    end
  end
  object qryProdutoFornecedor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select * from produtoFornecedor order by idProdutoFornecedor lim' +
        'it 0')
    Left = 784
    Top = 200
    object qryProdutoFornecedoridprodutofornecedor: TIntegerField
      FieldName = 'idprodutofornecedor'
      Origin = 'idprodutofornecedor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoFornecedorcodigoprodutofornecedor: TWideStringField
      FieldName = 'codigoprodutofornecedor'
      Origin = 'codigoprodutofornecedor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoFornecedoridproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryProdutoFornecedordataultimacompra: TDateField
      FieldName = 'dataultimacompra'
      Origin = 'dataultimacompra'
    end
    object qryProdutoFornecedorprecoultimacompra: TFloatField
      FieldName = 'precoultimacompra'
      Origin = 'precoultimacompra'
    end
  end
  object qryProdutoGrupo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoGrupo order by idGrupoProdutos limit 0')
    Left = 784
    Top = 256
    object qryProdutoGrupoidgrupoprodutos: TIntegerField
      FieldName = 'idgrupoprodutos'
      Origin = 'idgrupoprodutos'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoGruponome2: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryProdutoGrupodescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
  end
  object qryProdutoPromocao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select produtoPromocao.*, produto.nome as produtoNome from produ' +
        'toPromocao'
      
        'inner join produto on produtoPromocao.idProduto = produto.idProd' +
        'uto'
      'order by idProdutoPromocao limit 0')
    Left = 784
    Top = 312
    object qryProdutoPromocaoidprodutopromocao: TIntegerField
      FieldName = 'idprodutopromocao'
      Origin = 'idprodutopromocao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoPromocaoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryProdutoPromocaodatainicio: TDateField
      FieldName = 'datainicio'
      Origin = 'datainicio'
    end
    object qryProdutoPromocaodatafim: TDateField
      FieldName = 'datafim'
      Origin = 'datafim'
    end
    object qryProdutoPromocaoquantidadeempromocao: TFMTBCDField
      FieldName = 'quantidadeempromocao'
      Origin = 'quantidadeempromocao'
      Precision = 18
      Size = 6
    end
    object qryProdutoPromocaoquantidademaximacliente: TFMTBCDField
      FieldName = 'quantidademaximacliente'
      Origin = 'quantidademaximacliente'
      Precision = 18
      Size = 6
    end
    object qryProdutoPromocaovalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 18
      Size = 6
    end
    object qryProdutoPromocaoprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 100
    end
  end
  object qryProdutoSubGrupo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select produtoSubGrupo.*, produtoGrupo.nome as grupoNome from pr' +
        'odutoSubGrupo '
      
        'inner join produtoGrupo on produtoSubGrupo.idGrupoProdutos = pro' +
        'dutoGrupo.idGrupoProdutos'
      'order by idSubGrupoProdutoS limit 0')
    Left = 784
    Top = 368
    object qryProdutoSubGrupoidsubgrupoprodutos: TIntegerField
      FieldName = 'idsubgrupoprodutos'
      Origin = 'idsubgrupoprodutos'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoSubGrupoidgrupoprodutos: TIntegerField
      FieldName = 'idgrupoprodutos'
      Origin = 'idgrupoprodutos'
    end
    object qryProdutoSubGruponome2: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryProdutoSubGrupodescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object qryProdutoSubGrupogruponome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'gruponome'
      Origin = 'gruponome'
      Size = 100
    end
  end
  object qryProdutoTabelaPreco: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select produtoTabelaPreco.*, produto.nome as produtoNome from pr' +
        'odutoTabelaPreco '
      
        'inner join produto on produtoTabelaPreco.idProduto = produto.idP' +
        'roduto'
      'order by idProdutoTabelaPreco limit 0')
    Left = 784
    Top = 424
    object qryProdutoTabelaPrecoidprodutotabelapreco: TIntegerField
      FieldName = 'idprodutotabelapreco'
      Origin = 'idprodutotabelapreco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoTabelaPrecoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryProdutoTabelaPreconome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object qryProdutoTabelaPrecopreco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
    end
    object qryProdutoTabelaPrecoprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 100
    end
  end
  object qryProdutoUnidade: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtoUnidade order by idProdutoUnidade limit 0')
    Left = 784
    Top = 480
    object qryProdutoUnidadeidprodutounidade: TIntegerField
      FieldName = 'idprodutounidade'
      Origin = 'idprodutounidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoUnidadesigla: TWideStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 10
    end
    object qryProdutoUnidadedescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
  end
  object qryProdutoUnidadeConversao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select produtoUnidadeConversao.*, produto.nome as produtoNome, '
      
        'produtoUnidade.sigla as unidadeSigla from produtoUnidadeConversa' +
        'o '
      
        'inner join produto on produtoUnidadeConversao.idProduto = produt' +
        'o.idProduto'
      
        'inner join produtoUnidade on produtoUnidadeConversao.idProdutoUn' +
        'idade = produtoUnidade.idProdutoUnidade'
      'order by idProdutoUnidadeConversao limit 0')
    Left = 784
    Top = 536
    object qryProdutoUnidadeConversaoidprodutounidadeconversao: TIntegerField
      FieldName = 'idprodutounidadeconversao'
      Origin = 'idprodutounidadeconversao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutoUnidadeConversaoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object qryProdutoUnidadeConversaoidprodutounidade: TIntegerField
      FieldName = 'idprodutounidade'
      Origin = 'idprodutounidade'
    end
    object qryProdutoUnidadeConversaosigla: TWideStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 10
    end
    object qryProdutoUnidadeConversaodescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object qryProdutoUnidadeConversaofatorconversao: TFloatField
      FieldName = 'fatorconversao'
      Origin = 'fatorconversao'
    end
    object qryProdutoUnidadeConversaoprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 100
    end
    object qryProdutoUnidadeConversaounidadesigla: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'unidadesigla'
      Origin = 'unidadesigla'
      Size = 10
    end
  end
  object qryRegraFiscal: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select regraFiscal.*, pessoa.nome as pessoaNome, cstPIS.descrica' +
        'o as cstPISDescricao,'
      
        'cstIPI.descricao as cstIPIDescricao, tipoOperacao.descricao as t' +
        'ipoOperacaoDescricao,'
      
        'pais.nome as paisNome, municipio.nome as municipioNome, unidadeN' +
        'egocio.nomeFantasia,'
      
        'cfop.descricao as cfopDescricao, ncm.descricao as ncmDescricao, ' +
        'cstCofins.descricao as cstCofinsDescricao '
      'from regraFiscal '
      'inner join pessoa on regraFiscal.idPessoa = pessoa.idPessoa'
      'inner join cstPIS on regraFiscal.idCSTPIS = cstPIS.idCSTPIS'
      'inner join cstIPI on regraFiscal.idCSTIPI = cstIPI.idCSTIPI'
      
        'inner join tipoOperacao on regraFiscal.idTipoOperacao = tipoOper' +
        'acao.idTipoOperacao'
      'inner join pais on regraFiscal.idPais = pais.idPais'
      
        'inner join municipio on regraFiscal.idMunicipio = municipio.idMu' +
        'nicipio'
      
        'inner join unidadeNegocio on regraFiscal.idUnidadeNegocio = unid' +
        'adeNegocio.idUnidadeNegocio'
      'inner join cfop on regraFiscal.idCFOP = cfop.idCFOP'
      'inner join ncm on regraFiscal.idNCM = ncm.idNCM'
      
        'inner join cstCofins on regraFiscal.idCSTCOFINS = cstCOFINS.idCS' +
        'TCOFINS'
      'order by idRegraFiscal limit 0')
    Left = 784
    Top = 592
    object qryRegraFiscalidregrafiscal: TIntegerField
      FieldName = 'idregrafiscal'
      Origin = 'idregrafiscal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRegraFiscalidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryRegraFiscalidregrafiscalobservacao: TIntegerField
      FieldName = 'idregrafiscalobservacao'
      Origin = 'idregrafiscalobservacao'
    end
    object qryRegraFiscalidcstpis: TIntegerField
      FieldName = 'idcstpis'
      Origin = 'idcstpis'
    end
    object qryRegraFiscalidcstipi: TIntegerField
      FieldName = 'idcstipi'
      Origin = 'idcstipi'
    end
    object qryRegraFiscalidtipooperacao: TIntegerField
      FieldName = 'idtipooperacao'
      Origin = 'idtipooperacao'
    end
    object qryRegraFiscalidpais: TIntegerField
      FieldName = 'idpais'
      Origin = 'idpais'
    end
    object qryRegraFiscalidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
      Origin = 'idmunicipio'
    end
    object qryRegraFiscalidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      FixedChar = True
      Size = 2
    end
    object qryRegraFiscalidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryRegraFiscalidcfop: TIntegerField
      FieldName = 'idcfop'
      Origin = 'idcfop'
    end
    object qryRegraFiscalidncm: TIntegerField
      FieldName = 'idncm'
      Origin = 'idncm'
    end
    object qryRegraFiscalidcstcofins: TIntegerField
      FieldName = 'idcstcofins'
      Origin = 'idcstcofins'
    end
    object qryRegraFiscalreducaoipi: TFloatField
      FieldName = 'reducaoipi'
      Origin = 'reducaoipi'
    end
    object qryRegraFiscalipi: TSmallintField
      FieldName = 'ipi'
      Origin = 'ipi'
    end
    object qryRegraFiscalreducaoicms: TFloatField
      FieldName = 'reducaoicms'
      Origin = 'reducaoicms'
    end
    object qryRegraFiscalicms: TSmallintField
      FieldName = 'icms'
      Origin = 'icms'
    end
    object qryRegraFiscalpis: TFloatField
      FieldName = 'pis'
      Origin = 'pis'
    end
    object qryRegraFiscalretencaopis: TFloatField
      FieldName = 'retencaopis'
      Origin = 'retencaopis'
    end
    object qryRegraFiscalcofins: TFloatField
      FieldName = 'cofins'
      Origin = 'cofins'
    end
    object qryRegraFiscalretencaocofins: TIntegerField
      FieldName = 'retencaocofins'
      Origin = 'retencaocofins'
    end
    object qryRegraFiscalativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object qryRegraFiscalmva: TFloatField
      FieldName = 'mva'
      Origin = 'mva'
    end
    object qryRegraFiscalst: TFloatField
      FieldName = 'st'
      Origin = 'st'
    end
    object qryRegraFiscalreducaost: TFloatField
      FieldName = 'reducaost'
      Origin = 'reducaost'
    end
    object qryRegraFiscaliss: TFloatField
      FieldName = 'iss'
      Origin = 'iss'
    end
    object qryRegraFiscalreducaoiss: TFloatField
      FieldName = 'reducaoiss'
      Origin = 'reducaoiss'
    end
    object qryRegraFiscalcsosn: TSmallintField
      FieldName = 'csosn'
      Origin = 'csosn'
    end
    object qryRegraFiscalcssl: TFloatField
      FieldName = 'cssl'
      Origin = 'cssl'
    end
    object qryRegraFiscalinss: TFloatField
      FieldName = 'inss'
      Origin = 'inss'
    end
    object qryRegraFiscalir: TSmallintField
      FieldName = 'ir'
      Origin = 'ir'
    end
    object qryRegraFiscalfunrural: TFloatField
      FieldName = 'funrural'
      Origin = 'funrural'
    end
    object qryRegraFiscalie: TFloatField
      FieldName = 'ie'
      Origin = 'ie'
    end
    object qryRegraFiscalii: TFloatField
      FieldName = 'ii'
      Origin = 'ii'
    end
    object qryRegraFiscalcfopdevolucao: TSmallintField
      FieldName = 'cfopdevolucao'
      Origin = 'cfopdevolucao'
    end
    object qryRegraFiscalpessoanome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
    object qryRegraFiscalcstpisdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cstpisdescricao'
      Origin = 'cstpisdescricao'
      Size = 250
    end
    object qryRegraFiscalcstipidescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cstipidescricao'
      Origin = 'cstipidescricao'
      Size = 250
    end
    object qryRegraFiscaltipooperacaodescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipooperacaodescricao'
      Origin = 'tipooperacaodescricao'
    end
    object qryRegraFiscalpaisnome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'paisnome'
      Origin = 'paisnome'
      Size = 100
    end
    object qryRegraFiscalmunicipionome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipionome'
      Origin = 'municipionome'
      Size = 150
    end
    object qryRegraFiscalnomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryRegraFiscalcfopdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfopdescricao'
      Origin = 'cfopdescricao'
      Size = 250
    end
    object qryRegraFiscalncmdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncmdescricao'
      Origin = 'ncmdescricao'
      Size = 50
    end
    object qryRegraFiscalcstcofinsdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cstcofinsdescricao'
      Origin = 'cstcofinsdescricao'
      Size = 250
    end
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
      
        'select * from regraFiscalObservacao order by idRegraFiscalObserv' +
        'acao limit 0')
    Left = 888
    Top = 88
    object qryRegraFiscalObservacaoidregrafiscalobservacao: TIntegerField
      FieldName = 'idregrafiscalobservacao'
      Origin = 'idregrafiscalobservacao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRegraFiscalObservacaoobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object qrySerie: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from serie order by idserie limit 0 ')
    Left = 888
    Top = 144
    object qrySerieidserie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'idserie'
      Origin = 'idserie'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySeriedescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object qrySerienumeracao: TIntegerField
      DisplayLabel = 'Numera'#231#227'o Atual'
      FieldName = 'numeracao'
      Origin = 'numeracao'
    end
  end
  object qrySetor: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from setor order by idSetor limit 0')
    Left = 888
    Top = 200
    object qrySetoridsetor: TIntegerField
      FieldName = 'idsetor'
      Origin = 'idsetor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySetornome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object qrySetordescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 250
    end
  end
  object qryTelefone: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from telefone order by idTelefone limit 0')
    Left = 888
    Top = 256
    object qryTelefoneidtelefone: TIntegerField
      FieldName = 'idtelefone'
      Origin = 'idtelefone'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTelefoneidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object qryTelefoneidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object qryTelefoneidtipotelefone: TIntegerField
      FieldName = 'idtipotelefone'
      Origin = 'idtipotelefone'
    end
    object qryTelefonenumerotelefone: TWideStringField
      FieldName = 'numerotelefone'
      Origin = 'numerotelefone'
      Size = 15
    end
  end
  object qryTipoOperacao: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from tipoOperacao order by tipoOperacao limit 0')
    Left = 888
    Top = 312
  end
  object qryTipoTelefone: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from tipoTelefone order by idTipoTelefone limit 0')
    Left = 888
    Top = 368
    object qryTipoTelefoneidtipotelefone: TIntegerField
      FieldName = 'idtipotelefone'
      Origin = 'idtipotelefone'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryTipoTelefonedescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
  end
  object qryUnidadeNegocio: TFDQuery
    Connection = conexao
    SQL.Strings = (
      
        'select unidadeNegocio.*, cnae.denominacao as cnaeDenominacao, em' +
        'presa.razaoSocial '
      'from unidadeNegocio '
      'inner join cnae on unidadeNegocio.idCNAE = cnae.idCNAE'
      
        'inner join empresa on unidadeNegocio.idEmpresa = empresa.idEmpre' +
        'sa'
      'order by idUnidadeNegocio limit 0')
    Left = 888
    Top = 424
    object qryUnidadeNegocioidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUnidadeNegocioidcnae: TIntegerField
      FieldName = 'idcnae'
      Origin = 'idcnae'
    end
    object qryUnidadeNegocioidempresa: TIntegerField
      FieldName = 'idempresa'
      Origin = 'idempresa'
    end
    object qryUnidadeNegociocnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 9
    end
    object qryUnidadeNegocionomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryUnidadeNegociocnaedenominacao: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'cnaedenominacao'
      Origin = 'cnaedenominacao'
      BlobType = ftWideMemo
    end
    object qryUnidadeNegociorazaosocial: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 60
    end
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
