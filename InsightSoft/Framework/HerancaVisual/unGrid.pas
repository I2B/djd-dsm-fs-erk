unit unGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unBase, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxLayoutContainer, dxLayoutControl, Data.DB, dxSkinsdxNavBarPainter, dxNavBar, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, cxClasses, dxTileControl, cxContainer, cxEdit, cxImage, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxGDIPlusClasses, Vcl.StdCtrls, dxBarBuiltInMenu,
  cxPC, dxScreenTip, dxCustomHint, cxHint, dxBar, dxRibbonRadialMenu;

type
  TfrmGrid = class(TfrmBase)
    dts: TDataSource;
    ActionList: TActionList;
    acImprimir: TAction;
    acExportarPDF: TAction;
    acExportarExcel: TAction;
    acExportarWord: TAction;
    pnlSide: TPanel;
    imgImprimir: TcxImage;
    imgExportar: TcxImage;
    lblRegistros: TLabel;
    cxPageControl: TcxPageControl;
    cxTabGrid: TcxTabSheet;
    cxTabCadastro: TcxTabSheet;
    cxGrid: TcxGrid;
    cxGridDB: TcxGridDBTableView;
    cxLevel: TcxGridLevel;
    RadialMenuExportar: TdxRibbonRadialMenu;
    procedure dtsDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure imgExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrid: TfrmGrid;

implementation

{$R *.dfm}

procedure TfrmGrid.dtsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  lblRegistros.Caption := StrToInt(dts.DataSet.RecNo) + '/' + StrToInt(dts.DataSet.RecordCount);
end;

procedure TfrmGrid.FormCreate(Sender: TObject);
begin
  inherited;
  cxPageControl.Properties.HideTabs := True;
end;

procedure TfrmGrid.imgExportarClick(Sender: TObject);
begin
  inherited;
  RadialMenuExportar.PopupFromCursorPos;
end;

end.
