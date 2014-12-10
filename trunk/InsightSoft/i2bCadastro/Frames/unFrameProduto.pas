unit unFrameProduto;

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
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxMemo,
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxCheckBox, cxImage;

type
  TFrameProduto = class(TFramePai)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControlItem7: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControlItem8: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControlItem9: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControlItem10: TdxLayoutItem;
    dxLayoutControlGroup4: TdxLayoutGroup;
    dxLayoutControlGroup1: TdxLayoutGroup;
    dxLayoutControlGroup2: TdxLayoutGroup;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControlItem11: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutControlItem12: TdxLayoutItem;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    dxLayoutControlItem13: TdxLayoutItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    dxLayoutControlItem14: TdxLayoutItem;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutControlItem15: TdxLayoutItem;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    dxLayoutControlItem16: TdxLayoutItem;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    dxLayoutControlItem17: TdxLayoutItem;
    dxLayoutControlGroup6: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControlItem18: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControlItem19: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControlItem20: TdxLayoutItem;
    dxLayoutControlItem21: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    cxImage1: TcxImage;
    dxLayoutControlItem22: TdxLayoutItem;
    dxLayoutControlGroup5: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControlItem23: TdxLayoutItem;
    cxTextEdit1: TcxTextEdit;
    dxLayoutControlItem24: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControlItem25: TdxLayoutItem;
    cxTextEdit2: TcxTextEdit;
    dxLayoutControlItem26: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControlItem27: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProduto: TFrameProduto;

implementation

{$R *.dfm}

uses unDM;

end.
