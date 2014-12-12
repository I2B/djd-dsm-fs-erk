unit unCADProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxButtonEdit, dxScreenTip,
  dxSkinsdxBarPainter, Data.FMTBcd, Datasnap.DBClient, Data.SqlExpr, dxBar,
  dxRibbonRadialMenu, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  cxGroupBox, cxRadioGroup, cxMemo, cxGridCustomTableView, cxGridTableView,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGridDBTableView, cxGrid,
  cxPC, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, unFramePai, unFrameProduto;

type
  TfrmCADProduto = class(TfrmCadastro)
    FrameProduto: TFrameProduto;
    cxGridDBidproduto: TcxGridDBColumn;
    cxGridDBidgrupoprodutos: TcxGridDBColumn;
    cxGridDBidsubgrupoprodutos: TcxGridDBColumn;
    cxGridDBidncm: TcxGridDBColumn;
    cxGridDBidprodutounidade: TcxGridDBColumn;
    cxGridDBcodigointerno: TcxGridDBColumn;
    cxGridDBgetin: TcxGridDBColumn;
    cxGridDBnome: TcxGridDBColumn;
    cxGridDBdescricao: TcxGridDBColumn;
    cxGridDBdescricaopdv: TcxGridDBColumn;
    cxGridDBvalorcompra: TcxGridDBColumn;
    cxGridDBvalorvenda: TcxGridDBColumn;
    cxGridDBprecovendaminimo: TcxGridDBColumn;
    cxGridDBprecosugerido: TcxGridDBColumn;
    cxGridDBcustomedioliquido: TcxGridDBColumn;
    cxGridDBprecolucrozero: TcxGridDBColumn;
    cxGridDBprecolucrominimo: TcxGridDBColumn;
    cxGridDBprecolucromaximo: TcxGridDBColumn;
    cxGridDBmarkup: TcxGridDBColumn;
    cxGridDBquantidadeestoque: TcxGridDBColumn;
    cxGridDBestoqueminimo: TcxGridDBColumn;
    cxGridDBestoquemaximo: TcxGridDBColumn;
    cxGridDBestoqueideal: TcxGridDBColumn;
    cxGridDBdatacadastro: TcxGridDBColumn;
    cxGridDBfotoproduto: TcxGridDBColumn;
    cxGridDBcodigobalanca: TcxGridDBColumn;
    cxGridDBtipo: TcxGridDBColumn;
    cxGridDBclasseabc: TcxGridDBColumn;
    cxGridDBcodigolst: TcxGridDBColumn;
    cxGridDBpeso: TcxGridDBColumn;
    cxGridDBpercentualcomissao: TcxGridDBColumn;
    cxGridDBinativo: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADProduto: TfrmCADProduto;

implementation

{$R *.dfm}

uses unDM;

end.
