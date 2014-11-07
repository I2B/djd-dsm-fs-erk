object DM: TDM
  OldCreateOrder = False
  Height = 271
  Width = 415
  object conServer: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'Port=211'
      'HostName=127.0.0.1'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/')
    Connected = True
    Left = 40
    Top = 40
  end
  object dspConnection: TDSProviderConnection
    ServerClassName = 'TServerMethods'
    Connected = True
    SQLConnection = conServer
    Left = 128
    Top = 40
  end
  object cdsPais: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPais'
    RemoteServer = dspConnection
    Left = 208
    Top = 40
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
end
