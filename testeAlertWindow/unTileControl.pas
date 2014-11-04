unit unTileControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxClasses, cxLookAndFeels,
  dxSkinsForm, cxGraphics, cxControls, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxEdit, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  cxSchedulerRecurrence, cxSchedulerTreeListBrowser,
  cxSchedulerRibbonStyleEventEditor, dxSkinscxSchedulerPainter;

type
  TfrmTileControl = class(TForm)
    dxSkinController1: TdxSkinController;
    cxScheduler1: TcxScheduler;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTileControl: TfrmTileControl;

implementation

{$R *.dfm}

end.
