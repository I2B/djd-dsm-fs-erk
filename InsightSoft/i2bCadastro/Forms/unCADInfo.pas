unit unCADInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unBase, dxScreenTip, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinsdxBarPainter, dxBar, cxClasses, dxCustomHint, cxHint,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, Data.DB,
  cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxGridChartView,
  cxGridDBChartView, cxGridCustomView, cxGrid, Datasnap.DBClient, Vcl.StdCtrls;

type
  TfrmCADInfo = class(TfrmBase)
    grdComposicao: TcxGrid;
    chartComposicao: TcxGridDBChartView;
    chartComposicaoDataGroup1: TcxGridDBChartDataGroup;
    chartComposicaoSeries1: TcxGridDBChartSeries;
    lvlComposicao: TcxGridLevel;
    memComposicao: TFDMemTable;
    memComposicaoPessoa: TStringField;
    memComposicaoQuantidade: TIntegerField;
    dtsComposicao: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADInfo: TfrmCADInfo;

implementation

{$R *.dfm}

uses unPrincipal, unDM, unI2BBD;

procedure TfrmCADInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  abort;
end;

procedure TfrmCADInfo.FormCreate(Sender: TObject);
var
  cdsComposicaoPessoas : TClientDataSet;
begin
  inherited;
  if DM.conServer.Connected then
  begin
    memComposicao.CreateDataSet;
    //Clientes
    cdsComposicaoPessoas := i2bGetClient('select count(idpessoa) as contPessoas, '+
      '(select count(idpessoa) as contador from pessoacliente where ativo = true) as contCliente, '+
      '(select count(idpessoa) as contador from pessoacolaborador where ativo = true) as contColaborador, '+
      '(select count(idpessoa) as contador from pessoacontador where ativo = true) as contContador, '+
      '(select count(idpessoa) as contador from pessoafornecedor where ativo = true) as contFornecedor, '+
      '(select count(idpessoa) as contador from pessoarepresentante where ativo = true) as contRepresentante, '+
      '(select count(idpessoa) as contador from pessoatransportadora where ativo = true) as contTransportadora, '+
      '(select count(idpessoa) as contador from pessoavendedor where ativo = true) as contVendedor '+
      'from pessoa',DM.dspConnection);

    memComposicao.Insert;
    memComposicaoPessoa.AsString := 'Clientes';
    memComposicaoQuantidade.AsInteger := 76;//cdsComposicaoPessoas.FieldByName('contCliente').AsInteger;
    memComposicao.Post;
    //Colaboradores
    memComposicao.Insert;
    memComposicaoPessoa.AsString := 'Colaboradores';
    memComposicaoQuantidade.AsInteger := 10;//cdsComposicaoPessoas.FieldByName('contColaborador').AsInteger;
    memComposicao.Post;
    //Contador
    memComposicao.Insert;
    memComposicaoPessoa.AsString := 'Contador';
    memComposicaoQuantidade.AsInteger := 1;//cdsComposicaoPessoas.FieldByName('contContador').AsInteger;
    memComposicao.Post;
    //Fornecedor
    memComposicao.Insert;
    memComposicaoPessoa.AsString := 'Fornecedor';
    memComposicaoQuantidade.AsInteger := 45;//cdsComposicaoPessoas.FieldByName('contFornecedor').AsInteger;
    memComposicao.Post;
    //Representante
    memComposicao.Insert;
    memComposicaoPessoa.AsString := 'Representantes';
    memComposicaoQuantidade.AsInteger := 11;//cdsComposicaoPessoas.FieldByName('contRepresentante').AsInteger;
    memComposicao.Post;
    //Transportadora
    memComposicao.Insert;
    memComposicaoPessoa.AsString := 'Transportadoras';
    memComposicaoQuantidade.AsInteger := 16;//cdsComposicaoPessoas.FieldByName('contTransportadora').AsInteger;
    memComposicao.Post;
    //Vendedores
    memComposicao.Insert;
    memComposicaoPessoa.AsString := 'Vendedores';
    memComposicaoQuantidade.AsInteger := 19;//cdsComposicaoPessoas.FieldByName('contVendedor').AsInteger;
    memComposicao.Post;
  end;
end;

end.
