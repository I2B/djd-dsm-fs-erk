unit unCADCEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxScreenTip, dxSkinsdxBarPainter, Data.FMTBcd, Data.SqlExpr,
  dxBar, dxRibbonRadialMenu, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxLabel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  unFramePai, unFrameCEP, cxMemo, cxGroupBox, cxRadioGroup;

type
  TfrmCADCEP = class(TfrmCadastro)
    cxGridDBidcep: TcxGridDBColumn;
    cxGridDBidmunicipio: TcxGridDBColumn;
    cxGridDBlogradouro: TcxGridDBColumn;
    cxGridDBcomplemento: TcxGridDBColumn;
    cxGridDBbairro: TcxGridDBColumn;
    FrameCEP: TFrameCEP;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADCEP: TfrmCADCEP;

implementation

{$R *.dfm}

uses unDM;

end.
