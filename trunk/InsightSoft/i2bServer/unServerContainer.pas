unit unServerContainer;

interface

uses System.SysUtils, System.Classes,
    Vcl.SvcMgr,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSClientMetadata, Datasnap.DSHTTPServiceProxyDispatcher,
  Datasnap.DSProxyJavaAndroid, Datasnap.DSProxyJavaBlackBerry,
  Datasnap.DSProxyObjectiveCiOS, Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS,
  Datasnap.DSAuth, IPPeerServer, Datasnap.DSMetadata, Datasnap.DSServerMetadata,
  Datasnap.DSHTTP;

type
  TServerContainer = class(TService)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSAuthenticationManager1: TDSAuthenticationManager;
    DSHTTPServiceProxyDispatcher1: TDSHTTPServiceProxyDispatcher;
    DSProxyGenerator1: TDSProxyGenerator;
    DSServerMetaDataProvider1: TDSServerMetaDataProvider;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSAuthenticationManager1UserAuthorize(Sender: TObject;
      EventObject: TDSAuthorizeEventObject; var valid: Boolean);
    procedure DSAuthenticationManager1UserAuthenticate(Sender: TObject;
      const Protocol, Context, User, Password: string; var valid: Boolean;
      UserRoles: TStrings);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
  private
    { Private declarations }
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

procedure TServerContainer.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := unServerMethods.TServerMethods;
end;

procedure TServerContainer.DSAuthenticationManager1UserAuthenticate(
  Sender: TObject; const Protocol, Context, User, Password: string;
  var valid: Boolean; UserRoles: TStrings);
begin
  { TODO : Validate the client user and password.
    If role-based authorization is needed, add role names to the UserRoles parameter  }
  valid := True;
end;

procedure TServerContainer.DSAuthenticationManager1UserAuthorize(
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
  DSServer1.Start;
end;

procedure TServerContainer.DoInterrogate;
begin
  inherited;
end;

function TServerContainer.DoPause: Boolean;
begin
  DSServer1.Stop;
  Result := inherited;
end;

function TServerContainer.DoStop: Boolean;
begin
  DSServer1.Stop;
  Result := inherited;
end;

procedure TServerContainer.ServiceStart(Sender: TService; var Started: Boolean);
begin
  DSServer1.Start;
end;
procedure TServerContainer.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  DSServer1.Stop;
end;

end.

