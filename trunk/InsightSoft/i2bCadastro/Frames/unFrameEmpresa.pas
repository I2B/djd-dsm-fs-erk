unit unFrameEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxGroupBox, cxCheckGroup, cxDBCheckGroup, dxLayoutContainer, cxTextEdit,
  cxDBEdit, Data.DB, dxLayoutControl, cxRadioGroup, cxMaskEdit, cxButtonEdit, Vcl.ExtDlgs;

type
  TFrameEmpresa = class(TFramePai)
    edtRazaoSocial: TcxDBTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControlItem3: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControlItem4: TdxLayoutItem;
    edtLogomarca: TcxDBButtonEdit;
    dxLayoutControlItem5: TdxLayoutItem;
    dlgOpen: TOpenPictureDialog;
    procedure edtLogomarcaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameEmpresa: TFrameEmpresa;

implementation

{$R *.dfm}

uses unDM;

procedure TFrameEmpresa.edtLogomarcaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if dlgOpen.Execute then
  begin
	  edtLogomarca.Text := dlgOpen.FileName;
  end;
end;

end.
