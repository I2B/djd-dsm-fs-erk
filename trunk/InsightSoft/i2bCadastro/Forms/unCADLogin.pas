unit unCADLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, cxLabel, Vcl.ExtCtrls,
  cxTextEdit, dxGDIPlusClasses;

type
  TfrmCADLogin = class(TForm)
    lblInsight: TcxLabel;
    lblUsuario: TcxLabel;
    lblSenha: TcxLabel;
    edtUsuario: TcxTextEdit;
    edtSenha: TcxTextEdit;
    lblProgresso: TcxLabel;
    imgFundo: TImage;
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtUsuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    IpPorta : TStringList;
    IP : String;
    Porta : String;
  public
    { Public declarations }
  end;

var
  frmCADLogin: TfrmCADLogin;

implementation

{$R *.dfm}

uses unDM, unI2BString;

procedure TfrmCADLogin.edtSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    With DM.conServer do
    begin
      Params.Values['HostName'] := IP;  // Endereço do DataSnap Server
      Params.Values['Port'] := Porta; // Porta
      Params.Values['DSAuthenticationUser'] := edtUsuario.Text; // Login do Usuário
      Params.Values['DSAuthenticationPassword'] := edtSenha.Text; // Senha Usuário
      Open;
      self.Close;
    end;
  end;
end;

procedure TfrmCADLogin.edtUsuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edtSenha.SetFocus;
    edtSenha.SelectAll;
  end;
end;

procedure TfrmCADLogin.FormCreate(Sender: TObject);
var
  conServer : TextFile;
  linha: String;
  arquivo : String;
begin
  if not(FileExists(ExtractFilePath(Application.ExeName)+'conServer.i2b')) then
  begin
    try
      arquivo := ExtractFilePath((Application.ExeName)+'conServer.i2b');
      AssignFile(conServer,arquivo);
      Rewrite(conServer);
      Writeln(conServer,'127.0.0.1:211');
      CloseFile(conServer);
    except
      On E : Exception do
      begin
        Application.MessageBox(PWideChar('Não foi possível criar o arquivo conServer. Motivo: '+e.ToString),'Falha',
          MB_OK + MB_ICONERROR);
      end;
    end;
  end;

  if FileExists(ExtractFilePath(Application.ExeName)+'conServer.i2b') then
  begin
    try
      arquivo := ExtractFilePath(Application.ExeName)+'conServer.i2b';
      AssignFile(conServer,arquivo);
      Reset(conServer);
      Readln(conServer,linha);
      CloseFile(conServer);

      if linha <> '' then
      begin
        IpPorta := i2bSplit(linha,':');
        IP := IpPorta[0];
        Porta := IpPorta[1];
        FreeAndNil(IpPorta);
      end
      else
      begin
        Application.MessageBox('Arquivo conServer.i2b está sem nenhuma informação, informe o IP:Porta do servido para continuar.',
          'Falha',MB_OK + MB_ICONERROR);
      end;
    except
      On E : Exception do
      begin
        Application.MessageBox(PWideChar('Não foi possível fazer a leitura do arquivo conServer. Motivo: '+e.ToString),
          'Falha',MB_OK + MB_ICONERROR);
      end;
    end;
  end
  else
  begin
    Application.Terminate;
  end;
end;

end.
