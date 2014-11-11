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
      'select * from auditoria order by idAuditoria limit 0')
    Left = 56
    Top = 88
    object qryAuditoriaidauditoria: TIntegerField
      FieldName = 'idauditoria'
      Origin = 'idauditoria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAuditoriaidempresa: TIntegerField
      FieldName = 'idempresa'
      Origin = 'idempresa'
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
      
        'select cargo.*, cbo.nome  as nomeCBO from cargo join cbo on carg' +
        'o.idCBO = cbo.idCBO'
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
    object qryCargonomecbo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomecbo'
      Origin = 'nomecbo'
      Size = 250
    end
  end
  object qryCBO: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cargo order by idCBO limit 0')
    Left = 56
    Top = 256
    object qryCBOidcargo: TIntegerField
      FieldName = 'idcargo'
      Origin = 'idcargo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCBOidcbo: TIntegerField
      FieldName = 'idcbo'
      Origin = 'idcbo'
    end
    object qryCBOnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object qryCBOdescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object qryCBOsalario: TFloatField
      FieldName = 'salario'
      Origin = 'salario'
    end
  end
  object qryCEP: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select CEP.*, municipio.nome as nomeMunicipio from CEP '
      'inner join municipio on CEP.idMunicipio = Municipio.idMunicipio '
      'order by idCEP, idMunicipio limit 0')
    Left = 56
    Top = 312
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
      
        'select ecfCabecalho.*, empresa.nomeFantasia, pessoa.nome as nome' +
        'Pessoa from ecfcabecalho '
      'inner join empresa on ecfcabecalho.idEmpresa = empresa.idEmpresa'
      
        'inner join pessoa on ecfcabecalho.idPessoa = pessoa.idPessoa ord' +
        'er by'
      'ecfcabecalho.idecfcabecalho limit 0')
    Left = 160
    Top = 200
    object qryECFCabecalhoidecfcabecalho: TIntegerField
      FieldName = 'idecfcabecalho'
      Origin = 'idecfcabecalho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryECFCabecalhoidempresa: TIntegerField
      FieldName = 'idempresa'
      Origin = 'idempresa'
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
    object qryECFCabecalhonomefantasia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object qryECFCabecalhonomepessoa: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomepessoa'
      Origin = 'nomepessoa'
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
      
        'select entradaCabecalho.*, empresa.nomeFantasia, pessoa.nome as ' +
        'PessoaNome '
      'from entradaCabecalho'
      
        'inner join empresa on entradaCabecalho.idEmpresa = empresa.idEmp' +
        'resa'
      'inner join pessoa on entradaCabecalho.idPessoa = pessoa.idPessoa'
      'order by idEntradaCabecalho limit 0')
    Left = 160
    Top = 424
    object qryEntradaCabecalhoidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
      Origin = 'identradacabecalho'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryEntradaCabecalhoidempresa: TIntegerField
      FieldName = 'idempresa'
      Origin = 'idempresa'
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
      
        'select entradaTransportadora.*, pessoa.nome as PessoaNome from e' +
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
  end
  object qryEstado: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select estado.*, pais.nome as PaisNome from estado '
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
      
        'select estoqueContagemDetalhe.*, produto.nome as ProdutoNome fro' +
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
      'select * from estoqueTamanho limit 0')
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
      'select * from historicoMovimento limit 0')
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
      'select * from indicadorEconomico')
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
