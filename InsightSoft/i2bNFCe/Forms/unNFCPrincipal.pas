unit unNFCPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxSkinsdxBarPainter, cxPC, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, dxTabbedMDI,
  cxClasses, dxAlertWindow, dxSkinsForm, dxBar, dxRibbon, System.Actions, Vcl.ActnList, dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TfrmNFCPrincipal = class(TForm)
    tabPrincipal: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    dxBarManager: TdxBarManager;
    dxRibbonPopupMenu: TdxRibbonPopupMenu;
    dxSkinController: TdxSkinController;
    dxAlertWindowManager: TdxAlertWindowManager;
    dxTabbedMDIManager: TdxTabbedMDIManager;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    barPreVenda: TdxBar;
    btnPVBuscar: TdxBarLargeButton;
    btnPVInserir: TdxBarLargeButton;
    btnPVAprovar: TdxBarLargeButton;
    barAcompanhamento: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    barConsultas: TdxBar;
    btnProduto: TdxBarLargeButton;
    btnCliente: TdxBarLargeButton;
    ActionList: TActionList;
    acBuscar: TAction;
    acInserir: TAction;
    acAprovar: TAction;
    acMetas: TAction;
    acConsultaProduto: TAction;
    acConsultaCliente: TAction;
    procedure FormCreate(Sender: TObject);
    procedure acMetasExecute(Sender: TObject);
  private
    { Private declarations }
    vpIpPorta : TStringList;
    vpIP : String;
    vpPorta : String;

    function abaExiste(Formulario : TForm):boolean;
  public
    { Public declarations }
    var VGUSUARIOLOGADO : String;
    function getVendedor(): integer;
  end;

var
  frmNFCPrincipal: TfrmNFCPrincipal;

implementation

{$R *.dfm}

uses unDMNFC, unI2BString, unNFCLogin;

{ TfrmNFCPrincipal }

function TfrmNFCPrincipal.abaExiste(Formulario: TForm): boolean;
var
  I: Integer;
begin
  result := false;
  for I := 0 to dxTabbedMDIManager.TabProperties.PageCount - 1 do
  begin
    if dxTabbedMDIManager.TabProperties.Pages[I].MDIChild = Formulario then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TfrmNFCPrincipal.acMetasExecute(Sender: TObject);
begin
  ShowMessage(IntToStr(getVendedor()));
end;

procedure TfrmNFCPrincipal.FormCreate(Sender: TObject);
var
  vlConServer : TextFile;
  vlLinha: String;
  vlArquivo : String;
  vlfalhaTratada: Boolean;
  vlfalha: String;
begin
  //Caso o conServer.i2b n�o exista, ent�o cria o arquivo junto ao execut�vel - DJD
  if not(FileExists(ExtractFilePath(Application.ExeName)+'conServer.i2b')) then
  begin
    try
      vlArquivo := ExtractFilePath(Application.ExeName)+'conServer.i2b';
      AssignFile(vlConServer,vlArquivo);
      Rewrite(vlConServer);
      Writeln(vlConServer,'127.0.0.1:211');
      CloseFile(vlConServer);
    except
      On E : Exception do
      begin
        Application.MessageBox(PWideChar('N�o foi poss�vel criar o arquivo conServer. Motivo: '+e.ToString),'Falha',
          MB_OK + MB_ICONERROR);
      end;
    end;
  end;

  //Verifica se o arquivo conServer.i2b existe na pasta, e carrega suas informa��es - DJD
  if FileExists(ExtractFilePath(Application.ExeName)+'conServer.i2b') then
  begin
    try
      vlArquivo := ExtractFilePath(Application.ExeName)+'conServer.i2b';
      AssignFile(vlConServer,vlArquivo);
      Reset(vlConServer);
      Readln(vlConServer,vlLinha);
      CloseFile(vlConServer);

      if vlLinha <> '' then
      begin
        vpIpPorta := i2bSplit(vlLinha,':');
        vpIP := vpIpPorta[0];
        vpPorta := vpIpPorta[1];
        FreeAndNil(vpIpPorta);

        try
          With DMNFC.conServer do
          begin
            Params.Values['HostName'] := vpIP;  // Endere�o do DataSnap Server
            Params.Values['Port'] := vpPorta; // Porta
            Params.Values['DSAuthenticationUser'] := 'i2badm'; // Login do Usu�rio
            Params.Values['DSAuthenticationPassword'] := 'backdoor'; // Senha Usu�rio
            Open;
            VGUSUARIOLOGADO := 'backdoor';
          end;
        except
          On E : Exception do
          begin
            vlfalhaTratada := False;
            vlfalha := e.ToString;
            //Falha de autentica��o com o Servidor
            if pos('Connection refused',vlfalha) > 0 then
            begin
              Application.MessageBox(PWideChar('Falha de conex�o ao Servidor. Verifique suas configura��es de rede e '+
                'tente novamente.'),'Falha de Conex�o',MB_OK + MB_ICONINFORMATION);
              vlfalhaTratada := True;
            end;
            //Caso n�o tenha tratado o erro anteriormente
            if not(vlfalhaTratada) then
            begin
              Application.MessageBox(PWideChar('Falha de Conex�o ao Servidor. '+#13+#13+vlFalha),'Conex�o ao Servidor',MB_OK +
                MB_ICONINFORMATION);
            end;
          end;
        end;
      end
      else
      begin
        Application.MessageBox('Arquivo conServer.i2b est� sem nenhuma informa��o, informe o IP:Porta do servido para continuar.',
          'Falha',MB_OK + MB_ICONERROR);
      end;
    except
      On E : Exception do
      begin
        Application.MessageBox(PWideChar('N�o foi poss�vel fazer a leitura do arquivo conServer. Motivo: '+e.ToString),
          'Falha',MB_OK + MB_ICONERROR);
      end;
    end;
  end
  else
  begin
    Application.Terminate;
  end;
end;

function TfrmNFCPrincipal.getVendedor: integer;
begin
  frmNFCLogin := TfrmNFCLogin.Create(Application);
  frmNFCLogin.ShowModal;
  Result := frmNFCLogin.VGCODIGODOVENDEDOR;
  FreeAndNil(frmNFCLogin);
end;

end.
