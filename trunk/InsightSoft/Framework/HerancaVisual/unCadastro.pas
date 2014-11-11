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
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider;

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
    pnlBottom: TPanel;
    lblCampo: TcxLabel;
    cbCampo: TcxComboBox;
    lblInformacao: TcxLabel;
    edtInformacao: TcxTextEdit;
    btnBuscar: TcxButton;
    cbSQL: TcxComboBox;
    procedure acNovoExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acInativarExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbCampoPropertiesChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

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

procedure TfrmCadastro.btnBuscarClick(Sender: TObject);
var
  Client : TClientDataSet;
  Provider : TDataSetProvider;
  Query : TFDQuery;
  SQL : String;
begin
  //Buscar dados do Servidor da aplicação
{  if edtInformacao.Text = '' then
    edtInformacao.Text := '*';

  (dts.DataSet as TClientDataSet).Close;
  Client := (dts.DataSet as TClientDataSet);
  Provider := TDataSetProvider(FindComponent(Client.ProviderName));
  SQL := (Provider.DataSet as TFDQuery).SQL.Text;
  Query.Close;
  StringReplace(Query.SQL.Text,'limit 0','where '+cbSQL.Text+' = '+QuotedStr(edtInformacao.Text),[rfReplaceAll,rfIgnoreCase]);
  Query.Open();
  (dts.DataSet as TClientDataSet).Open;}
end;

procedure TfrmCadastro.cbCampoPropertiesChange(Sender: TObject);
begin
  cbSQL.ItemIndex := cbCampo.ItemIndex;
end;

procedure TfrmCadastro.FormCreate(Sender: TObject);
var
  I : integer;
begin
  inherited;

  for I := 0 to (dts.DataSet as TClientDataSet).Fields.Count - 1 do
  begin
    if (dts.DataSet as TClientDataSet).Fields[I].Visible then
    begin
      cbSQL.Properties.Items.Add((dts.DataSet as TClientDataSet).Fields[I].FieldName);
      cbCampo.Properties.Items.Add((dts.DataSet as TClientDataSet).Fields[I].DisplayLabel);
    end;
  end;
end;

end.
