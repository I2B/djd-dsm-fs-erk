unit unNFCPreVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxLayoutContainer,
  dxLayoutcxEditAdapters, cxContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit, cxDBEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, cxCalc, cxButtonEdit, cxCurrencyEdit;

type
  TfrmNFCPreVenda = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    grdItemDBtable: TcxGridDBTableView;
    grdItemLevel1: TcxGridLevel;
    grdItem: TcxGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtProduto: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    tblItem: TFDMemTable;
    dtsItem: TDataSource;
    tblItemidProduto: TIntegerField;
    tblItemquantidade: TFloatField;
    tblItemvalorunitario: TFloatField;
    tblItemtaxadesconto: TFloatField;
    tblItemvalordesconto: TFloatField;
    grdItemDBtablequantidade: TcxGridDBColumn;
    grdItemDBtablevalorunitario: TcxGridDBColumn;
    grdItemDBtablevalordesconto: TcxGridDBColumn;
    grdItemDBtablevalortotal: TcxGridDBColumn;
    tblItemdescricao: TStringField;
    grdItemDBtabledescricao: TcxGridDBColumn;
    tblItemvalortotal: TFloatField;
    grdItemDBtableCancelar: TcxGridDBColumn;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    tblItemTotal: TAggregateField;
    edtTotal: TcxDBCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    edtValorDesconto: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edtDesconto: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    edtValor: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    edtQuantidade: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group7: TdxLayoutAutoCreatedGroup;
    procedure tblItemCalcFields(DataSet: TDataSet);
    procedure grdItemDBtableCancelarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFCPreVenda: TfrmNFCPreVenda;

implementation

{$R *.dfm}

procedure TfrmNFCPreVenda.grdItemDBtableCancelarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tblItem.Delete;
end;

procedure TfrmNFCPreVenda.tblItemCalcFields(DataSet: TDataSet);
begin
  if tblItemtaxadesconto.AsFloat>0 then
  begin
    tblItemvalordesconto.AsFloat:= (tblItemvalorunitario.AsFloat * tblItemquantidade.AsFloat) * tblItemtaxadesconto.AsFloat/100;

  end
  else
  begin
    tblItemvalordesconto.AsFloat:= 0;
  end;
  tblItemvalortotal.AsFloat:= (tblItemvalorunitario.AsFloat * tblItemquantidade.AsFloat) - tblItemvalordesconto.AsFloat;
end;

end.
