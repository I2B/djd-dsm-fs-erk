unit unServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter;

type
  TServerMethods = class(TDSServerModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

