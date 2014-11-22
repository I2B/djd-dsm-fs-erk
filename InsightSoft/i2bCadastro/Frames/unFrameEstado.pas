unit unFrameEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxDBEdit, Data.DB, dxLayoutControl;

type
  TFrameEstado = class(TFramePai)
    edtUF: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtEstado: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtCodigoIBGE: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtPais: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameEstado: TFrameEstado;

implementation

{$R *.dfm}

uses unDM;

end.
