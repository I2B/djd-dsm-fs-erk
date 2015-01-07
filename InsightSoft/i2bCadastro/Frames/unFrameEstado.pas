unit unFrameEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxDBEdit, Data.DB, dxLayoutControl, cxCurrencyEdit;

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
    edtIDPais: TcxDBCurrencyEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    procedure edtIDPaisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDPaisExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameEstado: TFrameEstado;

implementation

{$R *.dfm}

uses unDM, unI2BFuncoes, unI2BBD;

procedure TFrameEstado.edtIDPaisExit(Sender: TObject);
begin
  inherited;
  if edtIDPais.EditValue>0 then
  begin
    DM.cdsEstadopaisnome.AsString:= i2bGetValor('Pais', 'idPais', edtIDPais.Text, 'nome', DM.dspConnection);
    if DM.cdsEstadopaisnome.AsString='' then
    begin
      MessageDlg('O país não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDPais.SetFocus;
    end;
  end;
end;

procedure TFrameEstado.edtIDPaisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDPais, edtPais, 'Selecione o País.', 'idPais|nome', 'nome',
      'idPais|Nome', 'ID|País', 'Pais', '', DM.conServer, 'FrameEstado', DM.cdsPais);
  end;
end;

end.
