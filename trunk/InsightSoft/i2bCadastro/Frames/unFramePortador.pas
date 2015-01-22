unit unFramePortador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxDBEdit, Data.DB, dxLayoutControl,
  cxCurrencyEdit;

type
  TFramePortador = class(TFramePai)
    edtBanco: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtIDBanco: TcxDBCurrencyEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    procedure edtBancoKeyPress(Sender: TObject; var Key: Char);
    procedure edtIDBancoExit(Sender: TObject);
    procedure edtIDBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FramePortador: TFramePortador;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFramePortador.edtIDBancoExit(Sender: TObject);
begin
  inherited;
  if edtIDBanco.EditValue>0 then
  begin
    DM.cdsPortadorbanconome.AsString:= i2bGetValor('banco', 'idbanco', edtIDBanco.Text, 'nome', DM.dspConnection);
	  if DM.cdsPortadorbanconome.AsString='' then
    begin
      MessageDlg('O banco não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDBanco.SetFocus;
    end;
  end;
end;

procedure TFramePortador.edtIDBancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDBanco, edtBanco, 'Selecione o banco.', 'idbanco|nome', 'nome',
      'idbanco|nome', 'ID|Banco', 'banco', '', DM.conServer, 'FramePortador', DM.cdsBanco);
  end;
end;

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
