unit unGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unBase, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxLayoutContainer, dxLayoutControl, Data.DB, dxSkinsdxNavBarPainter, dxNavBar, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, cxClasses, dxTileControl, cxContainer, cxEdit, cxImage, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, ShellAPI,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxGDIPlusClasses, Vcl.StdCtrls, dxBarBuiltInMenu,
  cxPC, dxScreenTip, dxCustomHint, cxHint, dxBar, dxRibbonRadialMenu, dxSkinsdxBarPainter, cxgridexportlink,
  Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxButtons, cxDropDownEdit, cxMemo,
  cxMaskEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxTextEdit, cxLabel, Datasnap.DBClient, cxDBEdit, cxButtonEdit;

type
  TfrmGrid = class(TfrmBase)
    dts: TDataSource;
    ActionList: TActionList;
    acImprimir: TAction;
    pnlSide: TPanel;
    imgImprimir: TcxImage;
    imgExportar: TcxImage;
    lblRegistros: TLabel;
    RadialMenuExportar: TdxRibbonRadialMenu;
    barBtnXML: TdxBarButton;
    barBtnExcel: TdxBarButton;
    barBtnPDF: TdxBarButton;
    barBtnCopiar: TdxBarButton;
    pnlClient: TPanel;
    cxPageControl: TcxPageControl;
    cxTabGrid: TcxTabSheet;
    cxGrid: TcxGrid;
    cxGridDB: TcxGridDBTableView;
    cxLevel: TcxGridLevel;
    cxTabCadastro: TcxTabSheet;
    pnlTop: TPanel;
    SaveDialog: TSaveDialog;
    barBtnHTML: TdxBarButton;
    barBtnTXT: TdxBarButton;
    ServerMethod: TSqlServerMethod;
    cxTabFiltro: TcxTabSheet;
    gbFiltroSalvo: TcxGroupBox;
    gbDesenvolvimentoFiltro: TcxGroupBox;
    lblFIltroCampo: TcxLabel;
    lblFiltroOperacao: TcxLabel;
    lblFiltroCondicao: TcxLabel;
    edtFiltroCondicao: TcxTextEdit;
    rgFiltroAndOr: TcxRadioGroup;
    dateFiltroCondicao: TcxDateEdit;
    gbFiltroDesenvolvido: TcxGroupBox;
    memoFiltroDesenvolvido: TcxMemo;
    cbFiltroCampo: TcxComboBox;
    cbFiltroOperacao: TcxComboBox;
    btnAdicionarFiltro: TcxButton;
    btnFiltroSalvar: TcxButton;
    btnFiltroLimpar: TcxButton;
    btnFiltroCancelar: TcxButton;
    cxButton1: TcxButton;
    acAbaFiltro: TAction;
    pnlBottom: TPanel;
    lblCampo: TcxLabel;
    cbCampo: TcxComboBox;
    lblInformacao: TcxLabel;
    edtInformacao: TcxTextEdit;
    btnBuscar: TcxButton;
    cbSQL: TcxComboBox;
    lblOperacao: TcxLabel;
    cbOperacao: TcxComboBox;
    dateInformacao: TcxDateEdit;
    acBuscar: TAction;
    cxLevelFiltro: TcxGridLevel;
    cxGridFiltro: TcxGrid;
    grdFiltro: TcxGridTableView;
    grdFiltroRemover: TcxGridColumn;
    grdFiltroID: TcxGridColumn;
    grdFiltroDescricao: TcxGridColumn;
    cxMemoFiltroSalvo: TcxMemo;
    grdFiltroDisplay: TcxGridColumn;
    grdFiltroSQL: TcxGridColumn;
    procedure dtsDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure imgExportarClick(Sender: TObject);
    procedure barBtnCopiarClick(Sender: TObject);
    procedure barBtnPDFClick(Sender: TObject);
    procedure barBtnExcelClick(Sender: TObject);
    procedure barBtnXMLClick(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure barBtnHTMLClick(Sender: TObject);
    procedure barBtnTXTClick(Sender: TObject);
    procedure acAbaFiltroExecute(Sender: TObject);
    procedure edtInformacaoKeyPress(Sender: TObject; var Key: Char);
    procedure cbSQLPropertiesChange(Sender: TObject);
    procedure cbCampoPropertiesChange(Sender: TObject);
    procedure acBuscarExecute(Sender: TObject);
    procedure grdFiltroDblClick(Sender: TObject);
    procedure grdFiltroRemoverPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    procedure ajustaCbOperacaoParaTexto;
    procedure ajustaCbOperacaoParaValor;
    procedure ajustaCbOperacaoParaData;
    procedure ajustaCbOperacaoParaBoleano;
  public
    { Public declarations }
  end;

var
  frmGrid: TfrmGrid;
  TipoDoCampo: TFieldType;

implementation

{$R *.dfm}

procedure TfrmGrid.ajustaCbOperacaoParaBoleano;
begin
  cbOperacao.Properties.Items.Clear;
  cbOperacao.Properties.Items.Add('Verdadeiro');
  cbOperacao.Properties.Items.Add('Falso');
  cbOperacao.ItemIndex := 0;
  edtInformacao.Visible := False;
  dateInformacao.Visible := False;
end;

procedure TfrmGrid.ajustaCbOperacaoParaData;
begin
  cbOperacao.Properties.Items.Clear;
  cbOperacao.Properties.Items.Add('Menor que');
  cbOperacao.Properties.Items.Add('Menor e Igual a');
  cbOperacao.Properties.Items.Add('Igual a');
  cbOperacao.Properties.Items.Add('Diferente de');
  cbOperacao.Properties.Items.Add('Maior e Igual a');
  cbOperacao.Properties.Items.Add('Maior que');
  cbOperacao.Properties.Items.Add('Mês Anterior');
  cbOperacao.Properties.Items.Add('Mês Atual');
  cbOperacao.Properties.Items.Add('Mês Seguinte');
  cbOperacao.Properties.Items.Add('Ano Anterior');
  cbOperacao.Properties.Items.Add('Ano Atual');
  cbOperacao.Properties.Items.Add('Ano Seguinte');
  cbOperacao.ItemIndex := 2;
  edtInformacao.Visible := False;
  dateInformacao.Visible := True;
end;

procedure TfrmGrid.ajustaCbOperacaoParaTexto;
begin
  cbOperacao.Properties.Items.Clear;
  cbOperacao.Properties.Items.Add('Igual a');
  cbOperacao.Properties.Items.Add('Diferente de');
  cbOperacao.Properties.Items.Add('Contém');
  cbOperacao.Properties.Items.Add('Não Contém');
  cbOperacao.Properties.Items.Add('Começa com');
  cbOperacao.Properties.Items.Add('Em Branco');
  cbOperacao.ItemIndex := 0;
  edtInformacao.Visible := True;
  dateInformacao.Visible := False;
end;

procedure TfrmGrid.ajustaCbOperacaoParaValor;
begin
  cbOperacao.Properties.Items.Clear;
  cbOperacao.Properties.Items.Add('Menor que');
  cbOperacao.Properties.Items.Add('Menor e Igual a');
  cbOperacao.Properties.Items.Add('Igual a');
  cbOperacao.Properties.Items.Add('Diferente de');
  cbOperacao.Properties.Items.Add('Maior e Igual a');
  cbOperacao.Properties.Items.Add('Maior que');
  cbOperacao.ItemIndex := 2;
  edtInformacao.Visible := True;
  dateInformacao.Visible := False;
end;

procedure TfrmGrid.acBuscarExecute(Sender: TObject);
var
  filtro: String;
  dia,mes,ano:Word;
begin
  if edtInformacao.Text = '' then
  begin //Quer Trazer TUDO
    filtro := '*';
  end
  else
  begin //Tem Filtro
    if TipoDoCampo in [ftString,ftWord,ftFixedChar,ftWideString,ftFixedWideChar,ftLongWord,ftExtended] then
    begin //Campo TEXTO
      case cbOperacao.ItemIndex of
        0: filtro := 'Upper('+cbSQL.Text+')' + ' = '+ 'Upper('+QuotedStr(edtInformacao.Text)+')'; //Igual a
        1: filtro := 'Upper('+cbSQL.Text+')' + ' <> '+ 'Upper('+QuotedStr(edtInformacao.Text)+')'; //Diferente de
        2: filtro := 'Upper('+cbSQL.Text+')' + ' like '+'Upper('+QuotedStr('%'+edtInformacao.Text+'%')+')'; //Contém
        3: filtro := 'Upper('+cbSQL.Text+')' + ' not like '+'Upper('+QuotedStr('%'+edtInformacao.Text+'%')+')'; //Não Contém
        4: filtro := 'Upper('+cbSQL.Text+')' + ' like '+'Upper('+QuotedStr(edtInformacao.Text+'%')+')'; //Começa com
        5: filtro := 'Upper('+cbSQL.Text+')' + ' = '+QuotedStr(''); //Em Branco
      end;
    end
    else if TipoDoCampo in [ftSmallint,ftInteger,ftFloat,ftCurrency,ftBCD,ftLargeint,ftFMTBcd,ftShortint,ftSingle] then
    begin //Campo INTEIRO ou NUMÉRICO
      case cbOperacao.ItemIndex of
        0: filtro := cbSQL.Text + ' < ' + StringReplace(edtInformacao.Text,',','.',[rfReplaceAll]); //Menor que
        1: filtro := cbSQL.Text + ' <= ' + StringReplace(edtInformacao.Text,',','.',[rfReplaceAll]); //Menor e igual a
        2: filtro := cbSQL.Text + ' = ' + StringReplace(edtInformacao.Text,',','.',[rfReplaceAll]); //Igual a
        3: filtro := cbSQL.Text + ' <> ' + StringReplace(edtInformacao.Text,',','.',[rfReplaceAll]); //Diferente de
        4: filtro := cbSQL.Text + ' >= ' + StringReplace(edtInformacao.Text,',','.',[rfReplaceAll]); //Maior e igual a
        5: filtro := cbSQL.Text + ' > ' + StringReplace(edtInformacao.Text,',','.',[rfReplaceAll]); //Maior que
      end;
    end
    else if TipoDoCampo in [ftDate,ftDateTime] then
    begin //Campo DATA
    case cbOperacao.ItemIndex of
      0: filtro := cbSQL.Text + ' < ' + QuotedStr(StringReplace(dateInformacao.Text,'/','.',[rfReplaceAll])); //Menor que
      1: filtro := cbSQL.Text + ' <= ' + QuotedStr(StringReplace(dateInformacao.Text,'/','.',[rfReplaceAll])); //Menor e Igual a
      2: filtro := cbSQL.Text + ' = ' + QuotedStr(StringReplace(dateInformacao.Text,'/','.',[rfReplaceAll])); //Igual a
      3: filtro := cbSQL.Text + ' <> ' + QuotedStr(StringReplace(dateInformacao.Text,'/','.',[rfReplaceAll])); //Diferente de
      4: filtro := cbSQL.Text + ' >= ' + QuotedStr(StringReplace(dateInformacao.Text,'/','.',[rfReplaceAll])); //Maior e Igual a
      5: filtro := cbSQL.Text + ' > ' + QuotedStr(StringReplace(dateInformacao.Text,'/','.',[rfReplaceAll])); //Maior que
      6: //Mês Anterior
      begin
        DecodeDate(date,ano,mes,dia);
        if mes = 1 then
        begin
          mes := 1;
          ano := ano - 1;
        end
        else
        begin
          mes := mes - 1;
        end;
        filtro := 'Extract(Month From '+cbSQL.Text+') = '+IntToStr(mes)+' and Extract (Ano From '+cbSQL.Text+') = '+
          IntToStr(ano);
      end;
      7: //Mês Atual
      begin
        DecodeDate(date,ano,mes,dia);
        filtro := 'Extract(Month From '+cbSQL.Text+') = '+IntToStr(mes)+' and Extract (Ano From '+cbSQL.Text+') = '+
          IntToStr(ano);
      end;
      8: //Mês Seguinte
      begin
        DecodeDate(date,ano,mes,dia);
        if mes = 12 then
        begin
          mes := 1;
          ano := ano + 1;
        end
        else
        begin
          mes := mes + 1;
        end;
        filtro := 'Extract(Month From '+cbSQL.Text+') = '+IntToStr(mes)+' and Extract (Ano From '+cbSQL.Text+') = '+
          IntToStr(ano);
      end;
      9: //Ano Anterior
      begin
        DecodeDate(date,ano,mes,dia);
        ano := ano - 1;
        filtro := 'Extract (Ano From '+cbSQL.Text+') = '+IntToStr(ano);
      end;
      10: //Ano Atual
      begin
        DecodeDate(date,ano,mes,dia);
        filtro := 'Extract (Ano From '+cbSQL.Text+') = '+IntToStr(ano);
      end;
      11: //Ano Seguinte
      begin
        ano := ano + 1;
        filtro := 'Extract (Ano From '+cbSQL.Text+') = '+IntToStr(ano);
      end;
    end;
    end
    else if TipoDoCampo in [ftBoolean] then
    begin //Campo BOLEANO
      case cbOperacao.ItemIndex of
        0: filtro := cbSQL.Text + ' = True'; //Verdadeiro
        1: filtro := cbSQL.Text + ' = False'; //Falso
      end;
    end;
  end;

  try
    (dts.DataSet as TClientDataSet).Close;
    ServerMethod.Params[0].AsString := filtro;
    ServerMethod.ExecuteMethod;
    (dts.DataSet as TClientDataSet).Open;
  except
    On E: Exception do
    begin
      Application.MessageBox(PWideChar('Falha ao buscar dados do Servidor. Detalhes: '+E.ToString),'',MB_OK + MB_ICONERROR);
    end;
  end;
end;

procedure TfrmGrid.acImprimirExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento...');
end;

procedure TfrmGrid.barBtnCopiarClick(Sender: TObject);
begin
  cxGridDB.CopyToClipboard(True);
end;

procedure TfrmGrid.barBtnExcelClick(Sender: TObject);
begin
  SaveDialog.Filter := 'Excel (*.xlsx) |*.xlsx';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt:= 'xlsx';
  if SaveDialog.Execute then
  begin
    ExportGridToXLSX(SaveDialog.FileName,cxGrid,False,True,True,SaveDialog.DefaultExt);
    ShellExecute(Handle, 'open', PChar(SaveDialog.FileName), nil, nil, SW_SHOW);
  end;
end;

procedure TfrmGrid.barBtnHTMLClick(Sender: TObject);
begin
  SaveDialog.Filter := 'HTML (*.html) |*.html';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt:= 'html';
  if SaveDialog.Execute then
  begin
    ExportGridToHTML(SaveDialog.FileName,cxGrid,False,True,SaveDialog.DefaultExt);
    ShellExecute(Handle, 'open', PChar(SaveDialog.FileName), nil, nil, SW_SHOW);
  end;
end;

procedure TfrmGrid.barBtnPDFClick(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento...');
end;

procedure TfrmGrid.barBtnTXTClick(Sender: TObject);
begin
  SaveDialog.Filter := 'Arquivo Texto (*.txt) |*.txt';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt:= 'txt';
  if SaveDialog.Execute then
  begin
    ExportGridToText(SaveDialog.FileName,cxGrid,False,True,SaveDialog.DefaultExt);
    ShellExecute(Handle, 'open', PChar(SaveDialog.FileName), nil, nil, SW_SHOW);
  end;
end;

procedure TfrmGrid.barBtnXMLClick(Sender: TObject);
begin
  SaveDialog.Filter := 'XML (*.xml) |*.xml';
  SaveDialog.Title := 'Exportar Dados';
  SaveDialog.DefaultExt:= 'xml';
  if SaveDialog.Execute then
  begin
    ExportGridToXML(SaveDialog.FileName,cxGrid,False,True,SaveDialog.DefaultExt);
    ShellExecute(Handle, 'open', PChar(SaveDialog.FileName), nil, nil, SW_SHOW);
  end;
end;

procedure TfrmGrid.cbCampoPropertiesChange(Sender: TObject);
begin
  cbSQL.ItemIndex := cbCampo.ItemIndex;
end;

procedure TfrmGrid.cbSQLPropertiesChange(Sender: TObject);
begin
{
  TFieldType = (ftUnknown[0], ftString[1], ftSmallint[2], ftInteger[3], ftWord[4], ftBoolean[5], ftFloat[6],
  ftCurrency[7], ftBCD[8], ftDate[9], ftTime[10], ftDateTime[11], ftBytes[12], ftVarBytes[13], ftAutoInc[14],
  ftBlob[15], ftMemo[16], ftGraphic[17], ftFmtMemo[18], ftParadoxOle[19], ftDBaseOle[20], ftTypedBinary[21],
  ftCursor[22], ftFixedChar[23], ftWideString[24], ftLargeint[25], ftADT[26], ftArray[27], ftReference[28],
  ftDataSet[29], ftOraBlob[30], ftOraClob[31], ftVariant[32], ftInterface[33], ftIDispatch[34], ftGuid[35],
  ftTimeStamp[36], ftFMTBcd[37], ftFixedWideChar[38], ftWideMemo[39], ftOraTimeStamp[40], ftOraInterval[41],
  ftLongWord[42], ftShortint[43], ftByte[44], ftExtended[45], ftConnection[46], ftParams[47], ftStream[48],
  ftTimeStampOffset[49], ftObject[50], ftSingle[51]);
}
  if not(btnBuscar.Visible) then
    btnBuscar.Visible := True;

  TipoDoCampo := (dts.DataSet as TClientDataSet).FieldByName(cbSQL.Text).DataType;
  case TipoDoCampo of
    ftString:        ajustaCbOperacaoParaTexto;
    ftSmallint:      ajustaCbOperacaoParaValor;
    ftInteger:       ajustaCbOperacaoParaValor;
    ftWord:          ajustaCbOperacaoParaTexto;
    ftBoolean:       ajustaCbOperacaoParaBoleano;
    ftFloat:         ajustaCbOperacaoParaValor;
    ftCurrency:      ajustaCbOperacaoParaValor;
    ftBCD:           ajustaCbOperacaoParaValor;
    ftDate:          ajustaCbOperacaoParaData;
    ftDateTime:      ajustaCbOperacaoParaData;
    ftFixedChar:     ajustaCbOperacaoParaTexto;
    ftWideString:    ajustaCbOperacaoParaTexto;
    ftLargeint:      ajustaCbOperacaoParaValor;
    ftFMTBcd:        ajustaCbOperacaoParaValor;
    ftFixedWideChar: ajustaCbOperacaoParaTexto;
    ftLongWord:      ajustaCbOperacaoParaTexto;
    ftShortint:      ajustaCbOperacaoParaValor;
    ftExtended:      ajustaCbOperacaoParaTexto;
    ftSingle:        ajustaCbOperacaoParaValor;
    else
    begin
      raise Exception.Create('Funcionalidade não implementada para o tipo do campo selecionado! Entre em contato com o '+
        'suporte e reporte a mensagem');
      btnBuscar.Visible := False;
    end;
  end;
end;

procedure TfrmGrid.dtsDataChange(Sender: TObject; Field: TField);
begin
  lblRegistros.Caption := IntToStr(dts.DataSet.RecNo) + '/' + IntToStr(dts.DataSet.RecordCount);
end;

procedure TfrmGrid.edtInformacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if TipoDoCampo in [ftSmallint,ftInteger,ftLargeint,ftShortint] then
  begin //Campo INTEIRO só pode digitar de 0 a 9
    if not(Key in ['0'..'9',#8]) then
    begin
      Key:=#0;
    end;
  end
  else if TipoDoCampo in [ftFloat,ftCurrency,ftBCD,ftFMTBcd,ftSingle] then
  begin //Campo NUMÉRICO só pode digitar de 0 a 9 e vírgula
    if not(Key in ['0'..'9',',',#8]) then
    begin
      Key:=#0;
    end
    else
    begin //Não pode colocar mais de uma vírgula
      if pos(',',edtInformacao.Text,0) > 0 then
        Key:=#0;
    end;
  end;
end;

procedure TfrmGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmGrid.FormCreate(Sender: TObject);
var
  I : integer;
begin
  inherited;

  for I := 0 to (dts.DataSet as TClientDataSet).Fields.Count - 1 do
  begin
    if (dts.DataSet as TClientDataSet).Fields[I].DataType in [ftString,ftSmallint,ftInteger,ftWord,ftBoolean,ftFloat,
      ftCurrency,ftBCD,ftDate,ftDateTime,ftFixedChar,ftWideString,ftLargeint,ftFMTBcd,ftFixedWideChar,ftLongWord,
      ftShortint,ftExtended,ftSingle] then
    begin
      if (dts.DataSet as TClientDataSet).Fields[I].Visible then
      begin
        cbSQL.Properties.Items.Add((dts.DataSet as TClientDataSet).Fields[I].FieldName);
        cbCampo.Properties.Items.Add((dts.DataSet as TClientDataSet).Fields[I].DisplayLabel);
      end;
    end;
  end;
  cbCampo.ItemIndex := 0;

  cxPageControl.Properties.HideTabs := True;
end;

procedure TfrmGrid.grdFiltroDblClick(Sender: TObject);
begin
  if not(grdFiltroID.EditValue is null) then
  begin
    cxMemoFiltroSalvo.Lines.Clear;
    cxMemoFiltroSalvo.Text := grdFiltroDisplay.EditValue;
  end;
end;

procedure TfrmGrid.grdFiltroRemoverPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  ShowMessage('Quando clicar nesse botão vai remover o Filtro Salvo');
end;

procedure TfrmGrid.imgExportarClick(Sender: TObject);
begin
  RadialMenuExportar.PopupFromCursorPos;
end;

procedure TfrmGrid.acAbaFiltroExecute(Sender: TObject);
begin
  if cxPageControl.ActivePage = cxTabGrid then
  begin
    cbFiltroCampo.Properties.Items := cbCampo.Properties.Items;
    cxPageControl.ActivePage := cxTabFiltro;
  end;
end;

end.
