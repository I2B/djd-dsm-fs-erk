unit unF2Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, unFramePai,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxGDIPlusClasses,
  cxImage, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, System.Actions, Vcl.ActnList;

type
  TfrmF2Cadastro = class(TForm)
    pnlCadastro: TPanel;
    imgSalvar: TcxImage;
    imgCancelar: TcxImage;
    ActionList: TActionList;
    acSalvar: TAction;
    acCancelar: TAction;
    procedure acSalvarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
  private
    { Private declarations }
    fCancelado:Boolean;
    fFrame:TFrame;
    fDataSource:TDataSource;
    fClientCadastro:TClientDataSet;
  public
    { Public declarations }
    frameLocalizado : Boolean;

    campoID : String;
    campoDesc : String;

    valorCadastrado : String;
    valorCadastrado2 : String;

    property cancelado:Boolean read fCancelado;
    constructor Create( AOwner: TComponent; FrameCadastro:String);
  end;

var
  frmF2Cadastro: TfrmF2Cadastro;

implementation

{$R *.dfm}

uses unFrameCBO, unFramePortador, unFrameCEP, unFrameCFOP, unFrameEstado, unFrameIndice, unFrameMunicipio, unFramePais,
  UnFrameBanco, unFrameCNAE, unFrameCSTCofins, unFrameCSTCSOSN, unFrameCSTICMS, unFrameCSTIPI, unFrameCSTPIS,
  unFrameEmpresa, unFrameIndicadorEconomico, unFrameModelo, unFrameNCM, unFrameProdutoCor, unFrameProdutoFornecedor,
  unFrameProdutoGrupo, unFrameProdutoSubGrupo, unFrameProdutoTabelaPreco, unFrameProdutoTamanho, unFrameProdutoUnidade,
  unFrameProdutoUnidadeConversao, unFrameRegraFiscal, unFrameRegraFiscalObservacao, unFrameSerie, unFrameSetor,
  unFrameTabelaPreco, unFrameTelefone, unFrameTipoOperacao, unFrameTipoTelefone, unFrameUnidadeNegocio;

{ TfrmF2Cadastro }

procedure TfrmF2Cadastro.acCancelarExecute(Sender: TObject);
begin
  (fDataSource.DataSet as TClientDataSet).Cancel;
  fClientCadastro.Cancel;
  fCancelado := False;
  close();
end;

procedure TfrmF2Cadastro.acSalvarExecute(Sender: TObject);
begin
  try
    (fDataSource.DataSet as TClientDataSet).Post;

    valorCadastrado := (fDataSource.DataSet as TClientDataSet).FieldByName(campoID).AsString;
    if campoDesc <> '' then
      valorCadastrado2 := (fDataSource.DataSet as TClientDataSet).FieldByName(campoDesc).AsString;

    (fDataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
  except

  end;

  fCancelado := False;
  close();
end;

constructor TfrmF2Cadastro.Create(AOwner: TComponent; FrameCadastro: String);
begin
  frameLocalizado := False;
  inherited Create(AOwner);

  if FrameCadastro = 'FrameCBO' then
  begin
    fFrame := TFrameCBO.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FramePortador' then
  begin
    fFrame := TFramePortador.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameCEP' then
  begin
    fFrame := TFrameCEP.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameCFOP' then
  begin
    fFrame := TFrameCFOP.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameEstado' then
  begin
    fFrame := TFrameEstado.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameIndice' then
  begin
    fFrame := TFrameIndice.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameMunicipio' then
  begin
    fFrame := TFrameMunicipio.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FramePais' then
  begin
    fFrame := TFramePais.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameBanco' then
  begin
    fFrame := TFrameBanco.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameCNAE' then
  begin
    fFrame := TFrameCNAE.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameCSTCofins' then
  begin
    fFrame := TFrameCSTCofins.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameCSTCSOSN' then
  begin
    fFrame := TFrameCSTCSOSN.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameCSTICMS' then
  begin
    fFrame := TFrameCSTICMS.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameCSTIPI' then
  begin
    fFrame := TFrameCSTIPI.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameCSTPIS' then
  begin
    fFrame := TFrameCSTPIS.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameEmpresa' then
  begin
    fFrame := TFrameEmpresa.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameIndicadorEconomico' then
  begin
    fFrame := TframeIndicadorEconomico.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameModelo' then
  begin
    fFrame := TFrameModelo.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameNCM' then
  begin
    fFrame := TFrameNCM.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameProdutoCor' then
  begin
    fFrame := TFrameProdutoCor.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameProdutoFornecedor' then
  begin
    fFrame := TFrameProdutoFornecedor.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameProdutoGrupo' then
  begin
    fFrame := TFrameProdutoGrupo.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameProdutoSubGrupo' then
  begin
    fFrame := TFrameProdutoSubGrupo.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameProdutoTabelaPreco' then
  begin
    fFrame := TFrameProdutoabelaPreco.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameProdutoTamanho' then
  begin
    fFrame := TFrameProdutoTamanho.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameProdutoUnidade' then
  begin
    fFrame := TFrameProdutoUnidade.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameProdutoUnidadeConversao' then
  begin
    fFrame := TFrameProdutoUnidadeConversao.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameRegraFiscal' then
  begin
    fFrame := TFrameRegraFiscal.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameRegraFiscalObservacao' then
  begin
    fFrame := TFrameRegraFiscalObservacao.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameSerie' then
  begin
    fFrame := TFrameSerie.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameSetor' then
  begin
    fFrame := TFrameSetor.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameTabelaPreco' then
  begin
    fFrame := TFrameTabelaPreco.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameTelefone' then
  begin
    fFrame := TFrameTelefone.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameTipoOperacao' then
  begin
    fFrame := TFrameTipoOperacao.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameTipoTelefone' then
  begin
    fFrame := TFrameTipoTelefone.Create(Application);
    frameLocalizado := True;
  end;
  if FrameCadastro = 'FrameUnidadeNegocio' then
  begin
    fFrame := TFrameUnidadeNegocio.Create(Application);
    frameLocalizado := True;
  end;

  if frameLocalizado then
  begin
    with fFrame do
    begin
      Parent := Self;
      Align := alClient;
      fDataSource := (fFrame.FindComponent('DataSource') as TDataSource);
      if not((fDataSource.DataSet as TClientDataSet).Active) then
        (fDataSource.DataSet as TClientDataSet).Open;
      (fDataSource.DataSet as TClientDataSet).Insert;
    end;
  end;
end;

end.
