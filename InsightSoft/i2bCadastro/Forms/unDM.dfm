object DM: TDM
  OldCreateOrder = False
  Height = 656
  Width = 920
  object conServer: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'Port=211'
      'HostName=127.0.0.1'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/')
    Connected = True
    Left = 408
    Top = 24
  end
  object dspConnection: TDSProviderConnection
    ServerClassName = 'TServerMethods'
    Connected = True
    SQLConnection = conServer
    Left = 496
    Top = 24
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPais'
    RemoteServer = dspConnection
    Left = 392
    Top = 312
    object cdsPaisidpais: TIntegerField
      DisplayLabel = 'Pais'
      DisplayWidth = 15
      FieldName = 'idpais'
      Origin = 'idpais'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPaisidindicadoreconomico: TIntegerField
      DisplayLabel = 'Moeda'
      DisplayWidth = 19
      FieldName = 'idindicadoreconomico'
      Origin = 'idindicadoreconomico'
    end
    object cdsPaisnome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 57
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
  end
  object cdsAuditoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAuditoria'
    RemoteServer = dspConnection
    Left = 32
    Top = 88
    object cdsAuditoriaidauditoria: TIntegerField
      FieldName = 'idauditoria'
    end
    object cdsAuditoriadataregistro: TDateField
      FieldName = 'dataregistro'
    end
    object cdsAuditoriahoraregistro: TTimeField
      FieldName = 'horaregistro'
    end
    object cdsAuditoriaacao: TWideStringField
      FieldName = 'acao'
      Size = 50
    end
    object cdsAuditoriadescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
    object cdsAuditoriaidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
    end
    object cdsAuditorianomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Size = 60
    end
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanco'
    RemoteServer = dspConnection
    Left = 32
    Top = 144
    object cdsBancoidbanco: TWideStringField
      FieldName = 'idbanco'
      FixedChar = True
      Size = 4
    end
    object cdsBanconome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
  end
  object cdsCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    RemoteServer = dspConnection
    Left = 32
    Top = 200
    object cdsCargoidcargo: TIntegerField
      FieldName = 'idcargo'
    end
    object cdsCargoidcbo: TIntegerField
      FieldName = 'idcbo'
    end
    object cdsCargonome: TWideStringField
      FieldName = 'nome'
      Size = 30
    end
    object cdsCargodescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
    object cdsCargosalario: TFloatField
      FieldName = 'salario'
    end
  end
  object cdsCBO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCBO'
    RemoteServer = dspConnection
    Left = 32
    Top = 256
    object cdsCBOidcbo: TIntegerField
      FieldName = 'idcbo'
      Origin = 'idcbo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCBOcodigo2002: TWideStringField
      FieldName = 'codigo2002'
      Origin = 'codigo2002'
      Size = 10
    end
    object cdsCBOcodigo1994: TWideStringField
      FieldName = 'codigo1994'
      Origin = 'codigo1994'
      Size = 10
    end
    object cdsCBOnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 250
    end
    object cdsCBOobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object cdsCEP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCEP'
    RemoteServer = dspConnection
    Left = 32
    Top = 312
    object cdsCEPidcep: TWideStringField
      FieldName = 'idcep'
      Size = 9
    end
    object cdsCEPidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
    end
    object cdsCEPlogradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 200
    end
    object cdsCEPcomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 60
    end
    object cdsCEPbairro: TWideStringField
      FieldName = 'bairro'
      Size = 60
    end
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCFOP'
    RemoteServer = dspConnection
    Left = 32
    Top = 368
    object cdsCFOPidcfop: TIntegerField
      FieldName = 'idcfop'
    end
    object cdsCFOPidtipooperacao: TIntegerField
      FieldName = 'idtipooperacao'
    end
    object cdsCFOPcfop: TIntegerField
      FieldName = 'cfop'
    end
    object cdsCFOPdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 250
    end
    object cdsCFOPdescricaonf: TWideStringField
      FieldName = 'descricaonf'
      Size = 60
    end
    object cdsCFOPaplicacao: TWideMemoField
      FieldName = 'aplicacao'
      BlobType = ftWideMemo
    end
    object cdsCFOPtipooperacaodescricao: TWideStringField
      FieldName = 'tipooperacaodescricao'
      ProviderFlags = []
    end
  end
  object cdsCNAE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCNAE'
    RemoteServer = dspConnection
    Left = 32
    Top = 424
    object cdsCNAEidcnae: TIntegerField
      FieldName = 'idcnae'
    end
    object cdsCNAEcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsCNAEdenominacao: TWideMemoField
      FieldName = 'denominacao'
      BlobType = ftWideMemo
    end
  end
  object cdsControle: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspControle'
    RemoteServer = dspConnection
    Left = 32
    Top = 480
    object cdsControleidcontrole: TIntegerField
      FieldName = 'idcontrole'
    end
    object cdsControlesequencia: TSmallintField
      FieldName = 'sequencia'
    end
    object cdsControledescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object cdsCSTCOFINS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCSTCOFINS'
    RemoteServer = dspConnection
    Left = 32
    Top = 536
    object cdsCSTCOFINSidcstcofins: TIntegerField
      FieldName = 'idcstcofins'
    end
    object cdsCSTCOFINSdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 250
    end
    object cdsCSTCOFINSobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object cdsCSTIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCSTIPI'
    RemoteServer = dspConnection
    Left = 32
    Top = 592
    object cdsCSTIPIidcstipi: TIntegerField
      FieldName = 'idcstipi'
    end
    object cdsCSTIPIdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 250
    end
    object cdsCSTIPIobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object cdsCSTPIS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCSTPIS'
    RemoteServer = dspConnection
    Left = 104
    Top = 88
    object cdsCSTPISidcstpis: TIntegerField
      FieldName = 'idcstpis'
    end
    object cdsCSTPISdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 250
    end
  end
  object cdsDocumento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDocumento'
    RemoteServer = dspConnection
    Left = 104
    Top = 144
    object cdsDocumentoiddocumento: TIntegerField
      FieldName = 'iddocumento'
    end
    object cdsDocumentocaminho: TWideMemoField
      FieldName = 'caminho'
      BlobType = ftWideMemo
    end
    object cdsDocumentoarquivo: TWideMemoField
      FieldName = 'arquivo'
      BlobType = ftWideMemo
    end
  end
  object cdsECFCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspECFCabecalho'
    RemoteServer = dspConnection
    Left = 104
    Top = 200
    object cdsECFCabecalhoidecfcabecalho: TIntegerField
      FieldName = 'idecfcabecalho'
    end
    object cdsECFCabecalhoidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsECFCabecalhopessoa_idpessoa: TIntegerField
      FieldName = 'pessoa_idpessoa'
    end
    object cdsECFCabecalhonomecaixa: TWideStringField
      FieldName = 'nomecaixa'
      Size = 30
    end
    object cdsECFCabecalhoserieecf: TWideStringField
      FieldName = 'serieecf'
    end
    object cdsECFCabecalhodatavenda: TDateField
      FieldName = 'datavenda'
    end
    object cdsECFCabecalhohoravenda: TTimeField
      FieldName = 'horavenda'
    end
    object cdsECFCabecalhovalorvenda: TFloatField
      FieldName = 'valorvenda'
    end
    object cdsECFCabecalhotaxadesconto: TFloatField
      FieldName = 'taxadesconto'
    end
    object cdsECFCabecalhovalordesconto: TIntegerField
      FieldName = 'valordesconto'
    end
    object cdsECFCabecalhotaxaacrescimo: TFloatField
      FieldName = 'taxaacrescimo'
    end
    object cdsECFCabecalhovaloracrescimo: TFloatField
      FieldName = 'valoracrescimo'
    end
    object cdsECFCabecalhovalorfinal: TFloatField
      FieldName = 'valorfinal'
    end
    object cdsECFCabecalhovalorrecebido: TFloatField
      FieldName = 'valorrecebido'
    end
    object cdsECFCabecalhotroco: TFloatField
      FieldName = 'troco'
    end
    object cdsECFCabecalhovalorcancelado: TFloatField
      FieldName = 'valorcancelado'
    end
    object cdsECFCabecalhototalprodutos: TFloatField
      FieldName = 'totalprodutos'
    end
    object cdsECFCabecalhototaldocumento: TFloatField
      FieldName = 'totaldocumento'
    end
    object cdsECFCabecalhobaseicms: TFloatField
      FieldName = 'baseicms'
    end
    object cdsECFCabecalhovaloricms: TFloatField
      FieldName = 'valoricms'
    end
    object cdsECFCabecalhoicmsoutras: TFloatField
      FieldName = 'icmsoutras'
    end
    object cdsECFCabecalhoissqn: TFloatField
      FieldName = 'issqn'
    end
    object cdsECFCabecalhopis: TFloatField
      FieldName = 'pis'
    end
    object cdsECFCabecalhocofins: TFloatField
      FieldName = 'cofins'
    end
    object cdsECFCabecalhoacrescimoitens: TFloatField
      FieldName = 'acrescimoitens'
    end
    object cdsECFCabecalhodescontoitens: TFloatField
      FieldName = 'descontoitens'
    end
    object cdsECFCabecalhostatusvenda: TWideStringField
      FieldName = 'statusvenda'
      FixedChar = True
      Size = 1
    end
    object cdsECFCabecalhonomecliente: TWideStringField
      FieldName = 'nomecliente'
      Size = 100
    end
    object cdsECFCabecalhocpfcnpjcliente: TWideStringField
      FieldName = 'cpfcnpjcliente'
      Size = 14
    end
    object cdsECFCabecalhocupomcancelado: TBooleanField
      FieldName = 'cupomcancelado'
    end
  end
  object cdsECFItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspECFItem'
    RemoteServer = dspConnection
    Left = 104
    Top = 256
    object cdsECFItemidecfitem: TIntegerField
      FieldName = 'idecfitem'
    end
    object cdsECFItemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsECFItemecfcabecalho_idecfcabecalho: TIntegerField
      FieldName = 'ecfcabecalho_idecfcabecalho'
    end
    object cdsECFItemgtin: TWideStringField
      FieldName = 'gtin'
      Size = 14
    end
    object cdsECFItemserieecf: TWideStringField
      FieldName = 'serieecf'
    end
    object cdsECFItemquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object cdsECFItemvalorunitario: TFloatField
      FieldName = 'valorunitario'
    end
    object cdsECFItemvalortotal: TFloatField
      FieldName = 'valortotal'
    end
    object cdsECFItemtotalitem: TFloatField
      FieldName = 'totalitem'
    end
    object cdsECFItembaseicms: TFloatField
      FieldName = 'baseicms'
    end
    object cdsECFItemtaxaicms: TFloatField
      FieldName = 'taxaicms'
    end
    object cdsECFItemvaloricms: TFloatField
      FieldName = 'valoricms'
    end
    object cdsECFItemtaxadesconto: TFloatField
      FieldName = 'taxadesconto'
    end
    object cdsECFItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object cdsECFItemtaxaissqn: TFloatField
      FieldName = 'taxaissqn'
    end
    object cdsECFItemvalorissqn: TFloatField
      FieldName = 'valorissqn'
    end
    object cdsECFItemtaxapis: TFloatField
      FieldName = 'taxapis'
    end
    object cdsECFItemvalorpis: TFloatField
      FieldName = 'valorpis'
    end
    object cdsECFItemtaxacofins: TFloatField
      FieldName = 'taxacofins'
    end
    object cdsECFItemvalorcofiins: TFloatField
      FieldName = 'valorcofiins'
    end
    object cdsECFItemtaxaacrescimo: TFloatField
      FieldName = 'taxaacrescimo'
    end
    object cdsECFItemvaloracrescimo: TFloatField
      FieldName = 'valoracrescimo'
    end
    object cdsECFItemtotalizadorparcial: TFloatField
      FieldName = 'totalizadorparcial'
    end
    object cdsECFItemcst: TSmallintField
      FieldName = 'cst'
    end
    object cdsECFItemcancelado: TBooleanField
      FieldName = 'cancelado'
    end
    object cdsECFItemmovimentaestoque: TBooleanField
      FieldName = 'movimentaestoque'
    end
    object cdsECFItemecficmsst: TWideStringField
      FieldName = 'ecficmsst'
      Size = 4
    end
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    RemoteServer = dspConnection
    Left = 104
    Top = 312
    object cdsEmpresaidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsEmpresarazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Size = 60
    end
    object cdsEmpresanomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Size = 60
    end
    object cdsEmpresahomepage: TWideStringField
      FieldName = 'homepage'
      Size = 300
    end
    object cdsEmpresaimagemlogotipo: TWideMemoField
      FieldName = 'imagemlogotipo'
      BlobType = ftWideMemo
    end
    object cdsEmpresatiporegime: TWideStringField
      FieldName = 'tiporegime'
      FixedChar = True
      Size = 1
    end
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEndereco'
    RemoteServer = dspConnection
    Left = 104
    Top = 368
    object cdsEnderecoidendereco: TIntegerField
      FieldName = 'idendereco'
    end
    object cdsEnderecoidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsEnderecoidecfcabecalho: TIntegerField
      FieldName = 'idecfcabecalho'
    end
    object cdsEnderecoidentradalocalentregaretirada: TIntegerField
      FieldName = 'identradalocalentregaretirada'
    end
    object cdsEnderecoidentradatransportadora: TIntegerField
      FieldName = 'identradatransportadora'
    end
    object cdsEnderecoidunidadedenegocio: TIntegerField
      FieldName = 'idunidadedenegocio'
    end
    object cdsEnderecoidestado: TWideStringField
      FieldName = 'idestado'
      FixedChar = True
      Size = 2
    end
    object cdsEnderecoidcep: TWideStringField
      FieldName = 'idcep'
      Size = 9
    end
    object cdsEnderecoidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
    end
    object cdsEnderecologradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 60
    end
    object cdsEndereconumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object cdsEnderecocomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 60
    end
    object cdsEnderecobairro: TWideStringField
      FieldName = 'bairro'
      Size = 60
    end
    object cdsEnderecoprincipal: TWideStringField
      FieldName = 'principal'
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoentrega: TWideStringField
      FieldName = 'entrega'
      FixedChar = True
      Size = 1
    end
    object cdsEnderecocobranca: TWideStringField
      FieldName = 'cobranca'
      FixedChar = True
      Size = 1
    end
    object cdsEnderecocorrespondencia: TWideStringField
      FieldName = 'correspondencia'
      FixedChar = True
      Size = 1
    end
  end
  object cdsEntradaCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaCabecalho'
    RemoteServer = dspConnection
    Left = 104
    Top = 424
    object cdsEntradaCabecalhoidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
    end
    object cdsEntradaCabecalhoidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsEntradaCabecalhoserie: TWideStringField
      FieldName = 'serie'
      FixedChar = True
      Size = 3
    end
    object cdsEntradaCabecalhomodelo: TWideStringField
      FieldName = 'modelo'
      FixedChar = True
      Size = 2
    end
    object cdsEntradaCabecalhoufemitente: TWideStringField
      FieldName = 'ufemitente'
      FixedChar = True
      Size = 2
    end
    object cdsEntradaCabecalhocodigonumerico: TWideStringField
      FieldName = 'codigonumerico'
      Size = 8
    end
    object cdsEntradaCabecalhonaturezaoperacao: TIntegerField
      FieldName = 'naturezaoperacao'
    end
    object cdsEntradaCabecalhoindicadorformapagamento: TBooleanField
      FieldName = 'indicadorformapagamento'
    end
    object cdsEntradaCabecalhonumero: TWideStringField
      FieldName = 'numero'
      Size = 9
    end
    object cdsEntradaCabecalhodatahoraemisao: TSQLTimeStampField
      FieldName = 'datahoraemisao'
    end
    object cdsEntradaCabecalhodatahorasaida: TSQLTimeStampField
      FieldName = 'datahorasaida'
    end
    object cdsEntradaCabecalhotipooperacao: TBooleanField
      FieldName = 'tipooperacao'
    end
    object cdsEntradaCabecalhoformatoimpressaodanfe: TWideStringField
      FieldName = 'formatoimpressaodanfe'
      FixedChar = True
      Size = 1
    end
    object cdsEntradaCabecalhotipoemissao: TWideStringField
      FieldName = 'tipoemissao'
      FixedChar = True
      Size = 1
    end
    object cdsEntradaCabecalhochaveacesso: TWideStringField
      FieldName = 'chaveacesso'
      Size = 44
    end
    object cdsEntradaCabecalhodigitochaveacesso: TWideStringField
      FieldName = 'digitochaveacesso'
      FixedChar = True
      Size = 1
    end
    object cdsEntradaCabecalhoambiente: TBooleanField
      FieldName = 'ambiente'
    end
    object cdsEntradaCabecalhofinalidadeemissao: TWideStringField
      FieldName = 'finalidadeemissao'
      FixedChar = True
      Size = 1
    end
    object cdsEntradaCabecalhoprocessoemissao: TWideStringField
      FieldName = 'processoemissao'
      FixedChar = True
      Size = 1
    end
    object cdsEntradaCabecalhoversaoprocessoemissao: TWideStringField
      FieldName = 'versaoprocessoemissao'
    end
    object cdsEntradaCabecalhodataentradacontingencia: TSQLTimeStampField
      FieldName = 'dataentradacontingencia'
    end
    object cdsEntradaCabecalhojustificativacontigencia: TWideStringField
      FieldName = 'justificativacontigencia'
      Size = 255
    end
    object cdsEntradaCabecalhobasecalculoicms: TFloatField
      FieldName = 'basecalculoicms'
    end
    object cdsEntradaCabecalhovaloricms: TFloatField
      FieldName = 'valoricms'
    end
    object cdsEntradaCabecalhobasecalculoicmsst: TFloatField
      FieldName = 'basecalculoicmsst'
    end
    object cdsEntradaCabecalhovaloricmsst: TFloatField
      FieldName = 'valoricmsst'
    end
    object cdsEntradaCabecalhovalortotalprodutos: TFloatField
      FieldName = 'valortotalprodutos'
    end
    object cdsEntradaCabecalhovalorfrete: TFloatField
      FieldName = 'valorfrete'
    end
    object cdsEntradaCabecalhovalorseguro: TFloatField
      FieldName = 'valorseguro'
    end
    object cdsEntradaCabecalhovalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object cdsEntradaCabecalhovaloripi: TFloatField
      FieldName = 'valoripi'
    end
    object cdsEntradaCabecalhovalorpis: TFloatField
      FieldName = 'valorpis'
    end
    object cdsEntradaCabecalhovalorcofins: TFloatField
      FieldName = 'valorcofins'
    end
    object cdsEntradaCabecalhovalordespesasacessorias: TFloatField
      FieldName = 'valordespesasacessorias'
    end
    object cdsEntradaCabecalhovalortotal: TFloatField
      FieldName = 'valortotal'
    end
    object cdsEntradaCabecalhovalorservicos: TFloatField
      FieldName = 'valorservicos'
    end
    object cdsEntradaCabecalhobasecalculoissqn: TFloatField
      FieldName = 'basecalculoissqn'
    end
    object cdsEntradaCabecalhovalorissqn: TFloatField
      FieldName = 'valorissqn'
    end
    object cdsEntradaCabecalhovalorpisissqn: TFloatField
      FieldName = 'valorpisissqn'
    end
    object cdsEntradaCabecalhovalorcofinsissqn: TFloatField
      FieldName = 'valorcofinsissqn'
    end
    object cdsEntradaCabecalhovalorretidopis: TFloatField
      FieldName = 'valorretidopis'
    end
    object cdsEntradaCabecalhovalorretidocofins: TFloatField
      FieldName = 'valorretidocofins'
    end
    object cdsEntradaCabecalhobasecalculoirrf: TFloatField
      FieldName = 'basecalculoirrf'
    end
    object cdsEntradaCabecalhovalorretidoirrf: TFloatField
      FieldName = 'valorretidoirrf'
    end
    object cdsEntradaCabecalhobasecalculoprevidencia: TFloatField
      FieldName = 'basecalculoprevidencia'
    end
    object cdsEntradaCabecalhovalorretidoprevidencia: TFloatField
      FieldName = 'valorretidoprevidencia'
    end
    object cdsEntradaCabecalhoinformacoesadicionaisfisco: TWideMemoField
      FieldName = 'informacoesadicionaisfisco'
      BlobType = ftWideMemo
    end
    object cdsEntradaCabecalhoinformacoesaddcontribuinte: TWideMemoField
      FieldName = 'informacoesaddcontribuinte'
      BlobType = ftWideMemo
    end
    object cdsEntradaCabecalhofaturanumero: TWideStringField
      FieldName = 'faturanumero'
      Size = 60
    end
    object cdsEntradaCabecalhofaturavalororiginal: TFloatField
      FieldName = 'faturavalororiginal'
    end
    object cdsEntradaCabecalhofaturavalordesconto: TFloatField
      FieldName = 'faturavalordesconto'
    end
    object cdsEntradaCabecalhofaturavalorliquido: TFloatField
      FieldName = 'faturavalorliquido'
    end
  end
  object cdsEntradaDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaDuplicata'
    RemoteServer = dspConnection
    Left = 104
    Top = 480
    object cdsEntradaDuplicataidentradaduplicata: TIntegerField
      FieldName = 'identradaduplicata'
    end
    object cdsEntradaDuplicataidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
    end
    object cdsEntradaDuplicatanumero: TWideStringField
      FieldName = 'numero'
      Size = 60
    end
    object cdsEntradaDuplicatavalor: TFloatField
      FieldName = 'valor'
    end
    object cdsEntradaDuplicatadatavencimento: TDateField
      FieldName = 'datavencimento'
    end
  end
  object cdsEntradaItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaItem'
    RemoteServer = dspConnection
    Left = 104
    Top = 536
    object cdsEntradaItemidentradaitem: TIntegerField
      FieldName = 'identradaitem'
    end
    object cdsEntradaItemidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
    end
    object cdsEntradaItemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsEntradaItemnumeroitem: TIntegerField
      FieldName = 'numeroitem'
    end
    object cdsEntradaItemcodigoproduto: TWideStringField
      FieldName = 'codigoproduto'
      Size = 60
    end
    object cdsEntradaItemgtin: TWideStringField
      FieldName = 'gtin'
      Size = 14
    end
    object cdsEntradaItemdescricaoproduto: TWideStringField
      FieldName = 'descricaoproduto'
      Size = 100
    end
    object cdsEntradaItemncm: TIntegerField
      FieldName = 'ncm'
    end
    object cdsEntradaItemextipi: TIntegerField
      FieldName = 'extipi'
    end
    object cdsEntradaItemcfop: TIntegerField
      FieldName = 'cfop'
    end
    object cdsEntradaItemunidadecomercial: TWideStringField
      FieldName = 'unidadecomercial'
      Size = 6
    end
    object cdsEntradaItemquantidadecomercial: TFloatField
      FieldName = 'quantidadecomercial'
    end
    object cdsEntradaItemvaloriunitariocomercial: TFloatField
      FieldName = 'valoriunitariocomercial'
    end
    object cdsEntradaItemvalorbrutoproduto: TFloatField
      FieldName = 'valorbrutoproduto'
    end
    object cdsEntradaItemunidadetributavel: TWideStringField
      FieldName = 'unidadetributavel'
      Size = 6
    end
    object cdsEntradaItemquantidadetributavel: TFloatField
      FieldName = 'quantidadetributavel'
    end
    object cdsEntradaItemvalorunitariotributavel: TFloatField
      FieldName = 'valorunitariotributavel'
    end
    object cdsEntradaItemvalorfrete: TFloatField
      FieldName = 'valorfrete'
    end
    object cdsEntradaItemvalorseguro: TFloatField
      FieldName = 'valorseguro'
    end
    object cdsEntradaItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object cdsEntradaItemvaloroutrasdespesas: TFloatField
      FieldName = 'valoroutrasdespesas'
    end
    object cdsEntradaItementratotal: TBooleanField
      FieldName = 'entratotal'
    end
    object cdsEntradaItemvalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
    end
    object cdsEntradaItemvalortotal: TFloatField
      FieldName = 'valortotal'
    end
    object cdsEntradaItemnumeropedido: TFloatField
      FieldName = 'numeropedido'
    end
    object cdsEntradaItemitempedido: TFloatField
      FieldName = 'itempedido'
    end
    object cdsEntradaIteminformacoesadicionais: TWideMemoField
      FieldName = 'informacoesadicionais'
      BlobType = ftWideMemo
    end
  end
  object cdsEntradaItemImposto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaItemImposto'
    RemoteServer = dspConnection
    Left = 104
    Top = 592
    object cdsEntradaItemImpostoidentradaitemimposto: TIntegerField
      FieldName = 'identradaitemimposto'
    end
    object cdsEntradaItemImpostoidentradaitem: TIntegerField
      FieldName = 'identradaitem'
    end
    object cdsEntradaItemImpostoorigemmercadoria: TSmallintField
      FieldName = 'origemmercadoria'
    end
    object cdsEntradaItemImpostoicmscst: TSmallintField
      FieldName = 'icmscst'
    end
    object cdsEntradaItemImpostocsosn: TSmallintField
      FieldName = 'csosn'
    end
    object cdsEntradaItemImpostoicmsmodalidadebc: TSmallintField
      FieldName = 'icmsmodalidadebc'
    end
    object cdsEntradaItemImpostoicmsreducaobc: TFloatField
      FieldName = 'icmsreducaobc'
    end
    object cdsEntradaItemImpostoicmsbasecalculo: TFloatField
      FieldName = 'icmsbasecalculo'
    end
    object cdsEntradaItemImpostoicmsaliquota: TFloatField
      FieldName = 'icmsaliquota'
    end
    object cdsEntradaItemImpostoicmsvalor: TFloatField
      FieldName = 'icmsvalor'
    end
    object cdsEntradaItemImpostoicmsmotivodesoneracao: TWideStringField
      FieldName = 'icmsmotivodesoneracao'
      FixedChar = True
      Size = 1
    end
    object cdsEntradaItemImpostoicmsmodalidadebcst: TSmallintField
      FieldName = 'icmsmodalidadebcst'
    end
    object cdsEntradaItemImpostoicmsmvast: TFloatField
      FieldName = 'icmsmvast'
    end
    object cdsEntradaItemImpostoicmsreducaobcst: TFloatField
      FieldName = 'icmsreducaobcst'
    end
    object cdsEntradaItemImpostoicmsvalorbcst: TFloatField
      FieldName = 'icmsvalorbcst'
    end
    object cdsEntradaItemImpostoicmsaliquotast: TFloatField
      FieldName = 'icmsaliquotast'
    end
    object cdsEntradaItemImpostoicmsvalorst: TFloatField
      FieldName = 'icmsvalorst'
    end
    object cdsEntradaItemImpostoicmsvalorbcstretido: TFloatField
      FieldName = 'icmsvalorbcstretido'
    end
    object cdsEntradaItemImpostoicmsvalorstretido: TFloatField
      FieldName = 'icmsvalorstretido'
    end
    object cdsEntradaItemImpostoicmsvalorbcstdestino: TFloatField
      FieldName = 'icmsvalorbcstdestino'
    end
    object cdsEntradaItemImpostoicmsvalorstdestino: TFloatField
      FieldName = 'icmsvalorstdestino'
    end
    object cdsEntradaItemImpostoicmsaliquotacreditosn: TFloatField
      FieldName = 'icmsaliquotacreditosn'
    end
    object cdsEntradaItemImpostoicmsvalorcreditosn: TFloatField
      FieldName = 'icmsvalorcreditosn'
    end
    object cdsEntradaItemImpostoprecentualbcoperacaopropria: TFloatField
      FieldName = 'precentualbcoperacaopropria'
    end
    object cdsEntradaItemImpostoufst: TWideStringField
      FieldName = 'ufst'
      FixedChar = True
      Size = 2
    end
    object cdsEntradaItemImpostoipienquadramento: TWideStringField
      FieldName = 'ipienquadramento'
      Size = 5
    end
    object cdsEntradaItemImpostoipicnpjprodutor: TWideStringField
      FieldName = 'ipicnpjprodutor'
      Size = 9
    end
    object cdsEntradaItemImpostoipicst: TSmallintField
      FieldName = 'ipicst'
    end
    object cdsEntradaItemImpostoipivalorbc: TFloatField
      FieldName = 'ipivalorbc'
    end
    object cdsEntradaItemImpostoipialiquota: TFloatField
      FieldName = 'ipialiquota'
    end
    object cdsEntradaItemImpostoipiquantidadeunidadetributavel: TFloatField
      FieldName = 'ipiquantidadeunidadetributavel'
    end
    object cdsEntradaItemImpostoipivalorunidadetributavel: TFloatField
      FieldName = 'ipivalorunidadetributavel'
    end
    object cdsEntradaItemImpostoipivalor: TFloatField
      FieldName = 'ipivalor'
    end
    object cdsEntradaItemImpostocofinscst: TSmallintField
      FieldName = 'cofinscst'
    end
    object cdsEntradaItemImpostocofinsquantidadevendida: TFloatField
      FieldName = 'cofinsquantidadevendida'
    end
    object cdsEntradaItemImpostocofinsbc: TFloatField
      FieldName = 'cofinsbc'
    end
    object cdsEntradaItemImpostocofinsaliquotapercentual: TFloatField
      FieldName = 'cofinsaliquotapercentual'
    end
    object cdsEntradaItemImpostocofinsaliquotavalor: TFloatField
      FieldName = 'cofinsaliquotavalor'
    end
    object cdsEntradaItemImpostocofinsvalor: TFloatField
      FieldName = 'cofinsvalor'
    end
    object cdsEntradaItemImpostopiscst: TSmallintField
      FieldName = 'piscst'
    end
    object cdsEntradaItemImpostopisquantidadevalor: TFloatField
      FieldName = 'pisquantidadevalor'
    end
    object cdsEntradaItemImpostopisbc: TFloatField
      FieldName = 'pisbc'
    end
    object cdsEntradaItemImpostopisaliquotapercentual: TFloatField
      FieldName = 'pisaliquotapercentual'
    end
    object cdsEntradaItemImpostopisaliquotavalor: TFloatField
      FieldName = 'pisaliquotavalor'
    end
    object cdsEntradaItemImpostopisvalor: TFloatField
      FieldName = 'pisvalor'
    end
    object cdsEntradaItemImpostoissbc: TFloatField
      FieldName = 'issbc'
    end
    object cdsEntradaItemImpostoissaliquota: TFloatField
      FieldName = 'issaliquota'
    end
    object cdsEntradaItemImpostoissvalor: TFloatField
      FieldName = 'issvalor'
    end
    object cdsEntradaItemImpostoissmunicipio: TIntegerField
      FieldName = 'issmunicipio'
    end
    object cdsEntradaItemImpostoissitemlistaservico: TIntegerField
      FieldName = 'issitemlistaservico'
    end
    object cdsEntradaItemImpostoisstributacao: TSmallintField
      FieldName = 'isstributacao'
    end
  end
  object cdsEntradaLocalEntregaRetirada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaLocalEntregaRetirada'
    RemoteServer = dspConnection
    Left = 176
    Top = 88
    object cdsEntradaLocalEntregaRetiradaidentradalocalentregaretirada: TIntegerField
      FieldName = 'identradalocalentregaretirada'
    end
    object cdsEntradaLocalEntregaRetiradaidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
    end
    object cdsEntradaLocalEntregaRetiradacpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 9
    end
    object cdsEntradaLocalEntregaRetiradalogradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 60
    end
    object cdsEntradaLocalEntregaRetiradanumero: TWideStringField
      FieldName = 'numero'
      Size = 30
    end
    object cdsEntradaLocalEntregaRetiradacomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 60
    end
    object cdsEntradaLocalEntregaRetiradabairro: TWideStringField
      FieldName = 'bairro'
      Size = 60
    end
    object cdsEntradaLocalEntregaRetiradatipo: TWideStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
  end
  object cdsEntradaTransportadora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaTransportadora'
    RemoteServer = dspConnection
    Left = 176
    Top = 144
    object cdsEntradaTransportadoraidentradatransportadora: TIntegerField
      FieldName = 'identradatransportadora'
    end
    object cdsEntradaTransportadoraidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
    end
    object cdsEntradaTransportadoraidcfop: TIntegerField
      FieldName = 'idcfop'
    end
    object cdsEntradaTransportadoramodalidade: TSmallintField
      FieldName = 'modalidade'
    end
    object cdsEntradaTransportadoracpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 9
    end
    object cdsEntradaTransportadoranome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object cdsEntradaTransportadorainscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Size = 14
    end
    object cdsEntradaTransportadoraendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object cdsEntradaTransportadoravalorservico: TFloatField
      FieldName = 'valorservico'
    end
    object cdsEntradaTransportadoravalorbcretencaoicms: TFloatField
      FieldName = 'valorbcretencaoicms'
    end
    object cdsEntradaTransportadoraaliquotaretencaoicms: TFloatField
      FieldName = 'aliquotaretencaoicms'
    end
    object cdsEntradaTransportadoravaloricmsretido: TFloatField
      FieldName = 'valoricmsretido'
    end
    object cdsEntradaTransportadoravolumequantidade: TSmallintField
      FieldName = 'volumequantidade'
    end
    object cdsEntradaTransportadoravolumeespecie: TWideStringField
      FieldName = 'volumeespecie'
      Size = 60
    end
    object cdsEntradaTransportadoravolumemarca: TWideStringField
      FieldName = 'volumemarca'
      Size = 60
    end
    object cdsEntradaTransportadoravolumenumeracao: TWideStringField
      FieldName = 'volumenumeracao'
      Size = 60
    end
    object cdsEntradaTransportadoravolumepesoliquido: TFloatField
      FieldName = 'volumepesoliquido'
    end
    object cdsEntradaTransportadoravolumepesobruto: TFloatField
      FieldName = 'volumepesobruto'
    end
  end
  object cdsEntradaTransportadoraReboque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaTransportadoraReboque'
    RemoteServer = dspConnection
    Left = 176
    Top = 200
    object cdsEntradaTransportadoraReboqueidentradatransportadorareboque: TIntegerField
      FieldName = 'identradatransportadorareboque'
    end
    object cdsEntradaTransportadoraReboqueidentradacabecalho: TIntegerField
      FieldName = 'identradacabecalho'
    end
    object cdsEntradaTransportadoraReboqueidestado: TWideStringField
      FieldName = 'idestado'
      FixedChar = True
      Size = 2
    end
    object cdsEntradaTransportadoraReboqueplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsEntradaTransportadoraReboquerntc: TWideStringField
      FieldName = 'rntc'
    end
  end
  object cdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstado'
    RemoteServer = dspConnection
    Left = 176
    Top = 256
    object cdsEstadoidestado: TWideStringField
      FieldName = 'idestado'
      FixedChar = True
      Size = 2
    end
    object cdsEstadocodigoibge: TIntegerField
      FieldName = 'codigoibge'
    end
    object cdsEstadonome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdsEstadoidpais: TIntegerField
      FieldName = 'idpais'
    end
  end
  object cdsEstoqueContagemCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueContagemCabecalho'
    RemoteServer = dspConnection
    Left = 176
    Top = 312
    object cdsEstoqueContagemCabecalhoidestoquecontagemcabecalho: TIntegerField
      FieldName = 'idestoquecontagemcabecalho'
    end
    object cdsEstoqueContagemCabecalhoempresa_idempresa: TIntegerField
      FieldName = 'empresa_idempresa'
    end
    object cdsEstoqueContagemCabecalhodatacontagem: TDateField
      FieldName = 'datacontagem'
    end
    object cdsEstoqueContagemCabecalhoestoqueatualizado: TWideStringField
      FieldName = 'estoqueatualizado'
      FixedChar = True
      Size = 1
    end
  end
  object cdsEstoqueContagemDetalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueContagemDetalhe'
    RemoteServer = dspConnection
    Left = 176
    Top = 368
    object cdsEstoqueContagemDetalheidestoquecotagemdetalhe: TIntegerField
      FieldName = 'idestoquecotagemdetalhe'
    end
    object cdsEstoqueContagemDetalheidestoquecontagemcabecalho: TIntegerField
      FieldName = 'idestoquecontagemcabecalho'
    end
    object cdsEstoqueContagemDetalheproduto_idproduto: TIntegerField
      FieldName = 'produto_idproduto'
    end
    object cdsEstoqueContagemDetalhequantidadecontada: TFloatField
      FieldName = 'quantidadecontada'
    end
    object cdsEstoqueContagemDetalhequantidadesistema: TFloatField
      FieldName = 'quantidadesistema'
    end
    object cdsEstoqueContagemDetalhedivergencia: TFloatField
      FieldName = 'divergencia'
    end
  end
  object cdsEstoqueCor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueCor'
    RemoteServer = dspConnection
    Left = 176
    Top = 424
    object cdsEstoqueCoridestoquecor: TIntegerField
      FieldName = 'idestoquecor'
    end
    object cdsEstoqueCorcodigo: TWideStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 2
    end
    object cdsEstoqueCornome: TWideStringField
      FieldName = 'nome'
      Size = 30
    end
  end
  object cdsEstoqueGrade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueGrade'
    RemoteServer = dspConnection
    Left = 176
    Top = 480
    object cdsEstoqueGradeidestoquegrade: TIntegerField
      FieldName = 'idestoquegrade'
    end
    object cdsEstoqueGradeidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsEstoqueGradeidestoquecor: TIntegerField
      FieldName = 'idestoquecor'
    end
    object cdsEstoqueGradeidestoquetamanho: TIntegerField
      FieldName = 'idestoquetamanho'
    end
    object cdsEstoqueGradecodigo: TWideStringField
      FieldName = 'codigo'
      Size = 50
    end
    object cdsEstoqueGradequantidade: TFloatField
      FieldName = 'quantidade'
    end
  end
  object cdsEstoqueTamanho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoqueTamanho'
    RemoteServer = dspConnection
    Left = 176
    Top = 536
    object cdsEstoqueTamanhoidestoquetamanho: TIntegerField
      FieldName = 'idestoquetamanho'
    end
    object cdsEstoqueTamanhocodigo: TWideStringField
      FieldName = 'codigo'
      FixedChar = True
      Size = 3
    end
    object cdsEstoqueTamanhonome: TWideStringField
      FieldName = 'nome'
      Size = 30
    end
  end
  object cdsHistoricoMovimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHistoricoMovimento'
    RemoteServer = dspConnection
    Left = 176
    Top = 592
    object cdsHistoricoMovimentoidhistoricomovimento: TIntegerField
      FieldName = 'idhistoricomovimento'
    end
    object cdsHistoricoMovimentodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 60
    end
    object cdsHistoricoMovimentotipo: TWideStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object cdsHistoricoMovimentocontaliquidacao: TIntegerField
      FieldName = 'contaliquidacao'
    end
    object cdsHistoricoMovimentoativo: TBooleanField
      FieldName = 'ativo'
    end
  end
  object cdsIndicadorEconomico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIndicadorEconomico'
    RemoteServer = dspConnection
    Left = 248
    Top = 88
    object cdsIndicadorEconomicoidindicadoreconomico: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'idindicadoreconomico'
    end
    object cdsIndicadorEconomicodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
    object cdsIndicadorEconomicoativo: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'ativo'
    end
  end
  object cdsIndice: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIndice'
    RemoteServer = dspConnection
    Left = 248
    Top = 144
    object cdsIndiceidindice: TIntegerField
      FieldName = 'idindice'
    end
    object cdsIndiceidindicadoreconomico: TIntegerField
      FieldName = 'idindicadoreconomico'
    end
    object cdsIndicedataatualizacao: TDateField
      FieldName = 'dataatualizacao'
    end
    object cdsIndicevalor: TFloatField
      FieldName = 'valor'
    end
  end
  object cdsLicitacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLicitacao'
    RemoteServer = dspConnection
    Left = 248
    Top = 200
    object cdsLicitacaoidlicitacao: TIntegerField
      FieldName = 'idlicitacao'
    end
    object cdsLicitacaoidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsLicitacaoidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsLicitacaodataabertura: TDateField
      FieldName = 'dataabertura'
    end
    object cdsLicitacaodatafechamento: TDateField
      FieldName = 'datafechamento'
    end
    object cdsLicitacaoobjeto: TWideMemoField
      FieldName = 'objeto'
      BlobType = ftWideMemo
    end
    object cdsLicitacaoobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object cdsLicitacaoDocumento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLicitacaoDocumento'
    RemoteServer = dspConnection
    Left = 248
    Top = 256
    object cdsLicitacaoDocumentoidlicitacaodocumento: TIntegerField
      FieldName = 'idlicitacaodocumento'
    end
    object cdsLicitacaoDocumentoiddocumento: TIntegerField
      FieldName = 'iddocumento'
    end
    object cdsLicitacaoDocumentoidlicitacao: TIntegerField
      FieldName = 'idlicitacao'
    end
  end
  object cdsModelo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModelo'
    RemoteServer = dspConnection
    Left = 248
    Top = 312
    object cdsModeloidmodelo: TWideStringField
      FieldName = 'idmodelo'
      FixedChar = True
      Size = 2
    end
    object cdsModelodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object cdsMovimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimento'
    RemoteServer = dspConnection
    Left = 248
    Top = 368
    object cdsMovimentoidmovimento: TIntegerField
      FieldName = 'idmovimento'
    end
    object cdsMovimentoidnfeduplicata: TIntegerField
      FieldName = 'idnfeduplicata'
    end
    object cdsMovimentoidplanocontasfinanceiro: TIntegerField
      FieldName = 'idplanocontasfinanceiro'
    end
    object cdsMovimentoidplanocontasgerencial: TIntegerField
      FieldName = 'idplanocontasgerencial'
    end
    object cdsMovimentoidhistoricomovimento: TIntegerField
      FieldName = 'idhistoricomovimento'
    end
    object cdsMovimentoidportador: TIntegerField
      FieldName = 'idportador'
    end
    object cdsMovimentoidunidadedenegocio: TIntegerField
      FieldName = 'idunidadedenegocio'
    end
    object cdsMovimentoidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsMovimentodataregistro: TDateField
      FieldName = 'dataregistro'
    end
    object cdsMovimentodatavencimento: TDateField
      FieldName = 'datavencimento'
    end
    object cdsMovimentodataliquidacao: TDateField
      FieldName = 'dataliquidacao'
    end
    object cdsMovimentoorigem: TWideStringField
      FieldName = 'origem'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentonf: TIntegerField
      FieldName = 'nf'
    end
    object cdsMovimentofatura: TWideStringField
      FieldName = 'fatura'
      Size = 12
    end
    object cdsMovimentocontrapartida: TIntegerField
      FieldName = 'contrapartida'
    end
    object cdsMovimentosituacao: TWideStringField
      FieldName = 'situacao'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentojurovalor: TFloatField
      FieldName = 'jurovalor'
    end
    object cdsMovimentomultavalor: TFloatField
      FieldName = 'multavalor'
    end
    object cdsMovimentovalor: TFloatField
      FieldName = 'valor'
    end
    object cdsMovimentovalorsaldo: TFloatField
      FieldName = 'valorsaldo'
    end
  end
  object cdsMovimentoCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimentoCheque'
    RemoteServer = dspConnection
    Left = 248
    Top = 424
    object cdsMovimentoChequeidmovimentocheque: TIntegerField
      FieldName = 'idmovimentocheque'
    end
    object cdsMovimentoChequeidbanco: TWideStringField
      FieldName = 'idbanco'
      FixedChar = True
      Size = 4
    end
    object cdsMovimentoChequeidmovimento: TIntegerField
      FieldName = 'idmovimento'
    end
    object cdsMovimentoChequeagencia: TSmallintField
      FieldName = 'agencia'
    end
    object cdsMovimentoChequeagenciadigito: TWideStringField
      FieldName = 'agenciadigito'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoChequeconta: TSmallintField
      FieldName = 'conta'
    end
    object cdsMovimentoChequecontadigito: TWideStringField
      FieldName = 'contadigito'
      FixedChar = True
      Size = 1
    end
    object cdsMovimentoChequenumero: TWideStringField
      FieldName = 'numero'
      Size = 6
    end
  end
  object cdsMunicipio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMunicipio'
    RemoteServer = dspConnection
    Left = 248
    Top = 480
    object cdsMunicipioidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
    end
    object cdsMunicipionome: TWideStringField
      FieldName = 'nome'
      Size = 150
    end
    object cdsMunicipioidestado: TWideStringField
      FieldName = 'idestado'
      FixedChar = True
      Size = 2
    end
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCM'
    RemoteServer = dspConnection
    Left = 248
    Top = 536
    object cdsNCMidncm: TIntegerField
      FieldName = 'idncm'
    end
    object cdsNCMdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object dspNFeCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeCabecalho'
    RemoteServer = dspConnection
    Left = 248
    Top = 592
    object dspNFeCabecalhoidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object dspNFeCabecalhoidunidadedenegocio: TIntegerField
      FieldName = 'idunidadedenegocio'
    end
    object dspNFeCabecalhoidserie: TIntegerField
      FieldName = 'idserie'
    end
    object dspNFeCabecalhoidmodelo: TWideStringField
      FieldName = 'idmodelo'
      FixedChar = True
      Size = 2
    end
    object dspNFeCabecalhoufemitente: TWideStringField
      FieldName = 'ufemitente'
      FixedChar = True
      Size = 2
    end
    object dspNFeCabecalhocodigonumerico: TWideStringField
      FieldName = 'codigonumerico'
      Size = 8
    end
    object dspNFeCabecalhonaturezaoperacao: TIntegerField
      FieldName = 'naturezaoperacao'
    end
    object dspNFeCabecalhoindicadorformapagamento: TBooleanField
      FieldName = 'indicadorformapagamento'
    end
    object dspNFeCabecalhonumero: TWideStringField
      FieldName = 'numero'
      Size = 9
    end
    object dspNFeCabecalhodatahoraemisao: TSQLTimeStampField
      FieldName = 'datahoraemisao'
    end
    object dspNFeCabecalhodatahorasaida: TSQLTimeStampField
      FieldName = 'datahorasaida'
    end
    object dspNFeCabecalhotipooperacao: TBooleanField
      FieldName = 'tipooperacao'
    end
    object dspNFeCabecalhoformatoimpressaodanfe: TWideStringField
      FieldName = 'formatoimpressaodanfe'
      FixedChar = True
      Size = 1
    end
    object dspNFeCabecalhotipoemissao: TWideStringField
      FieldName = 'tipoemissao'
      FixedChar = True
      Size = 1
    end
    object dspNFeCabecalhochaveacesso: TWideStringField
      FieldName = 'chaveacesso'
      Size = 44
    end
    object dspNFeCabecalhodigitochaveacesso: TWideStringField
      FieldName = 'digitochaveacesso'
      FixedChar = True
      Size = 1
    end
    object dspNFeCabecalhoambiente: TBooleanField
      FieldName = 'ambiente'
    end
    object dspNFeCabecalhofinalidadeemissao: TWideStringField
      FieldName = 'finalidadeemissao'
      FixedChar = True
      Size = 1
    end
    object dspNFeCabecalhoprocessoemissao: TWideStringField
      FieldName = 'processoemissao'
      FixedChar = True
      Size = 1
    end
    object dspNFeCabecalhoversaoprocessoemissao: TWideStringField
      FieldName = 'versaoprocessoemissao'
    end
    object dspNFeCabecalhodataentradacontingencia: TSQLTimeStampField
      FieldName = 'dataentradacontingencia'
    end
    object dspNFeCabecalhojustificativacontigencia: TWideStringField
      FieldName = 'justificativacontigencia'
      Size = 255
    end
    object dspNFeCabecalhobasecalculoicms: TFloatField
      FieldName = 'basecalculoicms'
    end
    object dspNFeCabecalhovaloricms: TFloatField
      FieldName = 'valoricms'
    end
    object dspNFeCabecalhobasecalculoicmsst: TFloatField
      FieldName = 'basecalculoicmsst'
    end
    object dspNFeCabecalhovaloricmsst: TFloatField
      FieldName = 'valoricmsst'
    end
    object dspNFeCabecalhovalortotalprodutos: TFloatField
      FieldName = 'valortotalprodutos'
    end
    object dspNFeCabecalhovalorfrete: TFloatField
      FieldName = 'valorfrete'
    end
    object dspNFeCabecalhovalorseguro: TFloatField
      FieldName = 'valorseguro'
    end
    object dspNFeCabecalhovalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object dspNFeCabecalhovalorimpostoimportacao: TFloatField
      FieldName = 'valorimpostoimportacao'
    end
    object dspNFeCabecalhovaloripi: TFloatField
      FieldName = 'valoripi'
    end
    object dspNFeCabecalhovalorpis: TFloatField
      FieldName = 'valorpis'
    end
    object dspNFeCabecalhovalorcofins: TFloatField
      FieldName = 'valorcofins'
    end
    object dspNFeCabecalhovalordespesasacessorias: TFloatField
      FieldName = 'valordespesasacessorias'
    end
    object dspNFeCabecalhovalortotal: TFloatField
      FieldName = 'valortotal'
    end
    object dspNFeCabecalhovalorservicos: TFloatField
      FieldName = 'valorservicos'
    end
    object dspNFeCabecalhobasecalculoissqn: TFloatField
      FieldName = 'basecalculoissqn'
    end
    object dspNFeCabecalhovalorissqn: TFloatField
      FieldName = 'valorissqn'
    end
    object dspNFeCabecalhovalorpisissqn: TFloatField
      FieldName = 'valorpisissqn'
    end
    object dspNFeCabecalhovalorcofinsissqn: TFloatField
      FieldName = 'valorcofinsissqn'
    end
    object dspNFeCabecalhovalorretidopis: TFloatField
      FieldName = 'valorretidopis'
    end
    object dspNFeCabecalhovalorretidocofins: TFloatField
      FieldName = 'valorretidocofins'
    end
    object dspNFeCabecalhobasecalculoirrf: TFloatField
      FieldName = 'basecalculoirrf'
    end
    object dspNFeCabecalhovalorretidoirrf: TFloatField
      FieldName = 'valorretidoirrf'
    end
    object dspNFeCabecalhobasecalculoprevidencia: TFloatField
      FieldName = 'basecalculoprevidencia'
    end
    object dspNFeCabecalhovalorretidoprevidencia: TFloatField
      FieldName = 'valorretidoprevidencia'
    end
    object dspNFeCabecalhocomexufembarque: TWideStringField
      FieldName = 'comexufembarque'
      FixedChar = True
      Size = 2
    end
    object dspNFeCabecalhocomexlocalembarque: TWideStringField
      FieldName = 'comexlocalembarque'
      Size = 60
    end
    object dspNFeCabecalhoinformacoesadicionaisfisco: TWideMemoField
      FieldName = 'informacoesadicionaisfisco'
      BlobType = ftWideMemo
    end
    object dspNFeCabecalhoinformacoesaddcontribuinte: TWideMemoField
      FieldName = 'informacoesaddcontribuinte'
      BlobType = ftWideMemo
    end
    object dspNFeCabecalhostatusnota: TWideStringField
      FieldName = 'statusnota'
      FixedChar = True
      Size = 1
    end
    object dspNFeCabecalhofaturanumero: TWideStringField
      FieldName = 'faturanumero'
      Size = 60
    end
    object dspNFeCabecalhofaturavalororiginal: TFloatField
      FieldName = 'faturavalororiginal'
    end
    object dspNFeCabecalhofaturavalordesconto: TFloatField
      FieldName = 'faturavalordesconto'
    end
    object dspNFeCabecalhofaturavalorliquido: TFloatField
      FieldName = 'faturavalorliquido'
    end
  end
  object cdsNFeCupomFiscalReferenciado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeCupomFiscalReferenciado'
    RemoteServer = dspConnection
    Left = 320
    Top = 88
    object cdsNFeCupomFiscalReferenciadoidnfecupomfiscalreferenciado: TIntegerField
      FieldName = 'idnfecupomfiscalreferenciado'
    end
    object cdsNFeCupomFiscalReferenciadoidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeCupomFiscalReferenciadomodelodocumentofiscal: TWideStringField
      FieldName = 'modelodocumentofiscal'
      FixedChar = True
      Size = 2
    end
    object cdsNFeCupomFiscalReferenciadonumeroordemecf: TIntegerField
      FieldName = 'numeroordemecf'
    end
    object cdsNFeCupomFiscalReferenciadocoo: TIntegerField
      FieldName = 'coo'
    end
    object cdsNFeCupomFiscalReferenciadodataemissaocupom: TDateField
      FieldName = 'dataemissaocupom'
    end
    object cdsNFeCupomFiscalReferenciadonumerocaixa: TIntegerField
      FieldName = 'numerocaixa'
    end
    object cdsNFeCupomFiscalReferenciadonumeroserieecf: TWideStringField
      FieldName = 'numeroserieecf'
      Size = 21
    end
  end
  object cdsNFeDeclaracaoImportacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeDeclaracaoImportacao'
    RemoteServer = dspConnection
    Left = 320
    Top = 144
    object cdsNFeDeclaracaoImportacaoidnfedeclaracaoimportacao: TIntegerField
      FieldName = 'idnfedeclaracaoimportacao'
    end
    object cdsNFeDeclaracaoImportacaoidnfeitem: TIntegerField
      FieldName = 'idnfeitem'
    end
    object cdsNFeDeclaracaoImportacaonumerdocumento: TWideStringField
      FieldName = 'numerdocumento'
      Size = 12
    end
    object cdsNFeDeclaracaoImportacaodataregistro: TDateField
      FieldName = 'dataregistro'
    end
    object cdsNFeDeclaracaoImportacaolocaldesembaraco: TWideStringField
      FieldName = 'localdesembaraco'
      Size = 60
    end
    object cdsNFeDeclaracaoImportacaouf: TWideStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object cdsNFeDeclaracaoImportacaodatadesembaraco: TDateField
      FieldName = 'datadesembaraco'
    end
    object cdsNFeDeclaracaoImportacaocodigoexportador: TWideStringField
      FieldName = 'codigoexportador'
      Size = 60
    end
  end
  object cdsNFeDestinatario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeDestinatario'
    RemoteServer = dspConnection
    Left = 320
    Top = 200
    object cdsNFeDestinatarioidnfedestinatario: TIntegerField
      FieldName = 'idnfedestinatario'
    end
    object cdsNFeDestinatarioidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeDestinatarioidcep: TWideStringField
      FieldName = 'idcep'
      Size = 9
    end
    object cdsNFeDestinatarioidpais: TIntegerField
      FieldName = 'idpais'
    end
    object cdsNFeDestinatarioidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
    end
    object cdsNFeDestinatarioidestado: TWideStringField
      FieldName = 'idestado'
      FixedChar = True
      Size = 2
    end
    object cdsNFeDestinatariocpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 9
    end
    object cdsNFeDestinatariorazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Size = 60
    end
    object cdsNFeDestinatariologradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 60
    end
    object cdsNFeDestinatarionumero: TWideStringField
      FieldName = 'numero'
      Size = 60
    end
    object cdsNFeDestinatariocomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 60
    end
    object cdsNFeDestinatariobairro: TWideStringField
      FieldName = 'bairro'
      Size = 60
    end
    object cdsNFeDestinatariotelefone: TWideStringField
      FieldName = 'telefone'
      Size = 15
    end
    object cdsNFeDestinatarioinscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Size = 14
    end
    object cdsNFeDestinatariosuframa: TWideStringField
      FieldName = 'suframa'
      Size = 9
    end
    object cdsNFeDestinatarioemail: TWideStringField
      FieldName = 'email'
      Size = 60
    end
  end
  object cdsNFeDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeDuplicata'
    RemoteServer = dspConnection
    Left = 320
    Top = 256
    object cdsNFeDuplicataidnfeduplicata: TIntegerField
      FieldName = 'idnfeduplicata'
    end
    object cdsNFeDuplicataidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeDuplicatanumero: TWideStringField
      FieldName = 'numero'
      Size = 60
    end
    object cdsNFeDuplicatavalor: TFloatField
      FieldName = 'valor'
    end
    object cdsNFeDuplicatadatavencimento: TDateField
      FieldName = 'datavencimento'
    end
  end
  object cdsNFeImportacaoDetalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeImportacaoDetalhe'
    RemoteServer = dspConnection
    Left = 320
    Top = 312
    object cdsNFeImportacaoDetalheidnfeimportacaodetalhe: TIntegerField
      FieldName = 'idnfeimportacaodetalhe'
    end
    object cdsNFeImportacaoDetalhenfedeclaracaoimportacao_idnfedeclaracaoimportacao: TIntegerField
      FieldName = 'nfedeclaracaoimportacao_idnfedeclaracaoimportacao'
    end
    object cdsNFeImportacaoDetalhenumeroadicao: TIntegerField
      FieldName = 'numeroadicao'
    end
    object cdsNFeImportacaoDetalhenumerosequencial: TIntegerField
      FieldName = 'numerosequencial'
    end
    object cdsNFeImportacaoDetalhecodigofabricanteestrangeiro: TWideStringField
      FieldName = 'codigofabricanteestrangeiro'
      Size = 60
    end
    object cdsNFeImportacaoDetalhevalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
  end
  object cdsNFeItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeItem'
    RemoteServer = dspConnection
    Left = 320
    Top = 368
    object cdsNFeItemidnfeitem: TIntegerField
      FieldName = 'idnfeitem'
    end
    object cdsNFeItemidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeItemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsNFeItemnumeroitem: TIntegerField
      FieldName = 'numeroitem'
    end
    object cdsNFeItemcodigoproduto: TWideStringField
      FieldName = 'codigoproduto'
      Size = 60
    end
    object cdsNFeItemgtin: TWideStringField
      FieldName = 'gtin'
      Size = 14
    end
    object cdsNFeItemdescricaoproduto: TWideStringField
      FieldName = 'descricaoproduto'
      Size = 100
    end
    object cdsNFeItemncm: TIntegerField
      FieldName = 'ncm'
    end
    object cdsNFeItemextipi: TIntegerField
      FieldName = 'extipi'
    end
    object cdsNFeItemcfop: TIntegerField
      FieldName = 'cfop'
    end
    object cdsNFeItemunidadecomercial: TWideStringField
      FieldName = 'unidadecomercial'
      Size = 6
    end
    object cdsNFeItemquantidadecomercial: TFloatField
      FieldName = 'quantidadecomercial'
    end
    object cdsNFeItemvaloriunitariocomercial: TFloatField
      FieldName = 'valoriunitariocomercial'
    end
    object cdsNFeItemvalorbrutoproduto: TFloatField
      FieldName = 'valorbrutoproduto'
    end
    object cdsNFeItemunidadetributavel: TWideStringField
      FieldName = 'unidadetributavel'
      Size = 6
    end
    object cdsNFeItemquantidadetributavel: TFloatField
      FieldName = 'quantidadetributavel'
    end
    object cdsNFeItemvalorunitariotributavel: TFloatField
      FieldName = 'valorunitariotributavel'
    end
    object cdsNFeItemvalorfrete: TFloatField
      FieldName = 'valorfrete'
    end
    object cdsNFeItemvalorseguro: TFloatField
      FieldName = 'valorseguro'
    end
    object cdsNFeItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object cdsNFeItemvaloroutrasdespesas: TFloatField
      FieldName = 'valoroutrasdespesas'
    end
    object cdsNFeItementratotal: TBooleanField
      FieldName = 'entratotal'
    end
    object cdsNFeItemvalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
    end
    object cdsNFeItemvalortotal: TFloatField
      FieldName = 'valortotal'
    end
    object cdsNFeItemnumeropedido: TIntegerField
      FieldName = 'numeropedido'
    end
    object cdsNFeItemitempedido: TIntegerField
      FieldName = 'itempedido'
    end
    object cdsNFeIteminformacoesadicionais: TWideMemoField
      FieldName = 'informacoesadicionais'
      BlobType = ftWideMemo
    end
  end
  object cdsNFeItemII: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeItemII'
    RemoteServer = dspConnection
    Left = 320
    Top = 424
    object cdsNFeItemIIidnfeitemii: TIntegerField
      FieldName = 'idnfeitemii'
    end
    object cdsNFeItemIIidnfeitem: TIntegerField
      FieldName = 'idnfeitem'
    end
    object cdsNFeItemIIbcvalor: TFloatField
      FieldName = 'bcvalor'
    end
    object cdsNFeItemIIvalordespesasaduaneiras: TFloatField
      FieldName = 'valordespesasaduaneiras'
    end
    object cdsNFeItemIIvalorimposto: TFloatField
      FieldName = 'valorimposto'
    end
    object cdsNFeItemIIvaloriof: TFloatField
      FieldName = 'valoriof'
    end
  end
  object cdsNFeItemImposto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeItemImposto'
    RemoteServer = dspConnection
    Left = 320
    Top = 480
    object cdsNFeItemImpostoidnfeitemimposto: TIntegerField
      FieldName = 'idnfeitemimposto'
    end
    object cdsNFeItemImpostoidnfeitem: TIntegerField
      FieldName = 'idnfeitem'
    end
    object cdsNFeItemImpostoorigemmercadoria: TSmallintField
      FieldName = 'origemmercadoria'
    end
    object cdsNFeItemImpostoicmscst: TSmallintField
      FieldName = 'icmscst'
    end
    object cdsNFeItemImpostocsosn: TSmallintField
      FieldName = 'csosn'
    end
    object cdsNFeItemImpostoicmsmodalidadebc: TSmallintField
      FieldName = 'icmsmodalidadebc'
    end
    object cdsNFeItemImpostoicmsreducaobc: TFloatField
      FieldName = 'icmsreducaobc'
    end
    object cdsNFeItemImpostoicmsbasecalculo: TFloatField
      FieldName = 'icmsbasecalculo'
    end
    object cdsNFeItemImpostoicmsaliquota: TFloatField
      FieldName = 'icmsaliquota'
    end
    object cdsNFeItemImpostoicmsvalor: TFloatField
      FieldName = 'icmsvalor'
    end
    object cdsNFeItemImpostoicmsmotivodesoneracao: TWideStringField
      FieldName = 'icmsmotivodesoneracao'
      FixedChar = True
      Size = 1
    end
    object cdsNFeItemImpostoicmsmodalidadebcst: TSmallintField
      FieldName = 'icmsmodalidadebcst'
    end
    object cdsNFeItemImpostoicmsmvast: TFloatField
      FieldName = 'icmsmvast'
    end
    object cdsNFeItemImpostoicmsreducaobcst: TFloatField
      FieldName = 'icmsreducaobcst'
    end
    object cdsNFeItemImpostoicmsvalorbcst: TFloatField
      FieldName = 'icmsvalorbcst'
    end
    object cdsNFeItemImpostoicmsaliquotast: TFloatField
      FieldName = 'icmsaliquotast'
    end
    object cdsNFeItemImpostoicmsvalorst: TFloatField
      FieldName = 'icmsvalorst'
    end
    object cdsNFeItemImpostoicmsvalorbcstretido: TFloatField
      FieldName = 'icmsvalorbcstretido'
    end
    object cdsNFeItemImpostoicmsvalorstretido: TFloatField
      FieldName = 'icmsvalorstretido'
    end
    object cdsNFeItemImpostoicmsvalorbcstdestino: TFloatField
      FieldName = 'icmsvalorbcstdestino'
    end
    object cdsNFeItemImpostoicmsvalorstdestino: TFloatField
      FieldName = 'icmsvalorstdestino'
    end
    object cdsNFeItemImpostoicmsaliquotacreditosn: TFloatField
      FieldName = 'icmsaliquotacreditosn'
    end
    object cdsNFeItemImpostoicmsvalorcreditosn: TFloatField
      FieldName = 'icmsvalorcreditosn'
    end
    object cdsNFeItemImpostoprecentualbcoperacaopropria: TFloatField
      FieldName = 'precentualbcoperacaopropria'
    end
    object cdsNFeItemImpostoufst: TWideStringField
      FieldName = 'ufst'
      FixedChar = True
      Size = 2
    end
    object cdsNFeItemImpostoipienquadramento: TWideStringField
      FieldName = 'ipienquadramento'
      Size = 5
    end
    object cdsNFeItemImpostoipicnpjprodutor: TWideStringField
      FieldName = 'ipicnpjprodutor'
      Size = 9
    end
    object cdsNFeItemImpostoipicst: TSmallintField
      FieldName = 'ipicst'
    end
    object cdsNFeItemImpostoipivalorbc: TFloatField
      FieldName = 'ipivalorbc'
    end
    object cdsNFeItemImpostoipialiquota: TFloatField
      FieldName = 'ipialiquota'
    end
    object cdsNFeItemImpostoipiquantidadeunidadetributavel: TFloatField
      FieldName = 'ipiquantidadeunidadetributavel'
    end
    object cdsNFeItemImpostoipivalorunidadetributavel: TFloatField
      FieldName = 'ipivalorunidadetributavel'
    end
    object cdsNFeItemImpostoipivalor: TFloatField
      FieldName = 'ipivalor'
    end
    object cdsNFeItemImpostocofinscst: TSmallintField
      FieldName = 'cofinscst'
    end
    object cdsNFeItemImpostocofinsquantidadevendida: TFloatField
      FieldName = 'cofinsquantidadevendida'
    end
    object cdsNFeItemImpostocofinsbc: TFloatField
      FieldName = 'cofinsbc'
    end
    object cdsNFeItemImpostocofinsaliquotapercentual: TFloatField
      FieldName = 'cofinsaliquotapercentual'
    end
    object cdsNFeItemImpostocofinsaliquotavalor: TFloatField
      FieldName = 'cofinsaliquotavalor'
    end
    object cdsNFeItemImpostocofinsvalor: TFloatField
      FieldName = 'cofinsvalor'
    end
    object cdsNFeItemImpostopiscst: TSmallintField
      FieldName = 'piscst'
    end
    object cdsNFeItemImpostopisquantidadevalor: TFloatField
      FieldName = 'pisquantidadevalor'
    end
    object cdsNFeItemImpostopisbc: TFloatField
      FieldName = 'pisbc'
    end
    object cdsNFeItemImpostopisaliquotapercentual: TFloatField
      FieldName = 'pisaliquotapercentual'
    end
    object cdsNFeItemImpostopisaliquotavalor: TFloatField
      FieldName = 'pisaliquotavalor'
    end
    object cdsNFeItemImpostopisvalor: TFloatField
      FieldName = 'pisvalor'
    end
    object cdsNFeItemImpostoissbc: TFloatField
      FieldName = 'issbc'
    end
    object cdsNFeItemImpostoissaliquota: TFloatField
      FieldName = 'issaliquota'
    end
    object cdsNFeItemImpostoissvalor: TFloatField
      FieldName = 'issvalor'
    end
    object cdsNFeItemImpostoissmunicipio: TIntegerField
      FieldName = 'issmunicipio'
    end
    object cdsNFeItemImpostoissitemlistaservico: TIntegerField
      FieldName = 'issitemlistaservico'
    end
    object cdsNFeItemImpostoisstributacao: TSmallintField
      FieldName = 'isstributacao'
    end
  end
  object cdsNFeLocalEntregaRetirada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeLocalEntregaRetirada'
    RemoteServer = dspConnection
    Left = 320
    Top = 536
    object cdsNFeLocalEntregaRetiradaidnfelocalentregaretirada: TIntegerField
      FieldName = 'idnfelocalentregaretirada'
    end
    object cdsNFeLocalEntregaRetiradaidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeLocalEntregaRetiradacpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 9
    end
    object cdsNFeLocalEntregaRetiradalogradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 60
    end
    object cdsNFeLocalEntregaRetiradanumero: TWideStringField
      FieldName = 'numero'
      Size = 60
    end
    object cdsNFeLocalEntregaRetiradacomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 60
    end
    object cdsNFeLocalEntregaRetiradabairro: TWideStringField
      FieldName = 'bairro'
      Size = 60
    end
    object cdsNFeLocalEntregaRetiradatipo: TWideStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
  end
  object cdsNFeNFReferenciada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeNFReferenciada'
    RemoteServer = dspConnection
    Left = 320
    Top = 592
    object cdsNFeNFReferenciadaidnfenfreferenciada: TIntegerField
      FieldName = 'idnfenfreferenciada'
    end
    object cdsNFeNFReferenciadaidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeNFReferenciadaanomes: TWideStringField
      FieldName = 'anomes'
      Size = 4
    end
    object cdsNFeNFReferenciadacnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 9
    end
    object cdsNFeNFReferenciadamodelo: TWideStringField
      FieldName = 'modelo'
      FixedChar = True
      Size = 2
    end
    object cdsNFeNFReferenciadaserie: TWideStringField
      FieldName = 'serie'
      FixedChar = True
      Size = 3
    end
    object cdsNFeNFReferenciadanumeronf: TIntegerField
      FieldName = 'numeronf'
    end
  end
  object cdsNFeTransportadora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeTransportadora'
    RemoteServer = dspConnection
    Left = 464
    Top = 88
    object cdsNFeTransportadoraidnfetransportadora: TIntegerField
      FieldName = 'idnfetransportadora'
    end
    object cdsNFeTransportadoraidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeTransportadoraidestado: TWideStringField
      FieldName = 'idestado'
      FixedChar = True
      Size = 2
    end
    object cdsNFeTransportadoraidcfop: TIntegerField
      FieldName = 'idcfop'
    end
    object cdsNFeTransportadoraidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
    end
    object cdsNFeTransportadoramodalidade: TSmallintField
      FieldName = 'modalidade'
    end
    object cdsNFeTransportadoracpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 9
    end
    object cdsNFeTransportadoranome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object cdsNFeTransportadorainscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Size = 14
    end
    object cdsNFeTransportadoraendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object cdsNFeTransportadoravalorservico: TFloatField
      FieldName = 'valorservico'
    end
    object cdsNFeTransportadoravalorbcretencaoicms: TFloatField
      FieldName = 'valorbcretencaoicms'
    end
    object cdsNFeTransportadoraaliquotaretencaoicms: TFloatField
      FieldName = 'aliquotaretencaoicms'
    end
    object cdsNFeTransportadoravaloricmsretido: TFloatField
      FieldName = 'valoricmsretido'
    end
    object cdsNFeTransportadoravolumequantidade: TSmallintField
      FieldName = 'volumequantidade'
    end
    object cdsNFeTransportadoravolumeespecie: TWideStringField
      FieldName = 'volumeespecie'
      Size = 60
    end
    object cdsNFeTransportadoravolumemarca: TWideStringField
      FieldName = 'volumemarca'
      Size = 60
    end
    object cdsNFeTransportadoravolumenumeracao: TWideStringField
      FieldName = 'volumenumeracao'
      Size = 60
    end
    object cdsNFeTransportadoravolumepesoliquido: TFloatField
      FieldName = 'volumepesoliquido'
    end
    object cdsNFeTransportadoravolumepesobruto: TFloatField
      FieldName = 'volumepesobruto'
    end
  end
  object cdsNFeTransportadoraReboque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeTransportadoraReboque'
    RemoteServer = dspConnection
    Left = 464
    Top = 144
    object cdsNFeTransportadoraReboqueidnfetransportadorareboque: TIntegerField
      FieldName = 'idnfetransportadorareboque'
    end
    object cdsNFeTransportadoraReboqueidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeTransportadoraReboqueidestado: TWideStringField
      FieldName = 'idestado'
      FixedChar = True
      Size = 2
    end
    object cdsNFeTransportadoraReboqueplaca: TWideStringField
      FieldName = 'placa'
      Size = 8
    end
    object cdsNFeTransportadoraReboquerntc: TWideStringField
      FieldName = 'rntc'
    end
  end
  object cdsOrcamentoCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamentoCabecalho'
    RemoteServer = dspConnection
    Left = 392
    Top = 200
    object cdsOrcamentoCabecalhoidorcamentocabecalho: TIntegerField
      FieldName = 'idorcamentocabecalho'
    end
    object cdsOrcamentoCabecalhoidunidadedenegocio: TIntegerField
      FieldName = 'idunidadedenegocio'
    end
    object cdsOrcamentoCabecalhoidlicitacao: TIntegerField
      FieldName = 'idlicitacao'
    end
    object cdsOrcamentoCabecalhoidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsOrcamentoCabecalhodatacadastro: TDateField
      FieldName = 'datacadastro'
    end
    object cdsOrcamentoCabecalhodataentrega: TDateField
      FieldName = 'dataentrega'
    end
    object cdsOrcamentoCabecalhotipofrete: TWideStringField
      FieldName = 'tipofrete'
      FixedChar = True
      Size = 1
    end
    object cdsOrcamentoCabecalhovalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
    end
    object cdsOrcamentoCabecalhovalorfrete: TFloatField
      FieldName = 'valorfrete'
    end
    object cdsOrcamentoCabecalhotaxacomissao: TFloatField
      FieldName = 'taxacomissao'
    end
    object cdsOrcamentoCabecalhovalorcomicao: TFloatField
      FieldName = 'valorcomicao'
    end
    object cdsOrcamentoCabecalhotaxadesconto: TFloatField
      FieldName = 'taxadesconto'
    end
    object cdsOrcamentoCabecalhovalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object cdsOrcamentoCabecalhovalortotal: TFloatField
      FieldName = 'valortotal'
    end
    object cdsOrcamentoCabecalhoobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object cdsOrcamentoCabecalhosituacao: TWideStringField
      FieldName = 'situacao'
      FixedChar = True
      Size = 1
    end
  end
  object cdsOrcamentoItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamentoItem'
    RemoteServer = dspConnection
    Left = 392
    Top = 256
    object cdsOrcamentoItemidorcamentoitem: TIntegerField
      FieldName = 'idorcamentoitem'
    end
    object cdsOrcamentoItemidorcamentocabecalho: TIntegerField
      FieldName = 'idorcamentocabecalho'
    end
    object cdsOrcamentoItemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsOrcamentoItemquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object cdsOrcamentoItemvalorunitario: TFloatField
      FieldName = 'valorunitario'
    end
    object cdsOrcamentoItemvalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
    end
    object cdsOrcamentoItemtaxadesconto: TFloatField
      FieldName = 'taxadesconto'
    end
    object cdsOrcamentoItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object cdsOrcamentoItemvalortotal: TFloatField
      FieldName = 'valortotal'
    end
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor'
    RemoteServer = dspConnection
    Left = 608
    Top = 200
    object cdsSetoridsetor: TIntegerField
      FieldName = 'idsetor'
      Origin = 'idsetor'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSetornome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object cdsSetordescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 250
    end
  end
  object cdsPedidoCabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoCabecalho'
    RemoteServer = dspConnection
    Left = 392
    Top = 368
    object cdsPedidoCabecalhoidpedidocabecalho: TIntegerField
      FieldName = 'idpedidocabecalho'
    end
    object cdsPedidoCabecalhoidunidadedenegocio: TIntegerField
      FieldName = 'idunidadedenegocio'
    end
    object cdsPedidoCabecalhoidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPedidoCabecalhoidorcamentocabecalho: TIntegerField
      FieldName = 'idorcamentocabecalho'
    end
    object cdsPedidoCabecalhodatalancamento: TDateField
      FieldName = 'datalancamento'
    end
    object cdsPedidoCabecalhodataprevisaoentrega: TDateField
      FieldName = 'dataprevisaoentrega'
    end
    object cdsPedidoCabecalhovalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
    end
    object cdsPedidoCabecalhotaxacomicao: TFloatField
      FieldName = 'taxacomicao'
    end
    object cdsPedidoCabecalhovalorcomicao: TFloatField
      FieldName = 'valorcomicao'
    end
    object cdsPedidoCabecalhotaxadesconto: TFloatField
      FieldName = 'taxadesconto'
    end
    object cdsPedidoCabecalhovalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object cdsPedidoCabecalhovalorfrete: TFloatField
      FieldName = 'valorfrete'
    end
    object cdsPedidoCabecalhotipofrete: TFloatField
      FieldName = 'tipofrete'
    end
    object cdsPedidoCabecalhovalorseguro: TFloatField
      FieldName = 'valorseguro'
    end
    object cdsPedidoCabecalhoobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object cdsPedidoCabecalhosituacao: TWideStringField
      FieldName = 'situacao'
      FixedChar = True
      Size = 1
    end
  end
  object cdsPedidoItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoItem'
    RemoteServer = dspConnection
    Left = 392
    Top = 424
    object cdsPedidoItemidpedidoitem: TIntegerField
      FieldName = 'idpedidoitem'
    end
    object cdsPedidoItemidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsPedidoItemidpedidocabecalho: TIntegerField
      FieldName = 'idpedidocabecalho'
    end
    object cdsPedidoItemquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object cdsPedidoItemvalorunitario: TFloatField
      FieldName = 'valorunitario'
    end
    object cdsPedidoItemvalorsubtotal: TFloatField
      FieldName = 'valorsubtotal'
    end
    object cdsPedidoItemtaxadesconto: TFloatField
      FieldName = 'taxadesconto'
    end
    object cdsPedidoItemvalordesconto: TFloatField
      FieldName = 'valordesconto'
    end
    object cdsPedidoItemvalortotal: TFloatField
      FieldName = 'valortotal'
    end
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    RemoteServer = dspConnection
    Left = 392
    Top = 480
    object cdsPessoaidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPessoatipo: TWideStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaemail: TWideStringField
      FieldName = 'email'
      Size = 250
    end
    object cdsPessoasite: TWideStringField
      FieldName = 'site'
      Size = 250
    end
    object cdsPessoacliente2: TBooleanField
      FieldName = 'cliente'
    end
    object cdsPessoafornecedor2: TBooleanField
      FieldName = 'fornecedor'
    end
    object cdsPessoacolaborador2: TBooleanField
      FieldName = 'colaborador'
    end
    object cdsPessoacontador2: TBooleanField
      FieldName = 'contador'
    end
    object cdsPessoatransportadora2: TBooleanField
      FieldName = 'transportadora'
    end
    object cdsPessoavendedor2: TBooleanField
      FieldName = 'vendedor'
    end
    object cdsPessoacpf: TWideStringField
      FieldName = 'cpf'
      Size = 14
    end
    object cdsPessoacnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 9
    end
    object cdsPessoarg: TWideStringField
      FieldName = 'rg'
    end
    object cdsPessoadatanascimento: TDateField
      FieldName = 'datanascimento'
    end
    object cdsPessoasexo: TWideStringField
      FieldName = 'sexo'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaestadocivil: TWideStringField
      FieldName = 'estadocivil'
    end
    object cdsPessoacnhnumero: TWideStringField
      FieldName = 'cnhnumero'
    end
    object cdsPessoacnhcategoria: TWideStringField
      FieldName = 'cnhcategoria'
      FixedChar = True
      Size = 2
    end
    object cdsPessoacnhvencimento: TDateField
      FieldName = 'cnhvencimento'
    end
    object cdsPessoanomemae: TWideStringField
      FieldName = 'nomemae'
      Size = 60
    end
    object cdsPessoanomepai: TWideStringField
      FieldName = 'nomepai'
      Size = 60
    end
    object cdsPessoanomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Size = 60
    end
    object cdsPessoainscricaomunicipal: TWideStringField
      FieldName = 'inscricaomunicipal'
      Size = 30
    end
    object cdsPessoainscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Size = 30
    end
    object cdsPessoatiporegime: TWideStringField
      FieldName = 'tiporegime'
      FixedChar = True
      Size = 1
    end
    object cdsPessoacrt: TWideStringField
      FieldName = 'crt'
      FixedChar = True
      Size = 1
    end
    object cdsPessoasuframa: TWideStringField
      FieldName = 'suframa'
      Size = 9
    end
  end
  object cdsPessoaCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaCliente'
    RemoteServer = dspConnection
    Left = 392
    Top = 536
    object cdsPessoaClienteidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPessoaClientedatacadastro: TDateField
      FieldName = 'datacadastro'
    end
    object cdsPessoaClienteobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object cdsPessoaClientegerafinanceiro: TBooleanField
      FieldName = 'gerafinanceiro'
    end
    object cdsPessoaClientelimitecredito: TFloatField
      FieldName = 'limitecredito'
    end
    object cdsPessoaClienteativo: TBooleanField
      FieldName = 'ativo'
    end
    object cdsPessoaClienteestadocivil: TWideStringField
      FieldName = 'estadocivil'
    end
  end
  object cdsPessoaColaborador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaColaborador'
    RemoteServer = dspConnection
    Left = 392
    Top = 592
    object cdsPessoaColaboradoridbanco: TWideStringField
      FieldName = 'idbanco'
      FixedChar = True
      Size = 4
    end
    object cdsPessoaColaboradoridsetor: TIntegerField
      FieldName = 'idsetor'
    end
    object cdsPessoaColaboradoridcargo: TIntegerField
      FieldName = 'idcargo'
    end
    object cdsPessoaColaboradoridempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsPessoaColaboradoridpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPessoaColaboradormatricula: TWideStringField
      FieldName = 'matricula'
      Size = 10
    end
    object cdsPessoaColaboradorfoto3x4: TWideMemoField
      FieldName = 'foto3x4'
      BlobType = ftWideMemo
    end
    object cdsPessoaColaboradordatacadastro: TDateField
      FieldName = 'datacadastro'
    end
    object cdsPessoaColaboradordataadmissao: TDateField
      FieldName = 'dataadmissao'
    end
    object cdsPessoaColaboradorfgtsconta: TSmallintField
      FieldName = 'fgtsconta'
    end
    object cdsPessoaColaboradorformapagamento: TWideStringField
      FieldName = 'formapagamento'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaColaboradorexamedata: TDateField
      FieldName = 'examedata'
    end
    object cdsPessoaColaboradorexamedataultimo: TDateField
      FieldName = 'examedataultimo'
    end
    object cdsPessoaColaboradorctpsnumero: TWideStringField
      FieldName = 'ctpsnumero'
      Size = 10
    end
    object cdsPessoaColaboradorctpsserie: TWideStringField
      FieldName = 'ctpsserie'
      Size = 10
    end
    object cdsPessoaColaboradorctpsdataexpedicao: TDateField
      FieldName = 'ctpsdataexpedicao'
    end
    object cdsPessoaColaboradorctpsuf: TWideStringField
      FieldName = 'ctpsuf'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaColaboradorobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object cdsPessoaColaboradordatademissao: TDateField
      FieldName = 'datademissao'
    end
  end
  object cdsPessoaContador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaContador'
    RemoteServer = dspConnection
    Left = 536
    Top = 88
    object cdsPessoaContadoridempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsPessoaContadoridpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPessoaContadornome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object cdsPessoaContadorcpf: TWideStringField
      FieldName = 'cpf'
      Size = 14
    end
    object cdsPessoaContadorcrc: TWideStringField
      FieldName = 'crc'
      Size = 8
    end
    object cdsPessoaContadoremail: TWideStringField
      FieldName = 'email'
      Size = 150
    end
  end
  object cdsPessoaFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaFornecedor'
    RemoteServer = dspConnection
    Left = 536
    Top = 144
    object cdsPessoaFornecedoridpessoafornecedor: TIntegerField
      FieldName = 'idpessoafornecedor'
    end
    object cdsPessoaFornecedoridpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPessoaFornecedordesde: TDateField
      FieldName = 'desde'
    end
    object cdsPessoaFornecedoroptandesimples: TBooleanField
      FieldName = 'optandesimples'
    end
    object cdsPessoaFornecedorlocalizacao: TBooleanField
      FieldName = 'localizacao'
    end
    object cdsPessoaFornecedordatacadastro: TDateField
      FieldName = 'datacadastro'
    end
    object cdsPessoaFornecedorsofreretencao: TBooleanField
      FieldName = 'sofreretencao'
    end
    object cdsPessoaFornecedorobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
    object cdsPessoaFornecedorprazomedioentrega: TIntegerField
      FieldName = 'prazomedioentrega'
    end
    object cdsPessoaFornecedorgerafaturamento: TBooleanField
      FieldName = 'gerafaturamento'
    end
    object cdsPessoaFornecedornumerodiasprimeirovencimento: TIntegerField
      FieldName = 'numerodiasprimeirovencimento'
    end
    object cdsPessoaFornecedornumerodiasintervalo: TIntegerField
      FieldName = 'numerodiasintervalo'
    end
    object cdsPessoaFornecedorquantidadeparcelas: TIntegerField
      FieldName = 'quantidadeparcelas'
    end
  end
  object cdsPessoaRepresentante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaRepresentante'
    RemoteServer = dspConnection
    Left = 464
    Top = 200
    object cdsPessoaRepresentanteidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsPessoaRepresentanteidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPessoaRepresentantecomissao: TFloatField
      FieldName = 'comissao'
    end
    object cdsPessoaRepresentantemetavendas: TFloatField
      FieldName = 'metavendas'
    end
  end
  object cdsPessoaTransportadora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaTransportadora'
    RemoteServer = dspConnection
    Left = 464
    Top = 256
    object cdsPessoaTransportadoraidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPessoaTransportadoradatacadastro: TDateField
      FieldName = 'datacadastro'
    end
    object cdsPessoaTransportadoraobservacao: TWideMemoField
      FieldName = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object cdsPessoaVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaVendedor'
    RemoteServer = dspConnection
    Left = 464
    Top = 312
    object cdsPessoaVendedoridempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsPessoaVendedoridpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsPessoaVendedorcomissao: TFloatField
      FieldName = 'comissao'
    end
    object cdsPessoaVendedormetavendas: TFloatField
      FieldName = 'metavendas'
    end
  end
  object cdsPlanoContasFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanoContasFinanceiro'
    RemoteServer = dspConnection
    Left = 464
    Top = 368
    object cdsPlanoContasFinanceiroidplanocontasfinanceiro: TIntegerField
      FieldName = 'idplanocontasfinanceiro'
    end
    object cdsPlanoContasFinanceirocodigo: TWideStringField
      FieldName = 'codigo'
      Size = 7
    end
    object cdsPlanoContasFinanceirodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 60
    end
    object cdsPlanoContasFinanceirotipo: TWideStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object cdsPlanoContasFinanceiroativo: TBooleanField
      FieldName = 'ativo'
    end
  end
  object cdsPlanoContasGerencial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanoContasGerencial'
    RemoteServer = dspConnection
    Left = 464
    Top = 424
    object cdsPlanoContasGerencialidplanocontasgerencial: TIntegerField
      FieldName = 'idplanocontasgerencial'
    end
    object cdsPlanoContasGerencialcodigo: TWideStringField
      FieldName = 'codigo'
      Size = 18
    end
    object cdsPlanoContasGerencialdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 60
    end
    object cdsPlanoContasGerencialtipo: TWideStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object cdsPlanoContasGerencialnivel: TSmallintField
      FieldName = 'nivel'
    end
    object cdsPlanoContasGerencialativo: TBooleanField
      FieldName = 'ativo'
    end
  end
  object cdsPortador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPortador'
    RemoteServer = dspConnection
    Left = 464
    Top = 480
    object cdsPortadoridportador: TIntegerField
      FieldName = 'idportador'
    end
    object cdsPortadoridbanco: TWideStringField
      FieldName = 'idbanco'
      FixedChar = True
      Size = 4
    end
    object cdsPortadordescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object cdsPortadorHistorico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPortadorHistorico'
    RemoteServer = dspConnection
    Left = 464
    Top = 536
    object cdsPortadorHistoricoidportadorhistorico: TIntegerField
      FieldName = 'idportadorhistorico'
    end
    object cdsPortadorHistoricoidportador: TIntegerField
      FieldName = 'idportador'
    end
    object cdsPortadorHistoricodatamovimento: TDateField
      FieldName = 'datamovimento'
    end
    object cdsPortadorHistoricosaldoinicial: TFloatField
      FieldName = 'saldoinicial'
    end
    object cdsPortadorHistoricoentrada: TFloatField
      FieldName = 'entrada'
    end
    object cdsPortadorHistoricosaida: TFloatField
      FieldName = 'saida'
    end
    object cdsPortadorHistoricosaldofinal: TFloatField
      FieldName = 'saldofinal'
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    RemoteServer = dspConnection
    Left = 464
    Top = 592
    object cdsProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsProdutoidgrupoprodutos: TIntegerField
      FieldName = 'idgrupoprodutos'
    end
    object cdsProdutoidsubgrupoprodutos: TIntegerField
      FieldName = 'idsubgrupoprodutos'
    end
    object cdsProdutoidncm: TIntegerField
      FieldName = 'idncm'
    end
    object cdsProdutoidprodutounidade: TIntegerField
      FieldName = 'idprodutounidade'
    end
    object cdsProdutocodigointerno: TWideStringField
      FieldName = 'codigointerno'
      Size = 60
    end
    object cdsProdutogetin: TWideStringField
      FieldName = 'getin'
      FixedChar = True
      Size = 14
    end
    object cdsProdutonome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdsProdutodescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
    object cdsProdutodescricaopdv: TWideStringField
      FieldName = 'descricaopdv'
      Size = 30
    end
    object cdsProdutovalorcompra: TFloatField
      FieldName = 'valorcompra'
    end
    object cdsProdutovalorvenda: TFloatField
      FieldName = 'valorvenda'
    end
    object cdsProdutoprecovendaminimo: TFloatField
      FieldName = 'precovendaminimo'
    end
    object cdsProdutoprecosugerido: TFloatField
      FieldName = 'precosugerido'
    end
    object cdsProdutocustomedioliquido: TFloatField
      FieldName = 'customedioliquido'
    end
    object cdsProdutoprecolucrozero: TFloatField
      FieldName = 'precolucrozero'
    end
    object cdsProdutoprecolucrominimo: TFloatField
      FieldName = 'precolucrominimo'
    end
    object cdsProdutoprecolucromaximo: TFloatField
      FieldName = 'precolucromaximo'
    end
    object cdsProdutomarkup: TFloatField
      FieldName = 'markup'
    end
    object cdsProdutoquantidadeestoque: TFloatField
      FieldName = 'quantidadeestoque'
    end
    object cdsProdutoestoqueminimo: TFloatField
      FieldName = 'estoqueminimo'
    end
    object cdsProdutoestoquemaximo: TFloatField
      FieldName = 'estoquemaximo'
    end
    object cdsProdutoestoqueideal: TFloatField
      FieldName = 'estoqueideal'
    end
    object cdsProdutodatacadastro: TDateField
      FieldName = 'datacadastro'
    end
    object cdsProdutofotoproduto: TWideMemoField
      FieldName = 'fotoproduto'
      BlobType = ftWideMemo
    end
    object cdsProdutocodigobalanca: TIntegerField
      FieldName = 'codigobalanca'
    end
    object cdsProdutotipo: TWideStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoclasseabc: TWideStringField
      FieldName = 'classeabc'
      FixedChar = True
      Size = 1
    end
    object cdsProdutocodigolst: TWideStringField
      FieldName = 'codigolst'
      FixedChar = True
      Size = 4
    end
    object cdsProdutopeso: TFloatField
      FieldName = 'peso'
    end
    object cdsProdutopercentualcomissao: TFloatField
      FieldName = 'percentualcomissao'
    end
    object cdsProdutoinativo: TWideStringField
      FieldName = 'inativo'
      FixedChar = True
      Size = 1
    end
  end
  object cdsProdutoFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoFornecedor'
    RemoteServer = dspConnection
    Left = 608
    Top = 88
    object cdsProdutoFornecedoridprodutofornecedor: TIntegerField
      FieldName = 'idprodutofornecedor'
    end
    object cdsProdutoFornecedorcodigoprodutofornecedor: TWideStringField
      FieldName = 'codigoprodutofornecedor'
    end
    object cdsProdutoFornecedoridproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsProdutoFornecedordataultimacompra: TDateField
      FieldName = 'dataultimacompra'
    end
    object cdsProdutoFornecedorprecoultimacompra: TFloatField
      FieldName = 'precoultimacompra'
    end
  end
  object cdsProdutoGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoGrupo'
    RemoteServer = dspConnection
    Left = 608
    Top = 144
    object cdsProdutoGrupoidgrupoprodutos: TIntegerField
      FieldName = 'idgrupoprodutos'
    end
    object cdsProdutoGruponome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdsProdutoGrupodescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
  end
  object dspProdutoPromocao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoPromocao'
    RemoteServer = dspConnection
    Left = 536
    Top = 200
    object dspProdutoPromocaoidprodutopromocao: TIntegerField
      FieldName = 'idprodutopromocao'
    end
    object dspProdutoPromocaoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object dspProdutoPromocaodatainicio: TDateField
      FieldName = 'datainicio'
    end
    object dspProdutoPromocaodatafim: TDateField
      FieldName = 'datafim'
    end
    object dspProdutoPromocaoquantidadeempromocao: TFMTBCDField
      FieldName = 'quantidadeempromocao'
      Precision = 18
      Size = 6
    end
    object dspProdutoPromocaoquantidademaximacliente: TFMTBCDField
      FieldName = 'quantidademaximacliente'
      Precision = 18
      Size = 6
    end
    object dspProdutoPromocaovalor: TFMTBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 6
    end
  end
  object cdsProdutoSubGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoSubGrupo'
    RemoteServer = dspConnection
    Left = 536
    Top = 256
    object cdsProdutoSubGrupoidsubgrupoprodutos: TIntegerField
      FieldName = 'idsubgrupoprodutos'
    end
    object cdsProdutoSubGrupoidgrupoprodutos: TIntegerField
      FieldName = 'idgrupoprodutos'
    end
    object cdsProdutoSubGruponome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdsProdutoSubGrupodescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
  end
  object cdsProdutoTabelaPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoTabelaPreco'
    RemoteServer = dspConnection
    Left = 536
    Top = 312
    object cdsProdutoTabelaPrecoidprodutotabelapreco: TIntegerField
      FieldName = 'idprodutotabelapreco'
    end
    object cdsProdutoTabelaPrecoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsProdutoTabelaPreconome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdsProdutoTabelaPrecopreco: TFloatField
      FieldName = 'preco'
    end
  end
  object cdsProdutoUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoUnidade'
    RemoteServer = dspConnection
    Left = 536
    Top = 368
    object cdsProdutoUnidadeidprodutounidade: TIntegerField
      FieldName = 'idprodutounidade'
    end
    object cdsProdutoUnidadesigla: TWideStringField
      FieldName = 'sigla'
      Size = 10
    end
    object cdsProdutoUnidadedescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
  end
  object cdsProdutoUnidadeConversao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoUnidadeConversao'
    RemoteServer = dspConnection
    Left = 536
    Top = 424
    object cdsProdutoUnidadeConversaoidprodutounidadeconversao: TIntegerField
      FieldName = 'idprodutounidadeconversao'
    end
    object cdsProdutoUnidadeConversaoidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object cdsProdutoUnidadeConversaoidprodutounidade: TIntegerField
      FieldName = 'idprodutounidade'
    end
    object cdsProdutoUnidadeConversaosigla: TWideStringField
      FieldName = 'sigla'
      Size = 10
    end
    object cdsProdutoUnidadeConversaodescricao: TWideMemoField
      FieldName = 'descricao'
      BlobType = ftWideMemo
    end
    object cdsProdutoUnidadeConversaofatorconversao: TFloatField
      FieldName = 'fatorconversao'
    end
  end
  object cdsRegraFiscal: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegraFiscal'
    RemoteServer = dspConnection
    Left = 536
    Top = 480
    object cdsRegraFiscalidregrafiscal: TIntegerField
      FieldName = 'idregrafiscal'
      Origin = 'idregrafiscal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRegraFiscalidpessoa: TIntegerField
      FieldName = 'idpessoa'
      Origin = 'idpessoa'
    end
    object cdsRegraFiscalidregrafiscalobservacao: TIntegerField
      FieldName = 'idregrafiscalobservacao'
      Origin = 'idregrafiscalobservacao'
    end
    object cdsRegraFiscalidcstpis: TIntegerField
      FieldName = 'idcstpis'
      Origin = 'idcstpis'
    end
    object cdsRegraFiscalidcstipi: TIntegerField
      FieldName = 'idcstipi'
      Origin = 'idcstipi'
    end
    object cdsRegraFiscalidtipooperacao: TIntegerField
      FieldName = 'idtipooperacao'
      Origin = 'idtipooperacao'
    end
    object cdsRegraFiscalidpais: TIntegerField
      FieldName = 'idpais'
      Origin = 'idpais'
    end
    object cdsRegraFiscalidmunicipio: TIntegerField
      FieldName = 'idmunicipio'
      Origin = 'idmunicipio'
    end
    object cdsRegraFiscalidestado: TWideStringField
      FieldName = 'idestado'
      Origin = 'idestado'
      FixedChar = True
      Size = 2
    end
    object cdsRegraFiscalidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
      Origin = 'idunidadenegocio'
    end
    object cdsRegraFiscalidcfop: TIntegerField
      FieldName = 'idcfop'
      Origin = 'idcfop'
    end
    object cdsRegraFiscalidncm: TIntegerField
      FieldName = 'idncm'
      Origin = 'idncm'
    end
    object cdsRegraFiscalidcstcofins: TIntegerField
      FieldName = 'idcstcofins'
      Origin = 'idcstcofins'
    end
    object cdsRegraFiscalreducaoipi: TFloatField
      FieldName = 'reducaoipi'
      Origin = 'reducaoipi'
    end
    object cdsRegraFiscalipi: TSmallintField
      FieldName = 'ipi'
      Origin = 'ipi'
    end
    object cdsRegraFiscalreducaoicms: TFloatField
      FieldName = 'reducaoicms'
      Origin = 'reducaoicms'
    end
    object cdsRegraFiscalicms: TSmallintField
      FieldName = 'icms'
      Origin = 'icms'
    end
    object cdsRegraFiscalpis: TFloatField
      FieldName = 'pis'
      Origin = 'pis'
    end
    object cdsRegraFiscalretencaopis: TFloatField
      FieldName = 'retencaopis'
      Origin = 'retencaopis'
    end
    object cdsRegraFiscalcofins: TFloatField
      FieldName = 'cofins'
      Origin = 'cofins'
    end
    object cdsRegraFiscalretencaocofins: TIntegerField
      FieldName = 'retencaocofins'
      Origin = 'retencaocofins'
    end
    object cdsRegraFiscalativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
    end
    object cdsRegraFiscalmva: TFloatField
      FieldName = 'mva'
      Origin = 'mva'
    end
    object cdsRegraFiscalst: TFloatField
      FieldName = 'st'
      Origin = 'st'
    end
    object cdsRegraFiscalreducaost: TFloatField
      FieldName = 'reducaost'
      Origin = 'reducaost'
    end
    object cdsRegraFiscaliss: TFloatField
      FieldName = 'iss'
      Origin = 'iss'
    end
    object cdsRegraFiscalreducaoiss: TFloatField
      FieldName = 'reducaoiss'
      Origin = 'reducaoiss'
    end
    object cdsRegraFiscalcsosn: TSmallintField
      FieldName = 'csosn'
      Origin = 'csosn'
    end
    object cdsRegraFiscalcssl: TFloatField
      FieldName = 'cssl'
      Origin = 'cssl'
    end
    object cdsRegraFiscalinss: TFloatField
      FieldName = 'inss'
      Origin = 'inss'
    end
    object cdsRegraFiscalir: TSmallintField
      FieldName = 'ir'
      Origin = 'ir'
    end
    object cdsRegraFiscalfunrural: TFloatField
      FieldName = 'funrural'
      Origin = 'funrural'
    end
    object cdsRegraFiscalie: TFloatField
      FieldName = 'ie'
      Origin = 'ie'
    end
    object cdsRegraFiscalii: TFloatField
      FieldName = 'ii'
      Origin = 'ii'
    end
    object cdsRegraFiscalcfopdevolucao: TSmallintField
      FieldName = 'cfopdevolucao'
      Origin = 'cfopdevolucao'
    end
    object cdsRegraFiscalpessoanome: TWideStringField
      FieldName = 'pessoanome'
      Origin = 'pessoanome'
      Size = 250
    end
    object cdsRegraFiscalcstpisdescricao: TWideStringField
      FieldName = 'cstpisdescricao'
      Origin = 'cstpisdescricao'
      Size = 250
    end
    object cdsRegraFiscalcstipidescricao: TWideStringField
      FieldName = 'cstipidescricao'
      Origin = 'cstipidescricao'
      Size = 250
    end
    object cdsRegraFiscaltipooperacaodescricao: TWideStringField
      FieldName = 'tipooperacaodescricao'
      Origin = 'tipooperacaodescricao'
    end
    object cdsRegraFiscalpaisnome: TWideStringField
      FieldName = 'paisnome'
      Origin = 'paisnome'
      Size = 100
    end
    object cdsRegraFiscalmunicipionome: TWideStringField
      FieldName = 'municipionome'
      Origin = 'municipionome'
      Size = 150
    end
    object cdsRegraFiscalnomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Origin = 'nomefantasia'
      Size = 60
    end
    object cdsRegraFiscalcfopdescricao: TWideStringField
      FieldName = 'cfopdescricao'
      Origin = 'cfopdescricao'
      Size = 250
    end
    object cdsRegraFiscalncmdescricao: TWideStringField
      FieldName = 'ncmdescricao'
      Origin = 'ncmdescricao'
      Size = 50
    end
    object cdsRegraFiscalcstcofinsdescricao: TWideStringField
      FieldName = 'cstcofinsdescricao'
      Origin = 'cstcofinsdescricao'
      Size = 250
    end
  end
  object cdsRegraFiscalObservacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegraFiscalObservacao'
    RemoteServer = dspConnection
    Left = 536
    Top = 536
    object cdsRegraFiscalObservacaoidregrafiscalobservacao: TIntegerField
      FieldName = 'idregrafiscalobservacao'
      Origin = 'idregrafiscalobservacao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRegraFiscalObservacaoobservacao: TWideMemoField
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
  end
  object cdsSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSerie'
    RemoteServer = dspConnection
    Left = 536
    Top = 592
    object cdsSerieidserie: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'idserie'
    end
    object cdsSeriedescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 50
    end
    object cdsSerienumeracao: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Numera'#231#227'o Atual'
      FieldName = 'numeracao'
    end
  end
  object cdsTelefone: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTelefone'
    RemoteServer = dspConnection
    Left = 608
    Top = 256
    object cdsTelefoneidtelefone: TIntegerField
      FieldName = 'idtelefone'
    end
    object cdsTelefoneidpessoa: TIntegerField
      FieldName = 'idpessoa'
    end
    object cdsTelefoneidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
    end
    object cdsTelefoneidtipotelefone: TIntegerField
      FieldName = 'idtipotelefone'
    end
    object cdsTelefonenumerotelefone: TWideStringField
      FieldName = 'numerotelefone'
      Size = 15
    end
  end
  object cdsTipoOperacao: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'dspTipoOperacao'
    RemoteServer = dspConnection
    Left = 608
    Top = 312
    object cdsTipoOperacaoidtipooperacao: TIntegerField
      FieldName = 'idtipooperacao'
      Origin = 'idtipooperacao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTipoOperacaodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
    end
  end
  object cdsTipoTelefone: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoTelefone'
    RemoteServer = dspConnection
    Left = 608
    Top = 368
    object cdsTipoTelefoneidtipotelefone: TIntegerField
      FieldName = 'idtipotelefone'
      Origin = 'idtipotelefone'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTipoTelefonedescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
  end
  object cdsUnidadeNegocio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidadeNegocio'
    RemoteServer = dspConnection
    Left = 608
    Top = 424
    object cdsUnidadeNegocioidunidadenegocio: TIntegerField
      FieldName = 'idunidadenegocio'
    end
    object cdsUnidadeNegocioidcnae: TIntegerField
      FieldName = 'idcnae'
    end
    object cdsUnidadeNegocioidempresa: TIntegerField
      FieldName = 'idempresa'
    end
    object cdsUnidadeNegociocnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 9
    end
    object cdsUnidadeNegocionomefantasia: TWideStringField
      FieldName = 'nomefantasia'
      Size = 60
    end
    object cdsUnidadeNegociocnaedenominacao: TWideMemoField
      FieldName = 'cnaedenominacao'
      BlobType = ftWideMemo
    end
    object cdsUnidadeNegociorazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Size = 60
    end
  end
  object cdsNFeProdutorRuralReferenciada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeProdutorRuralReferenciada'
    RemoteServer = dspConnection
    Left = 392
    Top = 88
    object cdsNFeProdutorRuralReferenciadaidnfeprodutorruralreferenciada: TIntegerField
      FieldName = 'idnfeprodutorruralreferenciada'
    end
    object cdsNFeProdutorRuralReferenciadaidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object cdsNFeProdutorRuralReferenciadaanomes: TWideStringField
      FieldName = 'anomes'
      Size = 4
    end
    object cdsNFeProdutorRuralReferenciadacnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 9
    end
    object cdsNFeProdutorRuralReferenciadacpf: TWideStringField
      FieldName = 'cpf'
      Size = 14
    end
    object cdsNFeProdutorRuralReferenciadainscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
      Size = 14
    end
    object cdsNFeProdutorRuralReferenciadamodelo: TWideStringField
      FieldName = 'modelo'
      FixedChar = True
      Size = 2
    end
    object cdsNFeProdutorRuralReferenciadaserie: TWideStringField
      FieldName = 'serie'
      FixedChar = True
      Size = 3
    end
    object cdsNFeProdutorRuralReferenciadanumeronf: TIntegerField
      FieldName = 'numeronf'
    end
  end
  object dspNFeReferenciada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFeReferenciada'
    RemoteServer = dspConnection
    Left = 392
    Top = 144
    object dspNFeReferenciadaidnfereferenciada: TIntegerField
      FieldName = 'idnfereferenciada'
    end
    object dspNFeReferenciadaidnfecabecalho: TIntegerField
      FieldName = 'idnfecabecalho'
    end
    object dspNFeReferenciadachaveacesso: TWideStringField
      FieldName = 'chaveacesso'
      Size = 44
    end
  end
end
