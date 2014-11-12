unit unFrameIndicadorEconomico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxCheckBox, cxDBEdit, cxTextEdit, Data.DB,
  dxLayoutControl;

type
  TframeIndicadorEconomico = class(TFramePai)
    edtID: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    edtDescricao: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControlItem1: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameIndicadorEconomico: TframeIndicadorEconomico;

implementation

{$R *.dfm}

uses unDM;

end.
