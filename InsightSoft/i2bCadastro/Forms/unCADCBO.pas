unit unCADCBO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, Vcl.Menus, dxScreenTip, dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, unFramePai, unFrameCBO, Vcl.ComCtrls, dxCore, cxDateUtils, Data.FMTBcd,
  Data.SqlExpr, cxMemo, cxGroupBox, cxRadioGroup, cxCalendar, cxButtonEdit, Datasnap.DBClient;

type
  TfrmCADCBO = class(TfrmCadastro)
    cxGridDBidcbo: TcxGridDBColumn;
    cxGridDBcodigo2002: TcxGridDBColumn;
    cxGridDBcodigo1994: TcxGridDBColumn;
    cxGridDBnome: TcxGridDBColumn;
    cxGridDBobservacao: TcxGridDBColumn;
    FrameCBO: TFrameCBO;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADCBO: TfrmCADCBO;

implementation

{$R *.dfm}

uses unDM;

end.
