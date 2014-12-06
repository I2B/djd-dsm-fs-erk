unit unF2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxLabel,
  Vcl.StdCtrls, Datasnap.DBClient, Vcl.Menus, cxButtons, System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGroupBox, cxRadioGroup;

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
    procedure acIniciaComExecute(Sender: TObject);
    procedure acContemExecute(Sender: TObject);
    procedure acCampoProximoExecute(Sender: TObject);
    procedure acCampoAnteriorExecute(Sender: TObject);
    procedure acFecharExecute(Sender: TObject);
    procedure edtInformacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBTableViewDblClick(Sender: TObject);
    procedure cbCamposPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fCancelado:Boolean;
    fcampoRetorno:String;
    fcampoRetorno2:String;
    fTipoCampo:String;  //GUARDA O TIPO DO CAMPO SELECIONADO PARA BUSCA,
                        // "D" - TIPO DATA
                        // "O" - OUTRO TIPO QUALQUER
  public
    { Public declarations }
    valorSelecionado:String;
    valorSelecionado2:String;
    property cancelado:Boolean read fCancelado;
    constructor Create( AOwner: TComponent; titulo, campoRetorno, campoPadraoBusca,camposVisiveis:String;
      ClientDados:TClientDataSet; WhereAdicional:String);
  end;

var
  frmF2: TfrmF2;

implementation

{$R *.dfm}

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
var
  I: Integer;
begin
  for I := 0 to cds.Fields.Count - 1 do
  begin
    if cds.Fields[I].DisplayLabel = cbCampos.Text then
    begin
      cds.IndexFieldNames := cds.Fields[I].FieldName;
      if cds.Fields[I].ClassName = 'TDateField' then
      begin
        fTipoCampo := 'D';
      end
      else
      begin
        fTipoCampo := 'O';
      end;
    end;
  end;
end;

constructor TfrmF2.Create(AOwner: TComponent; titulo, campoRetorno, campoPadraoBusca, camposVisiveis: String;
  ClientDados: TClientDataSet; WhereAdicional: String);
begin


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

procedure TfrmF2.FormShow(Sender: TObject);
begin
  cbCamposPropertiesChange(cbCampos);
end;

end.
