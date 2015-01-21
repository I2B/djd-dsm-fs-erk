object ServerContainer: TServerContainer
  OldCreateOrder = False
  DisplayName = 'i2bServer'
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 271
  Width = 415
  object DSServer: TDSServer
    OnConnect = DSServerConnect
    AutoStart = False
    Left = 96
    Top = 11
  end
  object DSTCPServerTransport: TDSTCPServerTransport
    Server = DSServer
    Filters = <>
    AuthenticationManager = DSAuthenticationManager
    Left = 96
    Top = 73
  end
  object DSAuthenticationManager: TDSAuthenticationManager
    OnUserAuthenticate = DSAuthenticationManagerUserAuthenticate
    OnUserAuthorize = DSAuthenticationManagerUserAuthorize
    Roles = <>
    Left = 96
    Top = 197
  end
  object DSServerClass: TDSServerClass
    OnGetClass = DSServerClassGetClass
    Server = DSServer
    Left = 200
    Top = 11
  end
  object DSHTTPServiceProxyDispatcher: TDSHTTPServiceProxyDispatcher
    WebFileExtensions = <
      item
        MimeType = 'application/x-zip-compressed'
        Extensions = 'zip'
      end>
    WebDirectories = <
      item
        DirectoryAction = dirInclude
        DirectoryMask = '\proxy\*'
      end
      item
        DirectoryAction = dirExclude
        DirectoryMask = '\proxy\*\*'
      end>
    DSProxyGenerator = DSProxyGenerator
    Left = 312
    Top = 160
  end
  object DSProxyGenerator: TDSProxyGenerator
    MetaDataProvider = DSServerMetaDataProvider
    Left = 320
    Top = 96
  end
  object DSServerMetaDataProvider: TDSServerMetaDataProvider
    Server = DSServer
    Left = 320
    Top = 40
  end
  object qryLogin: TFDQuery
    Connection = ServerMethods.conexao
    SQL.Strings = (
      'select idpessoa from pessoacolaborador'
      'where loginusuario = :usuario'
      'and loginsenha = :senha')
    Left = 184
    Top = 144
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end>
  end
end
