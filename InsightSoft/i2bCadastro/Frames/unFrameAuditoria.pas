unit unFrameAuditoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxSpinEdit, cxTimeEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxMemo, cxTextEdit, Data.DB, dxLayoutControl;

type
  TFrameAuditoria = class(TFramePai)
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControlItem4: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    cxDBTimeEdit1: TcxDBTimeEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameAuditoria: TFrameAuditoria;

implementation

{$R *.dfm}

uses unDM;

end.
