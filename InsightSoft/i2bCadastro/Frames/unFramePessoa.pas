unit unFramePessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter, Data.DB,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxGroupBox, cxRadioGroup,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxMemo;

type
  TFramePessoa = class(TFramePai)
    grpTela: TdxLayoutGroup;
    grpRepresentante: TdxLayoutGroup;
    edtNome: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtEMail: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtSite: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtRG: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtCNPJ: TcxDBTextEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    edtCPF: TcxDBTextEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    edtCnhNumero: TcxDBTextEdit;
    dxLayoutControlItem8: TdxLayoutItem;
    edtCnhCategoria: TcxDBTextEdit;
    dxLayoutControlItem9: TdxLayoutItem;
    edtCnhVencimento: TcxDBTextEdit;
    dxLayoutControlItem10: TdxLayoutItem;
    grpContador: TdxLayoutGroup;
    grpVendedor: TdxLayoutGroup;
    grpColaborador: TdxLayoutGroup;
    grpFornecedor: TdxLayoutGroup;
    grpCliente: TdxLayoutGroup;
    grpTransportadora: TdxLayoutGroup;
    grpTipo: TcxDBRadioGroup;
    dxLayoutControlItem11: TdxLayoutItem;
    chkColaborador: TcxDBCheckBox;
    dxLayoutControlItem12: TdxLayoutItem;
    chkTransportadora: TcxDBCheckBox;
    dxLayoutControlItem13: TdxLayoutItem;
    chkFornecedor: TcxDBCheckBox;
    dxLayoutControlItem14: TdxLayoutItem;
    chkVendedor: TcxDBCheckBox;
    dxLayoutControlItem15: TdxLayoutItem;
    chkContador: TcxDBCheckBox;
    dxLayoutControlItem16: TdxLayoutItem;
    chkCliente: TcxDBCheckBox;
    dxLayoutControlItem17: TdxLayoutItem;
    grpTipoPessoa: TdxLayoutGroup;
    dxLayoutControlGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup13: TdxLayoutAutoCreatedGroup;
    grpOculto: TdxLayoutGroup;
    grpPessoaFisica: TdxLayoutGroup;
    grpPessoaJuridica: TdxLayoutGroup;
    grpSexo: TcxDBRadioGroup;
    dxLayoutControlItem18: TdxLayoutItem;
    edtDataAniversário: TcxDBDateEdit;
    dxLayoutControlItem19: TdxLayoutItem;
    edtDataFundacao: TcxDBDateEdit;
    dxLayoutControlItem20: TdxLayoutItem;
    cmbEstadoCivil: TcxDBComboBox;
    dxLayoutControlItem21: TdxLayoutItem;
    edtNomeDaMae: TcxDBTextEdit;
    dxLayoutControlItem7: TdxLayoutItem;
    edtNomeDoPai: TcxDBTextEdit;
    dxLayoutControlItem22: TdxLayoutItem;
    edtFantasia: TcxDBTextEdit;
    dxLayoutControlItem23: TdxLayoutItem;
    edtRazaoSocial: TcxDBTextEdit;
    dxLayoutControlItem24: TdxLayoutItem;
    dxLayoutControlGroup20: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup21: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup16: TdxLayoutAutoCreatedGroup;
    edtInscricaoMunicipal: TcxDBTextEdit;
    dxLayoutControlItem25: TdxLayoutItem;
    edtInscricaoEstadual: TcxDBTextEdit;
    dxLayoutControlItem26: TdxLayoutItem;
    grpRegimeTributario: TcxDBRadioGroup;
    dxLayoutControlItem27: TdxLayoutItem;
    dxLayoutControlGroup19: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup22: TdxLayoutAutoCreatedGroup;
    grpCodigoRegimeTributario: TcxDBRadioGroup;
    dxLayoutControlItem28: TdxLayoutItem;
    dxLayoutControlGroup23: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup24: TdxLayoutAutoCreatedGroup;
    edtCodigoSuframa: TcxDBTextEdit;
    dxLayoutControlItem29: TdxLayoutItem;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup5: TdxLayoutGroup;
    chkRepresentante: TcxDBCheckBox;
    dxLayoutControlItem30: TdxLayoutItem;
    dxLayoutControlGroup6: TdxLayoutAutoCreatedGroup;
    edtRepresentanteComissao: TcxDBCurrencyEdit;
    dxLayoutControlItem31: TdxLayoutItem;
    dsRepresentante: TDataSource;
    edtRepresentanteMeta: TcxDBCurrencyEdit;
    dxLayoutControlItem32: TdxLayoutItem;
    edtRepresentanteEmpresa: TcxDBTextEdit;
    dxLayoutControlItem33: TdxLayoutItem;
    memTransportadoraObservacao: TcxDBMemo;
    dxLayoutControlItem34: TdxLayoutItem;
    edtDataCadastro: TcxDBDateEdit;
    dxLayoutControlItem35: TdxLayoutItem;
    dxLayoutControlGroup8: TdxLayoutAutoCreatedGroup;
    edtVendedorComissao: TcxDBCurrencyEdit;
    dxLayoutControlItem36: TdxLayoutItem;
    edtVendedorMeta: TcxDBCurrencyEdit;
    dxLayoutControlItem37: TdxLayoutItem;
    edtVendedorEmpresa: TcxDBTextEdit;
    dxLayoutControlItem38: TdxLayoutItem;
    dsTransportadora: TDataSource;
    dsVendedor: TDataSource;
    dsCliente: TDataSource;
    memClienteObservacao: TcxDBMemo;
    dxLayoutControlItem39: TdxLayoutItem;
    chkGeraFinanceiro: TcxDBCheckBox;
    dxLayoutControlItem40: TdxLayoutItem;
    edtLimiteCredito: TcxDBCurrencyEdit;
    dxLayoutControlItem41: TdxLayoutItem;
    chkClienteAtivo: TcxDBCheckBox;
    dxLayoutControlItem42: TdxLayoutItem;
    dxLayoutControlGroup10: TdxLayoutAutoCreatedGroup;
    procedure grpTipoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
    procedure chkTransportadoraClick(Sender: TObject);
    procedure chkColaboradorClick(Sender: TObject);
    procedure chkVendedorClick(Sender: TObject);
    procedure chkContadorClick(Sender: TObject);
    procedure chkRepresentanteClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EscolheTipoPessoa (Tipo:string);
    procedure EscolheTipoPessoaCliente (situacao:boolean);
    procedure EscolheTipoPessoaFornecedor (situacao:boolean);
    procedure EscolheTipoPessoaTransportadora (situacao:boolean);
    procedure EscolheTipoPessoaColaborador (situacao:boolean);
    procedure EscolheTipoPessoaVendedor (situacao:boolean);
    procedure EscolheTipoPessoaContador (situacao:boolean);
    procedure EscolheTipoPessoaRepresentante (situacao:boolean);
    { Public declarations }
  end;

var
  FramePessoa: TFramePessoa;

implementation

{$R *.dfm}

uses unDM;

procedure TFramePessoa.chkClienteClick(Sender: TObject);
begin
  inherited;
  EscolheTipoPessoaCliente(chkCliente.Checked);
end;

procedure TFramePessoa.chkColaboradorClick(Sender: TObject);
begin
  inherited;
  EscolheTipoPessoaColaborador(chkColaborador.Checked);
end;

procedure TFramePessoa.chkContadorClick(Sender: TObject);
begin
  inherited;
  EscolheTipoPessoaContador(chkContador.Checked);
end;

procedure TFramePessoa.chkFornecedorClick(Sender: TObject);
begin
  inherited;
  EscolheTipoPessoaFornecedor(chkFornecedor.Checked);
end;

procedure TFramePessoa.chkRepresentanteClick(Sender: TObject);
begin
  inherited;
    EscolheTipoPessoaRepresentante(chkRepresentante.Checked);
end;

procedure TFramePessoa.chkTransportadoraClick(Sender: TObject);
begin
  inherited;
  EscolheTipoPessoaTransportadora(chkTransportadora.Checked);
end;

procedure TFramePessoa.chkVendedorClick(Sender: TObject);
begin
  inherited;
  EscolheTipoPessoaVendedor(chkVendedor.Checked);
end;

procedure TFramePessoa.EscolheTipoPessoa(Tipo:string);
begin
  if Tipo = 'F' then
  begin
    grpPessoaFisica.Move(grpTela, 1, True);
    grpPessoaJuridica.Move(grpOculto, 0, True);
  end
  else
  begin
    grpPessoaFisica.Move(grpOculto, 1, True);
    grpPessoaJuridica.Move(grpTela, 0, True);
  end;
end;

procedure TFramePessoa.EscolheTipoPessoaCliente(situacao: boolean);
begin
  if situacao then
  begin
    grpCliente.Move(grpTela, 2, True);
  end
  else
  begin
    grpCliente.Move(grpOculto, 2, True);
  end;
end;

procedure TFramePessoa.EscolheTipoPessoaColaborador(situacao: boolean);
begin
  if situacao then
  begin
    grpColaborador.Move(grpTela, 2, True);
  end
  else
  begin
    grpColaborador.Move(grpOculto, 2, True);
  end;
end;

procedure TFramePessoa.EscolheTipoPessoaContador(situacao: boolean);
begin
  if situacao then
  begin
    grpContador.Move(grpTela, 2, True);
  end
  else
  begin
    grpContador.Move(grpOculto, 2, True);
  end;
end;

procedure TFramePessoa.EscolheTipoPessoaFornecedor(situacao: boolean);
begin
  if situacao then
  begin
    grpFornecedor.Move(grpTela, 2, True);
  end
  else
  begin
    grpFornecedor.Move(grpOculto, 2, True);
  end;
end;

procedure TFramePessoa.EscolheTipoPessoaRepresentante(situacao: boolean);
begin
  if situacao then
  begin
    grpRepresentante.Move(grpTela, 2, True);
  end
  else
  begin
    grpRepresentante.Move(grpOculto, 2, True);
  end;
end;

procedure TFramePessoa.EscolheTipoPessoaTransportadora(situacao: boolean);
begin
  if situacao then
  begin
    grpTransportadora.Move(grpTela, 2, True);
  end
  else
  begin
    grpTransportadora.Move(grpOculto, 2, True);
  end;
end;

procedure TFramePessoa.EscolheTipoPessoaVendedor(situacao: boolean);
begin
  if situacao then
  begin
    grpVendedor.Move(grpTela, 2, True);
  end
  else
  begin
    grpVendedor.Move(grpOculto, 2, True);
  end;
end;

procedure TFramePessoa.grpTipoClick(Sender: TObject);
begin
  inherited;
    EscolheTipoPessoa(grpTipo.EditValue);
end;

end.
