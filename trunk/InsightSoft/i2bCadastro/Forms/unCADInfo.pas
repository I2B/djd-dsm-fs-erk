unit unCADInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unBase, dxScreenTip, dxSkinsCore, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinsdxBarPainter, dxBar, cxClasses, dxCustomHint, cxHint,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, Data.DB,
  cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxGridChartView,
  cxGridDBChartView, cxGridCustomView, cxGrid, Datasnap.DBClient, Vcl.StdCtrls, dxCustomTileControl, dxTileControl,
  Vcl.ExtCtrls, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxContainer, cxLabel, cxImageComboBox, Vcl.ImgList;

type
  TfrmCADInfo = class(TfrmBase)
    memComposicao: TFDMemTable;
    memComposicaoPessoa: TStringField;
    memComposicaoQuantidade: TIntegerField;
    dtsComposicao: TDataSource;
    tileInfo: TdxTileControl;
    tileInfoBemVindo: TdxTileControlItem;
    tileInfoGroup1: TdxTileControlGroup;
    tileInfoBemVindoA: TdxTileControlItemFrame;
    tileInfoBemVindoB: TdxTileControlItemFrame;
    tileInfoBemVindoC: TdxTileControlItemFrame;
    tileInfoBemVindoD: TdxTileControlItemFrame;
    TimerHora: TTimer;
    pnlLeft: TPanel;
    grdComposicao: TcxGrid;
    chartComposicao: TcxGridDBChartView;
    chartComposicaoDataGroup1: TcxGridDBChartDataGroup;
    chartComposicaoSeries1: TcxGridDBChartSeries;
    lvlComposicao: TcxGridLevel;
    pnlCenter: TPanel;
    tvPessoasRecentes: TcxGridDBTableView;
    lvlPessoasRecentes: TcxGridLevel;
    grdPessoasRecentes: TcxGrid;
    cdsPessoasRecentes: TClientDataSet;
    dtsPessoasRecentes: TDataSource;
    cdsPessoasRecentesidpessoa: TIntegerField;
    cdsPessoasRecentesnome: TStringField;
    cdsPessoasRecentestipo: TIntegerField;
    tvPessoasRecentesidpessoa: TcxGridDBColumn;
    tvPessoasRecentesnome: TcxGridDBColumn;
    tvPessoasRecentestipo: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    imlTipo: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerHoraTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
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
  cdsBuscaDados : TClientDataSet;
begin
  inherited;
  try
    try
      if DM.conServer.Connected then
      begin
        VGUSUARIOLOGADO := frmPrincipal.VGUSUARIO;

        memComposicao.CreateDataSet;
        //Clientes
        cdsBuscaDados := i2bGetClient('select count(idpessoa) as contPessoas, '+
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
        memComposicaoQuantidade.AsInteger := 76;//cdsBuscaDados.FieldByName('contCliente').AsInteger;
        memComposicao.Post;
        //Colaboradores
        memComposicao.Insert;
        memComposicaoPessoa.AsString := 'Colaboradores';
        memComposicaoQuantidade.AsInteger := 10;//cdsBuscaDados.FieldByName('contColaborador').AsInteger;
        memComposicao.Post;
        //Contador
        memComposicao.Insert;
        memComposicaoPessoa.AsString := 'Contador';
        memComposicaoQuantidade.AsInteger := 1;//cdsBuscaDados.FieldByName('contContador').AsInteger;
        memComposicao.Post;
        //Fornecedor
        memComposicao.Insert;
        memComposicaoPessoa.AsString := 'Fornecedor';
        memComposicaoQuantidade.AsInteger := 45;//cdsBuscaDados.FieldByName('contFornecedor').AsInteger;
        memComposicao.Post;
        //Representante
        memComposicao.Insert;
        memComposicaoPessoa.AsString := 'Representantes';
        memComposicaoQuantidade.AsInteger := 11;//cdsBuscaDados.FieldByName('contRepresentante').AsInteger;
        memComposicao.Post;
        //Transportadora
        memComposicao.Insert;
        memComposicaoPessoa.AsString := 'Transportadoras';
        memComposicaoQuantidade.AsInteger := 16;//cdsBuscaDados.FieldByName('contTransportadora').AsInteger;
        memComposicao.Post;
        //Vendedores
        memComposicao.Insert;
        memComposicaoPessoa.AsString := 'Vendedores';
        memComposicaoQuantidade.AsInteger := 19;//cdsBuscaDados.FieldByName('contVendedor').AsInteger;
        memComposicao.Post;

        cdsBuscaDados := i2bGetClient('select pessoa.nome, unidadenegocio.nomefantasia '+
                                      'from pessoa '+
                                      'inner join pessoacolaborador '+
                                      'on (pessoacolaborador.idpessoa = pessoa.idpessoa) '+
                                      'inner join unidadenegocio '+
                                      'on (pessoacolaborador.idunidadenegocio = unidadenegocio.idunidadenegocio) '+
                                      'where pessoacolaborador.loginusuario = '+QuotedStr(VGUSUARIOLOGADO),
                                      DM.dspConnection);
        cdsBuscaDados.First;
        if cdsBuscaDados.FieldByName('nome').AsString <> '' then
        begin
          tileInfoBemVindoA.Text1.Value := 'Bem vindo '+cdsBuscaDados.FieldByName('nomeusuariologado').AsString;
          tileInfoBemVindoC.Text3.Value := cdsBuscaDados.FieldByName('nomefantasia').AsString;
        end
        else
        begin
          tileInfoBemVindoA.Text1.Value := 'Bem vindo '+VGUSUARIOLOGADO;
          tileInfoBemVindoC.Text3.Value := 'Nome Fantasia da Empresa';
        end;
        tileInfoBemVindoB.Text2.Value := DateToStr(Date);
        tileInfoBemVindoD.Text4.Value := 'Insight Soft';

        //Busca últimas pessoas cadastradas e seu tipo
        cdsPessoasRecentes.Insert;
        cdsPessoasRecentesidpessoa.AsInteger := 1;
        cdsPessoasRecentesnome.AsString := '  Douglas Joel Dapper';
        cdsPessoasRecentestipo.AsInteger := 1; //Cliente
        cdsPessoasRecentes.Post;
        cdsPessoasRecentes.Insert;
        cdsPessoasRecentesidpessoa.AsInteger := 2;
        cdsPessoasRecentesnome.AsString := '  Elisandro Rodrigo Knebelkamp';
        cdsPessoasRecentestipo.AsInteger := 2; //Fornecedor
        cdsPessoasRecentes.Post;
        cdsPessoasRecentes.Insert;
        cdsPessoasRecentesidpessoa.AsInteger := 3;
        cdsPessoasRecentesnome.AsString := '  Fabio Schafer';
        cdsPessoasRecentestipo.AsInteger := 3; //Colaborador
        cdsPessoasRecentes.Post;
        cdsPessoasRecentes.Insert;
        cdsPessoasRecentesidpessoa.AsInteger := 4;
        cdsPessoasRecentesnome.AsString := '  Dinarte Schmitt Moscon';
        cdsPessoasRecentestipo.AsInteger := 4; //Contador
        cdsPessoasRecentes.Post;
        cdsPessoasRecentes.Insert;
        cdsPessoasRecentesidpessoa.AsInteger := 5;
        cdsPessoasRecentesnome.AsString := '  Sedelmo Chuck Norris';
        cdsPessoasRecentestipo.AsInteger := 5; //Transportadora
        cdsPessoasRecentes.Post;
        cdsPessoasRecentes.Insert;
        cdsPessoasRecentesidpessoa.AsInteger := 6;
        cdsPessoasRecentesnome.AsString := '  Sheldon Lee Cooper';
        cdsPessoasRecentestipo.AsInteger := 6; //Vendedor
        cdsPessoasRecentes.Post;
        cdsPessoasRecentes.Insert;
        cdsPessoasRecentesidpessoa.AsInteger := 7;
        cdsPessoasRecentesnome.AsString := '  Bob Esponja Calça Quadrada';
        cdsPessoasRecentestipo.AsInteger := 1; //Cliente
        cdsPessoasRecentes.Post;
        cdsPessoasRecentes.Insert;
        cdsPessoasRecentesidpessoa.AsInteger := 8;
        cdsPessoasRecentesnome.AsString := '  Bruce Wayne';
        cdsPessoasRecentestipo.AsInteger := 2; //Fornecedor
        cdsPessoasRecentes.Post;


      end;
    except
      On E : Exception do
      begin
        Application.MessageBox(PWideChar('Falha ao carregar informações do Banco de Dados.'+#13+#13+e.ToString),
          'InsightSoft',MB_OK + MB_ICONERROR);
      end;
    end;
  finally
    FreeAndNil(cdsBuscaDados);
  end;
end;

procedure TfrmCADInfo.FormResize(Sender: TObject);
var
  Tamanho : Integer;
begin
  inherited;
  Tamanho := trunc((pnlLeft.Width + pnlCenter.Width) / 2);
  pnlLeft.Width := Tamanho;
end;

procedure TfrmCADInfo.TimerHoraTimer(Sender: TObject);
begin
  inherited;
  tileInfoBemVindoB.Text4.Value := TimeToStr(now);
end;

end.
