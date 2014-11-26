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
  cxMaskEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxTextEdit, cxLabel, Datasnap.DBClient, cxDBEdit, cxButtonEdit,
  Datasnap.DSConnect;

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
    gbFiltroDesenvolvido: TcxGroupBox;
    memoFiltroDesenvolvido: TcxMemo;
    cbFiltroCampo: TcxComboBox;
    cbFiltroOperacao: TcxComboBox;
    btnAdicionarFiltro: TcxButton;
    btnFiltroSalvar: TcxButton;
    btnFiltroLimpar: TcxButton;
    btnFiltroCancelar: TcxButton;
    btnAplicarFiltro: TcxButton;
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
    cbFiltroSQL: TcxComboBox;
    cdsFiltroSalvo: TClientDataSet;
    ServerMethodFiltro: TSqlServerMethod;
    grdFiltroCarregar: TcxGridColumn;
    imgFiltroSQL: TcxImage;
    memoFiltroSQL: TcxMemo;
    dateFiltroCondicao: TcxDateEdit;
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
    procedure btnFiltroCancelarClick(Sender: TObject);
    procedure cbFiltroCampoPropertiesChange(Sender: TObject);
    procedure cbFiltroSQLPropertiesChange(Sender: TObject);
    procedure edtFiltroCondicaoKeyPress(Sender: TObject; var Key: Char);
    procedure grdFiltroRemoverPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdFiltroCarregarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure imgFiltroSQLClick(Sender: TObject);
    procedure memoFiltroDesenvolvidoPropertiesChange(Sender: TObject);
    procedure btnFiltroLimparClick(Sender: TObject);
    procedure btnAdicionarFiltroClick(Sender: TObject);
    procedure btnAplicarFiltroClick(Sender: TObject);
  private
    { Private declarations }
    procedure ajustaCbOperacaoParaTexto(Combo: TcxComboBox);
    procedure ajustaCbOperacaoParaValor(Combo: TcxComboBox);
    procedure ajustaCbOperacaoParaData(Combo: TcxComboBox);
    procedure ajustaCbOperacaoParaBoleano(Combo: TcxComboBox);

    procedure addCondicaoAoFiltro();
  public
    { Public declarations }
  end;

var
  frmGrid: TfrmGrid;
  TipoDoCampo: TFieldType;
  TipoDoCampoDoFiltro: TFieldType;

implementation

{$R *.dfm}

{$REGION 'Ajuste dos ComboBox'}

procedure TfrmGrid.ajustaCbOperacaoParaBoleano(Combo: TcxComboBox);
begin
  Combo.Properties.Items.Clear;
  Combo.Properties.Items.Add('Verdadeiro');
  Combo.Properties.Items.Add('Falso');
  Combo.ItemIndex := 0;
end;

procedure TfrmGrid.ajustaCbOperacaoParaData(Combo: TcxComboBox);
begin
  Combo.Properties.Items.Clear;
  Combo.Properties.Items.Add('Menor que');
  Combo.Properties.Items.Add('Menor e Igual a');
  Combo.Properties.Items.Add('Igual a');
  Combo.Properties.Items.Add('Diferente de');
  Combo.Properties.Items.Add('Maior e Igual a');
  Combo.Properties.Items.Add('Maior que');
  Combo.Properties.Items.Add('Mês Anterior');
  Combo.Properties.Items.Add('Mês Atual');
  Combo.Properties.Items.Add('Mês Seguinte');
  Combo.Properties.Items.Add('Ano Anterior');
  Combo.Properties.Items.Add('Ano Atual');
  Combo.Properties.Items.Add('Ano Seguinte');
  Combo.ItemIndex := 2;
end;

procedure TfrmGrid.ajustaCbOperacaoParaTexto(Combo: TcxComboBox);
begin
  Combo.Properties.Items.Clear;
  Combo.Properties.Items.Add('Igual a');
  Combo.Properties.Items.Add('Diferente de');
  Combo.Properties.Items.Add('Contém');
  Combo.Properties.Items.Add('Não Contém');
  Combo.Properties.Items.Add('Começa com');
  Combo.Properties.Items.Add('Em Branco');
  Combo.ItemIndex := 0;
end;

procedure TfrmGrid.ajustaCbOperacaoParaValor(Combo: TcxComboBox);
begin
  Combo.Properties.Items.Clear;
  Combo.Properties.Items.Add('Menor que');
  Combo.Properties.Items.Add('Menor e Igual a');
  Combo.Properties.Items.Add('Igual a');
  Combo.Properties.Items.Add('Diferente de');
  Combo.Properties.Items.Add('Maior e Igual a');
  Combo.Properties.Items.Add('Maior que');
  Combo.ItemIndex := 2;
end;

{$ENDREGION}

procedure TfrmGrid.addCondicaoAoFiltro();
var
  dia,mes,ano : Word;
begin
  if TipoDoCampoDoFiltro in [ftString,ftWord,ftFixedChar,ftWideString,ftFixedWideChar,ftLongWord,ftExtended] then
  begin
    case cbFiltroOperacao.ItemIndex of
      0: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (Upper(['+cbFiltroSQL.Text+']) '+' [=] '+' Upper(['+QuotedStr(edtFiltroCondicao.Text)+'])) ';
      1: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (Upper(['+cbFiltroSQL.Text+']) '+' [<>] '+' Upper(['+QuotedStr(edtFiltroCondicao.Text)+'])) ';
      2: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (Upper(['+cbFiltroSQL.Text+']) '+' [like] '+' Upper([%'+QuotedStr(edtFiltroCondicao.Text)+'%])) ';
      3: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (Upper(['+cbFiltroSQL.Text+']) '+' [not like] '+' Upper([%'+QuotedStr(edtFiltroCondicao.Text)+'%])) ';
      4: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (Upper(['+cbFiltroSQL.Text+']) '+' [starting with] '+' Upper(['+QuotedStr(edtFiltroCondicao.Text)+'])) ';
      5: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [=] '+' ['+QuotedStr('')+']) ';
    end;
  end
  else
  if TipoDoCampoDoFiltro in [ftSmallint,ftInteger,ftFloat,ftCurrency,ftBCD,ftLargeint,ftFMTBcd,ftShortint,ftSingle] then
  begin
    case cbFiltroOperacao.ItemIndex of
      0: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [<] '+' ['+StringReplace(edtFiltroCondicao.Text,',','.',[rfReplaceAll])+']) ';
      1: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [<=] '+' ['+StringReplace(edtFiltroCondicao.Text,',','.',[rfReplaceAll])+']) ';
      2: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [=] '+' ['+StringReplace(edtFiltroCondicao.Text,',','.',[rfReplaceAll])+']) ';
      3: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [<>] '+' ['+StringReplace(edtFiltroCondicao.Text,',','.',[rfReplaceAll])+']) ';
      4: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [>=] '+' ['+StringReplace(edtFiltroCondicao.Text,',','.',[rfReplaceAll])+']) ';
      5: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [>] '+' ['+StringReplace(edtFiltroCondicao.Text,',','.',[rfReplaceAll])+']) ';
    end;
  end
  else
  if TipoDoCampoDoFiltro in [ftDate,ftDateTime] then
  begin
    case cbFiltroOperacao.ItemIndex of
      0: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [<] '+' ['+QuotedStr(StringReplace(dateFiltroCondicao.Text,'/','.',[rfReplaceAll]))+']) ';
      1: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [<=] '+' ['+QuotedStr(StringReplace(dateFiltroCondicao.Text,'/','.',[rfReplaceAll]))+']) ';
      2: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [=] '+' ['+QuotedStr(StringReplace(dateFiltroCondicao.Text,'/','.',[rfReplaceAll]))+']) ';
      3: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [<>] '+' ['+QuotedStr(StringReplace(dateFiltroCondicao.Text,'/','.',[rfReplaceAll]))+']) ';
      4: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [>=] '+' ['+QuotedStr(StringReplace(dateFiltroCondicao.Text,'/','.',[rfReplaceAll]))+']) ';
      5: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [>] '+' ['+QuotedStr(StringReplace(dateFiltroCondicao.Text,'/','.',[rfReplaceAll]))+']) ';
      6:
      begin
        DecodeDate(dateFiltroCondicao.Date,ano,mes,dia);
        if mes = 1 then
        begin
          mes := 1;
          ano := ano - 1;
        end
        else
        begin
          mes := mes - 1;
        end;
        memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [Extract(Month From '+cbFiltroSQL.Text+') = '+
          IntToStr(mes)+' and Extract (Ano From '+cbFiltroSQL.Text+') = '+IntToStr(ano)+']) ';
      end;
      7:
      begin
        DecodeDate(dateFiltroCondicao.Date,ano,mes,dia);
        memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [Extract(Month From '+cbFiltroSQL.Text+') = '+
          IntToStr(mes)+' and Extract (Ano From '+cbFiltroSQL.Text+') = '+IntToStr(ano)+']) ';
      end;
      8:
      begin
        DecodeDate(dateFiltroCondicao.Date,ano,mes,dia);
        if mes = 12 then
        begin
          mes := 1;
          ano := ano + 1;
        end
        else
        begin
          mes := mes + 1;
        end;
        memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [Extract(Month From '+cbFiltroSQL.Text+') = '+
          IntToStr(mes)+' and Extract (Ano From '+cbFiltroSQL.Text+') = '+IntToStr(ano)+']) ';
      end;
      9:
      begin
        DecodeDate(dateFiltroCondicao.Date,ano,mes,dia);
        ano := ano - 1;
        memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [Extract (Ano From '+cbFiltroSQL.Text+') = '+
          IntToStr(ano)+']) ';
      end;
      10:
      begin
        DecodeDate(dateFiltroCondicao.Date,ano,mes,dia);
        memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [Extract (Ano From '+cbFiltroSQL.Text+') = '+
          IntToStr(ano)+']) ';
      end;
      11:
      begin
        DecodeDate(dateFiltroCondicao.Date,ano,mes,dia);
        ano := ano + 1;
        memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [Extract (Ano From '+cbFiltroSQL.Text+') = '+
          IntToStr(ano)+']) ';
      end;
    end;
  end
  else
  if TipoDoCampoDoFiltro in [ftBoolean] then
  begin
    case cbFiltroOperacao.ItemIndex of
      0: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [ = True]) '; //Verdadeiro
      1: memoFiltroSQL.Text := memoFiltroSQL.Text + ' (['+cbFiltroSQL.Text+'] '+' [ = False]) '; //Falso
    end;
  end;
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

procedure TfrmGrid.btnAdicionarFiltroClick(Sender: TObject);
begin
  if memoFiltroDesenvolvido.Text <> '' then
  begin
    if rgFiltroAndOr.ItemIndex = 0 then
    begin
      memoFiltroDesenvolvido.Text := memoFiltroDesenvolvido.Text + ' e ';
      memoFiltroSQL.Text := memoFiltroSQL.Text + ' [and] ';
    end
    else
    begin
      memoFiltroDesenvolvido.Text := memoFiltroDesenvolvido.Text + ' ou ';
      memoFiltroSQL.Text := memoFiltroSQL.Text + ' [or] ';
    end;
  end;

  if cbFiltroCampo.ItemIndex <> -1 then
  begin //Tem Campo selecionado
    if cbFiltroOperacao.ItemIndex <> -1 then
    begin //Tem Operação selecionada
      if edtFiltroCondicao.Visible then
      begin //Se o campo é String, Valor ou Inteiro
        if edtFiltroCondicao.Text <> '' then
        begin //Tem condição do filtro informada
          //Adiciona condição ao Memo visto pelo usuário
          memoFiltroDesenvolvido.Text := memoFiltroDesenvolvido.Text +
            ' ('+cbFiltroCampo.Text+' '+cbFiltroOperacao.Text+' '+QuotedStr(edtFiltroCondicao.Text)+') ';
          //Adiciona condição ao Memo que será executada a SQL
          addCondicaoAoFiltro();
        end
        else
        begin
          Application.MessageBox('Por favor, informe a Condição a ser filtrada.','Filtro incompleto',MB_OK +
            MB_ICONINFORMATION);
        end;
      end
      else
      begin //Se o campo é do tipo Data
        //Adiciona condição ao Memo visto pelo usuário
        memoFiltroDesenvolvido.Text := memoFiltroDesenvolvido.Text +
            ' ('+cbFiltroCampo.Text+' '+cbFiltroOperacao.Text+' '+dateFiltroCondicao.Text+') ';
        //Adiciona condição ao Memo que será executada a SQL
        addCondicaoAoFiltro();
      end;
      cbFiltroCampo.ItemIndex := -1;
      cbFiltroOperacao.ItemIndex := -1;
      edtFiltroCondicao.Clear;
      dateFiltroCondicao.Clear;
    end
    else
    begin
      Application.MessageBox('Por favor, informe a Operação a ser realizada.','Filtro incompleto',MB_OK +
        MB_ICONINFORMATION);
    end;
  end
  else
  begin
    Application.MessageBox('Por favor, informe o Campo a ser filtrado.','Filtro incompleto',MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TfrmGrid.btnAplicarFiltroClick(Sender: TObject);
var
  condicao : String;
begin
  try
    (dts.DataSet as TClientDataSet).Close;
    condicao := memoFiltroSQL.Text;
    condicao := StringReplace(condicao,'[','',[rfReplaceAll]);
    condicao := StringReplace(condicao,']','',[rfReplaceAll]);
    ServerMethod.Params[0].AsString := condicao;
    ServerMethod.ExecuteMethod;
    (dts.DataSet as TClientDataSet).Open;
    cxPageControl.ActivePage := cxTabGrid;
  except
    On E: Exception do
    begin
      Application.MessageBox(PWideChar('Falha ao buscar dados do Servidor. Detalhes: '+E.ToString),'',MB_OK + MB_ICONERROR);
    end;
  end;
end;

procedure TfrmGrid.btnFiltroCancelarClick(Sender: TObject);
begin
  memoFiltroDesenvolvido.Lines.Clear;
  memoFiltroSQL.Lines.Clear;
  cxPageControl.ActivePage := cxTabGrid;
end;

procedure TfrmGrid.btnFiltroLimparClick(Sender: TObject);
begin
  cbFiltroCampo.ItemIndex := -1;
  cbFiltroOperacao.ItemIndex := -1;
  dateFiltroCondicao.Clear;
  edtFiltroCondicao.Clear;
  rgFiltroAndOr.ItemIndex := 0;
  memoFiltroDesenvolvido.Lines.Clear;
  memoFiltroSQL.Lines.Clear;
end;

procedure TfrmGrid.cbCampoPropertiesChange(Sender: TObject);
begin
  cbSQL.ItemIndex := cbCampo.ItemIndex;
end;

procedure TfrmGrid.cbFiltroCampoPropertiesChange(Sender: TObject);
begin
  cbFiltroSQL.ItemIndex := cbFiltroCampo.ItemIndex;
end;

procedure TfrmGrid.cbFiltroSQLPropertiesChange(Sender: TObject);
begin
  if cbFiltroSQL.ItemIndex <> -1 then
  begin
    TipoDoCampoDoFiltro := (dts.DataSet as TClientDataSet).FieldByName(cbFiltroSQL.Text).DataType;
    case TipoDoCampoDoFiltro of
      ftString:
        begin
          ajustaCbOperacaoParaTexto(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftSmallint:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftInteger:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftWord:
        begin
          ajustaCbOperacaoParaTexto(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftBoolean:
        begin
          ajustaCbOperacaoParaBoleano(cbFiltroOperacao);
          edtFiltroCondicao.Visible := False;
          dateFiltroCondicao.Visible := False;
        end;
      ftFloat:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftCurrency:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftBCD:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftDate:
        begin
          ajustaCbOperacaoParaData(cbFiltroOperacao);
          edtFiltroCondicao.Visible := False;
          dateFiltroCondicao.Visible := True;
        end;
      ftDateTime:
        begin
          ajustaCbOperacaoParaData(cbFiltroOperacao);
          edtFiltroCondicao.Visible := False;
          dateFiltroCondicao.Visible := True;
        end;
      ftFixedChar:
        begin
          ajustaCbOperacaoParaTexto(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftWideString:
        begin
          ajustaCbOperacaoParaTexto(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftLargeint:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftFMTBcd:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftFixedWideChar:
        begin
          ajustaCbOperacaoParaTexto(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftLongWord:
        begin
          ajustaCbOperacaoParaTexto(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftShortint:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftExtended:
        begin
          ajustaCbOperacaoParaTexto(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      ftSingle:
        begin
          ajustaCbOperacaoParaValor(cbFiltroOperacao);
          edtFiltroCondicao.Visible := True;
          dateFiltroCondicao.Visible := False;
        end;
      else
      begin
        raise Exception.Create('Funcionalidade não implementada para o tipo do campo selecionado! Entre em contato com o '+
          'suporte e reporte a mensagem');
        btnBuscar.Visible := False;
      end;
    end;
  end;
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
    ftString:
      begin
        ajustaCbOperacaoParaTexto(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftSmallint:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftInteger:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftWord:
      begin
        ajustaCbOperacaoParaTexto(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftBoolean:
      begin
        ajustaCbOperacaoParaBoleano(cbOperacao);
        edtInformacao.Visible := False;
        dateInformacao.Visible := False;
      end;
    ftFloat:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftCurrency:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftBCD:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftDate:
      begin
        ajustaCbOperacaoParaData(cbOperacao);
        edtInformacao.Visible := False;
        dateInformacao.Visible := True;
      end;
    ftDateTime:
      begin
        ajustaCbOperacaoParaData(cbOperacao);
        edtInformacao.Visible := False;
        dateInformacao.Visible := True;
      end;
    ftFixedChar:
      begin
        ajustaCbOperacaoParaTexto(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftWideString:
      begin
        ajustaCbOperacaoParaTexto(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftLargeint:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftFMTBcd:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftFixedWideChar:
      begin
        ajustaCbOperacaoParaTexto(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftLongWord:
      begin
        ajustaCbOperacaoParaTexto(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftShortint:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftExtended:
      begin
        ajustaCbOperacaoParaTexto(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
    ftSingle:
      begin
        ajustaCbOperacaoParaValor(cbOperacao);
        edtInformacao.Visible := True;
        dateInformacao.Visible := False;
      end;
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

procedure TfrmGrid.edtFiltroCondicaoKeyPress(Sender: TObject; var Key: Char);
begin
  if TipoDoCampoDoFiltro in [ftSmallint,ftInteger,ftLargeint,ftShortint] then
  begin //Campo INTEIRO só pode digitar de 0 a 9
    if not(Key in ['0'..'9',#8]) then
    begin
      Key:=#0;
    end;
  end
  else if TipoDoCampoDoFiltro in [ftFloat,ftCurrency,ftBCD,ftFMTBcd,ftSingle] then
  begin //Campo NUMÉRICO só pode digitar de 0 a 9 e vírgula
    if not(Key in ['0'..'9',',',#8]) then
    begin
      Key:=#0;
    end
    else
    begin //Não pode colocar mais de uma vírgula
      if pos(',',edtFiltroCondicao.Text,0) > 0 then
        Key:=#0;
    end;
  end;
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
  cxPageControl.ActivePage := cxTabGrid;

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

procedure TfrmGrid.grdFiltroCarregarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if grdFiltro.DataController.RecordCount > 0 then
  begin
    cxMemoFiltroSalvo.Lines.Clear;
    cxMemoFiltroSalvo.Text := grdFiltroDisplay.EditValue;
    memoFiltroDesenvolvido.Lines.Clear;
    memoFiltroDesenvolvido.Text := grdFiltroDisplay.EditValue;
    memoFiltroSQL.Lines.Clear;
    memoFiltroSQL.Text := grdFiltroSQL.EditValue;
  end;
end;

procedure TfrmGrid.grdFiltroDblClick(Sender: TObject);
begin
  if grdFiltro.DataController.RecordCount > 0 then
  begin
    cxMemoFiltroSalvo.Lines.Clear;
    cxMemoFiltroSalvo.Text := grdFiltroDisplay.EditValue;
  end;
end;

procedure TfrmGrid.grdFiltroRemoverPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Application.MessageBox('Confirma a exclusão do Filtro selecionado?','Exclusão de Filtro Salvo',MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = mrYes then
  begin
    ShowMessage('Excluído');
  end;
end;

procedure TfrmGrid.imgExportarClick(Sender: TObject);
begin
  RadialMenuExportar.PopupFromCursorPos;
end;

procedure TfrmGrid.imgFiltroSQLClick(Sender: TObject);
var
  resposta : String;
begin
  if not(memoFiltroSQL.Visible) then
  begin
    InputQuery('Senha de Liberação','Senha de Liberação',resposta);
    if resposta = 'the winter is coming' then
    begin
      memoFiltroSQL.Visible := True;
      memoFiltroDesenvolvido.Visible := False;
    end;
  end
  else
  begin
    memoFiltroSQL.Visible := False;
    memoFiltroDesenvolvido.Visible := True;
  end;
end;

procedure TfrmGrid.memoFiltroDesenvolvidoPropertiesChange(Sender: TObject);
begin
  if memoFiltroDesenvolvido.Text = '' then
  begin
    btnAplicarFiltro.Enabled := False;
    btnFiltroSalvar.Enabled := False;
    btnFiltroLimpar.Enabled := False;
  end
  else
  begin
    btnAplicarFiltro.Enabled := True;
    btnFiltroSalvar.Enabled := True;
    btnFiltroLimpar.Enabled := True;
  end;
end;

procedure TfrmGrid.acAbaFiltroExecute(Sender: TObject);
var
  Provider : TDSProviderConnection;
begin
  if cxPageControl.ActivePage = cxTabGrid then
  begin
    if cbFiltroCampo.Properties.Items.Count = 0 then
    begin
      //Alimentar Combos com Campos
      cbFiltroSQL.Properties.Items := cbSQL.Properties.Items;
      cbFiltroCampo.Properties.Items := cbCampo.Properties.Items;

      //Buscar os Filtros criados
      Provider := ((dts.DataSet as TClientDataSet).RemoteServer as TDSProviderConnection);
      ServerMethodFiltro.SQLConnection := Provider.SQLConnection;
      ServerMethodFiltro.ServerMethodName := 'TServerMethods.getFiltosSalvos';
      ServerMethodFiltro.Params[0].AsString := Name;
      ServerMethodFiltro.Params[1].AsString := Usuario;
      ServerMethodFiltro.ExecuteMethod;

      cdsFiltroSalvo.RemoteServer := (dts.DataSet as TClientDataSet).RemoteServer;
      cdsFiltroSalvo.ProviderName := 'dspFiltroSalvo';
      cdsFiltroSalvo.Open;
      if cdsFiltroSalvo.RecordCount > 0 then
      begin
        cdsFiltroSalvo.First;
        while not(cdsFiltroSalvo.Eof) do
        begin
          grdFiltro.DataController.Insert;
          grdFiltroID.EditValue := cdsFiltroSalvo.FieldByName('idfiltrosalvo').AsInteger;
          grdFiltroDescricao.EditValue := cdsFiltroSalvo.FieldByName('nome').AsString;
          grdFiltroDisplay.EditValue := cdsFiltroSalvo.FieldByName('filtrodisplay').AsString;
          grdFiltroSQL.EditValue := cdsFiltroSalvo.FieldByName('filtrosql').AsString;
          grdFiltro.DataController.Post();

          cdsFiltroSalvo.Next;
        end;
      end;
    end;

    cxPageControl.ActivePage := cxTabFiltro;
  end;
end;

end.
