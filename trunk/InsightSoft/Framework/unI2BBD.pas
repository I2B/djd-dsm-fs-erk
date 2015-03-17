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
/// <summary>
///  Reserva estoque para atender a Pré Venda - {Está no banco}
/// </summary>
/// <param name="idPreVendaItem">ID do item da pré venda</param>
/// <param name="ServidorRemoto">Conexão ao banco de dados</param>
/// <returns>[Integer] idProdutoEstoqueReservado</returns>
function i2bGeraReservaEstoque(idPreVendaItem: string; ServidorRemoto: TCustomRemoteServer):Integer; // retorna idprodutoreservado
/// <summary>
///  Baixa reserva do estoque - {Está no banco}
/// </summary>
/// <param name="idPreVendaItem">ID do item da pré venda</param>
/// <param name="ServidorRemoto">Conexão ao banco de dados</param>
/// <returns>[Integer] idProdutoEstoqueReservado</returns>
function i2bBaixaReservaEstoque(idPreVendaItem: string; ServidorRemoto: TCustomRemoteServer):Integer; // retorna idprodutoreservado
/// <summary>
///  Consulta estoque líquido (estoque - reservas)
/// </summary>
/// <param name="idProduto">ID do produto a ser consultado</param>
/// <param name="ServidorRemoto">Conexão ao banco de dados</param>
/// <returns>[Double] Saldo líquido</returns>
function i2bConsultaEstoqueLiquido(idProduto: string; ServidorRemoto: TCustomRemoteServer):Double;
/// <summary>
///  Muda o status da Pré Venda
/// </summary>
/// <param name="idPreVendaCabecalho">ID da Pré Venda</param>
/// <param name="status">Status para o qual será alterado, -1 Cancelada, 0 Aberta, 1 Liberada, 2 Faturada</param>
/// <param name="ServidorRemoto">Conexão ao banco de dados</param>
/// <returns>[Boolean] True: sucesso, False: falha</returns>
Function i2bAlteraStatusPreVenda(idPreVendaCabecalho, status: string; ServidorRemoto: TCustomRemoteServer):Boolean;

implementation

uses unI2BString;

Function i2bAlteraStatusPreVenda(idPreVendaCabecalho, status: string; ServidorRemoto: TCustomRemoteServer):Boolean;
var
  SQL: string;
begin
  try
    SQL:= 'Update prevendacabecalho set status=' + status + ' where idPreVendaCabecalho=' + idPreVendaCabecalho;
    i2bexecutasql(SQL, ServidorRemoto);
    Result:= True;
  except
    Result:= False;
  end;
end;

function i2bGeraReservaEstoque(idPreVendaItem: string; ServidorRemoto: TCustomRemoteServer):Integer;
var
  SQL: string;
  CDS: TClientDataSet;
  idProdutoEstoqueReservado: string;
begin
  CDS:= i2bgetclient('select idproduto, quantidade from prevendaitem where idprevendaitem='+idPreVendaItem, ServidorRemoto);
  idProdutoEstoqueReservado:= i2bGetValor('produtoestoquereservado', 'idprevendaitem', idprevendaitem,
    'idprodutoestoquereservado', ServidorRemoto);

  if idProdutoEstoqueReservado <> '' then
  begin
    SQL:= 'Update produtosestoque set ativo=true, quantidade=' + cds.FieldByName('quantidade').AsString +
      ' where idprodutoreservado=' + idProdutoEstoqueReservado ;
    i2bExecutaSQL(SQL, ServidorRemoto);
  end
  else
  begin
    SQL:= 'Insert into produtosestoque (idproduto, idprevendaitem, quantidade, ativo) ' +
      'values (' + CDS.FieldByName('idproduto').AsString + ', ' + idPreVendaItem +
      ', ' + CDS.FieldByName('quantidade').AsString + ', true)';
    i2bExecutaSQL(SQL, ServidorRemoto);
    idProdutoEstoqueReservado:= i2bGetValor('produtoestoquereservado', 'idprevendaitem', idprevendaitem,
      'idprodutoestoquereservado', ServidorRemoto);
  end;
  Result:= StrToInt(idProdutoEstoqueReservado);
end;

function i2bBaixaReservaEstoque(idPreVendaItem: string; ServidorRemoto: TCustomRemoteServer):Integer;
var
  idProdutoEstoqueReservado: string;
  SQL: string;
begin
  idProdutoEstoqueReservado:= i2bGetValor('produtoestoquereservado', 'idprevendaitem', idprevendaitem,
    'idprodutoestoquereservado', ServidorRemoto);

  if idProdutoEstoqueReservado <> '' then
  begin
    SQL:= 'Update produtosestoque set ativo=false where idprodutoreservado=' + idProdutoEstoqueReservado;
    i2bExecutaSQL(SQL, ServidorRemoto);
  end
  else
  begin
    idProdutoEstoqueReservado:= '0';
  end;
  Result:= StrToInt(idProdutoEstoqueReservado);
end;

function i2bConsultaEstoqueLiquido(idProduto: string; ServidorRemoto: TCustomRemoteServer):Double;
var
  SQL: string;
  CDS: TClientDataSet;
  Estoque: double;
begin
  Estoque:= strtofloat(i2bgetvalor('produto', 'idproduto', idProduto, 'quantidadeestoque', ServidorRemoto));
  SQL:= 'select sum(quantidade) as quantidade from produtoestoquereservado where ativo=true and idproduto='+idProduto;
  CDS:= i2bgetclient(SQL, ServidorRemoto);
  Result:= Estoque - CDS.FieldByName('quantidade').AsFloat;
end;

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
    FreeAndNil(CDS);
  end
  else
  begin
    Result := nil;
  end;
end;

end.
