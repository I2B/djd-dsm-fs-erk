unit unFrameProdutoUnidadeConversao;

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
  cxCurrencyEdit;

type
  TFrameProdutoUnidadeConversao = class(TFramePai)
    edtSigla: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtFatorConversao: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtDescricao: TcxDBMemo;
    dxLayoutControlItem5: TdxLayoutItem;
    dxLayoutControlGroup4: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutGroup;
    dxLayoutControlGroup2: TdxLayoutGroup;
    edtIDProduto: TcxDBCurrencyEdit;
    dxLayoutControlItem8: TdxLayoutItem;
    edtIDUnidadeConversao: TcxDBCurrencyEdit;
    dxLayoutControlItem9: TdxLayoutItem;
    edtUnidadeConversao: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtProduto: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    procedure edtIDProdutoExit(Sender: TObject);
    procedure edtIDProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDUnidadeConversaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDUnidadeConversaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoUnidadeConversao: TFrameProdutoUnidadeConversao;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameProdutoUnidadeConversao.edtIDProdutoExit(Sender: TObject);
begin
  inherited;
  if edtIDProduto.EditValue>0 then
  begin
    DM.cdsProdutoUnidadeConversaoprodutonome.AsString:= i2bGetValor('produto', 'idproduto', edtIDProduto.Text, 'nome', DM.dspConnection);
	if DM.cdsProdutoUnidadeConversaoprodutonome.AsString='' then
    begin
      MessageDlg('O produto não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDProduto.SetFocus;
    end;
  end;
end;

procedure TFrameProdutoUnidadeConversao.edtIDProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDProduto, edtProduto, 'Selecione o produto.', 'idProduto|nome', 'nome',
      'idproduto|nome', 'ID|Produto', 'Produto', '', DM.conServer, 'FrameProduto', DM.cdsProdutoUnidadeConversao);
  end;
end;

procedure TFrameProdutoUnidadeConversao.edtIDUnidadeConversaoExit(Sender: TObject);
begin
  inherited;
  if edtIDUnidadeConversao.EditValue>0 then
  begin
    DM.cdsProdutoUnidadeConversaounidadesigla.AsString:= i2bGetValor('ProdutoUnidade', 'idProdutoUnidade', edtIDUnidadeConversao.Text, 'Sigla', DM.dspConnection);
	if DM.cdsProdutoUnidadeConversaounidadesigla.AsString='' then
    begin
      MessageDlg('A unidade medida não pode ser encontrada.', mtError, [mbOK], 0);
      edtIDUnidadeConversao.SetFocus;
    end;
  end;
end;

procedure TFrameProdutoUnidadeConversao.edtIDUnidadeConversaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDUnidadeConversao, edtUnidadeConversao, 'Selecione a unidade de medida para conversão.', 'idProdutoUnidade|sigla', 'sigla',
      'idProdutoUnidade|Sigla|Descricao', 'ID|Sigla|Descrição', 'ProdutoUnidade', '', DM.conServer, 'FrameUnidadeConversao', DM.cdsProdutoUnidadeConversao);
  end;
end;

end.
