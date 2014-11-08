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
  cxPC, dxScreenTip, dxCustomHint, cxHint, dxBar, dxRibbonRadialMenu, dxSkinsdxBarPainter;

type
  TfrmGrid = class(TfrmBase)
    dts: TDataSource;
    ActionList: TActionList;
    acImprimir: TAction;
    pnlSide: TPanel;
    imgImprimir: TcxImage;
    imgExportar: TcxImage;
    lblRegistros: TLabel;
    RadialMenuExportar: TdxRibbonRadialMenu;
    barBtnWord: TdxBarButton;
    barBtnExcel: TdxBarButton;
    barBtnPDF: TdxBarButton;
    barBtnCopiar: TdxBarButton;
    pnlClient: TPanel;
    cxPageControl: TcxPageControl;
    cxTabGrid: TcxTabSheet;
    cxGrid: TcxGrid;
    cxGridDB: TcxGridDBTableView;
    cxLevel: TcxGridLevel;
    cxTabCadastro: TcxTabSheet;
    pnlTop: TPanel;
    SaveDialog: TSaveDialog;
    procedure dtsDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure imgExportarClick(Sender: TObject);
    procedure barBtnCopiarClick(Sender: TObject);
    procedure barBtnPDFClick(Sender: TObject);
    procedure barBtnExcelClick(Sender: TObject);
    procedure barBtnWordClick(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrid: TfrmGrid;

implementation

{$R *.dfm}

procedure TfrmGrid.acImprimirExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('Em desenvolvimento...');
end;

procedure TfrmGrid.barBtnCopiarClick(Sender: TObject);
begin
  inherited;
  cxGridDB.CopyToClipboard(True);
end;

procedure TfrmGrid.barBtnExcelClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Em desenvolvimento...');
end;

procedure TfrmGrid.barBtnPDFClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Em desenvolvimento...');
end;

procedure TfrmGrid.barBtnWordClick(Sender: TObject);
begin
  SaveDialog.Filter := 'Word (*.doc) |*.doc';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt:= 'doc';
  if SaveDialog.Execute then
  begin
    ExportGrid4ToExcel(SaveDialog.FileName,Grade, False);
    ShellExecute(Handle, 'open', pchar(SaveDialog.FileName), nil, nil, SW_SHOW);
  end;
end;

procedure TfrmGrid.dtsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  lblRegistros.Caption := IntToStr(dts.DataSet.RecNo) + '/' + IntToStr(dts.DataSet.RecordCount);
end;

procedure TfrmGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
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
