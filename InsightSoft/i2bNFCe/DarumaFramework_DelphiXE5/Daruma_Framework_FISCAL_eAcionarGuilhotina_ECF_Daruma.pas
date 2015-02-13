unit Daruma_Framework_FISCAL_eAcionarGuilhotina_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFR_FISCAL_eAcionarGuilhotina_ECF_Daruma = class(TForm)
    Rdg_AcionaGuilhotina: TRadioGroup;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_eAcionarGuilhotina_ECF_Daruma: TFR_FISCAL_eAcionarGuilhotina_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_eAcionarGuilhotina_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
  close();
end;

procedure TFR_FISCAL_eAcionarGuilhotina_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
begin
      if Rdg_AcionaGuilhotina.ItemIndex = 0 then
         Begin
            Int_Retorno:= eAcionarGuilhotina_ECF_Daruma('1');
            FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
         end
         else begin
                Int_Retorno:= eAcionarGuilhotina_ECF_Daruma('0');
                FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
       end;

end;

end.
