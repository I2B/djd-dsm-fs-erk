unit unFrameProdutoFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit;

type
  TFrameProdutoFornecedor = class(TFramePai)
    edtProdutoID: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtFornecedorID: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtProdutoFornecedorID: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtPrecoUltimaCompra: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtDataUltimaCompra: TcxDBDateEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    cxTextEdit1: TcxTextEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    cxTextEdit2: TcxTextEdit;
    dxLayoutControlItem7: TdxLayoutItem;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoFornecedor: TFrameProdutoFornecedor;

implementation

{$R *.dfm}

uses unDM;

end.
