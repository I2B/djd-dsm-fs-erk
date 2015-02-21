unit unFrameProdutoTabelaPreco;

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
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit,
  cxCurrencyEdit;

type
  TFrameProdutoabelaPreco = class(TFramePai)
    edtProduto: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtTabelaNome: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtIDTabela: TcxDBCurrencyEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtIDProduto: TcxDBCurrencyEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    edtPreco: TcxDBCurrencyEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    procedure edtIDTabelaExit(Sender: TObject);
    procedure edtIDTabelaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDProdutoExit(Sender: TObject);
    procedure edtIDProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoabelaPreco: TFrameProdutoabelaPreco;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameProdutoabelaPreco.edtIDProdutoExit(Sender: TObject);
begin
  inherited;
  if edtIDProduto.EditValue>0 then
  begin
    DM.cdsProdutoTabelaPrecoprodutonome.AsString:= i2bGetValor('produto', 'idproduto', edtIDProduto.Text, 'nome', DM.dspConnection);
	if DM.cdsProdutoTabelaPrecoprodutonome.AsString='' then
    begin
      MessageDlg('O produto não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDProduto.SetFocus;
    end;
  end;
end;

procedure TFrameProdutoabelaPreco.edtIDProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDProduto, edtProduto, 'Selecione o produto.', 'idProduto|nome', 'nome',
      'idProduto|nome', 'ID|Produto', 'Produto', '', DM.conServer, 'FrameProduto', DM.cdsProduto);
  end;
end;

procedure TFrameProdutoabelaPreco.edtIDTabelaExit(Sender: TObject);
begin
  inherited;
  if edtIDTabela.EditValue>0 then
  begin
    DM.cdsProdutoTabelaPrecotabelapreconome.AsString:= i2bGetValor('tabelapreco', 'idtabelapreco', edtIDTabela.Text, 'nome', DM.dspConnection);
	if DM.cdsProdutoTabelaPrecotabelapreconome.AsString='' then
    begin
      MessageDlg('A tabela de preço não pode ser encontrada.', mtError, [mbOK], 0);
      edtIDTabela.SetFocus;
    end;
  end;
end;

procedure TFrameProdutoabelaPreco.edtIDTabelaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDTabela, edtTabelaNome, 'Selecione a tabela de preço.', 'idtabelapreco|nome', 'nome',
      'idtabelapreco|nome', 'ID|Tabela de Preço', 'tabelapreco', '', DM.conServer, 'frameTabelaPreco', DM.cdsTabelaPreco);
  end;
end;

end.
