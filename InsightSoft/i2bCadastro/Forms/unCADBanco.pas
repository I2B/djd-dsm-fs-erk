unit unCADBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, Vcl.Menus, dxScreenTip, dxSkinsdxBarPainter, unFramePai, UnFrameBanco, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, dxBar, dxRibbonRadialMenu, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxPC, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore, cxDateUtils, Data.FMTBcd, Data.SqlExpr,
  cxMemo, cxGroupBox, cxRadioGroup, cxCalendar, cxButtonEdit, Datasnap.DBClient;

type
  TfrmCADBanco = class(TfrmCadastro)
    cxGridDBidbanco: TcxGridDBColumn;
    cxGridDBnome: TcxGridDBColumn;
    FrameBanco: TFrameBanco;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADBanco: TfrmCADBanco;

implementation

{$R *.dfm}

uses unDM;

end.
