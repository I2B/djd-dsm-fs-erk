unit unFrameProdutoGrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit,
  Datasnap.DBClient, cxCheckListBox, cxDBCheckListBox, cxListBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxClasses, cxGridLevel, cxGrid,
  cxCheckBox;

type
  TFrameProdutoGrade = class(TFramePai)
    edtProdutoNome: TcxTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutGroup;
    dxLayoutControlGroup2: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup4: TdxLayoutAutoCreatedGroup;
    clbCor: TcxCheckListBox;
    dxLayoutControlItem3: TdxLayoutItem;
    clbTamanho: TcxCheckListBox;
    dxLayoutControlItem4: TdxLayoutItem;
    edtProduto: TcxTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    LevelGrade: TcxGridLevel;
    grdGrade: TcxGrid;
    dxLayoutControlItem5: TdxLayoutItem;
    tvGrade: TcxGridTableView;
    tvGradeTamanhos: TcxGridColumn;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tvGradeColumn1: TcxGridColumn;
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoGrade: TFrameProdutoGrade;
  cdsProdutoCor: TClientDataSet;
  idTamanho: array of string;
  idCor: array of string;

implementation

{$R *.dfm}

uses unDM, unI2BBD;

procedure TFrameProdutoGrade.cxDBTextEdit1PropertiesChange(Sender: TObject);
var
  cdsProdutoTamanho: TClientDataSet;
  I: Integer;
begin
  inherited;
  cdsProdutoTamanho := i2bGetClient('select * from produtoTamanho order by idProdutoTamanho', DM.dspConnection);

  while not(cdsProdutoTamanho.Eof) do
  begin
    SetLength(idTamanho, length(idTamanho)+1);
    idTamanho[length(idTamanho)] := cdsProdutoTamanho.FieldByName('idProdutoTamanho').AsString;
    tvGrade.CreateColumn;
    tvGrade.Columns[tvGrade.ColumnCount-1].Caption := cdsProdutoTamanho.FieldByName('codigo').AsString;
    tvGrade.Columns[tvGrade.ColumnCount-1].Properties := tvGradeColumn1.Properties;
    tvGrade.Columns[tvGrade.ColumnCount-1].DataBinding.ValueType := tvGradeColumn1.DataBinding.ValueType;
    tvGrade.Columns[tvGrade.ColumnCount-1].HeaderAlignmentHorz := taCenter;

    cdsProdutoTamanho.Next;
  end;

  cdsProdutoCor := i2bGetClient ('select * from produtoCor', DM.dspConnection);
  while not(cdsProdutoCor.Eof) do
  begin
    tvGrade.DataController.Insert;
    SetLength(idCor, length(idCor)+1);
    idCor[length(idCor)] := cdsProdutoCor.FieldByName('idProdutoCor').AsString;
    tvGradeTamanhos.EditValue := cdsProdutoCor.FieldByName('nome').AsString;
    for I := 2 to tvGrade.ColumnCount - 1 do
    begin
      tvGrade.Columns[I].EditValue := False;
    end;
    cdsProdutoCor.Next;
  end;
end;

end.
