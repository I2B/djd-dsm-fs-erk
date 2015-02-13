unit Daruma_Framework_DUAL_metodo_iAutenticarDocumento_DUAL_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_DUAL_iAutenticarDocumento_DUAL_DarumaFramework = class(TForm)
    LB_LocalEtiqueta: TLabel;
    LB_DocEtiqueta: TLabel;
    LB_TextoEtiqueta: TLabel;
    LB_TempoEtiqueta: TLabel;
    LB_SegundosEtiqueta: TLabel;
    EB_Local: TEdit;
    EB_Texto: TEdit;
    EB_TimeOut: TEdit;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_DUAL_iAutenticarDocumento_DUAL_DarumaFramework: TFR_DUAL_iAutenticarDocumento_DUAL_DarumaFramework;

implementation

Function iAutenticarDocumento_DUAL_DarumaFramework(stTexto: String; stLocal: String; stTimeOut: String): Integer; StdCall; External 'DarumaFramework.dll'
{$R *.dfm}

procedure TFR_DUAL_iAutenticarDocumento_DUAL_DarumaFramework.BT_EnviarClick(
  Sender: TObject);
  
var
  iRetorno: Integer;
begin

  iRetorno := iAutenticarDocumento_DUAL_DarumaFramework(EB_Texto.text,
                                                      EB_Local.text,
                                                      EB_TimeOut.text);

  if (iRetorno = 1) then
    begin
      Application.MessageBox('Autenticação realizada com sucesso.',
                             'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    end
  else
    begin
      Application.MessageBox('Erro ao Autenticar Documento', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
  
end;


procedure TFR_DUAL_iAutenticarDocumento_DUAL_DarumaFramework.BT_FecharClick(
  Sender: TObject);
begin

Close;

end;

end.
