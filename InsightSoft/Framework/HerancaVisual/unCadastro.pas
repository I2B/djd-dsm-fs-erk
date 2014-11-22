unit unCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxLayoutContainer, dxLayoutControl, Data.DB, dxSkinsdxBarPainter, cxClasses, dxBar, dxSkinsdxNavBarPainter,
  dxNavBarCollns, dxNavBarBase, dxNavBar, Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ImgList, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxGDIPlusClasses,
  cxImage, Vcl.ExtCtrls, Vcl.StdCtrls, dxBarBuiltInMenu, cxPC, dxScreenTip, dxCustomHint, cxHint, dxRibbonRadialMenu,
  Datasnap.DBClient, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.Menus, cxButtons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider, Data.FMTBcd,
  Data.SqlExpr, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxGroupBox, cxListBox, cxRadioGroup, cxMemo,
  cxButtonEdit;

type
  TfrmCadastro = class(TfrmGrid)
    imgNovo: TcxImage;
    imgEditar: TcxImage;
    imgInativar: TcxImage;
    acNovo: TAction;
    acEditar: TAction;
    acInativar: TAction;
    pnlCadastro: TPanel;
    cxImage3: TcxImage;
    cxImage4: TcxImage;
    acSalvar: TAction;
    acCancelar: TAction;
    lblPrimeiroEdit: TLabel;
    lblFrame: TLabel;
    procedure acNovoExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acInativarExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbCampoPropertiesChange(Sender: TObject);
    procedure cbSQLPropertiesChange(Sender: TObject);
    procedure edtInformacaoKeyPress(Sender: TObject; var Key: Char);
    procedure acBuscarExecute(Sender: TObject);
    procedure acAbaFiltroExecute(Sender: TObject);
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
  frmCadastro: TfrmCadastro;
  TipoDoCampo: TFieldType;

implementation

{$R *.dfm}

procedure TfrmCadastro.acAbaFiltroExecute(Sender: TObject);
begin
  if cxPageControl.ActivePage = cxTabGrid then
  begin
    cbFiltroCampo.Properties.Items := cbCampo.Properties.Items;
    cxPageControl.ActivePage := cxTabFiltro;
  end;
end;

procedure TfrmCadastro.acBuscarExecute(Sender: TObject);
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

procedure TfrmCadastro.acCancelarExecute(Sender: TObject);
begin
  inherited;
  (dts.DataSet as TClientDataSet).Cancel;
  cxPageControl.ActivePage := cxTabGrid;
  pnlSide.Visible := True;
end;


procedure TfrmCadastro.acEditarExecute(Sender: TObject);
var
  Frame : TFrame;
begin
  inherited;
  if (dts.DataSet as TClientDataSet).RecordCount > 0 then
  begin
    pnlSide.Visible := False;
    cxPageControl.ActivePage := cxTabCadastro;
    try
      Frame := TFrame(FindComponent(lblFrame.Caption));
      (Frame.FindComponent(lblPrimeiroEdit.Caption) as TcxDBTextEdit).SetFocus;
      (Frame.FindComponent(lblPrimeiroEdit.Caption) as TcxDBTextEdit).SelectAll;
    except
      MessageDlg('PROGRAMADOR!! Não foi possível encontrar o frame "'+lblFrame.Caption+'" ou o campo "'+
      lblPrimeiroEdit.Caption+'" para aplicar a função de setFocus'+#10#13+
      'Altere o caption do lblPrimeiroEdit.',mtError, [mbOk],0);
    end;
    (dts.DataSet as TClientDataSet).Edit;
  end;
end;

procedure TfrmCadastro.acInativarExecute(Sender: TObject);
begin
  inherited;
  if (dts.DataSet as TClientDataSet).RecordCount > 0 then
  begin
    if Application.MessageBox('Você tem certeza que deseja Remover/Inativar este registro?','Inativar Registro',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = mrYes then
    begin
      (dts.DataSet as TClientDataSet).Delete;
      (dts.DataSet as TClientDataSet).ApplyUpdates(-1);
    end;
  end;
end;

procedure TfrmCadastro.acNovoExecute(Sender: TObject);
var
  Frame : TFrame;
begin
  inherited;
  pnlSide.Visible := False;
  cxPageControl.ActivePage := cxTabCadastro;
  (dts.DataSet as TClientDataSet).Insert;
  try
    Frame := TFrame(FindComponent(lblFrame.Caption));
    (Frame.FindComponent(lblPrimeiroEdit.Caption) as TcxDBTextEdit).SetFocus;
    (Frame.FindComponent(lblPrimeiroEdit.Caption) as TcxDBTextEdit).SelectAll;
  except
    MessageDlg('PROGRAMADOR!! Não foi possível encontrar o frame "'+lblFrame.Caption+'" ou o campo "'+
      lblPrimeiroEdit.Caption+'" para aplicar a função de setFocus'+#10#13+
      'Altere o caption do lblPrimeiroEdit.',mtError, [mbOk],0);
  end;
end;

procedure TfrmCadastro.acSalvarExecute(Sender: TObject);
begin
  inherited;
  (dts.DataSet as TClientDataSet).Post;
  (dts.DataSet as TClientDataSet).ApplyUpdates(-1);
  (dts.DataSet as TClientDataSet).Refresh;
  cxPageControl.ActivePage := cxTabGrid;
  pnlSide.Visible := True;
end;

procedure TfrmCadastro.ajustaCbOperacaoParaBoleano;
begin
  cbOperacao.Properties.Items.Clear;
  cbOperacao.Properties.Items.Add('Verdadeiro');
  cbOperacao.Properties.Items.Add('Falso');
  cbOperacao.ItemIndex := 0;
  edtInformacao.Visible := False;
  dateInformacao.Visible := False;
end;

procedure TfrmCadastro.ajustaCbOperacaoParaData;
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

procedure TfrmCadastro.ajustaCbOperacaoParaTexto;
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

procedure TfrmCadastro.ajustaCbOperacaoParaValor;
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

procedure TfrmCadastro.cbCampoPropertiesChange(Sender: TObject);
begin
  cbSQL.ItemIndex := cbCampo.ItemIndex;
end;

procedure TfrmCadastro.cbSQLPropertiesChange(Sender: TObject);
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

procedure TfrmCadastro.edtInformacaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCadastro.FormCreate(Sender: TObject);
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
end;

end.
