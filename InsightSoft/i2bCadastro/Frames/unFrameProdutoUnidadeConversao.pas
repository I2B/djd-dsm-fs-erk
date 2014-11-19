unit unFrameProdutoUnidadeConversao;

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
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxMemo;

type
  TFrameProdutoUnidadeConversao = class(TFramePai)
    edtIDProduto: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtIDUnidadeConversao: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtSigla: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtFatorConversao: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtDescricao: TcxDBMemo;
    dxLayoutControlItem5: TdxLayoutItem;
    edtProdutoNome: TcxTextEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    edtUnidadeConversao: TcxTextEdit;
    dxLayoutControlItem7: TdxLayoutItem;
    dxLayoutControlGroup4: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutGroup;
    dxLayoutControlGroup2: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoUnidadeConversao: TFrameProdutoUnidadeConversao;

implementation

{$R *.dfm}

uses unDM;

end.
