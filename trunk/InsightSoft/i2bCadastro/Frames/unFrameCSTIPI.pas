unit unFrameCSTIPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMemo, cxDBEdit, dxLayoutContainer, cxTextEdit, Data.DB, dxLayoutControl;

type
  TFrameCSTIPI = class(TFramePai)
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    memObservacao: TcxDBMemo;
    dxLayoutControlItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCSTIPI: TFrameCSTIPI;

implementation

{$R *.dfm}

uses unDM;

end.
