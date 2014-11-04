unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinsdxBarPainter,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxBar, dxRibbon, cxClasses,
  dxSkinsForm, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxAlertWindow, Vcl.ImgList,
  dxRibbonRadialMenu;

type
  TForm1 = class(TForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxSkinController1: TdxSkinController;
    dxAlertWindowManager1: TdxAlertWindowManager;
    cxButton1: TcxButton;
    cxImageList1: TcxImageList;
    PopupMenu1: TPopupMenu;
    este11: TMenuItem;
    este21: TMenuItem;
    este31: TMenuItem;
    dxBarLargeButton13: TdxBarLargeButton;
    procedure cxButton1Click(Sender: TObject);
    procedure dxAlertWindowManager1ButtonClick(Sender: TObject;
      AAlertWindow: TdxAlertWindow; AButtonIndex: Integer);
    procedure dxBarLargeButton13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unTileControl;

procedure TForm1.cxButton1Click(Sender: TObject);
begin
  dxAlertWindowManager1.Show('Alerta!','Menssagem de teste do AlertWindowManager',0)
end;

procedure TForm1.dxAlertWindowManager1ButtonClick(Sender: TObject;
  AAlertWindow: TdxAlertWindow; AButtonIndex: Integer);
begin
  case AButtonIndex of
    0: ShowMessage('Botão "Salvar" pressionado.');
    1: ShowMessage('Botão "Cancelar" pressionado.');
    2: ShowMessage('Botão "Ajuda" pressionado.');
  end;
end;

procedure TForm1.dxBarLargeButton13Click(Sender: TObject);
begin
  frmTileControl.ShowModal;
end;

end.
