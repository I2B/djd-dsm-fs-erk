unit unFrameProdutoFornecedor;

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
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxCurrencyEdit;

type
  TFrameProdutoFornecedor = class(TFramePai)
    edtProdutoFornecedorID: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtPrecoUltimaCompra: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtDataUltimaCompra: TcxDBDateEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    edtIDProduto: TcxDBCurrencyEdit;
    dxLayoutControlItem8: TdxLayoutItem;
    edtIDFornecedor: TcxDBCurrencyEdit;
    dxLayoutControlItem9: TdxLayoutItem;
    edtProduto: TcxDBTextEdit;
    dxLayoutControlItem10: TdxLayoutItem;
    edtFornecedor: TcxDBTextEdit;
    dxLayoutControlItem11: TdxLayoutItem;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup;
    procedure edtIDProdutoExit(Sender: TObject);
    procedure edtIDProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoFornecedor: TFrameProdutoFornecedor;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameProdutoFornecedor.edtIDProdutoExit(Sender: TObject);
begin
  inherited;
  if edtIDProduto.EditValue>0 then
  begin
    DM.cdsProdutoFornecedorprodutonome.AsString:= i2bGetValor('produto', 'idproduto', edtIDProduto.Text, 'nome', DM.dspConnection);
	if DM.cdsProdutoFornecedorprodutonome.AsString='' then
    begin
      MessageDlg('O produto não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDProduto.SetFocus;
    end;
  end;
end;

procedure TFrameProdutoFornecedor.edtIDProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDFornecedor, edtFornecedor, 'Selecione o fornecedor.', 'idPessoa|nome', 'nome',
      'idPessoa|nome', 'ID|Fornecedor', 'Pessoa', '', DM.conServer, 'FramePessoa', DM.cdsProdutoFornecedor);
  end;
end;

end.
