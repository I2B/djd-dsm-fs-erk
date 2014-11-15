unit unCADAuditoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, dxScreenTip, dxSkinsdxBarPainter, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxBar,
  dxRibbonRadialMenu, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxPC, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmCADAuditoria = class(TfrmGrid)
    cxGridDBidauditoria: TcxGridDBColumn;
    cxGridDBdataregistro: TcxGridDBColumn;
    cxGridDBhoraregistro: TcxGridDBColumn;
    cxGridDBacao: TcxGridDBColumn;
    cxGridDBdescricao: TcxGridDBColumn;
    cxGridDBnomefantasia: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADAuditoria: TfrmCADAuditoria;

implementation

{$R *.dfm}

uses unDM;

end.
