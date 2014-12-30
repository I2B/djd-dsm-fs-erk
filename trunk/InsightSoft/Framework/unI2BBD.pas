unit unI2BBD;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Datasnap.DBClient,
  Datasnap.DSConnect, Data.DB, Data.SqlExpr, Data.FMTBcd;

function i2bGetClient(SQL: String; ServidorRemoto: TCustomRemoteServer): TClientDataSet;

function i2bExecutaSQL(SQL: String; ServidorRemoto: TCustomRemoteServer):Boolean; overload;

function i2bExecutaSQL(SQL: String; ServidorRemoto: TCustomRemoteServer; var Retorno: String):Boolean; overload;

function i2bGetValor(Tabela, CampoComparacao, DadoComparacao, CampoRetorno: String; ServidorRemoto: TCustomRemoteServer ): String;

function i2bGetValores(Tabela, CampoComparacao, DadoComparacao, CamposRetorno: String; ServidorRemoto: TCustomRemoteServer ): TStringList;

implementation

uses unI2BString;

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

function i2bExecutaSQL(SQL: String; ServidorRemoto: TCustomRemoteServer):Boolean;
var
  SM : TSqlServerMethod;
begin
  try
    SM := TSqlServerMethod.Create((ServidorRemoto as TDSProviderConnection).SQLConnection);
    SM.SQLConnection := (ServidorRemoto as TDSProviderConnection).SQLConnection;
    SM.ServerMethodName := 'TServerMethods.executaSQL';
    SM.Params[0].AsString := SQL;
    SM.ExecuteMethod;
    Result := SM.Params[1].AsBoolean;
  except
    Result := False;
  end;
end;

function i2bExecutaSQL(SQL: String; ServidorRemoto: TCustomRemoteServer; var Retorno: String):Boolean;
var
  SM : TSqlServerMethod;
begin
  try
    SM := TSqlServerMethod.Create((ServidorRemoto as TDSProviderConnection).SQLConnection);
    SM.SQLConnection := (ServidorRemoto as TDSProviderConnection).SQLConnection;
    SM.ServerMethodName := 'TServerMethods.executaSQL';
    SM.Params[0].AsString := SQL;
    SM.ExecuteMethod;
    Result := SM.Params[1].AsBoolean;

    SM.ServerMethodName := 'TServerMethods.getErroExecutaSQL';
    SM.ExecuteMethod;
    Retorno := SM.Params[0].AsString;
  except
    Result := False;
  end;
end;

function i2bGetValor(Tabela, CampoComparacao, DadoComparacao, CampoRetorno: String; ServidorRemoto: TCustomRemoteServer ): String;
var
  SQL : String;
  CDS : TClientDataSet;
begin
  if (Tabela <> '') and (CampoComparacao <> '') and (DadoComparacao <> '') and (CampoRetorno <> '') then
  begin
    SQL := 'select '+CampoRetorno+' from '+Tabela+' where '+CampoComparacao+' = '+QuotedStr(DadoComparacao);
    CDS := i2bGetClient(SQL,ServidorRemoto);
    Result := CDS.FieldByName(CampoRetorno).AsString;
    FreeAndNil(CDS);
  end
  else
  begin
    Result := '';
  end;
end;

function i2bGetValores(Tabela, CampoComparacao, DadoComparacao, CamposRetorno: String; ServidorRemoto: TCustomRemoteServer ): TStringList;
var
  SQL : String;
  CDS : TClientDataSet;
  Campos : TStringList;
  Retornos : TStringList;
  I: Integer;
begin
  if (Tabela <> '') and (CampoComparacao <> '') and (DadoComparacao <> '') and (CamposRetorno <> '') then
  begin
    SQL := 'select '+CamposRetorno+' from '+Tabela+' where '+CampoComparacao+' = '+QuotedStr(DadoComparacao);
    CDS := i2bGetClient(SQL,ServidorRemoto);
    Campos := TStringList.Create;
    Retornos := i2bSplit(StringReplace(CamposRetorno,' ','',[rfReplaceAll]),',');
    for I := 0 to Retornos.Count - 1 do
    begin
      Campos.Add(CDS.FieldByName(Retornos[I]).AsString);
    end;
    Result := Campos;
  end
  else
  begin
    Result := nil;
  end;
end;

end.
