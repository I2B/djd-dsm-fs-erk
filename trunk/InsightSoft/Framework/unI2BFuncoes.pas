unit unI2BFuncoes;

interface

uses
  cxTextEdit, cxDBEdit, Data.DBXFirebird, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr,
  System.SysUtils, System.Classes, Vcl.Dialogs, Vcl.Forms, Vcl.DBCtrls, Winapi.Windows, fileCtrl, unframepai,
  Data.DBXCommon, Datasnap.DSConnect;

function i2bF2(edtID,edtDetalhe:TcxDBTextEdit; titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos,
  Tabela, whereAdicional:String; BancoDeDados:TSQLConnection; FrameCadastro:String;
  ClientCadastro:TClientDataSet) : Boolean;

function i2bGetDiretorio(Caption, DirDefault: string): string;

Function i2bGetArquivo(Filter: string): String;

function getIDPessoaInserida(ServidorRemoto: TCustomRemoteServer):Integer;

implementation

uses
  unF2;

function i2bF2(edtID,edtDetalhe:TcxDBTextEdit; titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos,
  Tabela, whereAdicional:String; BancoDeDados:TSQLConnection; FrameCadastro:String;
  ClientCadastro:TClientDataSet) : Boolean;
var
  seleciona: TfrmF2;
var
  cds: TClientDataSet;
begin
  if edtID.DataBinding.DataSource.State in [dsEdit, dsInsert] then
  begin
    seleciona := TfrmF2.Create(Application, titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos,
      Tabela, whereAdicional, BancoDeDados, FrameCadastro, ClientCadastro);
    seleciona.ShowModal;
    if seleciona.cancelado then
      result := false
    else
    begin
      result := true;
      cds := edtID.DataBinding.DataSource.DataSet as TClientDataSet;
      if cds.State in [dsEdit, dsInsert] then
        cds.FieldByName(edtID.DataBinding.DataField).AsString := seleciona.valorSelecionado
      else
        edtID.Text := seleciona.valorSelecionado;
      if (edtDetalhe <> nil) and (seleciona.valorSelecionado2 <> '') then
      begin
        if cds.State in [dsEdit, dsInsert] then
          cds.FieldByName(edtDetalhe.DataBinding.DataField).AsString := seleciona.valorSelecionado2
        else
          edtDetalhe.Text := seleciona.valorSelecionado2;
      end;
    end;
    FreeAndNil(seleciona);
  end;
end;

function i2bGetDiretorio(Caption, DirDefault: string): string;
begin
  SelectDirectory(Caption, DirDefault, result);
end;

function i2bGetArquivo(filter: string): string;
var
  OpenDialog: TOpenDialog;
begin
  OpenDialog := TOpenDialog.Create(nil);
  OpenDialog.Filter:= filter;
  if OpenDialog.Execute() then
  begin
    Result := OpenDialog.FileName
  end
  else
  begin
    MessageDlg('Nenhum arquivo foi selecionado.', mtError, [mbOK], 0);
    result:= '';
  end;
  OpenDialog.Free();
end;

function getIDPessoaInserida(ServidorRemoto: TCustomRemoteServer):Integer;
var
  SMgetID : TSqlServerMethod;
begin
  try
    SMgetID := TSqlServerMethod.Create((ServidorRemoto as TDSProviderConnection).SQLConnection);
    SMgetID.SQLConnection := (ServidorRemoto as TDSProviderConnection).SQLConnection;
    SMgetID.ServerMethodName := 'TServerMethods.getIDPessoaManipulado';
    SMgetID.ExecuteMethod;
    Result := SMgetID.Params[0].AsInteger;
  except
    Result := 0;
  end;
end;

end.
