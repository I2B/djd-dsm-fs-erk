unit unCADProdutoUnidade;

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
  cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, dxScreenTip, dxSkinsdxBarPainter,
  Data.FMTBcd, Data.SqlExpr, dxBar, dxRibbonRadialMenu, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxMemo, cxMaskEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxTextEdit,
  cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPC, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, unFramePai, unFrameProdutoUnidade;

type
  TfrmCADProdutoUnidade = class(TfrmCadastro)
    cxGridDBidprodutounidade: TcxGridDBColumn;
    cxGridDBsigla: TcxGridDBColumn;
    cxGridDBdescricao: TcxGridDBColumn;
    FrameProdutoUnidade: TFrameProdutoUnidade;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADProdutoUnidade: TfrmCADProdutoUnidade;

implementation

{$R *.dfm}

uses unDM;

end.
