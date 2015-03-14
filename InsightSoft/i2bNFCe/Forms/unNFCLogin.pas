unit unNFCLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxLabel, cxTextEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmNFCLogin = class(TForm)
    imgCracha: TImage;
    cxLabel1: TcxLabel;
    edtUsuario: TcxTextEdit;
    edtSenha: TcxTextEdit;
    btnLogin: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    VGCODIGODOVENDEDOR : integer;
  end;

var
  frmNFCLogin: TfrmNFCLogin;

implementation

{$R *.dfm}

procedure TfrmNFCLogin.btnLoginClick(Sender: TObject);
begin
  VGCODIGODOVENDEDOR := 1;
  close;
end;

procedure TfrmNFCLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnLoginClick(Sender);
  end;
  if Key = #27 then
  begin
    VGCODIGODOVENDEDOR := -1;
    close;
  end;
end;

procedure TfrmNFCLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    edtSenha.SetFocus;
  end;
  if Key = #27 then
  begin
    VGCODIGODOVENDEDOR := -1;
    close;
  end;
end;

procedure TfrmNFCLogin.FormShow(Sender: TObject);
begin
  Brush.Style := bsClear;
  edtUsuario.SetFocus;
end;

end.
