unit unCADCSTPIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxScreenTip, dxSkinsdxBarPainter, Data.FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Data.SqlExpr, dxBar, dxRibbonRadialMenu, System.Actions,
  Vcl.ActnList, dxCustomHint, cxHint, cxMemo, cxGroupBox, cxRadioGroup, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, dxGDIPlusClasses,
  cxImage, Vcl.ExtCtrls, unFramePai, unFrameCSTPIS, cxButtonEdit, Datasnap.DBClient;

type
  TfrmCADCSTPIS = class(TfrmCadastro)
    cxGridDBidcstpis: TcxGridDBColumn;
    cxGridDBdescricao: TcxGridDBColumn;
    FrameCSTPIS: TFrameCSTPIS;
    FrameCSTPIS1: TFrameCSTPIS;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADCSTPIS: TfrmCADCSTPIS;

implementation

{$R *.dfm}

uses unDM;

end.
