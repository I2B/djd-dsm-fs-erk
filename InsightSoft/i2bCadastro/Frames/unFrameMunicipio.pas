unit unFrameMunicipio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxDBEdit, Data.DB, dxLayoutControl, cxCurrencyEdit;

type
  TFrameMunicipio = class(TFramePai)
    edtMunicipio: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtUF: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtUFDescricao: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    edtIDMunicipio: TcxDBCurrencyEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    procedure edtUFExit(Sender: TObject);
    procedure edtUFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameMunicipio: TFrameMunicipio;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameMunicipio.edtUFExit(Sender: TObject);
begin
  inherited;
  if edtUF.text<>'' then
  begin
    DM.cdsMunicipioestadonome.AsString:= i2bGetValor('estado', 'idestado', edtUF.Text, 'nome', DM.dspConnection);
	if DM.cdsMunicipioestadonome.AsString='' then
    begin
      MessageDlg('O estado não pode ser encontrado.', mtError, [mbOK], 0);
      edtUF.SetFocus;
    end;
  end;
end;

procedure TFrameMunicipio.edtUFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtUF, edtUFDescricao, 'Selecione o Estado.', 'idEstado|Nome', 'Nome',
      'idEstado|Nome', 'UF|Estado', 'Estado', '', DM.conServer, 'FrameMunicipio', DM.cdsMunicipio);
  end;
end;

end.
