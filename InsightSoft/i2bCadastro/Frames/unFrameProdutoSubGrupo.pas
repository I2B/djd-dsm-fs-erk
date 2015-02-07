unit unFrameProdutoSubGrupo;

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
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMemo, cxDBEdit,
  cxCurrencyEdit;

type
  TFrameProdutoSubGrupo = class(TFramePai)
    edtProdutoSubGrupoNome: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtProdutoSubGrupoDescricao: TcxDBMemo;
    dxLayoutControlItem3: TdxLayoutItem;
    edtGrupo: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    edtIDGrupo: TcxDBCurrencyEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    procedure edtIDGrupoExit(Sender: TObject);
    procedure edtIDGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoSubGrupo: TFrameProdutoSubGrupo;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameProdutoSubGrupo.edtIDGrupoExit(Sender: TObject);
begin
  inherited;
  if edtIDGrupo.EditValue>0 then
  begin
    DM.cdsProdutoSubGrupoGruponome.AsString:= i2bGetValor('ProdutoGrupo', 'idgrupoprodutos', edtIDGrupo.Text, 'nome', DM.dspConnection);
	if DM.cdsProdutoSubGrupoGruponome.AsString='' then
    begin
      MessageDlg('O grupo não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDGrupo.SetFocus;
    end;
  end;
end;

procedure TFrameProdutoSubGrupo.edtIDGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDGrupo, edtGrupo, 'Selecione o grupo.', 'idgrupoprodutos|nome', 'nome',
      'idgrupoprodutos|nome', 'ID|Grupo', 'ProdutoGrupo', '', DM.conServer, 'FrameProdutoGrupo', DM.cdsProdutoSubGrupo);
  end;
end;

end.
