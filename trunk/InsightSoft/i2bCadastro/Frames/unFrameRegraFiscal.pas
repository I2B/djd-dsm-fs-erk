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
  cxMemo, cxDBEdit, cxTextEdit, cxCheckBox;

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
    edtIDUnidadeNegocio: TcxDBTextEdit;
    edtIDPais: TcxDBTextEdit;
    edtEstadp: TcxDBTextEdit;
    dxLayoutControl2Item11: TdxLayoutItem;
    edtIDMunicipio: TcxDBTextEdit;
    edtIDPessoa: TcxDBTextEdit;
    edtNCM: TcxDBTextEdit;
    edtIDTipoOperacao: TcxDBTextEdit;
    dxLayoutControl2Item10: TdxLayoutItem;
    edtIDObservacao: TcxDBTextEdit;
    dxLayoutControl2Item18: TdxLayoutItem;
    edtObservacaoDescricao: TcxMemo;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Item16: TdxLayoutItem;
    edtCSTICMS: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl2Group8: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutControl2Group6: TdxLayoutGroup;
    dxLayoutControl2Group7: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxPageControl2: TcxPageControl;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Group9: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group10: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group11: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl3Item7: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutControl3Item8: TdxLayoutItem;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutControl3Item10: TdxLayoutItem;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutControl3Item11: TdxLayoutItem;
    cxDBTextEdit25: TcxDBTextEdit;
    dxLayoutControl3Item12: TdxLayoutItem;
    cxDBTextEdit26: TcxDBTextEdit;
    dxLayoutControl3Item13: TdxLayoutItem;
    cxDBTextEdit27: TcxDBTextEdit;
    dxLayoutControl3Item14: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutControl3Item15: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutControl3Item16: TdxLayoutItem;
    cxDBCheckBox7: TcxDBCheckBox;
    dxLayoutControl3Item17: TdxLayoutItem;
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
