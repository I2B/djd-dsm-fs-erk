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
    cxGridDBnome: TcxGridDBColumn;
    cxGridDBrepresentante: TcxGridDBColumn;
    cxGridDBdatacadastro: TcxGridDBColumn;
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

uses unDM, unI2BFuncoes;

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
  DM.cdsPessoaColaborador.Edit;
  DM.cdsPessoaContador.Edit;
  DM.cdsPessoaFornecedor.Edit;
  DM.cdsPessoaRepresentante.Edit;
  DM.cdsPessoaTransportadora.Edit;
  DM.cdsPessoaVendedor.Edit;
  DM.cdsPessoaCliente.Edit;
  FramePessoa.grpTipoClick(Sender);
  FramePessoa.chkColaboradorClick(Sender);
  FramePessoa.chkContadorClick(Sender);
  FramePessoa.chkFornecedorClick(Sender);
  FramePessoa.chkRepresentanteClick(Sender);
  FramePessoa.chkTransportadoraClick(Sender);
  FramePessoa.chkVendedorClick(Sender);
  FramePessoa.chkClienteClick(Sender);
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
  if FramePessoa.chkCliente.Checked then
  begin
    DM.cdsPessoaCliente.Edit;
    DM.cdsPessoaClienteidpessoa.AsInteger := getIDPessoaInserida(DM.dspConnection);
    DM.cdsPessoaCliente.Post;
    DM.cdsPessoaCliente.ApplyUpdates(-1);
  end;
  if FramePessoa.chkColaborador.Checked then
  begin
    DM.cdsPessoaColaborador.Edit;
    DM.cdsPessoaColaboradoridpessoa.AsInteger := getIDPessoaInserida(DM.dspConnection);
    DM.cdsPessoaColaborador.Post;
    DM.cdsPessoaColaborador.ApplyUpdates(-1);
  end;
  if FramePessoa.chkContador.Checked then
  begin
    DM.cdsPessoaContador.Edit;
    DM.cdsPessoaContadoridpessoa.AsInteger := getIDPessoaInserida(DM.dspConnection);
    DM.cdsPessoaContador.Post;
    DM.cdsPessoaContador.ApplyUpdates(-1);
  end;
  if FramePessoa.chkFornecedor.Checked then
  begin
    DM.cdsPessoaFornecedor.Edit;
    DM.cdsPessoaFornecedoridpessoa.AsInteger := getIDPessoaInserida(DM.dspConnection);
    DM.cdsPessoaFornecedor.Post;
    DM.cdsPessoaFornecedor.ApplyUpdates(-1);
  end;
  if FramePessoa.chkRepresentante.Checked then
  begin
    DM.cdsPessoaRepresentante.Edit;
    DM.cdsPessoaRepresentanteidpessoa.AsInteger := getIDPessoaInserida(DM.dspConnection);
    DM.cdsPessoaRepresentante.Post;
    DM.cdsPessoaRepresentante.ApplyUpdates(-1);
  end;
  if FramePessoa.chkTransportadora.Checked then
  begin
    DM.cdsPessoaTransportadora.Edit;
    DM.cdsPessoaTransportadoraidpessoa.AsInteger := getIDPessoaInserida(DM.dspConnection);
    DM.cdsPessoaTransportadora.Post;
    DM.cdsPessoaTransportadora.ApplyUpdates(-1);
  end;
  if FramePessoa.chkVendedor.Checked then
  begin
    DM.cdsPessoaVendedor.Edit;
    DM.cdsPessoaVendedoridpessoa.AsInteger := getIDPessoaInserida(DM.dspConnection);
    DM.cdsPessoaVendedor.Post;
    DM.cdsPessoaVendedor.ApplyUpdates(-1);
  end;
end;

end.
