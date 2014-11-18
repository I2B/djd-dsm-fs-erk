unit unFrameRegraFiscal;

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
  Data.DB, dxLayoutContainer, dxLayoutControl, dxBarBuiltInMenu, cxPC, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxMemo, cxDBEdit, cxTextEdit;

type
  TFrameRegraFiscal = class(TFramePai)
    cxPageControl1: TcxPageControl;
    dxLayoutControlItem1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    edtRazaoSocial: TcxTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    edtPaisNome: TcxTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    edtMunicipioNome: TcxTextEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    edtPessoaNome: TcxTextEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    edtTipoOperacaoDescricao: TcxTextEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    edtCFOPDescricao: TcxTextEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    edtIDUnidadeNegocio: TcxDBTextEdit;
    edtIDPais: TcxDBTextEdit;
    edtEstadp: TcxDBTextEdit;
    dxLayoutControl2Item11: TdxLayoutItem;
    edtIDMunicipio: TcxDBTextEdit;
    edtIDPessoa: TcxDBTextEdit;
    edtNCM: TcxDBTextEdit;
    edtIDTipoOperacao: TcxDBTextEdit;
    dxLayoutControl2Item10: TdxLayoutItem;
    edtCFOP: TcxDBTextEdit;
    dxLayoutControl2Item17: TdxLayoutItem;
    edtIDObservacao: TcxDBTextEdit;
    dxLayoutControl2Item18: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup;
    edtObservacaoDescricao: TcxMemo;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Item16: TdxLayoutItem;
    edtCSTICMS: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtAliquotaICMS: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBTextEdit25: TcxDBTextEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameRegraFiscal: TFrameRegraFiscal;

implementation

{$R *.dfm}

uses unDM;

end.
