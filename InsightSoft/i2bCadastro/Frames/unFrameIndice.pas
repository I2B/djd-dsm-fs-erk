unit unFrameIndice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxCurrencyEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutContainer, cxTextEdit,
  Data.DB, dxLayoutControl;

type
  TFrameIndice = class(TFramePai)
    edtIndicadorEconomico: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtData: TcxDBDateEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtValor: TcxDBCurrencyEdit;
    dxLayoutControlItem3: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameIndice: TFrameIndice;

implementation

{$R *.dfm}

uses unDM;

end.
