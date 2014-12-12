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
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxCheckBox, cxImage,
  cxButtonEdit;

type
  TFrameProduto = class(TFramePai)
    edtCodigoInterno: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtGETIN: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtDescricaoPDV: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtDescricaoDetalhada: TcxDBMemo;
    dxLayoutControlItem7: TdxLayoutItem;
    edtValorVenda: TcxDBCurrencyEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    edtValorCompra: TcxDBCurrencyEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    edtValorMinimoVenda: TcxDBCurrencyEdit;
    dxLayoutControlItem8: TdxLayoutItem;
    edtValorSugerido: TcxDBCurrencyEdit;
    dxLayoutControlItem9: TdxLayoutItem;
    edtCustoMedioLiquido: TcxDBCurrencyEdit;
    dxLayoutControlItem10: TdxLayoutItem;
    dxLayoutControlGroup4: TdxLayoutGroup;
    dxLayoutControlGroup1: TdxLayoutGroup;
    dxLayoutControlGroup2: TdxLayoutGroup;
    edtEstoqueIdeal: TcxDBCurrencyEdit;
    dxLayoutControlItem11: TdxLayoutItem;
    edtEstoqueMaximo: TcxDBCurrencyEdit;
    dxLayoutControlItem12: TdxLayoutItem;
    edtEstoqueMinimo: TcxDBCurrencyEdit;
    dxLayoutControlItem13: TdxLayoutItem;
    edtMarkup: TcxDBCurrencyEdit;
    dxLayoutControlItem14: TdxLayoutItem;
    edtValorLucroMaximo: TcxDBCurrencyEdit;
    dxLayoutControlItem15: TdxLayoutItem;
    edtValorLucroMinimo: TcxDBCurrencyEdit;
    dxLayoutControlItem16: TdxLayoutItem;
    edtValorLucroZero: TcxDBCurrencyEdit;
    dxLayoutControlItem17: TdxLayoutItem;
    dxLayoutControlGroup6: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutGroup;
    edtDataCadastro: TcxDBDateEdit;
    dxLayoutControlItem18: TdxLayoutItem;
    edtCodigoBalanca: TcxDBTextEdit;
    dxLayoutControlItem19: TdxLayoutItem;
    grpTipoProduto: TcxDBRadioGroup;
    dxLayoutControlItem20: TdxLayoutItem;
    dxLayoutControlItem21: TdxLayoutItem;
    chkInativ: TcxDBCheckBox;
    edtImagem: TcxImage;
    dxLayoutControlItem22: TdxLayoutItem;
    dxLayoutControlGroup5: TdxLayoutAutoCreatedGroup;
    edtCodigoGrupo: TcxDBTextEdit;
    dxLayoutControlItem23: TdxLayoutItem;
    edtNomeGrupo: TcxTextEdit;
    dxLayoutControlItem24: TdxLayoutItem;
    edtCodigoSubGrupo: TcxDBTextEdit;
    dxLayoutControlItem25: TdxLayoutItem;
    edtNomeSubGrupo: TcxTextEdit;
    dxLayoutControlItem26: TdxLayoutItem;
    edtNCM: TcxDBTextEdit;
    dxLayoutControlItem27: TdxLayoutItem;
    edtUNMedida: TcxDBTextEdit;
    dxLayoutControlItem29: TdxLayoutItem;
    edtCaminhoImagem: TcxDBButtonEdit;
    dxLayoutControlItem28: TdxLayoutItem;
    dxLayoutControlGroup7: TdxLayoutAutoCreatedGroup;
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
