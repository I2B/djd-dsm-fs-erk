unit unFrameProdutoTamanho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxDBEdit, Data.DB, dxLayoutControl;

type
  TFrameProdutoTamanho = class(TFramePai)
    edtCodigo: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoTamanho: TFrameProdutoTamanho;

implementation

{$R *.dfm}

uses unDM;

end.
