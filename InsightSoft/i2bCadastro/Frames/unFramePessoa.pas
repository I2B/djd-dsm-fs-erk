unit unFramePessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter, Data.DB,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxGroupBox, cxRadioGroup,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxMemo,
  Vcl.ExtCtrls, cxButtonEdit, dxGDIPlusClasses;

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
    edtRepresentanteUnidadeNegocio: TcxDBTextEdit;
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
    edtVendedorUnidadeNegocio: TcxDBTextEdit;
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
    dsColaborador: TDataSource;
    edtCargo: TcxDBTextEdit;
    dxLayoutControlItem43: TdxLayoutItem;
    edtCTPSUF: TcxDBTextEdit;
    dxLayoutControlItem44: TdxLayoutItem;
    edtMatricula: TcxDBTextEdit;
    dxLayoutControlItem45: TdxLayoutItem;
    edtSetor: TcxDBTextEdit;
    dxLayoutControlItem46: TdxLayoutItem;
    edtBanco: TcxDBTextEdit;
    dxLayoutControlItem47: TdxLayoutItem;
    imgFoto3x4: TImage;
    dxLayoutControlItem49: TdxLayoutItem;
    dxLayoutControlGroup12: TdxLayoutAutoCreatedGroup;
    edtDataAdmissao: TcxDBDateEdit;
    dxLayoutControlItem50: TdxLayoutItem;
    edtFGTSConta: TcxDBTextEdit;
    dxLayoutControlItem51: TdxLayoutItem;
    edtExameData: TcxDBDateEdit;
    dxLayoutControlItem52: TdxLayoutItem;
    edtExameDataUltimo: TcxDBDateEdit;
    dxLayoutControlItem53: TdxLayoutItem;
    edtCTPSSerie: TcxDBTextEdit;
    dxLayoutControlItem54: TdxLayoutItem;
    edtCTPSNumero: TcxDBTextEdit;
    dxLayoutControlItem55: TdxLayoutItem;
    cmbFormaDePagamento: TcxDBComboBox;
    dxLayoutControlItem56: TdxLayoutItem;
    edtCTPSDataExpedicao: TcxDBDateEdit;
    dxLayoutControlItem57: TdxLayoutItem;
    memObservacao: TcxDBMemo;
    dxLayoutControlItem58: TdxLayoutItem;
    dxLayoutControlGroup25: TdxLayoutAutoCreatedGroup;
    edtDataDemissão: TcxDBDateEdit;
    dxLayoutControlItem59: TdxLayoutItem;
    edtUnidadeNegocio: TcxDBTextEdit;
    dxLayoutControlItem60: TdxLayoutItem;
    edtContadorUnidadeNegocio: TcxDBTextEdit;
    dxLayoutControlItem64: TdxLayoutItem;
    edtCRC: TcxDBTextEdit;
    dxLayoutControlItem65: TdxLayoutItem;
    dsContador: TDataSource;
    dxLayoutControlGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup15: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup17: TdxLayoutAutoCreatedGroup;
    edtDesde: TcxDBDateEdit;
    dxLayoutControlItem61: TdxLayoutItem;
    dsFornecedor: TDataSource;
    chkFornecedorLocalização: TcxDBCheckBox;
    dxLayoutControlItem62: TdxLayoutItem;
    chkRetencao: TcxDBCheckBox;
    dxLayoutControlItem63: TdxLayoutItem;
    memFornecedorObservacao: TcxDBMemo;
    dxLayoutControlItem66: TdxLayoutItem;
    dxLayoutControlGroup18: TdxLayoutAutoCreatedGroup;
    edtPrazoMedioEntrega: TcxDBTextEdit;
    dxLayoutControlItem67: TdxLayoutItem;
    dxLayoutControlGroup27: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup28: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup26: TdxLayoutAutoCreatedGroup;
    chkFornecedorGeraFaturamento: TcxDBCheckBox;
    dxLayoutControlItem68: TdxLayoutItem;
    edtParcelas: TcxDBCurrencyEdit;
    dxLayoutControlItem70: TdxLayoutItem;
    edtNumeroDiasIntervalo: TcxDBCurrencyEdit;
    dxLayoutControlItem71: TdxLayoutItem;
    edtPrimeiroVencimento: TcxDBCurrencyEdit;
    dxLayoutControlItem69: TdxLayoutItem;
    dxLayoutControlGroup30: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup31: TdxLayoutAutoCreatedGroup;
    edtCNHVencimento: TcxDBDateEdit;
    dxLayoutControlItem48: TdxLayoutItem;
    dxLayoutControlGroup9: TdxLayoutAutoCreatedGroup;
    procedure grpTipoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
    procedure chkTransportadoraClick(Sender: TObject);
    procedure chkColaboradorClick(Sender: TObject);
    procedure chkVendedorClick(Sender: TObject);
    procedure chkContadorClick(Sender: TObject);
    procedure chkRepresentanteClick(Sender: TObject);
    procedure imgFoto3x4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FramePessoa: TFramePessoa;

implementation

{$R *.dfm}

uses unDM, unI2BFuncoes;

procedure TFramePessoa.chkClienteClick(Sender: TObject);
begin
  inherited;
  if chkCliente.Checked then
  begin
    grpCliente.Visible:= True;
  end
  else
  begin
    grpCliente.Visible:= False;
  end;
end;

procedure TFramePessoa.chkColaboradorClick(Sender: TObject);
begin
  inherited;
  if chkColaborador.Checked then
  begin
    grpColaborador.Visible:= True;
  end
  else
  begin
    grpColaborador.Visible:= False;
  end;
end;

procedure TFramePessoa.chkContadorClick(Sender: TObject);
begin
  inherited;
  if chkContador.Checked then
  begin
    grpContador.Visible:= True;
  end
  else
  begin
    grpContador.Visible:= False;
  end;
end;

procedure TFramePessoa.chkFornecedorClick(Sender: TObject);
begin
  inherited;
  if chkFornecedor.Checked then
  begin
    grpFornecedor.Visible:= True;
  end
  else
  begin
    grpFornecedor.Visible:= False;
  end;
end;

procedure TFramePessoa.chkRepresentanteClick(Sender: TObject);
begin
  inherited;
  if chkRepresentante.Checked then
  begin
    grpRepresentante.Visible:= True;
  end
  else
  begin
    grpRepresentante.Visible:= False;
  end;
end;

procedure TFramePessoa.chkTransportadoraClick(Sender: TObject);
begin
  inherited;
  if chkTransportadora.Checked then
  begin
    grpTransportadora.Visible:= True;
  end
  else
  begin
    grpTransportadora.Visible:= False;
  end;
end;

procedure TFramePessoa.chkVendedorClick(Sender: TObject);
begin
  inherited;
  if chkVendedor.Checked then
  begin
    grpVendedor.Visible:= True;
  end
  else
  begin
    grpVendedor.Visible:= False;
  end;
end;

procedure TFramePessoa.grpTipoClick(Sender: TObject);
begin
  inherited;
  if grpTipo.EditValue = 'F' then
  begin
    grpPessoaFisica.Visible:= True;
    grpPessoaJuridica.Visible:= False;
    chkColaborador.Enabled:=  True;
    chkTransportadora.Checked:= False;
    chkTransportadora.Enabled:= False;
    chkFornecedor.Checked:= False;
    chkFornecedor.Enabled:= False;
    chkVendedor.Enabled:= True;
    chkContador.Enabled:= True;
    chkRepresentante.Checked:= False;
    chkRepresentante.Enabled:= False;
  end
  else
  begin
    grpPessoaFisica.Visible:= False;
    grpPessoaJuridica.Visible:= True;
    chkColaborador.Checked:=  False;
    chkColaborador.Enabled:=  False;
    chkTransportadora.Enabled:= True;
    chkFornecedor.Enabled:= True;
    chkVendedor.Checked:= False;
    chkVendedor.Enabled:= False;
    chkContador.Checked:= False;
    chkContador.Enabled:= False;
    chkRepresentante.Enabled:= True;
  end;
end;

procedure TFramePessoa.imgFoto3x4Click(Sender: TObject);
begin
  inherited;
  if dsColaborador.State in [dsInsert, dsEdit] then
  begin
    DM.cdsPessoaColaboradorfoto3x4.AsString:= i2bGetArquivo('JPG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps');
    if DM.cdsPessoaColaboradorfoto3x4.AsString= '' then
    begin
      imgFoto3x4.Picture.LoadFromFile('C:\djd-dsm-fs-erk\Desenvolvimento\Imagens\AvatarDefault.png');
    end
    else
    begin
      imgFoto3x4.Picture.LoadFromFile(DM.cdsPessoaColaboradorfoto3x4.AsString);
    end;
  end;
end;

end.
