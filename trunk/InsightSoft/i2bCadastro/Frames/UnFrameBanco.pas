unit UnFrameBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxDBEdit, Data.DB, dxLayoutControl;

type
  TFrameBanco = class(TFramePai)
    edtBanco: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtID: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    procedure edtIDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameBanco: TFrameBanco;

implementation

{$R *.dfm}

uses unDM;

procedure TFrameBanco.edtIDKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0'..'9', #8]) then
  begin
    key:=#0;
  end;
  if Length(edtID.Text)=3 then
  begin
    edtID.Text:=edtID.Text+key;
    edtBanco.SetFocus;
  end;
end;

end.
