unit unCADPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxButtonEdit, dxScreenTip,
  dxSkinsdxBarPainter, Data.FMTBcd, unFramePai, unFramePais, cxGridDBTableView,
  Datasnap.DBClient, Data.SqlExpr, dxBar, dxRibbonRadialMenu, System.Actions,
  Vcl.ActnList, dxCustomHint, cxHint, cxGroupBox, cxRadioGroup, cxMemo,
  cxGridCustomTableView, cxGridTableView, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxLabel, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxPC, dxGDIPlusClasses, cxImage,
  Vcl.ExtCtrls;

type
  TfrmCADPais = class(TfrmCadastro)
    cxGridDBidpais: TcxGridDBColumn;
    cxGridDBidindicadoreconomico: TcxGridDBColumn;
    cxGridDBnome: TcxGridDBColumn;
    FramePais: TFramePais;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADPais: TfrmCADPais;

implementation

{$R *.dfm}

uses unDM;

end.
