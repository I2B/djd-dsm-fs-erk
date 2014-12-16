unit unI2BBD;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Datasnap.DBClient,
  Datasnap.DSConnect, Data.DB, Data.SqlExpr, Data.FMTBcd;

function i2bGetClient(SQL: String; ServidorRemoto: TCustomRemoteServer): TClientDataSet;

implementation

function i2bGetClient(SQL: String; ServidorRemoto: TCustomRemoteServer): TClientDataSet;
var
  SMget : TSqlServerMethod;
  cds : TClientDataSet;
  cdsRet : TClientDataSet;
begin
  try
    SMget := TSqlServerMethod.Create((ServidorRemoto as TDSProviderConnection).SQLConnection);
    SMget.SQLConnection := (ServidorRemoto as TDSProviderConnection).SQLConnection;
    SMget.ServerMethodName := 'TServerMethods.getClient';
    SMget.Params[0].AsString := SQL;
    SMget.ExecuteMethod;

    cds := TClientDataSet.Create((ServidorRemoto as TDSProviderConnection));
    cds.RemoteServer := ServidorRemoto;
    cds.ProviderName := 'dspGetClient';
    cds.Open;

    cdsRet := TClientDataSet.Create(nil);
    cdsRet.Data := cds.Data;

    result := cdsRet;
  finally
    try
      cds.Close;
    except
    end;

    try
      FreeAndNil(cds);
    except
    end;
  end;
end;

end.
