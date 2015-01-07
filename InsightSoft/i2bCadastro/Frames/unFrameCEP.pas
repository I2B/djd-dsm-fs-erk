unit unFrameCEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxDBEdit, Data.DB, dxLayoutControl,
  cxCurrencyEdit;

type
  TFrameCEP = class(TFramePai)
    edtMunicipioNome: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtLogradouro: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    edtComplemento: TcxDBTextEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    edtBairro: TcxDBTextEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    edtMunicipioID: TcxDBCurrencyEdit;
    dxLayoutControlItem6: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    edtCEP: TcxDBCurrencyEdit;
    dxLayoutControlItem7: TdxLayoutItem;
    procedure edtMunicipioIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtMunicipioIDExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameCEP: TFrameCEP;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameCEP.edtMunicipioIDExit(Sender: TObject);
begin
  inherited;
  if edtMunicipioID.EditValue>0 then
  begin
    DM.cdsCEPmunicipionome.AsString:= i2bGetValor('Municipio', 'idMunicipio', edtMunicipioID.Text, 'nome', DM.dspConnection);
    if DM.cdsCEPmunicipionome.AsString='' then
    begin
      MessageDlg('O município não pode ser encontrado.', mtError, [mbOK], 0);
      edtMunicipioID.SetFocus;
    end;
  end;
end;

procedure TFrameCEP.edtMunicipioIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtMunicipioID, edtMunicipioNome, 'Selecione o Município', 'idMunicipio|nome', 'nome',
      'idMunicipio|Nome|idEstado', 'ID|Municipio|Estado', 'Municipio', '', DM.conServer, 'FrameCEP', DM.cdsMunicipio);
  end;
end;

end.
