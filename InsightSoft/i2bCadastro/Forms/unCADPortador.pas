unit unCADPortador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, Vcl.Menus, dxScreenTip, dxSkinsdxBarPainter, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxBar, dxRibbonRadialMenu, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, dxGDIPlusClasses,
  cxImage, Vcl.ExtCtrls, unFramePai, unFramePortador, Vcl.ComCtrls, dxCore, cxDateUtils, Data.FMTBcd, Data.SqlExpr,
  cxMemo, cxGroupBox, cxRadioGroup, cxCalendar;

type
  TfrmCadPortador = class(TfrmCadastro)
    cxGridDBidportador: TcxGridDBColumn;
    cxGridDBidbanco: TcxGridDBColumn;
    cxGridDBdescricao: TcxGridDBColumn;
    FramePortador: TFramePortador;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPortador: TfrmCadPortador;

implementation

{$R *.dfm}

uses unDM;

end.
