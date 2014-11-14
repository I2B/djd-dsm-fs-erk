unit unFrameCFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxMemo, cxDBEdit, cxTextEdit, Data.DB, dxLayoutControl;

type
  TFrameCFOP = class(TFramePai)
    edtCFOP: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtDescricaoNF: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    memAplicacao: TcxDBMemo;
    dxLayoutControlItem5: TdxLayoutItem;
    edtTipoOperacao: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    procedure edtCFOPKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCFOP: TFrameCFOP;

implementation

{$R *.dfm}

uses unDM;

procedure TFrameCFOP.edtCFOPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0'..'9', #8]) then
  begin
    key:=#0;
  end
  else
  begin
    if (Length(edtCFOP.Text)=3) and (key<>#8) then
    begin
      edtCFOP.Text:=edtCFOP.Text + key;
      edtTipoOperacao.SetFocus;
    end;
  end;
end;

end.
