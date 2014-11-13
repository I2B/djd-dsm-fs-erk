unit unFrameCBO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxDBEdit, dxLayoutContainer, cxTextEdit, cxMemo, Data.DB, dxLayoutControl;

type
  TFrameCBO = class(TFramePai)
    memObservacao: TcxDBMemo;
    dxLayoutControlItem1: TdxLayoutItem;
    edtCBO: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtCodigo1994: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtCodigo2002: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCBO: TFrameCBO;

implementation

{$R *.dfm}

uses unDM;

end.
