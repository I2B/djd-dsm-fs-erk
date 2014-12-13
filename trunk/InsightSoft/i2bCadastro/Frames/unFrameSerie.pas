unit unFrameSerie;

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
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit,
  Vcl.StdCtrls;

type
  TFrameSerie = class(TFramePai)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    Label1: TLabel;
    dxLayoutControlItem4: TdxLayoutItem;
    Label2: TLabel;
    dxLayoutControlItem5: TdxLayoutItem;
    procedure FrameResize(Sender: TObject);
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameSerie: TFrameSerie;

implementation

{$R *.dfm}

uses unDM, unI2BFuncoes, unFrameCBO;

procedure TFrameSerie.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(
      cxDBTextEdit1,
      cxDBTextEdit2,
      'Selecione a CBO desejada',
      'idcbo|nome',
      'nome',
      'idcbo|codigo2002|nome',
      'ID|CBO 2002|Nome',
      'cbo',
      '',
      DM.conServer,
      FrameCBO,
      DM.cdsCBO);
  end;
end;

procedure TFrameSerie.FrameResize(Sender: TObject);
begin
  inherited;
  Label1.Caption := 'Heigth: '+IntToStr(self.Height);
  Label2.Caption := 'Width: '+IntToStr(self.Width);
end;

end.
