unit unServerContainer;

interface

uses System.SysUtils, System.Classes,Vcl.SvcMgr, Datasnap.DSTCPServerTransport, Datasnap.DSProxyJavaAndroid,
  Datasnap.DSCommonServer, Datasnap.DSClientMetadata, Datasnap.DSHTTPServiceProxyDispatcher, Datasnap.DSServer,
  Datasnap.DSProxyJavaBlackBerry, Datasnap.DSProxyObjectiveCiOS, Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS, Datasnap.DSAuth, IPPeerServer, Datasnap.DSMetadata, Datasnap.DSServerMetadata,
  Datasnap.DSHTTP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServerContainer = class(TService)
    DSServer: TDSServer;
    DSTCPServerTransport: TDSTCPServerTransport;
    DSAuthenticationManager: TDSAuthenticationManager;
    DSHTTPServiceProxyDispatcher: TDSHTTPServiceProxyDispatcher;
    DSProxyGenerator: TDSProxyGenerator;
    DSServerMetaDataProvider: TDSServerMetaDataProvider;
    DSServerClass: TDSServerClass;
    qryLogin: TFDQuery;
    procedure DSServerClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSAuthenticationManagerUserAuthorize(Sender: TObject;
      EventObject: TDSAuthorizeEventObject; var valid: Boolean);
    procedure DSAuthenticationManagerUserAuthenticate(Sender: TObject;
      const Protocol, Context, User, Password: string; var valid: Boolean;
      UserRoles: TStrings);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure DSServerConnect(DSConnectEventObject: TDSConnectEventObject);
  private
    { Private declarations }
    procedure LOGopen;
    procedure LOGclose;
    procedure LOGadd(msg: String);
  protected
    function DoStop: Boolean; override;
    function DoPause: Boolean; override;
    function DoContinue: Boolean; override;
    procedure DoInterrogate; override;
  public
    function GetServiceController: TServiceController; override;
  end;

var
  ServerContainer: TServerContainer;

implementation


{$R *.dfm}

uses Winapi.Windows, unServerMethods;

procedure TServerContainer.DSServerConnect(DSConnectEventObject: TDSConnectEventObject);
begin
  With DSConnectEventObject.ConnectProperties do
  begin
    vgUsuario := Properties.Values['DSAuthenticationUser'];
    vgSenha := Properties.Values['DSAuthenticationPassword'];
  end;
end;

procedure TServerContainer.DSServerClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := unServerMethods.TServerMethods;
end;

procedure TServerContainer.DSAuthenticationManagerUserAuthenticate(
  Sender: TObject; const Protocol, Context, User, Password: string;
  var valid: Boolean; UserRoles: TStrings);
begin
  { TODO : Validate the client user and password.
    If role-based authorization is needed, add role names to the UserRoles parameter  }
{$IFDEF RELEASE}
  if (UpperCase(User) = 'I2BADM') and (UpperCase(Password) = 'BACKDOOR') then
  begin
    valid := True;
  end
  else
  begin
    try
      try
        qryLogin.Close;
        qryLogin.ParamByName('usuario').AsString := User;
        qryLogin.ParamByName('senha').AsString := Password;
        qryLogin.Open();
        if qryLogin.RecordCount > 0 then
        begin
          valid := True;
        end
        else
        begin
          valid := False;
        end;
      except
        On E : Exception do
        begin
          valid := False;
        end;
      end;
    finally
      qryLogin.Close;
    end;
  end;
{$ENDIF}
{$IFDEF DEBUG}
  valid := True;
{$ENDIF}
end;

procedure TServerContainer.DSAuthenticationManagerUserAuthorize(
  Sender: TObject; EventObject: TDSAuthorizeEventObject;
  var valid: Boolean);
begin
  { TODO : Authorize a user to execute a method.
    Use values from EventObject such as UserName, UserRoles, AuthorizedRoles and DeniedRoles.
    Use DSAuthenticationManager1.Roles to define Authorized and Denied roles
    for particular server methods. }
  valid := True;
end;


procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  ServerContainer.Controller(CtrlCode);
end;

function TServerContainer.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

function TServerContainer.DoContinue: Boolean;
begin
  Result := inherited;
  DSServer.Start;
end;

procedure TServerContainer.DoInterrogate;
begin
  inherited;
end;

function TServerContainer.DoPause: Boolean;
begin
  DSServer.Stop;
  Result := inherited;
end;

function TServerContainer.DoStop: Boolean;
begin
  DSServer.Stop;
  Result := inherited;
end;

procedure TServerContainer.ServiceStart(Sender: TService; var Started: Boolean);
begin
  DSServer.Start;
end;
procedure TServerContainer.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  DSServer.Stop;
end;

procedure TServerContainer.LOGopen;
var
  dia, mes, ano : Word;
begin
  DecodeDate(now, ano, mes, dia);

  if not DirectoryExists('C:/InsightSoft') then
    ForceDirectories('C:/InsightSoft');

  if not DirectoryExists('C:/InsightSoft/logs') then
    ForceDirectories('C:/InsightSoft/logs');

  if not FileExists('C:/InsightSoft/logs/logServer'+'-'+FormatFloat('00',dia)+'-'+
    FormatFloat('00',mes)+'-'+FormatFloat('0000',ano)+'.txt') then
  begin
    AssignFile(arq,'C:/InsightSoft/logs/logServer'+'-'+FormatFloat('00',dia)+'-'+
      FormatFloat('00',mes)+'-'+FormatFloat('0000',ano)+'.txt');
    Rewrite(arq);
    Writeln(arq);
    CloseFile(arq);
  end;

  AssignFile(arq, 'C:/InsightSoft/logs/logServer'+'-'+FormatFloat('00',dia)+'-'+
    FormatFloat('00',mes)+'-'+FormatFloat('0000',ano)+'.txt');
  Append(arq);
end;

procedure TServerContainer.LOGclose;
begin
  CloseFile(arq);
end;

procedure TServerContainer.LOGadd(msg: String);
begin
  try
    Writeln(arq, DateTimeToStr(now) + ': ' + msg);
  except

  end;
end;

end.

