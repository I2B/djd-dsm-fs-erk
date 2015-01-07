unit unFrameCFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxMemo, cxDBEdit, cxTextEdit, Data.DB, dxLayoutControl,
  cxCurrencyEdit;

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
    edtIDTipoOperacao: TcxDBCurrencyEdit;
    dxLayoutControlItem7: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    procedure edtCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure edtIDTipoOperacaoExit(Sender: TObject);
    procedure edtIDTipoOperacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCFOP: TFrameCFOP;

implementation

{$R *.dfm}

uses unDM, unI2BFuncoes, unI2BBD;

procedure TFrameCFOP.edtIDTipoOperacaoExit(Sender: TObject);
begin
  inherited;
  if edtIDTipoOperacao.EditValue>0 then
  begin
    DM.cdsCFOPtipooperacaodescricao.AsString:= i2bGetValor('TipoOperacao', 'idTipoOperacao', edtIDTipoOperacao.Text,
      'descricao', DM.dspConnection);
    if DM.cdsCFOPtipooperacaodescricao.AsString='' then
    begin
      MessageDlg('O tipo da operação não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDTipoOperacao.SetFocus;
    end;
  end;
end;

procedure TFrameCFOP.edtIDTipoOperacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDTipoOperacao, edtTipoOperacao, 'Selecione o Tipo de Operação', 'idtipooperacao|descricao', 'descricao',
      'idtipooperacao|descricao', 'ID|Tipo Operação', 'TipoOperacao', '', DM.conServer, 'FrameCFOP', DM.cdsMunicipio);
  end;
end;

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
      Perform(Wm_NextDlgCtl,0,0);
    end;
  end;
end;

end.
