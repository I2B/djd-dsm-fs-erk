unit unFrameCEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxDBEdit, Data.DB, dxLayoutControl;

type
  TFrameCEP = class(TFramePai)
    edtCEP: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtMunicipio: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtLogradouro: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtComplemento: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtBairro: TcxDBTextEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    procedure edtCEPKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCEP: TFrameCEP;

implementation

{$R *.dfm}

uses unDM;

procedure TFrameCEP.edtCEPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0'..'9', #8, #45]) then
  begin
    key:=#0;
  end
  else
  begin
    if (Length(edtCEP.Text)=8) and (key<>#8) then
    begin
      edtCEP.Text:= edtCEP.Text + key;
      edtMunicipio.SetFocus;
    end;
  end;
end;

end.