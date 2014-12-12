unit unF2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxLabel,
  Vcl.StdCtrls, Datasnap.DBClient, Vcl.Menus, cxButtons, System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGroupBox, cxRadioGroup, Data.FMTBcd, Data.SqlExpr, Datasnap.DSConnect;

type
  TfrmF2 = class(TForm)
    cds: TClientDataSet;
    ds: TDataSource;
    pnlTop: TPanel;
    Label1: TLabel;
    btnVoltar: TcxButton;
    ActionList: TActionList;
    acFechar: TAction;
    pnlClient: TPanel;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    pnlBottom: TPanel;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cbCampos: TcxComboBox;
    acCampoProximo: TAction;
    acCampoAnterior: TAction;
    rbIniciaCom: TcxRadioButton;
    rbContem: TcxRadioButton;
    acIniciaCom: TAction;
    acContem: TAction;
    lblCadastro: TLabel;
    acCadastrar: TAction;
    Label2: TLabel;
    edtInformacao: TcxTextEdit;
    sqlSM: TSqlServerMethod;
    cbSQL: TcxComboBox;
    DSProvider: TDSProviderConnection;
    procedure acIniciaComExecute(Sender: TObject);
    procedure acContemExecute(Sender: TObject);
    procedure acCampoProximoExecute(Sender: TObject);
    procedure acCampoAnteriorExecute(Sender: TObject);
    procedure acFecharExecute(Sender: TObject);
    procedure edtInformacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableViewDblClick(Sender: TObject);
    procedure cbCamposPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtInformacaoPropertiesChange(Sender: TObject);
    procedure cbSQLPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    fSQLoriginal:String;
    fSlNomesCampos:TStringList;
    fCancelado:Boolean;
    fcampoRetorno:String;
    fcampoRetorno2:String;
    fTipoCampo:String;  //GUARDA O TIPO DO CAMPO SELECIONADO PARA BUSCA,
                        // "D" - TIPO DATA
                        // "O" - OUTRO TIPO QUALQUER
    fusaWhere:Boolean;
    fTemWhere:Boolean;
    fWhereAdicional:String;
    SQLDeBusca : String;
    SQLCampos : String;
    fTabela : String;
  public
    { Public declarations }
    valorSelecionado:String;
    valorSelecionado2:String;
    property cancelado:Boolean read fCancelado;
    constructor Create( AOwner: TComponent; titulo, campoRetorno, campoPadraoBusca,camposVisiveis, NomeDosCampos, Tabela,
      WhereAdicional:String; BancoDeDados:TSQLConnection);
  end;

var
  frmF2: TfrmF2;
  TipoDoCampo: TFieldType;

implementation

{$R *.dfm}

uses unI2BString;

procedure TfrmF2.acCampoAnteriorExecute(Sender: TObject);
begin
  if cbCampos.ItemIndex > 0 then
  begin
    cbCampos.ItemIndex := cbCampos.ItemIndex - 1;
  end;
end;

procedure TfrmF2.acCampoProximoExecute(Sender: TObject);
begin
  if cbCampos.ItemIndex < cbCampos.Properties.Items.Count then
  begin
    cbCampos.ItemIndex := cbCampos.ItemIndex + 1;
  end
  else
  begin
    cbCampos.ItemIndex := 0;
  end;
end;

procedure TfrmF2.acContemExecute(Sender: TObject);
begin
  rbContem.Checked := True;
end;

procedure TfrmF2.acFecharExecute(Sender: TObject);
begin
  fCancelado := true;
  close();
end;

procedure TfrmF2.acIniciaComExecute(Sender: TObject);
begin
  rbIniciaCom.Checked := True;
end;

procedure TfrmF2.cbCamposPropertiesChange(Sender: TObject);
begin
  cbSQL.ItemIndex := cbCampos.ItemIndex;
end;

procedure TfrmF2.cbSQLPropertiesChange(Sender: TObject);
begin
  if cbSQL.ItemIndex <> -1 then
  begin
    TipoDoCampo := (ds.DataSet as TClientDataSet).FieldByName(cbSQL.Text).DataType;
  end;
end;

constructor TfrmF2.Create(AOwner: TComponent; titulo, campoRetorno, campoPadraoBusca, camposVisiveis, NomeDosCampos,
  Tabela, WhereAdicional: String; BancoDeDados: TSQLConnection);
var
  I, IndicePadrao : integer;
  slNomeDosCampos:TStringList;
begin
  IndicePadrao := 0;
  fTabela := Tabela;
  fWhereAdicional := WhereAdicional;

  if trim(campoRetorno) = '' then
  begin
    raise Exception.Create('PROGRAMADOR: Você não deve deixar o campoRetorno em branco!'+#10#13+
                           '(parametro de criação do objeto TfrmF2)');
  end;

  inherited Create(AOwner);

  DSProvider.SQLConnection := BancoDeDados;
  DSProvider.ServerClassName := 'TServerMethods';
  sqlSM.SQLConnection := BancoDeDados;
  sqlSM.ServerMethodName := 'TServerMethods.setSQL';

  if camposVisiveis <> '' then
  begin
    SQLCampos := StringReplace(camposVisiveis,'|',',',[rfReplaceAll]);
  end
  else
  begin
    SQLCampos := '*';
  end;

  SQLDeBusca := 'select '+SQLCampos+' from '+Tabela+' limit 0';
  sqlSM.Params[0].AsString := SQLDeBusca;
  sqlSM.ExecuteMethod;

  cds.RemoteServer := DSProvider;
  cds.ProviderName := 'dspSQL';
  cds.Open;

  if cds.FieldCount > 0 then
  begin
    slNomeDosCampos := i2bSplit(NomeDosCampos,'|');

    //Carrega os campos para os Combos
    for I := 0 to cds.FieldCount - 1 do
    begin
      //Verifica se o tipo de campo é possível filtrar
      if cds.Fields[I].DataType in [ftString,ftSmallint,ftInteger,ftWord,ftFloat,ftCurrency,ftBCD,ftFixedChar,
        ftWideString,ftLargeint,ftFMTBcd,ftFixedWideChar,ftLongWord,ftShortint,ftExtended,ftSingle] then
      begin
        //Adiciona o campo nos combos
        cbSQL.Properties.Items.Add(cds.Fields[I].FieldName);
        cds.Fields[I].DisplayLabel := slNomeDosCampos[I];
        cbCampos.Properties.Items.Add(slNomeDosCampos[I]);

        //Pega qual é o campo padrão de busca
        if cds.Fields[I].FieldName = campoPadraoBusca then
        begin
          IndicePadrao := cbSQL.Properties.Items.Count - 1;
        end;
      end;
    end;
  end;
  ds.DataSet := cds;
  cxGridDBTableView.DataController.CreateAllItems();
  cbCampos.ItemIndex := IndicePadrao;
end;

procedure TfrmF2.cxGridDBTableViewDblClick(Sender: TObject);
begin
  if cds.RecordCount > 0 then
  begin
    valorSelecionado := cds.FieldByName(fcampoRetorno).AsString;
    if fcampoRetorno2 <> '' then
    begin
      valorSelecionado2 := cds.FieldByName(fcampoRetorno2).AsString;
    end;
    close;
  end
  else
  begin
    MessageDlg('Não há dados para selecionar, tente outra busca.',mtError, [mbOk],0);
  end;
end;

procedure TfrmF2.edtInformacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  keyboardState: TKeyboardState;
  asciiResult: Integer;
  str:String;
begin
  if key = VK_RETURN then
  begin
    cxGridDBTableViewDblClick(cxGridDBTableView);
  end
  else if (key = VK_UP) or (key = VK_DOWN) or (key = VK_LEFT) or (key = VK_RIGHT) then
  begin
    cxGrid.SetFocus;
  end
  else if key = VK_ESCAPE then
  begin
    fCancelado := true;
    close();
  end
  else if not(edtInformacao.Focused) then
  begin
    GetKeyboardState(keyboardState);
    SetLength(str, 2);
    asciiResult := ToAscii(key, MapVirtualKey(key, 0), keyboardState, @str[1], 0);
    case asciiResult of
      1: SetLength(str, 1);
      2:;
      else str := '';
    end;
    edtInformacao.Text := str;
    edtInformacao.SetFocus;
    edtInformacao.Selstart:= Length(edtInformacao.text);
  end;
end;

procedure TfrmF2.edtInformacaoPropertiesChange(Sender: TObject);
var
  novoSQL:String;
  I: Integer;
begin
  if edtInformacao.Text <> '' then
  begin
    novoSQL := 'select '+SQLCampos+' from '+fTabela+' ';

    if fWhereAdicional <> '' then
    begin
      novoSQL := novoSQL + ' where ' + fWhereAdicional + ' ';
      if rbIniciaCom.Checked then
      begin
        novoSQL := novoSQL + ' and '+cbSQL.Text+' like '''+AnsiUpperCase(edtInformacao.Text)+'%''';
      end
      else
      begin
        novoSQL := novoSQL + ' and '+cbSQL.Text+' like ''%'+AnsiUpperCase(edtInformacao.Text)+'%''';
      end;
    end
    else
    begin
      if rbIniciaCom.Checked then
      begin
        novoSQL := novoSQL + ' where ' + cbSQL.Text+' like '''+AnsiUpperCase(edtInformacao.Text)+'%''';
      end
      else
      begin
        novoSQL := novoSQL + ' where ' + cbSQL.Text+' like ''%'+AnsiUpperCase(edtInformacao.Text)+'%''';
      end;
    end;
  end
  else
  begin
    novoSQL := 'select '+SQLCampos+' from '+fTabela+' limit 0';
  end;

  cds.Close;
  sqlSM.Params[0].AsString := novoSQL;
  sqlSM.ExecuteMethod;

  cds.RemoteServer := DSProvider;
  cds.ProviderName := 'dspSQL';
  cds.Open;
end;

procedure TfrmF2.FormShow(Sender: TObject);
begin
  cbCamposPropertiesChange(cbCampos);
end;

end.
