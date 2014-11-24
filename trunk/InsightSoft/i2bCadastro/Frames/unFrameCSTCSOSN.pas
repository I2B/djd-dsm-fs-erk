unit UnFrameCSTCSOSN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxDBEdit, dxLayoutContainer,
  cxTextEdit, cxMemo, Data.DB, dxLayoutControl;

type
  TFrameCSTCSOSN = class(TFramePai)
    memObservacao: TcxDBMemo;
    dxLayoutControlItem2: TdxLayoutItem;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCSTCSOSN: TFrameCSTCSOSN;

implementation

{$R *.dfm}

uses unDM;

end.
