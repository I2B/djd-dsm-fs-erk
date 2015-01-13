unit unFramePais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxDBEdit, Data.DB, dxLayoutControl, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxCurrencyEdit;

type
  TFramePais = class(TFramePai)
    edtMoeda: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtPais: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtIDMoeda: TcxDBCurrencyEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    procedure edtIDMoedaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDMoedaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FramePais: TFramePais;

implementation

{$R *.dfm}

uses unDM, unI2BFuncoes, unI2BBD;

procedure TFramePais.edtIDMoedaExit(Sender: TObject);
begin
  inherited;
  if edtIDMoeda.EditValue>0 then
  begin
    DM.cdsPaisindicadordescricao.AsString:= i2bGetValor('IndicadorEconomico', 'idIndicadorEconomico', edtIDMoeda.Text, 'descricao', DM.dspConnection);
	if DM.cdsPaisindicadordescricao.AsString='' then
    begin
      MessageDlg('A moeda não pode ser encontrada.', mtError, [mbOK], 0);
      edtIDMoeda.SetFocus;
    end;
  end;
end;

procedure TFramePais.edtIDMoedaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDMoeda, edtMoeda, 'Selecione a moeda referente ao país.', 'idIndicadorEconomico|descricao', 'descricao',
      'idIndicadorEconomico|Descricao', 'ID|Descrição', 'IndicadorEconomico', 'ativo=true', DM.conServer, 'FramePais', DM.cdsIndicadorEconomico);
  end;
end;

end.
