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
  dxSkinsdxStatusBarPainter, dxStatusBar, cxPC, dxSkinscxPCPainter, dxBarBuiltInMenu, dxTabbedMDI;

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
    procedure btnSerieClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unSerie, unDM;

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

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DM.conServer.Open;
end;

end.
