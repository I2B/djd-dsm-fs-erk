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
  cxCheckBox, cxCurrencyEdit;

type
  TFrameProdutoGrade = class(TFramePai)
    LevelGrade: TcxGridLevel;
    grdGrade: TcxGrid;
    dxLayoutControlItem5: TdxLayoutItem;
    tvGrade: TcxGridTableView;
    tvGradeTamanhos: TcxGridColumn;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tvGradeColumn1: TcxGridColumn;
    tvGradeCodCor: TcxGridColumn;
    edtIDProduto: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    edtProdutoNome: TcxTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
    procedure edtIDProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtIDProdutoExit(Sender: TObject);
    procedure edtIDProdutoPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure limpaGrade;
  end;

var
  FrameProdutoGrade: TFrameProdutoGrade;
  cdsProdutoCor: TClientDataSet;
  idTamanho: array of string;
  idCor: array of string;

implementation

{$R *.dfm}

uses unDM, unI2BBD, unI2BFuncoes;

procedure TFrameProdutoGrade.edtIDProdutoExit(Sender: TObject);
begin
  inherited;
  if edtIDProduto.EditValue > 0 then
  begin
    edtProdutoNome.Text := i2bGetValor('produto', 'idProduto', edtIDProduto.Text, 'nome', DM.dspConnection);
	if edtProdutoNome.Text = '' then
    begin
      MessageDlg('O produto n�o pode ser encontrado.', mtError, [mbOK], 0);
      edtIDProduto.SetFocus;
    end;
  end;
end;

procedure TFrameProdutoGrade.edtIDProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    i2bF2(edtIDProduto, nil, 'Selecione o produto.', 'idProduto|nome', 'nome',
      'idProduto|nome', 'Produto|Nome', 'produto', '', DM.conServer, 'FrameProduto', DM.cdsProduto);
    edtProdutoNome.Text := i2bGetValor('produto', 'idProduto', edtIDProduto.Text, 'nome', DM.dspConnection);
  end;
end;

procedure TFrameProdutoGrade.edtIDProdutoPropertiesEditValueChanged(Sender: TObject);
var
  cdsProdutoTamanho: TClientDataSet;
  I: Integer;
  coluna : TcxGridColumn;
  cadastrado: TClientDataSet;
  carregaGrade: TClientDataSet;
begin
  inherited;
  limpaGrade;
  cadastrado := i2bGetClient('select idprodutograde from produtograde where idproduto = '+edtIDProduto.Text+' and ativo = true',dm.dspConnection);
  if cadastrado.RecordCount = 0 then
  begin
    cdsProdutoTamanho := i2bGetClient('select * from produtoTamanho order by idProdutoTamanho', DM.dspConnection);

    while not(cdsProdutoTamanho.Eof) do
    begin
      coluna := tvGrade.CreateColumn;
      coluna.Caption := cdsProdutoTamanho.FieldByName('codigo').AsString;
      coluna.Tag := cdsProdutoTamanho.FieldByName('idprodutotamanho').AsInteger;
      coluna.PropertiesClassName := 'TcxCheckBoxProperties';
      coluna.Properties := tvGradeColumn1.Properties;
      coluna.DataBinding.ValueType := tvGradeColumn1.DataBinding.ValueType;
      coluna.HeaderAlignmentHorz := taCenter;

      cdsProdutoTamanho.Next;
    end;

    cdsProdutoCor := i2bGetClient ('select * from produtoCor order by idprodutocor desc', DM.dspConnection);
    while not(cdsProdutoCor.Eof) do
    begin
      tvGrade.DataController.Insert;
      tvGradeCodCor.EditValue := cdsProdutoCor.FieldByName('idprodutocor').AsInteger;
      tvGradeTamanhos.EditValue := cdsProdutoCor.FieldByName('nome').AsString;
      for I := 3 to tvGrade.ColumnCount - 1 do
      begin
        tvGrade.Columns[I].EditValue := False;
      end;
      cdsProdutoCor.Next;
    end;
  end
  else
  begin
    cdsProdutoTamanho := i2bGetClient('select * from produtoTamanho order by idProdutoTamanho', DM.dspConnection);

    while not(cdsProdutoTamanho.Eof) do
    begin
      coluna := tvGrade.CreateColumn;
      coluna.Caption := cdsProdutoTamanho.FieldByName('codigo').AsString;
      coluna.Tag := cdsProdutoTamanho.FieldByName('idprodutotamanho').AsInteger;
      coluna.PropertiesClassName := 'TcxCheckBoxProperties';
      coluna.Properties := tvGradeColumn1.Properties;
      coluna.DataBinding.ValueType := tvGradeColumn1.DataBinding.ValueType;
      coluna.HeaderAlignmentHorz := taCenter;

      cdsProdutoTamanho.Next;
    end;

    cdsProdutoCor := i2bGetClient ('select * from produtoCor order by idprodutocor desc', DM.dspConnection);
    while not(cdsProdutoCor.Eof) do
    begin
      tvGrade.DataController.Insert;
      tvGradeCodCor.EditValue := cdsProdutoCor.FieldByName('idprodutocor').AsInteger;
      tvGradeTamanhos.EditValue := cdsProdutoCor.FieldByName('nome').AsString;
      cdsProdutoTamanho.First;
      while not cdsProdutoTamanho.Eof do
      begin
        carregaGrade := i2bGetClient('select idprodutograde from produtograde where idproduto = '+edtIDProduto.Text
        +' and idprodutocor = '+cdsProdutoCor.FieldByName('idProdutoCor').AsString+' and idprodutotamanho = '
        +cdsProdutoTamanho.FieldByName('idprodutotamanho').AsString+' and ativo = true order by idprodutograde',dm.dspConnection);
        if carregaGrade.RecordCount = 0 then
        begin
          tvGrade.Columns[cdsProdutoTamanho.RecNo + 2].EditValue := False;
        end
        else
        begin
          tvGrade.Columns[cdsProdutoTamanho.RecNo + 2].EditValue := true;
        end;
        cdsProdutoTamanho.Next;
      end;
      cdsProdutoCor.Next;
    end;
  end;
end;

procedure TFrameProdutoGrade.limpaGrade;
begin
  if tvGrade.DataController.RecordCount > 0 then
  begin
    tvGrade.DataController.MultiSelect := True;
    tvGrade.DataController.SelectAll;
    tvGrade.DataController.DeleteSelection;
    tvGrade.DataController.MultiSelect := False;
  end;

  if tvGrade.ColumnCount > 3 then
  begin
    while tvGrade.ColumnCount > 3 do
    begin
      tvGrade.Columns[3].Destroy;
    end;
  end;
  idCor := 0;
  idTamanho := 0;
end;

end.
