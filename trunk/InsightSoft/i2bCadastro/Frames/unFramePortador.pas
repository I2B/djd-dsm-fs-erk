unit unFramePortador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxDBEdit, Data.DB, dxLayoutControl;

type
  TFramePortador = class(TFramePai)
    edtBanco: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    procedure edtBancoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FramePortador: TFramePortador;

implementation

{$R *.dfm}

uses unDM;

procedure TFramePortador.edtBancoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0'..'9', #8]) then
  begin
    key:=#0;
  end
  else
  begin
    if (Length(edtBanco.Text)=3) and (key<>#8) then
    begin
      edtBanco.Text:=edtBanco.Text + key;
      edtDescricao.SetFocus;
    end;
  end;
end;

end.
