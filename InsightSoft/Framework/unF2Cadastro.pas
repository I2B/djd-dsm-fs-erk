unit unF2Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, unFramePai,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxGDIPlusClasses,
  cxImage, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList;

type
  TfrmF2Cadastro = class(TForm)
    pnlCadastro: TPanel;
    imgSalvar: TcxImage;
    imgCancelar: TcxImage;
    ActionList: TActionList;
    acSalvar: TAction;
    acCancelar: TAction;
    procedure acSalvarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
  private
    { Private declarations }
    fCancelado:Boolean;
    fFrame:TFrame;
    fDataSource:TDataSource;
    fClientCadastro:TClientDataSet;
  public
    { Public declarations }
    frameLocalizado : Boolean;

    campoID : String;
    campoDesc : String;

    valorCadastrado : String;
    valorCadastrado2 : String;
    property cancelado:Boolean read fCancelado;
    constructor Create( AOwner: TComponent; FrameCadastro:String);
  end;

var
  frmF2Cadastro: TfrmF2Cadastro;

implementation

{$R *.dfm}

uses unFrameCBO;

{ TfrmF2Cadastro }

procedure TfrmF2Cadastro.acCancelarExecute(Sender: TObject);
begin
  (fDataSource.DataSet as TClientDataSet).Cancel;
  fClientCadastro.Cancel;
  fCancelado := False;
  close();
end;

procedure TfrmF2Cadastro.acSalvarExecute(Sender: TObject);
begin
  try
    (fDataSource.DataSet as TClientDataSet).Post;

    valorCadastrado := (fDataSource.DataSet as TClientDataSet).FieldByName(campoID).AsString;
    if campoDesc <> '' then
      valorCadastrado2 := (fDataSource.DataSet as TClientDataSet).FieldByName(campoDesc).AsString;

    (fDataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
  except

  end;

  fCancelado := False;
  close();
end;

constructor TfrmF2Cadastro.Create(AOwner: TComponent; FrameCadastro: String);
begin
  frameLocalizado := False;
  inherited Create(AOwner);

  //Cadastro de CBO
  if FrameCadastro = 'FrameCBO' then
  begin
    fFrame := TFrameCBO.Create(Application);
    frameLocalizado := True;
  end;

  if frameLocalizado then
  begin
    with fFrame do
    begin
      Parent := Self;
      Align := alClient;
      fDataSource := (fFrame.FindComponent('DataSource') as TDataSource);
      if not((fDataSource.DataSet as TClientDataSet).Active) then
        (fDataSource.DataSet as TClientDataSet).Open;
      (fDataSource.DataSet as TClientDataSet).Insert;
    end;
  end;
end;

end.
