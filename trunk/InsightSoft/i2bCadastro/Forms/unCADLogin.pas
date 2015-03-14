unit unCADLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, cxLabel, Vcl.ExtCtrls,
  cxTextEdit, dxGDIPlusClasses, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmCADLogin = class(TForm)
    edtUsuario: TcxTextEdit;
    edtSenha: TcxTextEdit;
    imgFundo: TImage;
    Image1: TImage;
    lblVersao: TcxLabel;
    imgLogin: TImage;
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtUsuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnLoginClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
    vpIpPorta : TStringList;
    vpIP : String;
    vpPorta : String;
  public
    { Public declarations }
    var VGUSUARIOLOGADO : String;
  end;

var
  frmCADLogin: TfrmCADLogin;

implementation

{$R *.dfm}

uses unDM, unI2BString, unI2BFuncoes;

procedure TfrmCADLogin.btnLoginClick(Sender: TObject);
var
  vlfalhaTratada: Boolean;
  vlfalha: String;
begin
  if Trim(edtUsuario.Text) = '' then
  begin
    Application.MessageBox('Usuário não informado. Por favor, informe!','Dados Incompletos',MB_OK + MB_ICONEXCLAMATION);
    edtUsuario.SetFocus;
  end
  else
  begin
    if Trim(edtSenha.Text) = '' then
    begin
      Application.MessageBox('Senha não informada. Por favor, informe!','Dados Incompletos',MB_OK + MB_ICONEXCLAMATION);
      edtSenha.SetFocus;
    end
    else
    begin
      try
        With DM.conServer do
        begin
          Params.Values['HostName'] := vpIP;  // Endereço do DataSnap Server
          Params.Values['Port'] := vpPorta; // Porta
          Params.Values['DSAuthenticationUser'] := edtUsuario.Text; // Login do Usuário
          Params.Values['DSAuthenticationPassword'] := edtSenha.Text; // Senha Usuário
          Open;
          VGUSUARIOLOGADO := edtUsuario.Text;
          self.Close;
        end;
      except
        On E : Exception do
        begin
          vlfalhaTratada := False;
          vlfalha := e.ToString;
          //Falha de autenticação com o Servidor
          if pos('Connection refused',vlfalha) > 0 then
          begin
            Application.MessageBox(PWideChar('Falha de conexão com o Servidor. Verifique suas configurações de rede e '+
              'tente novamente.'),'Falha de Conexão',MB_OK + MB_ICONINFORMATION);
            vlfalhaTratada := True;
          end;
          //Usuário ou Senha incorreto
          if pos('Authentication manager rejected user credentials',vlfalha) > 0 then
          begin
            Application.MessageBox(PWideChar('Usuário e Senha inválidos. Verifique os dados informados e tente '+
              'novamente.'),'Login',MB_OK + MB_ICONINFORMATION);
            vlfalhaTratada := True;
          end;
          //Caso não tenha tratado o erro anteriormente
          if not(vlfalhaTratada) then
          begin
            Application.MessageBox(PWideChar('Falha de Autenticação. '+#13+#13+vlFalha),'Login',MB_OK +
              MB_ICONINFORMATION);
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmCADLogin.edtSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btnLoginClick(Sender);
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
  vlConServer : TextFile;
  vlLinha: String;
  vlArquivo : String;
begin
  lblVersao.Caption := VersaoDoExecutavel;

  //Caso o conServer.i2b não exista, então cria o arquivo junto ao executável - DJD
  if not(FileExists(ExtractFilePath(Application.ExeName)+'conServer.i2b')) then
  begin
    try
      vlArquivo := ExtractFilePath(Application.ExeName)+'conServer.i2b';
      AssignFile(vlConServer,vlArquivo);
      Rewrite(vlConServer);
      Writeln(vlConServer,'127.0.0.1:211');
      CloseFile(vlConServer);
    except
      On E : Exception do
      begin
        Application.MessageBox(PWideChar('Não foi possível criar o arquivo conServer. Motivo: '+e.ToString),'Falha',
          MB_OK + MB_ICONERROR);
      end;
    end;
  end;

  //Verifica se o arquivo conServer.i2b existe na pasta, e carrega suas informações - DJD
  if FileExists(ExtractFilePath(Application.ExeName)+'conServer.i2b') then
  begin
    try
      vlArquivo := ExtractFilePath(Application.ExeName)+'conServer.i2b';
      AssignFile(vlConServer,vlArquivo);
      Reset(vlConServer);
      Readln(vlConServer,vlLinha);
      CloseFile(vlConServer);

      if vlLinha <> '' then
      begin
        vpIpPorta := i2bSplit(vlLinha,':');
        vpIP := vpIpPorta[0];
        vpPorta := vpIpPorta[1];
        FreeAndNil(vpIpPorta);
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

procedure TfrmCADLogin.Image1Click(Sender: TObject);
begin
  if Application.MessageBox('Encerrar o Sistema?','Confirmação',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = mrYes then
  begin
    Application.Terminate;
  end;
end;

end.
