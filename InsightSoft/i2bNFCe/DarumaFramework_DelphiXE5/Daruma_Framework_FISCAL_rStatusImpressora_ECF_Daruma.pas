unit Daruma_Framework_FISCAL_rStatusImpressora_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rStatusImpressora_ECF_Daruma = class(TForm)
    Edt_StatusImp_Str: TEdit;
    Edt_StatusImpInt: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  FR_FISCAL_rStatusImpressora_ECF_Daruma: TFR_FISCAL_rStatusImpressora_ECF_Daruma;

implementation
uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rStatusImpressora_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_rStatusImpressora_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_StatusEcf_Str, Str_Msg_StatusEcf_Str:AnsiString;
     Int_StatusEcf_Int: integer;
begin
   SetLength (Str_StatusEcf_Str,3);
   Int_Retorno :=  rStatusImpressora_ECF_Daruma(AnsiString(Str_StatusEcf_Str));
   If Int_Retorno = 1 then
     begin
         Str_Msg_StatusEcf_Str:= Str_StatusEcf_Str + ' - Impressora OK';
     end
     else begin
       Showmessage('jjj');
       { case Int_StatusEcf_Int of
				 2: Str_Msg_StatusEcf_Str:= Str_StatusEcf_Str + ' - Pouco Papel';
				 3: Str_Msg_StatusEcf_Str:= Str_StatusEcf_Str + ' - Documento Aberto';
				 4: Str_Msg_StatusEcf_Str:= Str_StatusEcf_Str + ' - Tampa aberta';
				 5: Str_Msg_StatusEcf_Str:= Str_StatusEcf_Str + ' - Impressora Desligada';
				 6: Str_Msg_StatusEcf_Str:= Str_StatusEcf_Str + ' - Final Papel';}
      end;

         Edt_StatusImp_Str.Text:= Str_Msg_StatusEcf_Str;
         Edt_StatusImpInt.Text:= IntToStr(Int_StatusEcf_Int);
         FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
         end;
end.
