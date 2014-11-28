unit unF2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxLabel,
  Vcl.StdCtrls, Datasnap.DBClient, Vcl.Menus, cxButtons;

type
  TfrmF2 = class(TForm)
    cds: TClientDataSet;
    ds: TDataSource;
    pnlTop: TPanel;
    Label1: TLabel;
    btnVoltar: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmF2: TfrmF2;

implementation

{$R *.dfm}

end.
