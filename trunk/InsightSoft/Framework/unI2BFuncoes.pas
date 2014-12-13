unit unI2BFuncoes;

interface

uses
  cxTextEdit, cxDBEdit, Data.DBXFirebird, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr,
  System.SysUtils, System.Classes, Vcl.Forms, Vcl.DBCtrls, Winapi.Windows, unFramePai;

function i2bF2(edtID,edtDetalhe:TcxDBTextEdit; titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos,
  Tabela, whereAdicional:String; BancoDeDados:TSQLConnection; FrameCadastro:TFramePai; ClientCadastro:TClientDataSet) : Boolean;

implementation

uses
  unF2;

function i2bF2(edtID,edtDetalhe:TcxDBTextEdit; titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos,
  Tabela, whereAdicional:String; BancoDeDados:TSQLConnection; FrameCadastro:TFramePai; ClientCadastro:TClientDataSet) : Boolean;
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

end.
