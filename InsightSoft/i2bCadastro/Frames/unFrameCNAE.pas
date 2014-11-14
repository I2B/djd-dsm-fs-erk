unit unFrameCNAE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter, Data.DB,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit;

type
  TFrameCNAE = class(TFramePai)
    edtCodigo: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtDenominação: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCNAE: TFrameCNAE;

implementation

{$R *.dfm}

uses unDM;

end.
