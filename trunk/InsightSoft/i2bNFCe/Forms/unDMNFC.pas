unit unDMNFC;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Datasnap.DBClient,
  Datasnap.DSConnect, Data.DB, Data.SqlExpr;

type
  TDMNFC = class(TDataModule)
    conServer: TSQLConnection;
    dspConnection: TDSProviderConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMNFC: TDMNFC;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
