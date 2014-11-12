unit unCADAuditoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, dxScreenTip, dxSkinsdxBarPainter, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxBar,
  dxRibbonRadialMenu, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxPC, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCADAuditoria = class(TfrmGrid)
    cxGridDBidauditoria: TcxGridDBColumn;
    cxGridDBidempresa: TcxGridDBColumn;
    cxGridDBdataregistro: TcxGridDBColumn;
    cxGridDBhoraregistro: TcxGridDBColumn;
    cxGridDBacao: TcxGridDBColumn;
    cxGridDBdescricao: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADAuditoria: TfrmCADAuditoria;

implementation

{$R *.dfm}

uses unDM;

end.
