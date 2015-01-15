unit unCADLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, cxLabel, Vcl.ExtCtrls,
  cxTextEdit;

type
  TfrmCADLogin = class(TForm)
    cxLabel1: TcxLabel;
    lblUsuario: TcxLabel;
    lblSenha: TcxLabel;
    Shape1: TShape;
    edtUsuario: TcxTextEdit;
    edtSenha: TcxTextEdit;
    lblProgresso: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADLogin: TfrmCADLogin;

implementation

{$R *.dfm}

end.
