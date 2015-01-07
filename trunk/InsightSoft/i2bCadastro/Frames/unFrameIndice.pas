unit unFrameIndice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxCurrencyEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutContainer, cxTextEdit,
  Data.DB, dxLayoutControl;

type
  TFrameIndice = class(TFramePai)
    edtIndicadorEconomico: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtData: TcxDBDateEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtValor: TcxDBCurrencyEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    edtIDIndicadorEconomico: TcxDBCurrencyEdit;
    dxLayoutControlItem4: TdxLayoutItem;
    dxLayoutControlGroup2: TdxLayoutAutoCreatedGroup;
    procedure edtIDIndicadorEconomicoExit(Sender: TObject);
    procedure edtIDIndicadorEconomicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameIndice: TFrameIndice;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameIndice.edtIDIndicadorEconomicoExit(Sender: TObject);
begin
  inherited;
  if edtIDIndicadorEconomico.EditValue>0 then
  begin
    DM.cdsIndiceindicadordescricao.AsString:= i2bGetValor('IndicadorEconomico', 'idIndicadorEconomico',
      edtIDIndicadorEconomico.Text, 'descricao', DM.dspConnection);
	if DM.cdsIndiceindicadordescricao.AsString='' then
    begin
      MessageDlg('O indicador econômico não pode ser encontrado.', mtError, [mbOK], 0);
      edtIDIndicadorEconomico.SetFocus;
    end;
  end;
end;

procedure TFrameIndice.edtIDIndicadorEconomicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDIndicadorEconomico, edtIndicadorEconomico, 'Selecione o Indicador Econômico.', 'idIndicadorEconomico|descricao',
      'descricao', 'idIndicadorEconomico|Descricao', 'ID|Descrição', 'IndicadorEconomico', '', DM.conServer, 'FrameIndice', DM.cdsIndice);
  end;
end;

end.
