unit unFrameRegraFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  Data.DB, dxLayoutContainer, dxLayoutControl, dxBarBuiltInMenu, cxPC, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxMemo, cxDBEdit, cxTextEdit, cxCheckBox, cxCurrencyEdit;

type
  TFrameRegraFiscal = class(TFramePai)
    cxPageControl1: TcxPageControl;
    dxLayoutControlItem1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    edtIDEstado: TcxDBTextEdit;
    dxLayoutControl2Item11: TdxLayoutItem;
    edtNCM: TcxDBTextEdit;
    dxLayoutControl2Item16: TdxLayoutItem;
    edtPFICMSCST: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtPFICMSAliquota: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edtPFICMSPercentualReducao: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl2Group8: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Group6: TdxLayoutGroup;
    dxLayoutControl2Group7: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    edtPFIPICST: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edtPFPISAliquotaNormal: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    edtPFPISCST: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    edtPFIPIAliquota: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    edtPFCOFINSCST: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    edtPFCOFINSAliquota: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    chkInativo: TcxDBCheckBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    edtPFICMSSTPercentualReducao: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    edtPFICMSSTMVA: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    edtPFISSAliquota: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtPFISSReducao: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    edtPFCSOSN: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxPageControl2: TcxPageControl;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Group9: TdxLayoutAutoCreatedGroup;
    edtPJICMSReducaoBC: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    edtPJICMSAliquota: TcxDBTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    edtPJICMSCST: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    edtPJICMSSTMVA: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    edtPJICMSSTReducaoBC: TcxDBTextEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    edtPJIPIAliquota: TcxDBTextEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    edtPJIPICST: TcxDBTextEdit;
    dxLayoutControl3Item7: TdxLayoutItem;
    edtPJPISCST: TcxDBTextEdit;
    dxLayoutControl3Item8: TdxLayoutItem;
    edtPJPISAliquota: TcxDBTextEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    edtPJCOFINSCST: TcxDBTextEdit;
    dxLayoutControl3Item10: TdxLayoutItem;
    edtPJCOFINSAliquota: TcxDBTextEdit;
    dxLayoutControl3Item11: TdxLayoutItem;
    edtPJISSAliquota: TcxDBTextEdit;
    dxLayoutControl3Item12: TdxLayoutItem;
    edtPJISSReducaoBC: TcxDBTextEdit;
    dxLayoutControl3Item13: TdxLayoutItem;
    edtPJCSOSN: TcxDBTextEdit;
    dxLayoutControl3Item14: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutControl3Item15: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutControl3Item16: TdxLayoutItem;
    cxDBCheckBox7: TcxDBCheckBox;
    dxLayoutControl3Item17: TdxLayoutItem;
    edtPFICMSSTAliquota: TcxDBTextEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxDBCheckBox8: TcxDBCheckBox;
    dxLayoutControl4Item2: TdxLayoutItem;
    cxDBCheckBox9: TcxDBCheckBox;
    dxLayoutControl4Item3: TdxLayoutItem;
    edtPJICMSSTAliquota: TcxDBTextEdit;
    dxLayoutControl3Item18: TdxLayoutItem;
    cxDBCheckBox10: TcxDBCheckBox;
    dxLayoutControl3Item19: TdxLayoutItem;
    cxDBCheckBox11: TcxDBCheckBox;
    dxLayoutControl3Item20: TdxLayoutItem;
    edtPJIPIClasseEnquadramento: TcxDBTextEdit;
    dxLayoutControl3Item21: TdxLayoutItem;
    edtPJIPICodigoEnquadramento: TcxDBTextEdit;
    dxLayoutControl3Item22: TdxLayoutItem;
    ectPFIPIClasseEnquadramento: TcxDBTextEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    edtPFIPICodigoEnquadramento: TcxDBTextEdit;
    dxLayoutControl4Item5: TdxLayoutItem;
    edtPJPISAliquotaST: TcxDBTextEdit;
    dxLayoutControl3Item23: TdxLayoutItem;
    edtPJCOFINSAliquotaST: TcxDBTextEdit;
    dxLayoutControl3Item24: TdxLayoutItem;
    dxLayoutControl3Group10: TdxLayoutAutoCreatedGroup;
    edtPJIRRetencao: TcxDBTextEdit;
    dxLayoutControl3Item25: TdxLayoutItem;
    edtPJPISRetencao: TcxDBTextEdit;
    dxLayoutControl3Item26: TdxLayoutItem;
    edtPJCOFINSRetencao: TcxDBTextEdit;
    dxLayoutControl3Item27: TdxLayoutItem;
    edtPJCSLLRetencao: TcxDBTextEdit;
    dxLayoutControl3Item28: TdxLayoutItem;
    edtPJINSSRetencao: TcxDBTextEdit;
    dxLayoutControl3Item29: TdxLayoutItem;
    edtPJISSRetencao: TcxDBTextEdit;
    dxLayoutControl3Item30: TdxLayoutItem;
    memObservacao: TcxDBMemo;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxDBCheckBox12: TcxDBCheckBox;
    dxLayoutControl3Item31: TdxLayoutItem;
    cxDBCheckBox13: TcxDBCheckBox;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl3Group11: TdxLayoutGroup;
    dxLayoutControl3Group12: TdxLayoutAutoCreatedGroup;
    edtIDUnidadeNegocio: TcxDBCurrencyEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    edtIDObservacao: TcxDBCurrencyEdit;
    dxLayoutControl2Item9: TdxLayoutItem;
    edtIDPessoa: TcxDBCurrencyEdit;
    dxLayoutControl2Item17: TdxLayoutItem;
    edtIDMunicipio: TcxDBCurrencyEdit;
    dxLayoutControl2Item19: TdxLayoutItem;
    edtIDPais: TcxDBCurrencyEdit;
    dxLayoutControl2Item20: TdxLayoutItem;
    edtIDTipoOperacao: TcxDBCurrencyEdit;
    dxLayoutControl2Item21: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutAutoCreatedGroup;
    edtPessoa: TcxDBTextEdit;
    dxLayoutControl2Item10: TdxLayoutItem;
    edtMunicipio: TcxDBTextEdit;
    dxLayoutControl2Item12: TdxLayoutItem;
    edtPais: TcxDBTextEdit;
    dxLayoutControl2Item13: TdxLayoutItem;
    edtTipoOperacao: TcxDBTextEdit;
    dxLayoutControl2Item14: TdxLayoutItem;
    edtUnidadeNegócio: TcxDBTextEdit;
    dxLayoutControl2Item15: TdxLayoutItem;
    edtEstado: TcxDBTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    edtIDNCM: TcxDBCurrencyEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl4Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group4: TdxLayoutAutoCreatedGroup;
    procedure edtIDUnidadeNegocioExit(Sender: TObject);
    procedure edtIDTipoOperacaoExit(Sender: TObject);
    procedure edtIDPaisExit(Sender: TObject);
    procedure edtIDMunicipioExit(Sender: TObject);
    procedure edtIDPessoaExit(Sender: TObject);
    procedure edtIDObservacaoExit(Sender: TObject);
    procedure edtIDUnidadeNegocioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDTipoOperacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDPaisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDMunicipioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDObservacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDEstadoExit(Sender: TObject);
    procedure edtIDNCMExit(Sender: TObject);
    procedure edtIDEstadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPFICMSCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPFICMSCSTExit(Sender: TObject);
    procedure edtPFIPICSTExit(Sender: TObject);
    procedure edtPFIPICSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPFPISCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPFPISCSTExit(Sender: TObject);
    procedure edtPFCOFINSCSTExit(Sender: TObject);
    procedure edtPFCOFINSCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPFCSOSNExit(Sender: TObject);
    procedure edtPFCSOSNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPJICMSCSTExit(Sender: TObject);
    procedure edtPJICMSCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPJIPICSTExit(Sender: TObject);
    procedure edtPJIPICSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPJCSOSNExit(Sender: TObject);
    procedure edtPJCSOSNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPJPISCSTExit(Sender: TObject);
    procedure edtPJPISCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPJCOFINSCSTExit(Sender: TObject);
    procedure edtPJCOFINSCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameRegraFiscal: TFrameRegraFiscal;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameRegraFiscal.edtIDEstadoExit(Sender: TObject);
begin
  inherited;
if edtIDEstado.EditValue>0 then
  begin
    DM.cdsRegraFiscalestadonome.AsString:= i2bGetValor('estado', 'idestado', edtIDEstado.Text, 'nome', DM.dspConnection);
	if DM.cdsRegraFiscalestadonome.AsString='' then
    begin
      MessageDlg('O estado não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDEstado.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtIDEstadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key = VK_F2 then
  begin
    i2bF2(edtIDestado, edtestado, 'Selecione o estado.', 'idestado|nome', 'nome',
      'idestado|nome', 'ID|Estado', 'Estado', '', DM.conServer, 'FrameEstado', DM.cdsEstado);
  end;
end;

procedure TFrameRegraFiscal.edtIDMunicipioExit(Sender: TObject);
begin
  inherited;
  if edtIDMunicipio.EditValue>0 then
  begin
    DM.cdsRegraFiscalmunicipionome.AsString:= i2bGetValor('municipio', 'idmunicipio', edtIDMunicipio.Text, 'nome', DM.dspConnection);
	if DM.cdsRegraFiscalmunicipionome.AsString='' then
    begin
      MessageDlg('O município não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDMunicipio.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtIDMunicipioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDMunicipio, edtMunicipio, 'Selecione o município.', 'idmunicipio|nome', 'nome',
      'idmunicipio|nome', 'ID|Município', 'Tabela', '', DM.conServer, 'FrameMunicipio', DM.cdsMunicipio);
  end;
end;

procedure TFrameRegraFiscal.edtIDNCMExit(Sender: TObject);
begin
  inherited;
if edtIDNCM.EditValue>0 then
  begin
    DM.cdsRegraFiscalncmdescricao.AsString:= i2bGetValor('ncm', 'idncm', edtIDNCM.Text, 'descricao', DM.dspConnection);
	if DM.cdsRegraFiscalncmdescricao.AsString='' then
    begin
      MessageDlg('A ncm não pode ser encontrada.', mtError, [mbOK], 0);
      edtIDNCM.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtIDNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
if Key = VK_F2 then
  begin
    i2bF2(edtIDNCM, edtNCM, 'Selecione a ncm.', 'idncm|descricao', 'idncm',
      'idncm|Descricao', 'ID|Descrição', 'ncm', '', DM.conServer, 'FrameNCM', DM.cdsNCM);
  end;
end;

procedure TFrameRegraFiscal.edtIDObservacaoExit(Sender: TObject);
begin
  inherited;
  if edtIDObservacao.EditValue>0 then
  begin
    DM.cdsRegraFiscalobservacao2.AsString:= i2bGetValor('regrafiscalobservacao', 'idregrafiscalobservacao', edtIDObservacao.Text, 'observacao', DM.dspConnection);
	if DM.cdsRegraFiscalobservacao2.AsString='' then
    begin
      MessageDlg('O campo não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDObservacao.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtIDObservacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDObservacao, nil, 'Selecione a observacao.', 'idobservacao', 'idobservacao',
      'idobservacao|observacao', 'ID|Observação', 'regrafiscalobservacao', '', DM.conServer, 'FrameRegraFiscalObservacao', DM.cdsRegraFiscalObservacao);
  end;
end;

procedure TFrameRegraFiscal.edtIDPaisExit(Sender: TObject);
begin
  inherited;
  if edtIDPais.EditValue>0 then
  begin
    DM.cdsRegraFiscalpaisnome.AsString:= i2bGetValor('pais', 'idpais', edtIDPais.Text, 'nome', DM.dspConnection);
	if DM.cdsRegraFiscalpaisnome.AsString='' then
    begin
      MessageDlg('O país não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDPais.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtIDPaisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDPais, edtPais, 'Selecione o país.', 'idpais|nome', 'idpais',
      'idpais|nome', 'ID|País', 'pais', '', DM.conServer, 'FramePais', DM.cdsPais);
  end;
end;

procedure TFrameRegraFiscal.edtIDPessoaExit(Sender: TObject);
begin
  inherited;
  if edtIDPessoa.EditValue>0 then
  begin
    DM.cdsRegraFiscalpessoanome.AsString:= i2bGetValor('pessoa', 'idpessoa', edtIDPessoa.Text, 'nome', DM.dspConnection);
	if DM.cdsRegraFiscalpessoanome.AsString='' then
    begin
      MessageDlg('A pessoa não pode ser encontrada.', mtError, [mbOK], 0);
      edtIDPessoa.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtIDPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDPessoa, edtPessoa, 'Selecione a pessoa.', 'idpessoa|nome', 'nome',
      'idpessoa|nome', 'ID|Nome', 'Pessoa', '', DM.conServer, 'FramePessoa', DM.cdsPessoa);
  end;
end;

procedure TFrameRegraFiscal.edtIDTipoOperacaoExit(Sender: TObject);
begin
  inherited;
  if edtIDTipoOperacao.EditValue>0 then
  begin
    DM.cdsRegraFiscaltipooperacaodescricao.AsString:= i2bGetValor('tipooperacao', 'idtipoperacao', edtIDTipoOperacao.Text, 'descricao', DM.dspConnection);
	if DM.cdsRegraFiscaltipooperacaodescricao.AsString='' then
    begin
      MessageDlg('O tipo de operação não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDTipoOperacao.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtIDTipoOperacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDTipoOperacao, edtTipoOperacao, 'Selecione o tipo de operação.', 'idtipooperacao|descricao', 'descricao',
      'idtipooperacao|descricao', 'ID|Descrição', 'tipooperacao', '', DM.conServer, 'FrameTipoOperacao', DM.cdsTipoOperacao);
  end;
end;

procedure TFrameRegraFiscal.edtIDUnidadeNegocioExit(Sender: TObject);
begin
  inherited;
  if edtIDUnidadeNegocio.EditValue>0 then
  begin
    DM.cdsRegraFiscalnomefantasia.AsString:= i2bGetValor('unidadenegocio', 'idunidadenegocio', edtIDUnidadeNegocio.Text, 'nomefantasia', DM.dspConnection);
	if DM.cdsRegraFiscalnomefantasia.AsString='' then
    begin
      MessageDlg('A unidade de negócio não pode ser encontrada.', mtError, [mbOK], 0);
      edtIDUnidadeNegocio.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtIDUnidadeNegocioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDUnidadeNegocio, edtUnidadeNegócio, 'Selecione a unidade de negócio.', 'idunidadenegocio', 'nomefantasia',
      'idunidaddenegocio|nomefantasia', 'ID|Nome Fantasia', 'unidadenegocio', '', DM.conServer, 'FrameUnidadeNegocio', DM.cdsUnidadeNegocio);
  end;
end;

procedure TFrameRegraFiscal.edtPFCOFINSCSTExit(Sender: TObject);
begin
  inherited;
  if edtPFCOFINSCST.EditValue>0 then
  begin
    DM.cdsRegraFiscalpfcofinscst.AsString:= i2bGetValor('cstcofins', 'idcstcofins', edtPFCOFINSCST.Text, 'idcstcofins', DM.dspConnection);
	if DM.cdsRegraFiscalpfcofinscst.AsString='' then
    begin
      MessageDlg('A cofins ipi da pessoa física não pode ser encontrada.', mtError, [mbOK], 0);
      edtPFCOFINSCST.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPFCOFINSCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPFCOFINSCST, nil, 'Selecione o cst COFINS para pessoa física.', 'idcstcofins', 'idcstcofins',
      'idcstcofins|Descricao|observacao', 'ID|Descrição|Observação', 'cstcofins', '', DM.conServer, 'FrameCstcofins', DM.cdsCSTCOFINS);
  end;
end;

procedure TFrameRegraFiscal.edtPFCSOSNExit(Sender: TObject);
begin
  inherited;
  if edtPFCSOSN.EditValue>0 then
  begin
    DM.cdsRegraFiscalpfcsosn.AsString:= i2bGetValor('cstcsosn', 'idcstcsosn', edtPFCSOSN.Text, 'idcstcsosn', DM.dspConnection);
	if DM.cdsRegraFiscalpfcsosn.AsString='' then
    begin
      MessageDlg('A csosn da pessoa física não pode ser encontrada.', mtError, [mbOK], 0);
      edtPFCSOSN.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPFCSOSNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPFCSOSN, nil, 'Selecione a csosn para pessoa física.', 'idcstcsosn', 'idcstcsosn',
      'idcstcsosn|Descricao|observacao', 'ID|Descrição|Observação', 'cstcsosn', '', DM.conServer, 'FrameCstcsosn', DM.CDSCSTCSOSN);
  end;
end;

procedure TFrameRegraFiscal.edtPFICMSCSTExit(Sender: TObject);
begin
  inherited;
  if edtPFICMSCST.EditValue>0 then
  begin
    DM.cdsRegraFiscalpficmscst.AsString:= i2bGetValor('csticms', 'idcsticms', edtPFICMSCST.Text, 'idcsticms', DM.dspConnection);
	if DM.cdsRegraFiscalpficmscst.AsString='' then
    begin
      MessageDlg('A cst icms da pessoa física não pode ser encontrada.', mtError, [mbOK], 0);
      edtPFICMSCST.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPFICMSCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPFICMSCST, nil, 'Selecione o cst ICMS para pessoa física.', 'idcsticms', 'idcsticms',
      'idcsticms|Descricao|observacao', 'ID|Descrição|Observação', 'csticms', '', DM.conServer, 'FrameCstIcms', DM.cdsCSTICMS);
  end;
end;

procedure TFrameRegraFiscal.edtPFIPICSTExit(Sender: TObject);
begin
  inherited;
  if edtPFIPICST.EditValue>0 then
  begin
    DM.cdsRegraFiscalpfipicst.AsString:= i2bGetValor('cstipi', 'idcstipi', edtPFIPICST.Text, 'idcstipi', DM.dspConnection);
	if DM.cdsRegraFiscalpfipicst.AsString='' then
    begin
      MessageDlg('A cst ipi da pessoa física não pode ser encontrada.', mtError, [mbOK], 0);
      edtPFIPICST.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPFIPICSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPFIPICST, nil, 'Selecione o cst IPI para pessoa física.', 'idcstipi', 'idcstipi',
      'idcstipi|Descricao|observacao', 'ID|Descrição|Observação', 'cstipi', '', DM.conServer, 'FrameCstIPI', DM.cdsCSTIPI);
  end;
end;

procedure TFrameRegraFiscal.edtPFPISCSTExit(Sender: TObject);
begin
  inherited;
  if edtPFPISCST.EditValue>0 then
  begin
    DM.cdsRegraFiscalpfpiscst.AsString:= i2bGetValor('cstpis', 'idcstpis', edtPFPISCST.Text, 'idcstpis', DM.dspConnection);
	if DM.cdsRegraFiscalpfpiscst.AsString='' then
    begin
      MessageDlg('A cst pis da pessoa física não pode ser encontrada.', mtError, [mbOK], 0);
      edtPFPISCST.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPFPISCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPFPISCST, nil, 'Selecione o cst PIS para pessoa física.', 'idcstPIS', 'idcstPIS',
      'idcstPIS|Descricao', 'ID|Descrição', 'cstPIS', '', DM.conServer, 'FrameCstPIS', DM.cdsCSTPIS);
  end;
end;

procedure TFrameRegraFiscal.edtPJCOFINSCSTExit(Sender: TObject);
begin
  inherited;
  if edtPJCOFINSCST.EditValue>0 then
  begin
    DM.cdsRegraFiscalpjcofinscst.AsString:= i2bGetValor('cstcofins', 'idcstcofins', edtPJCOFINSCST.Text, 'idcstcofins', DM.dspConnection);
	if DM.cdsRegraFiscalpjcofinscst.AsString='' then
    begin
      MessageDlg('A cofins ipi da pessoa jurídica não pode ser encontrada.', mtError, [mbOK], 0);
      edtPJCOFINSCST.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPJCOFINSCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPJCOFINSCST, nil, 'Selecione o cst COFINS para pessoa jurídica.', 'idcstcofins', 'idcstcofins',
      'idcstcofins|Descricao|observacao', 'ID|Descrição|Observação', 'cstcofins', '', DM.conServer, 'FrameCstcofins', DM.cdsCSTCOFINS);
  end;
end;

procedure TFrameRegraFiscal.edtPJCSOSNExit(Sender: TObject);
begin
  inherited;
  if edtPJCSOSN.EditValue>0 then
  begin
    DM.cdsRegraFiscalpjcsosn.AsString:= i2bGetValor('cstcsosn', 'idcstcsosn', edtPJCSOSN.Text, 'idcstcsosn', DM.dspConnection);
	if DM.cdsRegraFiscalpjcsosn.AsString='' then
    begin
      MessageDlg('A csosn da pessoa jurídica não pode ser encontrada.', mtError, [mbOK], 0);
      edtPJCSOSN.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPJCSOSNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPJCSOSN, nil, 'Selecione a csosn para pessoa jurídica.', 'idcstcsosn', 'idcstcsosn',
      'idcstcsosn|Descricao|observacao', 'ID|Descrição|Observação', 'cstcsosn', '', DM.conServer, 'FrameCstcsosn', DM.CDSCSTCSOSN);
  end;
end;

procedure TFrameRegraFiscal.edtPJICMSCSTExit(Sender: TObject);
begin
  inherited;
  if edtPJICMSCST.EditValue>0 then
  begin
    DM.cdsRegraFiscalpjicmscst.AsString:= i2bGetValor('csticms', 'idcsticms', edtPJICMSCST.Text, 'idcsticms', DM.dspConnection);
	if DM.cdsRegraFiscalpjicmscst.AsString='' then
    begin
      MessageDlg('A cst icms da pessoa jurídica não pode ser encontrada.', mtError, [mbOK], 0);
      edtPJICMSCST.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPJICMSCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPJICMSCST, nil, 'Selecione a cst ICMS para pessoa jurídica.', 'idcsticms', 'idcsticms',
      'idcsticms|Descricao|observacao', 'ID|Descrição|Observação', 'csticms', '', DM.conServer, 'FrameCstIcms', DM.cdsCSTICMS);
  end;
end;

procedure TFrameRegraFiscal.edtPJIPICSTExit(Sender: TObject);
begin
  inherited;
  if edtPJIPICST.EditValue>0 then
  begin
    DM.cdsRegraFiscalpjipicst.AsString:= i2bGetValor('cstipi', 'idcstipi', edtPJIPICST.Text, 'idcstipi', DM.dspConnection);
	if DM.cdsRegraFiscalpjipicst.AsString='' then
    begin
      MessageDlg('A cst ipi da pessoa jurídica não pode ser encontrada.', mtError, [mbOK], 0);
      edtPJIPICST.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPJIPICSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPJIPICST, nil, 'Selecione a cst IPI para pessoa jurídica.', 'idcstipi', 'idcstipi',
      'idcstipi|Descricao|observacao', 'ID|Descrição|Observação', 'cstipi', '', DM.conServer, 'FrameCstIPI', DM.cdsCSTIPI);
  end;
end;

procedure TFrameRegraFiscal.edtPJPISCSTExit(Sender: TObject);
begin
  inherited;
  if edtPJPISCST.EditValue>0 then
  begin
    DM.cdsRegraFiscalpjpiscst.AsString:= i2bGetValor('cstpis', 'idcstpis', edtPJPISCST.Text, 'idcstpis', DM.dspConnection);
	if DM.cdsRegraFiscalpjpiscst.AsString='' then
    begin
      MessageDlg('A cst pis da pessoa jurídica não pode ser encontrada.', mtError, [mbOK], 0);
      edtPJPISCST.SetFocus;
    end;
  end;
end;

procedure TFrameRegraFiscal.edtPJPISCSTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtPJPISCST, nil, 'Selecione o cst PIS para pessoa jurídica.', 'idcstPIS', 'idcstPIS',
      'idcstPIS|Descricao', 'ID|Descrição', 'cstPIS', '', DM.conServer, 'FrameCstPIS', DM.cdsCSTPIS);
  end;
end;

end.
