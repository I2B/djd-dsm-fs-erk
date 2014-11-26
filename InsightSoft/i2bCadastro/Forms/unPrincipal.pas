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
  dxRibbonCustomizationForm, dxRibbonRadialMenu, cxContainer, cxEdit, dxGDIPlusClasses, cxImage, midasLib,
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
    tabPessoas: TdxRibbonTab;
    tabProdutos: TdxRibbonTab;
    tabRegraFiscal: TdxRibbonTab;
    tabEmpresa: TdxRibbonTab;
    tabFinanceiro: TdxRibbonTab;
    barAuditoria: TdxBar;
    barPortador: TdxBar;
    btnBanco: TdxBarLargeButton;
    btnPortador: TdxBarLargeButton;
    barEstrutura: TdxBar;
    btnCBO: TdxBarLargeButton;
    BarEmpresa: TdxBar;
    btnUnidadeNegocio: TdxBarLargeButton;
    barTributacao: TdxBar;
    btnIPI: TdxBarLargeButton;
    btnPIS: TdxBarLargeButton;
    btnCofins: TdxBarLargeButton;
    BarLocalidades: TdxBar;
    btnCep: TdxBarLargeButton;
    btnCFOP: TdxBarLargeButton;
    barMercado: TdxBar;
    btnCNAE: TdxBarLargeButton;
    btnCSOSN: TdxBarLargeButton;
    btnICMS: TdxBarLargeButton;
    btnEmpresa: TdxBarLargeButton;
    btnEstado: TdxBarLargeButton;
    barConfeccao: TdxBar;
    btnCor: TdxBarLargeButton;
    btnTamanho: TdxBarLargeButton;
    btnIndice: TdxBarLargeButton;
    barEngenhariaProduto: TdxBar;
    barProdutoUnidade: TdxBarLargeButton;
    btnUnidadeConversao: TdxBarLargeButton;
    barFiscal: TdxBar;
    btnRegraFiscal: TdxBarLargeButton;
    btnObservacao: TdxBarLargeButton;
    barSetor: TdxBarLargeButton;
    barPessoas: TdxBar;
    barTelefone: TdxBarLargeButton;
    btnAuditoria: TdxBarLargeButton;
    procedure btnSerieClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIndicadorEconomicoClick(Sender: TObject);
    procedure btnAuditoriaClick(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure btnPortadorClick(Sender: TObject);
    procedure btnCBOClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnUnidadeNegocioClick(Sender: TObject);
    procedure btnCofinsClick(Sender: TObject);
    procedure btnPISClick(Sender: TObject);
    procedure btnIPIClick(Sender: TObject);
    procedure btnCFOPClick(Sender: TObject);
    procedure btnCepClick(Sender: TObject);
    procedure btnCNAEClick(Sender: TObject);
    procedure btnCSOSNClick(Sender: TObject);
    procedure btnICMSClick(Sender: TObject);
    procedure btnEmpresaClick(Sender: TObject);
    procedure btnEstadoClick(Sender: TObject);
    procedure btnCorClick(Sender: TObject);
    procedure btnTamanhoClick(Sender: TObject);
    procedure btnIndiceClick(Sender: TObject);
    procedure barProdutoUnidadeClick(Sender: TObject);
    procedure btnUnidadeConversaoClick(Sender: TObject);
    procedure btnRegraFiscalClick(Sender: TObject);
    procedure btnObservacaoClick(Sender: TObject);
    procedure barSetorClick(Sender: TObject);
    procedure barTelefoneClick(Sender: TObject);
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
  unCADCSTPIS, unCADEmpresa, unCADSetor, unCADRegraFiscalObservacao, unCADProdutoUnidadeConversao, unCADProdutoUnidade,
  unCADRegraFiscal, UnCADCSTCSOSN, unCADCSTICMS, unCADEstado, unCADEstoqueCor,
  unCADEstoqueTamanho, unCADIndice;

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

procedure TfrmPrincipal.btnTamanhoClick(Sender: TObject);
begin
   DM.cdsProdutoTamanho.Open;
  if frmCADEstoqueTamanho = nil then
  begin
    frmCADEstoqueTamanho := TfrmCADEstoqueTamanho.Create(Application);
    frmCADEstoqueTamanho.pnlTop.Caption := frmCADEstoqueTamanho.Caption+'  ';
  end
  else
  begin
    frmCADEstoqueTamanho.Show;
  end;
end;

procedure TfrmPrincipal.btnCBOClick(Sender: TObject);
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

procedure TfrmPrincipal.btnCepClick(Sender: TObject);
begin
    DM.cdsCEP.Open;
  if frmCADCEP = nil then
  begin
    frmCADCEP := TfrmCADCEP.Create(Application);
    frmCADCEP.pnlTop.Caption := frmCADCEP.Caption+'  ';
  end
  else
  begin
    frmCADCEP.Show;
  end;
end;

procedure TfrmPrincipal.btnCFOPClick(Sender: TObject);
begin
  DM.cdsCFOP.Open;
  if frmCADCFOP = nil then
  begin
    frmCADCFOP := TfrmCADCFOP.Create(Application);
    frmCADCFOP.pnlTop.Caption := frmCADCFOP.Caption+'  ';
  end
  else
  begin
    frmCADCFOP.Show;
  end;
end;

procedure TfrmPrincipal.btnUnidadeConversaoClick(Sender: TObject);
begin
  DM.cdsProdutoUnidadeConversao.Open;
  if frmCADProdutoUnidadeConversao = nil then
  begin
    frmCADProdutoUnidadeConversao := TfrmCADProdutoUnidadeConversao.Create(Application);
    frmCADProdutoUnidadeConversao.pnlTop.Caption := frmCADProdutoUnidadeConversao.Caption+'  ';
  end
  else
  begin
    frmCADProdutoUnidadeConversao.Show;
  end;
end;

procedure TfrmPrincipal.btnUnidadeNegocioClick(Sender: TObject);
begin
  DM.cdsUnidadeNegocio.Open;
  if frmCADUnidadeNegocio = nil then
  begin
    frmCADUnidadeNegocio := TfrmCADUnidadeNegocio.Create(Application);
    frmCADUnidadeNegocio.pnlTop.Caption := frmCADUnidadeNegocio.Caption+'  ';
  end
  else
  begin
    frmCADUnidadeNegocio.Show;
  end;
end;

procedure TfrmPrincipal.btnICMSClick(Sender: TObject);
begin
  DM.cdsCSTICMS.Open;
  if frmCADCSTICMS = nil then
  begin
    frmCADCSTICMS := TfrmCADCSTICMS.Create(Application);
    frmCADCSTICMS.pnlTop.Caption := frmCADCSTICMS.Caption+'  ';
  end
  else
  begin
    frmCADCSTICMS.Show;
  end;
end;

procedure TfrmPrincipal.btnCNAEClick(Sender: TObject);
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

procedure TfrmPrincipal.btnCSOSNClick(Sender: TObject);
begin
  DM.cdsCSTCSOSN.Open;
  if frmCADCSTCSOSN = nil then
  begin
    frmCADCSTCSOSN := TfrmCADCSTCSOSN.Create(Application);
    frmCADCSTCSOSN.pnlTop.Caption := frmCADCSTCSOSN.Caption+'  ';
  end
  else
  begin
    frmCADCSTCSOSN.Show;
  end;
end;

procedure TfrmPrincipal.btnEmpresaClick(Sender: TObject);
begin
  DM.cdsEmpresa.Open;
  if frmCADEmpresa = nil then
  begin
    frmCADEmpresa := TfrmCADEmpresa.Create(Application);
    frmCADEmpresa.pnlTop.Caption := frmCADEmpresa.Caption+'  ';
  end
  else
  begin
    frmCADEmpresa.Show;
  end;
end;

procedure TfrmPrincipal.btnEstadoClick(Sender: TObject);
begin
  DM.cdsEstado.Open;
  if frmCADEstado = nil then
  begin
    frmCADEstado := TfrmCADEstado.Create(Application);
    frmCADEstado.pnlTop.Caption := frmCADEstado.Caption+'  ';
  end
  else
  begin
    frmCADEstado.Show;
  end;
end;

procedure TfrmPrincipal.barProdutoUnidadeClick(Sender: TObject);
begin
  DM.cdsProdutoUnidade.Open;
  if frmCADAuditoria = nil then
  begin
    frmCADProdutoUnidade := TfrmCADProdutoUnidade.Create(Application);
    frmCADProdutoUnidade.pnlTop.Caption := frmCADProdutoUnidade.Caption+'  ';
  end
  else
  begin
    frmCADProdutoUnidade.Show;
  end;
end;

procedure TfrmPrincipal.barSetorClick(Sender: TObject);
begin
  DM.cdsSetor.Open;
  if frmCADSetor = nil then
  begin
    frmCADSetor := TfrmCADSetor.Create(Application);
    frmCADSetor.pnlTop.Caption := frmCADSetor.Caption+'  ';
  end
  else
  begin
    frmCADSetor.Show;
  end;
end;

procedure TfrmPrincipal.barTelefoneClick(Sender: TObject);
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
  DM.cdsCSTCSOSN.Open;
  if frmCADCSTCSOSN = nil then
  begin
    frmCADCSTCSOSN := TfrmCADCSTCSOSN.Create(Application);
    frmCADCSTCSOSN.pnlTop.Caption := frmCADCSTCSOSN.Caption+'  ';
  end
  else
  begin
    frmCADCSTCSOSN.Show;
  end;
end;

procedure TfrmPrincipal.btnCofinsClick(Sender: TObject);
begin
  DM.cdsCSTCofins.Open;
  if frmCADCSTCofins = nil then
  begin
    frmCADCSTCofins := TfrmCADCSTCofins.Create(Application);
    frmCADCSTCofins.pnlTop.Caption := frmCADCSTCofins.Caption+'  ';
  end
  else
  begin
    frmCADCSTCofins.Show;
  end;
end;

procedure TfrmPrincipal.btnCorClick(Sender: TObject);
begin
  DM.cdsProdutoCor.Open;
  if frmCADEstoqueCor = nil then
  begin
    frmCADEstoqueCor := TfrmCADEstoqueCor.Create(Application);
    frmCADEstoqueCor.pnlTop.Caption := frmCADEstoqueCor.Caption+'  ';
  end
  else
  begin
    frmCADEstoqueCor.Show;
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

procedure TfrmPrincipal.btnIndiceClick(Sender: TObject);
begin
  DM.cdsIndice.Open;
  if frmCADIndice = nil then
  begin
    frmCADIndice := TfrmCADIndice.Create(Application);
    frmCADIndice.pnlTop.Caption := frmCADIndice.Caption+'  ';
  end
  else
  begin
    frmCADIndice.Show;
  end;
end;

procedure TfrmPrincipal.btnIPIClick(Sender: TObject);
begin
  DM.cdsCSTIPI.Open;
  if frmCADCSTIPI = nil then
  begin
    frmCADCSTIPI := TfrmCADCSTIPI.Create(Application);
    frmCADCSTIPI.pnlTop.Caption := frmCADCSTIPI.Caption+'  ';
  end
  else
  begin
    frmCADCSTIPI.Show;
  end;
end;

procedure TfrmPrincipal.btnObservacaoClick(Sender: TObject);
begin
  DM.cdsRegraFiscalObservacao.Open;
  if frmCADRegraFiscalObservacao = nil then
  begin
    frmCADRegraFiscalObservacao := TfrmCADRegraFiscalObservacao.Create(Application);
    frmCADRegraFiscalObservacao.pnlTop.Caption := frmCADRegraFiscalObservacao.Caption+'  ';
  end
  else
  begin
    frmCADRegraFiscalObservacao.Show;
  end;
end;

procedure TfrmPrincipal.btnPISClick(Sender: TObject);
begin
  DM.cdsCSTPIS.Open;
  if frmCADCSTPIS = nil then
  begin
    frmCADCSTPIS := TfrmCADCSTPIS.Create(Application);
    frmCADCSTPIS.pnlTop.Caption := frmCADCSTPIS.Caption+'  ';
  end
  else
  begin
    frmCADCSTPIS.Show;
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

procedure TfrmPrincipal.btnRegraFiscalClick(Sender: TObject);
begin
  DM.cdsRegraFiscal.Open;
  if frmCADRegraFiscal = nil then
  begin
    frmCADRegraFiscal := TfrmCADRegraFiscal.Create(Application);
    frmCADRegraFiscal.pnlTop.Caption := frmCADRegraFiscal.Caption+'  ';
  end
  else
  begin
    frmCADRegraFiscal.Show;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DM.conServer.Open;
end;

end.
