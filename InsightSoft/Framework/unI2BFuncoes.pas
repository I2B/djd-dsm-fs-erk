unit unI2BFuncoes;

interface

uses
  cxTextEdit, cxDBEdit, Data.DBXFirebird, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr,
  System.SysUtils, System.Classes, Vcl.Dialogs, Vcl.Forms, Vcl.DBCtrls, Winapi.Windows, fileCtrl, unframepai,
  Data.DBXCommon, Datasnap.DSConnect;

function i2bF2(edtID, edtDetalhe: TcxDBTextEdit; titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos,
  Tabela, whereAdicional: String; BancoDeDados: TSQLConnection; FrameCadastro: String; ClientCadastro: TClientDataSet)
  : Boolean; overload;
function i2bF2(edtID: TcxDBCurrencyEdit; edtDetalhe: TcxDBTextEdit;
  titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos, Tabela, whereAdicional: String;
  BancoDeDados: TSQLConnection; FrameCadastro: String; ClientCadastro: TClientDataSet): Boolean; overload;

function i2bGetDiretorio(Caption, DirDefault: string): string;

Function i2bGetArquivo(Filter: string): String;

function getIDPessoaInserida(ServidorRemoto: TCustomRemoteServer): Integer;

function VersaoDoExecutavel: String;

implementation

uses
  unF2;

function i2bF2(edtID, edtDetalhe: TcxDBTextEdit; titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos,
  Tabela, whereAdicional: String; BancoDeDados: TSQLConnection; FrameCadastro: String;
  ClientCadastro: TClientDataSet): Boolean;
var
  seleciona: TfrmF2;
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

function i2bF2(edtID: TcxDBCurrencyEdit; edtDetalhe: TcxDBTextEdit;
  titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos, Tabela, whereAdicional: String;
  BancoDeDados: TSQLConnection; FrameCadastro: String; ClientCadastro: TClientDataSet): Boolean;
var
  seleciona: TfrmF2;
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

function i2bGetArquivo(Filter: string): string;
var
  OpenDialog: TOpenDialog;
begin
  OpenDialog := TOpenDialog.Create(nil);
  OpenDialog.Filter := Filter;
  if OpenDialog.Execute() then
  begin
    result := OpenDialog.FileName
  end
  else
  begin
    MessageDlg('Nenhum arquivo foi selecionado.', mtError, [mbOK], 0);
    result := '';
  end;
  OpenDialog.Free();
end;

function getIDPessoaInserida(ServidorRemoto: TCustomRemoteServer): Integer;
var
  SMgetID: TSqlServerMethod;
begin
  try
    SMgetID := TSqlServerMethod.Create((ServidorRemoto as TDSProviderConnection).SQLConnection);
    SMgetID.SQLConnection := (ServidorRemoto as TDSProviderConnection).SQLConnection;
    SMgetID.ServerMethodName := 'TServerMethods.getIDPessoaManipulado';
    SMgetID.ExecuteMethod;
    result := SMgetID.Params[0].AsInteger;
  except
    result := 0;
  end;
end;

function VersaoDoExecutavel: String;
type
  PFFI = ^vs_FixedFileInfo;
var
  F: PFFI;
  Handle: Dword;
  Len: Longint;
  Data: Pchar;
  Buffer: Pointer;
  Tamanho: Dword;
  Parquivo: Pchar;
  Arquivo: String;
begin
  Arquivo := Application.ExeName;
  Parquivo := StrAlloc(Length(Arquivo) + 1);
  StrPcopy(Parquivo, Arquivo);
  Len := GetFileVersionInfoSize(Parquivo, Handle);
  result := '';
  if Len > 0 then
  begin
    Data := StrAlloc(Len + 1);
    if GetFileVersionInfo(Parquivo, Handle, Len, Data) then
    begin
      VerQueryValue(Data, '\', Buffer, Tamanho);
      F := PFFI(Buffer);
      result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs), LoWord(F^.dwFileVersionMs),
        HiWord(F^.dwFileVersionLs), LoWord(F^.dwFileVersionLs)]);
    end;
    StrDispose(Data);
  end;
  StrDispose(Parquivo);
end;

end.
