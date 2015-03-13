unit unNFCPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxSkinsdxBarPainter, cxPC, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, dxTabbedMDI,
  cxClasses, dxAlertWindow, dxSkinsForm, dxBar, dxRibbon;

type
  TfrmNFCPrincipal = class(TForm)
    tabPrincipal: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    dxBarManager: TdxBarManager;
    dxRibbonPopupMenu: TdxRibbonPopupMenu;
    dxSkinController: TdxSkinController;
    dxAlertWindowManager: TdxAlertWindowManager;
    dxTabbedMDIManager: TdxTabbedMDIManager;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    barPreVenda: TdxBar;
    btnPVBuscar: TdxBarLargeButton;
    btnPVInserir: TdxBarLargeButton;
    btnPVAprovar: TdxBarLargeButton;
    barAcompanhamento: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    barConsultas: TdxBar;
    btnProduto: TdxBarLargeButton;
    btnCliente: TdxBarLargeButton;
  private
    { Private declarations }
    function abaExiste(Formulario : TForm):boolean;
  public
    { Public declarations }
    var VGUSUARIO : String;
  end;

var
  frmNFCPrincipal: TfrmNFCPrincipal;

implementation

{$R *.dfm}

{ TfrmNFCPrincipal }

function TfrmNFCPrincipal.abaExiste(Formulario: TForm): boolean;
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

end.
