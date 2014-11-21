unit unSerie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, dxScreenTip, dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, System.Actions,
  Vcl.ActnList, dxCustomHint, cxHint, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls, unFramePai, unFrameSerie,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, Data.FMTBcd, Data.SqlExpr, cxDropDownEdit, cxCalendar, cxButtons,
  cxTextEdit, cxMaskEdit, cxLabel, cxButtonEdit, cxGroupBox, cxRadioGroup, cxMemo;

type
  TfrmSerie = class(TfrmCadastro)
    cxGridDBidserie: TcxGridDBColumn;
    cxGridDBdescricao: TcxGridDBColumn;
    cxGridDBnumeracao: TcxGridDBColumn;
    FrameSerie: TFrameSerie;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSerie: TfrmSerie;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmSerie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmSerie := nil;
end;

end.
