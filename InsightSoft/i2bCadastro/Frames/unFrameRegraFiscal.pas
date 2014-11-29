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
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Item16: TdxLayoutItem;
    edtPFICMSCST: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtPFICMSAliquota: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edtPFICMSPercentualReducao: TcxDBTextEdit;
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
    edtPFIPICST: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edtPFPISAliquotaNormal: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    edtPFPISCST: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    edtPFIPIAliquota: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    edtPFCOFINSCST: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    edtPFCOFINSAliquota: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    edtPFICMSSTPercentualReducao: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    edtPFICMSSTMVA: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    edtPFISSAliquota: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtPFISSReducao: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    edtPFCSOSN: TcxDBTextEdit;
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
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Group9: TdxLayoutAutoCreatedGroup;
    edtPJICMSReducaoBC: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    edtPJICMSAliquota: TcxDBTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    edtPJICMSCST: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    edtPJICMSSTMVA: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    edtPJICMSSTReducaoBC: TcxDBTextEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    edtPJIPIAliquota: TcxDBTextEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    edtPJIPICST: TcxDBTextEdit;
    dxLayoutControl3Item7: TdxLayoutItem;
    edtPJPISCST: TcxDBTextEdit;
    dxLayoutControl3Item8: TdxLayoutItem;
    edtPJPISAliquota: TcxDBTextEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    edtPJCOFINSCST: TcxDBTextEdit;
    dxLayoutControl3Item10: TdxLayoutItem;
    edtPJCOFINSAliquota: TcxDBTextEdit;
    dxLayoutControl3Item11: TdxLayoutItem;
    edtPJISSAliquota: TcxDBTextEdit;
    dxLayoutControl3Item12: TdxLayoutItem;
    edtPJISSReducaoBC: TcxDBTextEdit;
    dxLayoutControl3Item13: TdxLayoutItem;
    edtPJCSOSN: TcxDBTextEdit;
    dxLayoutControl3Item14: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutControl3Item15: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutControl3Item16: TdxLayoutItem;
    cxDBCheckBox7: TcxDBCheckBox;
    dxLayoutControl3Item17: TdxLayoutItem;
    edtPFICMSSTAliquota: TcxDBTextEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxDBCheckBox8: TcxDBCheckBox;
    dxLayoutControl4Item2: TdxLayoutItem;
    cxDBCheckBox9: TcxDBCheckBox;
    dxLayoutControl4Item3: TdxLayoutItem;
    edtPJICMSSTAliquota: TcxDBTextEdit;
    dxLayoutControl3Item18: TdxLayoutItem;
    cxDBCheckBox10: TcxDBCheckBox;
    dxLayoutControl3Item19: TdxLayoutItem;
    cxDBCheckBox11: TcxDBCheckBox;
    dxLayoutControl3Item20: TdxLayoutItem;
    edtPJIPIClasseEnquadramento: TcxDBTextEdit;
    dxLayoutControl3Item21: TdxLayoutItem;
    edtPJIPICodigoEnquadramento: TcxDBTextEdit;
    dxLayoutControl3Item22: TdxLayoutItem;
    ectPFIPIClasseEnquadramento: TcxDBTextEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    edtPFIPICodigoEnquadramento: TcxDBTextEdit;
    dxLayoutControl4Item5: TdxLayoutItem;
    edtPJPISAliquotaST: TcxDBTextEdit;
    dxLayoutControl3Item23: TdxLayoutItem;
    edtPJCOFINSAliquotaST: TcxDBTextEdit;
    dxLayoutControl3Item24: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group10: TdxLayoutAutoCreatedGroup;
    edtPJIRRetencao: TcxDBTextEdit;
    dxLayoutControl3Item25: TdxLayoutItem;
    edtPJPISRetencao: TcxDBTextEdit;
    dxLayoutControl3Item26: TdxLayoutItem;
    edtPJCOFINSRetencao: TcxDBTextEdit;
    dxLayoutControl3Item27: TdxLayoutItem;
    edtPJCSLLRetencao: TcxDBTextEdit;
    dxLayoutControl3Item28: TdxLayoutItem;
    edtPJINSSRetencao: TcxDBTextEdit;
    dxLayoutControl3Item29: TdxLayoutItem;
    edtPJISSRetencao: TcxDBTextEdit;
    dxLayoutControl3Item30: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxDBCheckBox12: TcxDBCheckBox;
    dxLayoutControl3Item31: TdxLayoutItem;
    cxDBCheckBox13: TcxDBCheckBox;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl3Group11: TdxLayoutGroup;
    dxLayoutControl3Group12: TdxLayoutAutoCreatedGroup;
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
