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
  Datasnap.DBClient, Vcl.Menus, Vcl.StdCtrls, cxButtons;

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
    btnModelo: TdxBarLargeButton;
    btnMunicipio: TdxBarLargeButton;
    btnNCM: TdxBarLargeButton;
    btnPais: TdxBarLargeButton;
    btnGrupo: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    btnSubGrupo: TdxBarLargeButton;
    dxBarManagerBar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    btnPessoa: TdxBarLargeButton;
    BarCadProduto: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
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
    procedure btnModeloClick(Sender: TObject);
    procedure btnMunicipioClick(Sender: TObject);
    procedure btnNCMClick(Sender: TObject);
    procedure btnPaisClick(Sender: TObject);
    procedure btnSubGrupoClick(Sender: TObject);
    procedure btnGrupoClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnPessoaClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
  private
    { Private declarations }
    function abaExiste(Formulario : TForm):boolean;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unCADSerie, unDM, unIndicadorEconomico, unCADAuditoria, unCADBanco, unCADPortador, unCADCBO, unCADCEP, unCADCFOP,
  unCADCNAE, unCADUnidadeNegocio, unCADTipoTelefone, unCADTipoOperacao, unCADTelefone, unCADCSTCofins, unCADCSTIPI,
  unCADCSTPIS, unCADEmpresa, unCADSetor, unCADRegraFiscalObservacao, unCADProdutoUnidadeConversao, unCADProdutoUnidade,
  unCADRegraFiscal, UnCADCSTCSOSN, unCADCSTICMS, unCADEstado, unCADProdutoCor, unCADProdutoTamanho, unCADIndice,
  unCADModelo, unCADMunicipio, unCADNCM, unCADProdutoSubGrupo, unCADPais, unCADProdutoGrupo, unCADProdutoFornecedor,
  unCADPessoa, unCADProduto, unI2BBD, unCADProdutoGrade;

procedure TfrmPrincipal.btnSerieClick(Sender: TObject);
begin
  if abaExiste(frmCADSerie) then
  begin
    frmCADSerie.Show;
  end
  else
  begin
    DM.cdsSerie.Open;
    frmCADSerie := TfrmCADSerie.Create(Application);
    frmCADSerie.pnlTop.Caption := frmCADSerie.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnSubGrupoClick(Sender: TObject);
begin
  if abaExiste(frmCADProdutoSubGrupo) then
  begin
    frmCADProdutoSubGrupo.Show;
  end
  else
  begin
    DM.cdsProdutoSubGrupo.Open;
    frmCADProdutoSubGrupo := TfrmCADProdutoSubGrupo.Create(Application);
    frmCADProdutoSubGrupo.pnlTop.Caption := frmCADProdutoSubGrupo.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnTamanhoClick(Sender: TObject);
begin
  if abaExiste(frmCADProdutoTamanho) then
  begin
    frmCADProdutoTamanho.Show;
  end
  else
  begin
    DM.cdsProdutoTamanho.Open;
    frmCADProdutoTamanho := TfrmCADProdutoTamanho.Create(Application);
    frmCADProdutoTamanho.pnlTop.Caption := frmCADProdutoTamanho.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnCBOClick(Sender: TObject);
begin
  if abaExiste(frmCADCBO) then
  begin
    frmCADCBO.Show;
  end
  else
  begin
    DM.cdsCBO.Open;
    frmCADCBO := TfrmCADCBO.Create(Application);
    frmCADCBO.pnlTop.Caption := frmCADCBO.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnCepClick(Sender: TObject);
begin
  if abaExiste(frmCADCEP) then
  begin
    frmCADCEP.Show;
  end
  else
  begin
    DM.cdsCEP.Open;
    frmCADCEP := TfrmCADCEP.Create(Application);
    frmCADCEP.pnlTop.Caption := frmCADCEP.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnCFOPClick(Sender: TObject);
begin
  if abaExiste(frmCADCFOP) then
  begin
    frmCADCFOP.Show;
  end
  else
  begin
    DM.cdsCFOP.Open;
    frmCADCFOP := TfrmCADCFOP.Create(Application);
    frmCADCFOP.pnlTop.Caption := frmCADCFOP.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnUnidadeConversaoClick(Sender: TObject);
begin
  if abaExiste(frmCADProdutoUnidadeConversao) then
  begin
    frmCADProdutoUnidadeConversao.Show;
  end
  else
  begin
    DM.cdsProdutoUnidadeConversao.Open;
    frmCADProdutoUnidadeConversao := TfrmCADProdutoUnidadeConversao.Create(Application);
    frmCADProdutoUnidadeConversao.pnlTop.Caption := frmCADProdutoUnidadeConversao.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnUnidadeNegocioClick(Sender: TObject);
begin
  if abaExiste(frmCADUnidadeNegocio) then
  begin
    frmCADUnidadeNegocio.Show;
  end
  else
  begin
    DM.cdsUnidadeNegocio.Open;
    frmCADUnidadeNegocio := TfrmCADUnidadeNegocio.Create(Application);
    frmCADUnidadeNegocio.pnlTop.Caption := frmCADUnidadeNegocio.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.dxBarLargeButton1Click(Sender: TObject);
begin
  if abaExiste(frmCADProdutoFornecedor) then
  begin
    frmCADProdutoFornecedor.Show;
  end
  else
  begin
    DM.cdsProdutoFornecedor.Open;
    frmCADProdutoFornecedor := TfrmCADProdutoFornecedor.Create(Application);
    frmCADProdutoFornecedor.pnlTop.Caption := frmCADProdutoFornecedor.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.dxBarLargeButton2Click(Sender: TObject);
begin
  if abaExiste(frmCADProduto) then
  begin
    frmCADProduto.Show;
  end
  else
  begin
    DM.cdsProduto.Open;
    frmCADProduto := TfrmCADProduto.Create(Application);
    frmCADProduto.pnlTop.Caption := frmCADProduto.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.dxBarLargeButton3Click(Sender: TObject);
begin
  if abaExiste(frmCADProdutoGrade) then
  begin
    frmCADProdutoGrade.Show;
  end
  else
  begin
    DM.cdsProdutoGrade.Open;
    frmCADProdutoGrade := TfrmCADProdutoGrade.Create(Application);
    frmCADProdutoGrade.pnlTop.Caption := frmCADProdutoGrade.Caption+'  ';
  end;

end;

procedure TfrmPrincipal.btnICMSClick(Sender: TObject);
begin
  if abaExiste(frmCADCSTICMS) then
  begin
    frmCADCSTICMS.Show;
  end
  else
  begin
    DM.cdsCSTICMS.Open;
    frmCADCSTICMS := TfrmCADCSTICMS.Create(Application);
    frmCADCSTICMS.pnlTop.Caption := frmCADCSTICMS.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnCNAEClick(Sender: TObject);
begin
  if abaExiste(frmCADCNAE) then
  begin
    frmCADCNAE.Show;
  end
  else
  begin
    DM.cdsCNAE.Open;
    frmCADCNAE := TfrmCADCNAE.Create(Application);
    frmCADCNAE.pnlTop.Caption := frmCADCNAE.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnCSOSNClick(Sender: TObject);
begin
  if abaExiste(frmCADCSTCSOSN) then
  begin
    frmCADCSTCSOSN.Show;
  end
  else
  begin
    DM.cdsCSTCSOSN.Open;
    frmCADCSTCSOSN := TfrmCADCSTCSOSN.Create(Application);
    frmCADCSTCSOSN.pnlTop.Caption := frmCADCSTCSOSN.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnEmpresaClick(Sender: TObject);
begin
  if abaExiste(frmCADEmpresa) then
  begin
    frmCADEmpresa.Show;
  end
  else
  begin
    DM.cdsEmpresa.Open;
    frmCADEmpresa := TfrmCADEmpresa.Create(Application);
    frmCADEmpresa.pnlTop.Caption := frmCADEmpresa.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnEstadoClick(Sender: TObject);
begin
  if abaExiste(frmCADEstado) then
  begin
    frmCADEstado.Show;
  end
  else
  begin
    DM.cdsEstado.Open;
    frmCADEstado := TfrmCADEstado.Create(Application);
    frmCADEstado.pnlTop.Caption := frmCADEstado.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnGrupoClick(Sender: TObject);
begin
  if abaExiste(frmCADProdutoGrupo) then
  begin
    frmCADProdutoGrupo.Show;
  end
  else
  begin
    DM.cdsProdutoGrupo.Open;
    frmCADProdutoGrupo := TfrmCADProdutoGrupo.Create(Application);
    frmCADProdutoGrupo.pnlTop.Caption := frmCADProdutoGrupo.Caption+'  ';
  end;
end;

function TfrmPrincipal.abaExiste(Formulario: TForm): boolean;
var
  I: Integer;
begin
  result := false;
  for I := 0 to dxTabbedMDIManager.TabProperties.PageCount - 1 do
  begin
    if dxTabbedMDIManager.TabProperties.Pages[I].MDIChild = Formulario then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TfrmPrincipal.barProdutoUnidadeClick(Sender: TObject);
begin
  if abaExiste(frmCADProdutoUnidade) then
  begin
    frmCADProdutoUnidade.Show;
  end
  else
  begin
    DM.cdsProdutoUnidade.Open;
    frmCADProdutoUnidade := TfrmCADProdutoUnidade.Create(Application);
    frmCADProdutoUnidade.pnlTop.Caption := frmCADProdutoUnidade.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.barSetorClick(Sender: TObject);
begin
  if abaExiste(frmCADSetor) then
  begin
    frmCADSetor.Show;
  end
  else
  begin
    DM.cdsSetor.Open;
    frmCADSetor := TfrmCADSetor.Create(Application);
    frmCADSetor.pnlTop.Caption := frmCADSetor.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.barTelefoneClick(Sender: TObject);
begin
  if abaExiste(frmCADTelefone) then
  begin
    frmCADTelefone.Show;
  end
  else
  begin
    DM.cdsTelefone.Open;
    frmCADTelefone := TfrmCADTelefone.Create(Application);
    frmCADTelefone.pnlTop.Caption := frmCADTelefone.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnAuditoriaClick(Sender: TObject);
begin
  if abaExiste(frmCADAuditoria) then
  begin
    frmCADAuditoria.Show;
  end
  else
  begin
    DM.cdsAuditoria.Open;
    frmCADAuditoria := TfrmCADAuditoria.Create(Application);
    frmCADAuditoria.pnlTop.Caption := frmCADAuditoria.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnBancoClick(Sender: TObject);
begin
  if abaExiste(frmCADBanco) then
  begin
    frmCADBanco.Show;
  end
  else
  begin
    DM.cdsBanco.Open;
    frmCADBanco := TfrmCADBanco.Create(Application);
    frmCADBanco.pnlTop.Caption := frmCADBanco.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
  if abaExiste(frmCADCSTCSOSN) then
  begin
    frmCADCSTCSOSN.Show;
  end
  else
  begin
    DM.cdsCSTCSOSN.Open;
    frmCADCSTCSOSN := TfrmCADCSTCSOSN.Create(Application);
    frmCADCSTCSOSN.pnlTop.Caption := frmCADCSTCSOSN.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnCofinsClick(Sender: TObject);
begin
  if abaExiste(frmCADCSTCofins) then
  begin
    frmCADCSTCofins.Show;
  end
  else
  begin
    DM.cdsCSTCofins.Open;
    frmCADCSTCofins := TfrmCADCSTCofins.Create(Application);
    frmCADCSTCofins.pnlTop.Caption := frmCADCSTCofins.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnCorClick(Sender: TObject);
begin
  if abaExiste(frmCADProdutoCor) then
  begin
    frmCADProdutoCor.Show;
  end
  else
  begin
    DM.cdsProdutoCor.Open;
    frmCADProdutoCor := TfrmCADProdutoCor.Create(Application);
    frmCADProdutoCor.pnlTop.Caption := frmCADProdutoCor.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnIndicadorEconomicoClick(Sender: TObject);
begin
  if abaExiste(frmCADIndicadorEconomico) then
  begin
    frmCADIndicadorEconomico.Show;
  end
  else
  begin
    DM.cdsIndicadorEconomico.Open;
    frmCADIndicadorEconomico := TfrmCADIndicadorEconomico.Create(Application);
    frmCADIndicadorEconomico.pnlTop.Caption := frmCADIndicadorEconomico.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnIndiceClick(Sender: TObject);
begin
  if abaExiste(frmCADIndice) then
  begin
    frmCADIndice.Show;
  end
  else
  begin
    DM.cdsIndice.Open;
    frmCADIndice := TfrmCADIndice.Create(Application);
    frmCADIndice.pnlTop.Caption := frmCADIndice.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnIPIClick(Sender: TObject);
begin
  if abaExiste(frmCADCSTIPI) then
  begin
    frmCADCSTIPI.Show;
  end
  else
  begin
    DM.cdsCSTIPI.Open;
    frmCADCSTIPI := TfrmCADCSTIPI.Create(Application);
    frmCADCSTIPI.pnlTop.Caption := frmCADCSTIPI.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnModeloClick(Sender: TObject);
begin
  if abaExiste(frmCADModelo) then
  begin
    frmCADModelo.Show;
  end
  else
  begin
    DM.cdsModelo.Open;
    frmCADModelo := TfrmCADModelo.Create(Application);
    frmCADModelo.pnlTop.Caption := frmCADModelo.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnMunicipioClick(Sender: TObject);
begin
  if abaExiste(frmCADMunicipio) then
  begin
    frmCADMunicipio.Show;
  end
  else
  begin
    DM.cdsMunicipio.Open;
    frmCADMunicipio := TfrmCADMunicipio.Create(Application);
    frmCADMunicipio.pnlTop.Caption := frmCADMunicipio.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnNCMClick(Sender: TObject);
begin
  if abaExiste(frmCADNCM) then
  begin
    frmCADNCM.Show;
  end
  else
  begin
    DM.cdsNCM.Open;
    frmCADNCM := TfrmCADNCM.Create(Application);
    frmCADNCM.pnlTop.Caption := frmCADNCM.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnObservacaoClick(Sender: TObject);
begin
  if abaExiste(frmCADRegraFiscalObservacao) then
  begin
    frmCADRegraFiscalObservacao.Show;
  end
  else
  begin
    DM.cdsRegraFiscalObservacao.Open;
    frmCADRegraFiscalObservacao := TfrmCADRegraFiscalObservacao.Create(Application);
    frmCADRegraFiscalObservacao.pnlTop.Caption := frmCADRegraFiscalObservacao.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnPaisClick(Sender: TObject);
begin
  if abaExiste(frmCADPAIS) then
  begin
    frmCADPAIS.Show;
  end
  else
  begin
    DM.cdsPais.Open;
    frmCADPAIS := TfrmCADPAIS.Create(Application);
    frmCADPAIS.pnlTop.Caption := frmCADPAIS.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnPessoaClick(Sender: TObject);
begin
  DM.cdsPessoa.Open;
  if frmCADPessoa = nil then
  begin
    frmCADPessoa := TfrmCADPessoa.Create(Application);
    frmCADPessoa.pnlTop.Caption := frmCADPessoa.Caption+'  ';
  end
  else
  begin
    frmCADPessoa.Show;
  end;
end;

procedure TfrmPrincipal.btnPISClick(Sender: TObject);
begin
  if abaExiste(frmCADCSTPIS) then
  begin
    frmCADCSTPIS.Show;
  end
  else
  begin
    DM.cdsCSTPIS.Open;
    frmCADCSTPIS := TfrmCADCSTPIS.Create(Application);
    frmCADCSTPIS.pnlTop.Caption := frmCADCSTPIS.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnPortadorClick(Sender: TObject);
begin
  if abaExiste(frmCadPortador) then
  begin
    frmCadPortador.Show;
  end
  else
  begin
    DM.cdsPortador.Open;
    frmCadPortador := TfrmCadPortador.Create(Application);
    frmCadPortador.pnlTop.Caption := frmCadPortador.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.btnRegraFiscalClick(Sender: TObject);
begin
  if abaExiste(frmCADRegraFiscal) then
  begin
    frmCADRegraFiscal.Show;
  end
  else
  begin
    DM.cdsRegraFiscal.Open;
    frmCADRegraFiscal := TfrmCADRegraFiscal.Create(Application);
    frmCADRegraFiscal.pnlTop.Caption := frmCADRegraFiscal.Caption+'  ';
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DM.conServer.Open;
end;

end.
