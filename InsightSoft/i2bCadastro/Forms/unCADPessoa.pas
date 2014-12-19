unit unCADPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxButtonEdit, dxScreenTip,
  dxSkinsdxBarPainter, Data.FMTBcd, unFramePai, unFramePessoa,
  cxGridDBTableView, Datasnap.DBClient, Data.SqlExpr, dxBar, dxRibbonRadialMenu,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxGroupBox, cxRadioGroup,
  cxMemo, cxGridCustomTableView, cxGridTableView, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxLabel, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxPC, dxGDIPlusClasses, cxImage,
  Vcl.ExtCtrls;

type
  TfrmCADPessoa = class(TfrmCadastro)
    cxGridDBidpessoa: TcxGridDBColumn;
    cxGridDBtipo: TcxGridDBColumn;
    cxGridDBemail: TcxGridDBColumn;
    cxGridDBsite: TcxGridDBColumn;
    cxGridDBcliente: TcxGridDBColumn;
    cxGridDBfornecedor: TcxGridDBColumn;
    cxGridDBcolaborador: TcxGridDBColumn;
    cxGridDBcontador: TcxGridDBColumn;
    cxGridDBtransportadora: TcxGridDBColumn;
    cxGridDBvendedor: TcxGridDBColumn;
    cxGridDBcpf: TcxGridDBColumn;
    cxGridDBcnpj: TcxGridDBColumn;
    cxGridDBrg: TcxGridDBColumn;
    cxGridDBdatanascimento: TcxGridDBColumn;
    cxGridDBsexo: TcxGridDBColumn;
    cxGridDBestadocivil: TcxGridDBColumn;
    cxGridDBcnhnumero: TcxGridDBColumn;
    cxGridDBcnhcategoria: TcxGridDBColumn;
    cxGridDBcnhvencimento: TcxGridDBColumn;
    cxGridDBnomemae: TcxGridDBColumn;
    cxGridDBnomepai: TcxGridDBColumn;
    cxGridDBnomefantasia: TcxGridDBColumn;
    cxGridDBinscricaomunicipal: TcxGridDBColumn;
    cxGridDBinscricaoestadual: TcxGridDBColumn;
    cxGridDBtiporegime: TcxGridDBColumn;
    cxGridDBcrt: TcxGridDBColumn;
    cxGridDBsuframa: TcxGridDBColumn;
    FramePessoa: TFramePessoa;
    procedure acNovoExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADPessoa: TfrmCADPessoa;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmCADPessoa.acCancelarExecute(Sender: TObject);
begin
  DM.cdsPessoaCliente.Cancel;
  DM.cdsPessoaColaborador.Cancel;
  DM.cdsPessoaContador.Cancel;
  DM.cdsPessoaFornecedor.Cancel;
  DM.cdsPessoaRepresentante.Cancel;
  DM.cdsPessoaTransportadora.Cancel;
  DM.cdsPessoaVendedor.Cancel;
  inherited;
end;

procedure TfrmCADPessoa.acEditarExecute(Sender: TObject);
begin
  inherited;
  if not (DM.cdsPessoaCliente.Active) then
  begin
    DM.cdsPessoaCliente.Open;
  end;
  if not (DM.cdsPessoaColaborador.Active) then
  begin
    DM.cdsPessoaColaborador.Open;
  end;
  if not (DM.cdsPessoaContador.Active) then
  begin
    DM.cdsPessoaContador.Open;
  end;
  if not (DM.cdsPessoaFornecedor.Active) then
  begin
    DM.cdsPessoaFornecedor.Open;
  end;
  if not (DM.cdsPessoaRepresentante.Active) then
  begin
    DM.cdsPessoaRepresentante.Open;
  end;
  if not (DM.cdsPessoaTransportadora.Active) then
  begin
    DM.cdsPessoaTransportadora.Open;
  end;
  if not (DM.cdsPessoaVendedor.Active) then
  begin
    DM.cdsPessoaVendedor.Open;
  end;
  DM.cdsPessoaCliente.Edit;
  DM.cdsPessoaColaborador.Edit;
  DM.cdsPessoaContador.Edit;
  DM.cdsPessoaFornecedor.Edit;
  DM.cdsPessoaRepresentante.Edit;
  DM.cdsPessoaTransportadora.Edit;
  DM.cdsPessoaVendedor.Edit;
end;

procedure TfrmCADPessoa.acNovoExecute(Sender: TObject);
begin
  inherited;
  if not (DM.cdsPessoaCliente.Active) then
  begin
    DM.cdsPessoaCliente.Open;
  end;
  if not (DM.cdsPessoaColaborador.Active) then
  begin
    DM.cdsPessoaColaborador.Open;
  end;
  if not (DM.cdsPessoaContador.Active) then
  begin
    DM.cdsPessoaContador.Open;
  end;
  if not (DM.cdsPessoaFornecedor.Active) then
  begin
    DM.cdsPessoaFornecedor.Open;
  end;
  if not (DM.cdsPessoaRepresentante.Active) then
  begin
    DM.cdsPessoaRepresentante.Open;
  end;
  if not (DM.cdsPessoaTransportadora.Active) then
  begin
    DM.cdsPessoaTransportadora.Open;
  end;
  if not (DM.cdsPessoaVendedor.Active) then
  begin
    DM.cdsPessoaVendedor.Open;
  end;
  DM.cdsPessoaCliente.Insert;
  DM.cdsPessoaColaborador.Insert;
  DM.cdsPessoaContador.Insert;
  DM.cdsPessoaFornecedor.Insert;
  DM.cdsPessoaRepresentante.Insert;
  DM.cdsPessoaTransportadora.Insert;
  DM.cdsPessoaVendedor.Insert;
end;

procedure TfrmCADPessoa.acSalvarExecute(Sender: TObject);
begin
  //inherited;
  DM.cdsPessoa.Post;
  DM.cdsPessoa.ApplyUpdates(-1);
  DM.cdsPessoaClienteidpessoa.AsInteger:= DM.cdsPessoaidpessoa.AsInteger;
  DM.cdsPessoaCliente.Post;
  DM.cdsPessoaColaboradoridpessoa.AsInteger:= DM.cdsPessoaidpessoa.AsInteger;
  DM.cdsPessoaColaborador.Post;
  DM.cdsPessoaContadoridpessoa.AsInteger:= DM.cdsPessoaidpessoa.AsInteger;
  DM.cdsPessoaContador.Post;
  DM.cdsPessoaFornecedoridpessoa.AsInteger:= DM.cdsPessoaidpessoa.AsInteger;
  DM.cdsPessoaFornecedor.Post;
  DM.cdsPessoaRepresentanteidpessoa.AsInteger:= DM.cdsPessoaidpessoa.AsInteger;
  DM.cdsPessoaRepresentante.Post;
  DM.cdsPessoaTransportadoraidpessoa.AsInteger:= DM.cdsPessoaidpessoa.AsInteger;
  DM.cdsPessoaTransportadora.Post;
  DM.cdsPessoaVendedoridpessoa.AsInteger:= DM.cdsPessoaidpessoa.AsInteger;
  DM.cdsPessoaVendedor.Post;
  if DM.cdsPessoaCliente.ChangeCount>0 then
  begin
    DM.cdsPessoaCliente.ApplyUpdates(-1);
  end;
  if DM.cdsPessoaColaborador.ChangeCount>0 then
  begin
    DM.cdsPessoaColaborador.ApplyUpdates(-1);
  end;
  if DM.cdsPessoaContador.ChangeCount>0 then
  begin
    DM.cdsPessoaContador.ApplyUpdates(-1);
  end;
  if DM.cdsPessoaFornecedor.ChangeCount>0 then
  begin
    DM.cdsPessoaFornecedor.ApplyUpdates(-1);
  end;
  if DM.cdsPessoaRepresentante.ChangeCount>0 then
  begin
    DM.cdsPessoaRepresentante.ApplyUpdates(-1);
  end;
  if DM.cdsPessoaTransportadora.ChangeCount>0 then
  begin
    DM.cdsPessoaTransportadora.ApplyUpdates(-1);
  end;
  if DM.cdsPessoaVendedor.ChangeCount>0 then
  begin
    DM.cdsPessoaVendedor.ApplyUpdates(-1);
  end;
end;

end.
