unit Daruma_Framework_FISCAL_MENUFISCAL_Info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_MENU_FISCAL_Info = class(TForm)
    Memo1: TMemo;
    BT_FECHAR: TButton;
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_MENU_FISCAL_Info: TFR_FISCAL_MENU_FISCAL_Info;

implementation

{$R *.dfm}

procedure TFR_FISCAL_MENU_FISCAL_Info.BT_FECHARClick(Sender: TObject);
begin
close();
end;

end.
