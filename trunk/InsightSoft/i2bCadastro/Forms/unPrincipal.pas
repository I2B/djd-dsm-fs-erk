unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, dxBar, dxRibbon, cxLookAndFeels, dxSkinsForm,
  cxLookAndFeelPainters, cxGraphics, dxAlertWindow, cxControls, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbonRadialMenu, cxContainer, cxEdit, dxGDIPlusClasses, cxImage,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxPC, dxSkinscxPCPainter, dxBarBuiltInMenu, dxTabbedMDI, Data.DB,
  Datasnap.DBClient, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    dxBarManager: TdxBarManager;
    dxRibbonPopupMenu: TdxRibbonPopupMenu;
    dxSkinController: TdxSkinController;
    dxAlertWindowManager: TdxAlertWindowManager;
    barCadastros: TdxBar;
    tabPrincipal: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    btnCliente: TdxBarLargeButton;
    btnSerie: TdxBarLargeButton;
    dxStatusBar: TdxStatusBar;
    dxTabbedMDIManager: TdxTabbedMDIManager;
    btnIndicadorEconomico: TdxBarLargeButton;
    tabParametro: TdxRibbonTab;
    tabPessoas: TdxRibbonTab;
    tabProdutos: TdxRibbonTab;
    tabRegraFiscal: TdxRibbonTab;
    tabEmpresa: TdxRibbonTab;
    tabFinanceiro: TdxRibbonTab;
    barAuditoria: TdxBar;
    btnAuditoria: TdxBarLargeButton;
    barPortador: TdxBar;
    btnBanco: TdxBarLargeButton;
    btnPortador: TdxBarLargeButton;
    barEstrutura: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManagerBar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure btnSerieClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIndicadorEconomicoClick(Sender: TObject);
    procedure btnAuditoriaClick(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure btnPortadorClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unSerie, unDM, unIndicadorEconomico, unCADAuditoria, unCADBanco, unCADPortador, unCADCBO, unCADCEP, unCADCFOP,
  unCADCNAE, unCADUnidadeNegocio, unCADTipoTelefone, unCADTipoOperacao, unCADTelefone, unCADCSTCofins, unCADCSTIPI,
  unCADCSTPIS;

procedure TfrmPrincipal.btnSerieClick(Sender: TObject);
begin
  DM.cdsSerie.Open;
  if frmSerie = nil then
  begin
    frmSerie := TfrmSerie.Create(Application);
    frmSerie.pnlTop.Caption := frmSerie.Caption+'  ';
  end
  else
  begin
    frmSerie.Show;
  end;
end;

procedure TfrmPrincipal.dxBarLargeButton1Click(Sender: TObject);
begin
  DM.cdsCBO.Open;
  if frmCADCBO = nil then
  begin
    frmCADCBO := TfrmCADCBO.Create(Application);
    frmCADCBO.pnlTop.Caption := frmCADCBO.Caption+'  ';
  end
  else
  begin
    frmCADCBO.Show;
  end;
end;

procedure TfrmPrincipal.dxBarLargeButton2Click(Sender: TObject);
begin
  DM.cdsTelefone.Open;
  if frmCADTelefone = nil then
  begin
    frmCADTelefone := TfrmCADTelefone.Create(Application);
    frmCADTelefone.pnlTop.Caption := frmCADTelefone.Caption+'  ';
  end
  else
  begin
    frmCADTelefone.Show;
  end;

end;

procedure TfrmPrincipal.btnAuditoriaClick(Sender: TObject);
begin
  DM.cdsAuditoria.Open;
  if frmCADAuditoria = nil then
  begin
    frmCADAuditoria := TfrmCADAuditoria.Create(Application);
    frmCADAuditoria.pnlTop.Caption := frmCADAuditoria.Caption+'  ';
  end
  else
  begin
    frmCADAuditoria.Show;
  end;
end;

procedure TfrmPrincipal.btnBancoClick(Sender: TObject);
begin
  DM.cdsBanco.Open;
  if frmCADBanco = nil then
  begin
    frmCADBanco := TfrmCADBanco.Create(Application);
    frmCADBanco.pnlTop.Caption := frmCADBanco.Caption+'  ';
  end
  else
  begin
    frmCADBanco.Show;
  end;
end;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
  DM.cdsCNAE.Open;
  if frmCADCNAE = nil then
  begin
    frmCADCNAE := TfrmCADCNAE.Create(Application);
    frmCADCNAE.pnlTop.Caption := frmCADCNAE.Caption+'  ';
  end
  else
  begin
    frmCADCNAE.Show;
  end;
end;

procedure TfrmPrincipal.btnIndicadorEconomicoClick(Sender: TObject);
begin
  DM.cdsIndicadorEconomico.Open;
  if frmCADIndicadorEconomico = nil then
  begin
    frmCADIndicadorEconomico := TfrmCADIndicadorEconomico.Create(Application);
    frmCADIndicadorEconomico.pnlTop.Caption := frmCADIndicadorEconomico.Caption+'  ';
  end
  else
  begin
    frmCADIndicadorEconomico.Show;
  end;
end;

procedure TfrmPrincipal.btnPortadorClick(Sender: TObject);
begin
  DM.cdsPortador.Open;
  if frmCadPortador = nil then
  begin
    frmCadPortador := TfrmCadPortador.Create(Application);
    frmCadPortador.pnlTop.Caption := frmCadPortador.Caption+'  ';
  end
  else
  begin
    frmCadPortador.Show;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DM.conServer.Open;
end;

end.
