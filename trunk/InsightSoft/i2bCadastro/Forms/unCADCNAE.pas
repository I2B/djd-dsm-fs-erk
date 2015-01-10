unit unCADCNAE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxScreenTip, dxSkinsdxBarPainter, Data.FMTBcd, unFramePai,
  unFrameCNAE, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Data.SqlExpr, dxBar, dxRibbonRadialMenu,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxMemo, cxGroupBox, cxRadioGroup, cxButtonEdit, Datasnap.DBClient;

type
  TfrmCADCNAE = class(TfrmCadastro)
    cxGridDBidcnae: TcxGridDBColumn;
    cxGridDBcodigo: TcxGridDBColumn;
    cxGridDBdenominacao: TcxGridDBColumn;
    FrameCNAE: TFrameCNAE;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADCNAE: TfrmCADCNAE;

implementation

{$R *.dfm}

uses unDM;

end.
