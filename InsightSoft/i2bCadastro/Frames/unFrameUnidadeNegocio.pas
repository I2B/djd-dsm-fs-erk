unit unFrameUnidadeNegocio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxCurrencyEdit;

type
  TFrameUnidadeNegocio = class(TFramePai)
    edtEmpresa: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtCNAE: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtFantasia: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtIDEmpresa: TcxDBCurrencyEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    edtIDCNAE: TcxDBCurrencyEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    edtCNPJ: TcxDBCurrencyEdit;
    dxLayoutControlItem7: TdxLayoutItem;
    procedure edtIDCNAEExit(Sender: TObject);
    procedure edtIDCNAEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDEmpresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDEmpresaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameUnidadeNegocio: TFrameUnidadeNegocio;

implementation

{$R *.dfm}

uses unDM, unF2, unI2BFuncoes, unI2BBD;

procedure TFrameUnidadeNegocio.edtIDCNAEExit(Sender: TObject);
begin
  inherited;
  if edtIDCNAE.EditValue>0 then
  begin
    DM.cdsUnidadeNegociocnaedenominacao.AsString:= i2bGetValor('cnae', 'idcnae', edtIDCNAE.Text, 'denominacao', DM.dspConnection);
	if DM.cdsUnidadeNegociocnaedenominacao.AsString='' then
    begin
      MessageDlg('O CNAE não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDCNAE.SetFocus;
    end;
  end;
end;

procedure TFrameUnidadeNegocio.edtIDCNAEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDCNAE, edtCNAE, 'Selecione o CNAE.', 'idCnae', 'idCnae',
      'idCnae|Codigo|Denominacao', 'ID|Código CNAE|Denominação', 'CNAE', '', DM.conServer, 'FrameCNAE', DM.cdsCNAE);
  end;
end;

procedure TFrameUnidadeNegocio.edtIDEmpresaExit(Sender: TObject);
begin
  inherited;
  if edtIDEmpresa.EditValue>0 then
  begin
    DM.cdsUnidadeNegocioempresarazaosocial.AsString:= i2bGetValor('empresa', 'idempresa', edtIDEmpresa.Text, 'razaosocial', DM.dspConnection);
	if DM.cdsUnidadeNegocioempresarazaosocial.AsString='' then
    begin
      MessageDlg('A empresa não pode ser encontrada.', mtError, [mbOK], 0);
      edtIDEmpresa.SetFocus;
    end;
  end;
end;

procedure TFrameUnidadeNegocio.edtIDEmpresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDEmpresa, edtEmpresa, 'Selecione a empresa.', 'idEmpresa', 'idEmpresa',
      'idEmpresa|RazaoSocial|NomeFantasia', 'ID|Razão Social|Fantasia', 'Empresa', '', DM.conServer, 'FrameEmpresa', DM.cdsEmpresa);
  end;
end;

end.
