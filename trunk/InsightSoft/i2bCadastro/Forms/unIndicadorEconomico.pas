unit unIndicadorEconomico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, dxScreenTip, dxSkinsdxBarPainter, unFramePai, unFrameIndicadorEconomico, dxBar, dxRibbonRadialMenu,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.ExtCtrls, cxCheckBox;

type
  TfrmIndicadorEconomico = class(TfrmCadastro)
    frameIndicadorEconomico: TframeIndicadorEconomico;
    cxGridDBidindicadoreconomico: TcxGridDBColumn;
    cxGridDBdescricao: TcxGridDBColumn;
    cxGridDBativo: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIndicadorEconomico: TfrmIndicadorEconomico;

implementation

{$R *.dfm}

uses unDM;

end.
