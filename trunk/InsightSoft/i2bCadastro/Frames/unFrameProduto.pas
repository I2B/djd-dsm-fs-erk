unit unFrameProduto;

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
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxMemo,
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxCheckBox, cxImage,
  cxButtonEdit, dxGDIPlusClasses;

type
  TFrameProduto = class(TFramePai)
    edtCodigoInterno: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtGETIN: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtDescricaoPDV: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtDescricaoDetalhada: TcxDBMemo;
    dxLayoutControlItem7: TdxLayoutItem;
    edtValorVenda: TcxDBCurrencyEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    edtValorCompra: TcxDBCurrencyEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    edtValorMinimoVenda: TcxDBCurrencyEdit;
    dxLayoutControlItem8: TdxLayoutItem;
    edtValorSugerido: TcxDBCurrencyEdit;
    dxLayoutControlItem9: TdxLayoutItem;
    edtCustoMedioLiquido: TcxDBCurrencyEdit;
    dxLayoutControlItem10: TdxLayoutItem;
    dxLayoutControlGroup4: TdxLayoutGroup;
    dxLayoutControlGroup1: TdxLayoutGroup;
    dxLayoutControlGroup2: TdxLayoutGroup;
    edtEstoqueIdeal: TcxDBCurrencyEdit;
    dxLayoutControlItem11: TdxLayoutItem;
    edtEstoqueMaximo: TcxDBCurrencyEdit;
    dxLayoutControlItem12: TdxLayoutItem;
    edtEstoqueMinimo: TcxDBCurrencyEdit;
    dxLayoutControlItem13: TdxLayoutItem;
    edtMarkup: TcxDBCurrencyEdit;
    dxLayoutControlItem14: TdxLayoutItem;
    edtValorLucroMaximo: TcxDBCurrencyEdit;
    dxLayoutControlItem15: TdxLayoutItem;
    edtValorLucroMinimo: TcxDBCurrencyEdit;
    dxLayoutControlItem16: TdxLayoutItem;
    edtValorLucroZero: TcxDBCurrencyEdit;
    dxLayoutControlItem17: TdxLayoutItem;
    dxLayoutControlGroup6: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutGroup;
    edtDataCadastro: TcxDBDateEdit;
    dxLayoutControlItem18: TdxLayoutItem;
    edtCodigoBalanca: TcxDBTextEdit;
    dxLayoutControlItem19: TdxLayoutItem;
    grpTipoProduto: TcxDBRadioGroup;
    dxLayoutControlItem20: TdxLayoutItem;
    dxLayoutControlItem21: TdxLayoutItem;
    chkInativ: TcxDBCheckBox;
    edtImagem: TcxImage;
    dxLayoutControlItem22: TdxLayoutItem;
    dxLayoutControlGroup5: TdxLayoutAutoCreatedGroup;
    edtNCM: TcxDBTextEdit;
    dxLayoutControlItem27: TdxLayoutItem;
    edtUNMedida: TcxDBTextEdit;
    dxLayoutControlItem29: TdxLayoutItem;
    edtCodigoGrupo: TcxDBCurrencyEdit;
    dxLayoutControlItem30: TdxLayoutItem;
    edtGrupo: TcxDBTextEdit;
    dxLayoutControlItem23: TdxLayoutItem;
    edtIDSubGrupo: TcxDBCurrencyEdit;
    dxLayoutControlItem24: TdxLayoutItem;
    edtSubGrupo: TcxDBTextEdit;
    dxLayoutControlItem25: TdxLayoutItem;
    edtIDNCM: TcxDBCurrencyEdit;
    dxLayoutControlItem26: TdxLayoutItem;
    procedure edtCodigoGrupoExit(Sender: TObject);
    procedure edtCodigoGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDSubGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDSubGrupoExit(Sender: TObject);
    procedure edtImagemClick(Sender: TObject);
    procedure edtIDNCMExit(Sender: TObject);
    procedure edtIDNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProduto: TFrameProduto;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unF2, unI2BFuncoes;

procedure TFrameProduto.edtCodigoGrupoExit(Sender: TObject);
begin
  inherited;
  if edtCodigoGrupo.EditValue>0 then
  begin
    DM.cdsProduto.FieldByName('GrupoNome').AsString:= i2bGetValor('produtogrupo', 'idgrupoprodutos', edtCodigoGrupo.Text, 'nome', DM.dspConnection);
	if DM.cdsProduto.FieldByName('GrupoNome').AsString='' then
    begin
      MessageDlg('O grupo não pode ser encontrado.', mtError, [mbOK], 0);
      edtCodigoGrupo.SetFocus;
    end;
  end;
end;

procedure TFrameProduto.edtCodigoGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtCodigoGrupo, edtGrupo, 'Selecione o grupo.', 'idGrupoProdutos|nome', 'nome',
      'idGrupoProdutos|nome', 'ID|Grupo', 'ProdutoGrupo', '', DM.conServer, 'FrameProduto', DM.cdsProdutoGrupo);
  end;
end;

procedure TFrameProduto.edtIDNCMExit(Sender: TObject);
begin
  inherited;
  if edtIDNCM.EditValue>0 then
  begin
    DM.cdsProdutoncmnome.AsString:= i2bGetValor('ncm', 'idncm', edtIDNCM.Text, 'descricao', DM.dspConnection);
	if DM.cdsProdutoncmnome.AsString='' then
    begin
      MessageDlg('A NCM não pode ser encontrada.', mtError, [mbOK], 0);
      edtIDNCM.SetFocus;
    end;
  end;
end;

procedure TFrameProduto.edtIDNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDNCM, edtNCM, 'Selecione a NCM.', 'idncm|descricao', 'idncm',
      'idncm|Descricao', 'NCM|Descrição', 'NCM', '', DM.conServer, 'FrameProduto', DM.cdsProduto);
  end;
end;

procedure TFrameProduto.edtIDSubGrupoExit(Sender: TObject);
begin
  inherited;
  if edtIDSubGrupo.EditValue>0 then
  begin
    DM.cdsProduto.FieldByName('subgruponome').AsString:= i2bGetValor('ProdutoSubGrupo', 'idsubgrupoprodutos', edtIDSubGrupo.Text,
      'nome', DM.dspConnection);
	if DM.cdsProduto.FieldByName('subgruponome').AsString='' then
    begin
      MessageDlg('O sub-grupo não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDSubGrupo.SetFocus;
    end;
  end;
end;

procedure TFrameProduto.edtIDSubGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDSubGrupo, edtSubGrupo, 'Selecione o sub-grupo.', 'idsubgrupoprodutos|nome', 'nome',
      'idsubgrupoprodutos|nome', 'ID|Sub-Grupo', 'ProdutoSubGrupo', '', DM.conServer, 'FrameProduto', DM.cdsProdutoSubGrupo);
  end;
end;

procedure TFrameProduto.edtImagemClick(Sender: TObject);
begin
  inherited;
  if DataSource.State in [dsInsert, dsEdit] then
  begin
    DM.cdsProdutofotoproduto.AsString:= i2bGetArquivo('JPG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps');
    if DM.cdsProdutofotoproduto.AsString= '' then
    begin
      edtImagem.Picture.LoadFromFile('C:\djd-dsm-fs-erk\Desenvolvimento\Imagens\AvatarDefault.png');
    end
    else
    begin
      edtImagem.Picture.LoadFromFile(DM.cdsProdutofotoproduto.AsString);
    end;
  end;
end;

end.
