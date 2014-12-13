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
    fFrameCadastro:TFrame;
    fCancelado:Boolean;
    fClientCadastro:TClientDataSet;
  public
    { Public declarations }
    property cancelado:Boolean read fCancelado;
    constructor Create( AOwner: TComponent; FrameCadastro:TFramePai; ClientCadastro:TClientDataSet);
  end;

var
  frmF2Cadastro: TfrmF2Cadastro;

implementation

{$R *.dfm}

uses unFrameCBO;

{ TfrmF2Cadastro }

procedure TfrmF2Cadastro.acCancelarExecute(Sender: TObject);
begin
  //fClientCadastro.Cancel;
  fCancelado := False;
  close();
end;

procedure TfrmF2Cadastro.acSalvarExecute(Sender: TObject);
begin


  fCancelado := False;
  close();
end;

constructor TfrmF2Cadastro.Create(AOwner: TComponent; FrameCadastro: TFramePai; ClientCadastro: TClientDataSet);
begin
  fFrameCadastro := FrameCadastro as TFrameCBO;
  inherited Create(AOwner);

  fFrameCadastro := fFrameCadastro.Create(Self);
  fFrameCadastro.Parent := Self;
  fFrameCadastro.Align := alClient;
  fFrameCadastro.Visible := True;
  //ClientCadastro.Insert;
end;

end.
