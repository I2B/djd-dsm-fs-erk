object DMNFC: TDMNFC
  OldCreateOrder = False
  Height = 493
  Width = 766
  object conServer: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Port=211'
      'HostName=127.0.0.1'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      'Filters={}'
      'DSAuthenticationUser=i2badm'
      'DSAuthenticationPassword=backdoor'
      '=')
    Left = 408
    Top = 24
  end
  object dspConnection: TDSProviderConnection
    ServerClassName = 'TServerMethods'
    SQLConnection = conServer
    Left = 496
    Top = 24
  end
end
