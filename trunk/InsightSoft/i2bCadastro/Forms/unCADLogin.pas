unit unCADLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, cxLabel, Vcl.ExtCtrls,
  cxTextEdit, dxGDIPlusClasses;

type
  TfrmCADLogin = class(TForm)
    lblUsuario: TcxLabel;
    lblSenha: TcxLabel;
    edtUsuario: TcxTextEdit;
    edtSenha: TcxTextEdit;
    imgFundo: TImage;
    Shape1: TShape;
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
var
  falhaTratada: Boolean;
  falha: String;
begin
  if Key = VK_RETURN then
  begin
    if Trim(edtUsuario.Text) = '' then
    begin
      Application.MessageBox('Usu�rio n�o informado. Por favor, informe!','Dados Incompletos',MB_OK + MB_ICONEXCLAMATION);
      edtUsuario.SetFocus;
    end
    else
    begin
      if Trim(edtSenha.Text) = '' then
      begin
        Application.MessageBox('Senha n�o informada. Por favor, informe!','Dados Incompletos',MB_OK + MB_ICONEXCLAMATION);
        edtSenha.SetFocus;
      end
      else
      begin
        try
          With DM.conServer do
          begin
            Params.Values['HostName'] := IP;  // Endere�o do DataSnap Server
            Params.Values['Port'] := Porta; // Porta
            Params.Values['DSAuthenticationUser'] := edtUsuario.Text; // Login do Usu�rio
            Params.Values['DSAuthenticationPassword'] := edtSenha.Text; // Senha Usu�rio
            Open;
            self.Close;
          end;
        except
          On E : Exception do
          begin
            falhaTratada := False;
            falha := e.ToString;
            //Falha de autentica��o com o Servidor
            if pos('Connection refused',falha) > 0 then
            begin
              Application.MessageBox(PWideChar('Falha de conex�o com o Servidor. Verifique suas configura��es de rede e '+
                'tente novamente.'),'Falha de Conex�o',MB_OK + MB_ICONINFORMATION);
              falhaTratada := True;
            end;
            //Usu�rio ou Senha incorreto
            if pos('Authentication manager rejected user credentials',falha) > 0 then
            begin
              Application.MessageBox(PWideChar('Usu�rio e Senha inv�lidos. Verifique os dados informados e tente '+
                'novamente.'),'Login',MB_OK + MB_ICONINFORMATION);
              falhaTratada := True;
            end;
            //Caso n�o tenha tratado o erro anteriormente
            if not(falhaTratada) then
            begin
              Application.MessageBox(PWideChar('Falha de Autentica��o. '+#13+#13+falha),'Login',MB_OK +
                MB_ICONINFORMATION);
            end;
          end;
        end;
      end;
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
        Application.MessageBox(PWideChar('N�o foi poss�vel criar o arquivo conServer. Motivo: '+e.ToString),'Falha',
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
        Application.MessageBox('Arquivo conServer.i2b est� sem nenhuma informa��o, informe o IP:Porta do servido para continuar.',
          'Falha',MB_OK + MB_ICONERROR);
      end;
    except
      On E : Exception do
      begin
        Application.MessageBox(PWideChar('N�o foi poss�vel fazer a leitura do arquivo conServer. Motivo: '+e.ToString),
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
