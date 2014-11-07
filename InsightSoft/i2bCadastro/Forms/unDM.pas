unit unDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB,
  Data.SqlExpr;
  //ClientClassesUnit1

type
  TDM = class(TDataModule)
    conServer: TSQLConnection;
    dspConnection: TDSProviderConnection;
    cdsPais: TClientDataSet;
    cdsPaisidpais: TIntegerField;
    cdsPaisidindicadoreconomico: TIntegerField;
    cdsPaisnome: TWideStringField;
  private
    FInstanceOwner: Boolean;
//    FServerMethodsClient: TServerMethodsClient;
//    function GetServerMethodsClient: TServerMethodsClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
//    property ServerMethodsClient: TServerMethodsClient read GetServerMethodsClient write FServerMethodsClient;

end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

constructor TDM.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TDM.Destroy;
begin
//  FServerMethodsClient.Free;
  inherited;
end;

{function TDM.GetServerMethodsClient: TServerMethodsClient;
begin
  if FServerMethodsClient = nil then
  begin
    conServer.Open;
    FServerMethodsClient:= TServerMethodsClient.Create(conServer.DBXConnection, FInstanceOwner);
  end;
  Result := FServerMethodsClient;
end;}

end.
