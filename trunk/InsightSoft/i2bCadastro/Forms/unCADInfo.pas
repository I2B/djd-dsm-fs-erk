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
  cxGridDBTableView, cxContainer, cxLabel, cxImageComboBox, Vcl.ImgList, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, ShellAPI;

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
    lblPessoasRecentes: TcxLabel;
    imlTipo: TcxImageList;
    cxLabel1: TcxLabel;
    grdProdutosRecentes: TcxGrid;
    tvProdutosRecentes: TcxGridDBTableView;
    lvlProdutosRecentes: TcxGridLevel;
    cdsProdutosRecentes: TClientDataSet;
    dtsProdutosRecentes: TDataSource;
    cdsProdutosRecentescodigointerno: TStringField;
    cdsProdutosRecentesnome: TStringField;
    tvProdutosRecentescodigointerno: TcxGridDBColumn;
    tvProdutosRecentesnome: TcxGridDBColumn;
    grdProdutos: TcxGrid;
    chartProdutos: TcxGridDBChartView;
    lvlProdutos: TcxGridLevel;
    cdsProdutos: TClientDataSet;
    dtsProdutos: TDataSource;
    cdsProdutosgrupo: TStringField;
    cdsProdutossubgrupo: TStringField;
    cdsProdutosquantidade: TIntegerField;
    chartProdutosSeries1: TcxGridDBChartSeries;
    chartProdutosDataGroup1: TcxGridDBChartDataGroup;
    chartProdutosDataGroup2: TcxGridDBChartDataGroup;
    tileInfoItem1: TdxTileControlItem;
    tileInfoItem2: TdxTileControlItem;
    tileInfoWEB: TdxTileControlItem;
    XML: TXMLDocument;
    TimerFTP: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerHoraTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure tileInfoWEBClick(Sender: TdxTileControlItem);
    procedure TimerFTPTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADInfo: TfrmCADInfo;

implementation

{$R *.dfm}

uses unPrincipal, unDM, unI2BBD, unThreadFTP;

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
        {cdsBuscaDados := i2bGetClient('select idpessoa, cliente, fornecedor, colaborador, contador, transportadora, '+
          'vendedor, nomefantasia from pessoa order by idpessoa desc limit 8',DM.dspConnection);

        cdsBuscaDados.First;
        while not(cdsBuscaDados.Eof) do
        begin
          cdsPessoasRecentes.Insert;
          cdsPessoasRecentesidpessoa.AsInteger := cdsBuscaDados.FieldByName('idpessoa').AsInteger;
          cdsPessoasRecentesnome.AsString := '  '+cdsBuscaDados.FieldByName('nomefantasia').AsString;
          if cdsBuscaDados.FieldByName('cliente').AsBoolean then
          begin
            cdsPessoasRecentestipo.AsInteger := 1; //Cliente
          end
          else
          begin
            if cdsBuscaDados.FieldByName('fornecedor').AsBoolean then
            begin
              cdsPessoasRecentestipo.AsInteger := 2; //Fornecedor
            end
            else
            begin
              if cdsBuscaDados.FieldByName('colaborador').AsBoolean then
              begin
                cdsPessoasRecentestipo.AsInteger := 3; //Colaborador
              end
              else
              begin
                if cdsBuscaDados.FieldByName('contador').AsBoolean then
                begin
                  cdsPessoasRecentestipo.AsInteger := 4; //Contador
                end
                else
                begin
                  if cdsBuscaDados.FieldByName('transportadora').AsBoolean then
                  begin
                    cdsPessoasRecentestipo.AsInteger := 5; //Transportadora
                  end
                  else
                  begin
                    if cdsBuscaDados.FieldByName('vendedor').AsBoolean then
                    begin
                      cdsPessoasRecentestipo.AsInteger := 6; //Vendedor
                    end;
                  end;
                end;
              end;
            end;
          end;
          cdsPessoasRecentes.Post;

          cdsBuscaDados.Next;
        end;}

        //Código Provisório
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

        //Busca os últimos 10 produtos ativos cadastrados
        {cdsBuscaDados := i2bGetClient('select codigointerno, nome from produto where ativo = true order by idproduto '+
          'desc limit 10',DM.dspConnection);
        cdsBuscaDados.First;
        while not(cdsBuscaDados.Eof) do
        begin
          cdsProdutosRecentes.Insert;
          cdsProdutosRecentescodigointerno.AsString := cdsBuscaDados.FieldByName('codigointerno').AsString;
          cdsProdutosRecentesnome.AsString := cdsBuscaDados.FieldByName('nome').AsString;
          cdsProdutosRecentes.Post;

          cdsBuscaDados.Next;
        end;}

        //Código Provisório
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := 'Calc-HP-12CGold';
        cdsProdutosRecentesnome.AsString := 'Calculadora HP 12C Gold';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := '55LN549E';
        cdsProdutosRecentesnome.AsString := 'Televisao LG LED 55 Polegadas Full HD(1920 x 1080)';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := 'Office365-PM';
        cdsProdutosRecentesnome.AsString := 'Office 365 Personal Microsoft';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := 'CBV09DB';
        cdsProdutosRecentesnome.AsString := 'Ar Condicionado Split Bem Estar Frio 9.000 BTUs - Consul';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := 'CAMCAR';
        cdsProdutosRecentesnome.AsString := 'Camera HD Portatil para Carro DVR';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := 'G506';
        cdsProdutosRecentesnome.AsString := 'Smartphone Huawei G506 Dual-Chip Tela 4.5 Polegadas Touch Processador Dual Core 1.0GHz';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := 'GAME-SlDogs-XBoxOne';
        cdsProdutosRecentesnome.AsString := 'Sleeping Dogs: Definitive Edition - Xbox One';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := 'AD770KXBJABOX';
        cdsProdutosRecentesnome.AsString := 'Processador AMD A10-7700K Quad-Core Cache 4MB Velocidade 3.4GHz';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := 'AM1M-A';
        cdsProdutosRecentesnome.AsString := 'Placa Mae Asus AMD Socket AM1 Memoria DDR3 1866(O.C.)/1600/1333';
        cdsProdutosRecentes.Post;
        cdsProdutosRecentes.Insert;
        cdsProdutosRecentescodigointerno.AsString := '02G-P4-2774-KR';
        cdsProdutosRecentesnome.AsString := 'Placa de Vídeo EVGA EVGA GeForce GTX 770 2GB GDDR5 256 bit';
        cdsProdutosRecentes.Post;

        {cdsProdutos := i2bGetClient('select produtogrupo.nome as grupo, produtosubgrupo.nome as subgrupo, '+
          'count(produto.idproduto) as quantidade from produto '+
          'inner join produtosubgrupo on (produto.idsubgrupoprodutos = produtosubgrupo.idsubgrupoprodutos) '+
          'inner join produtogrupo on (produto.idgrupoprodutos = produtogrupo.idgrupoprodutos) '+
          'where produto.ativo = true group by 1, 2 order by quantidade desc limit 200',DM.dspConnection);}
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Calculadoras';
        cdsProdutossubgrupo.AsString := 'HP';
        cdsProdutosquantidade.AsInteger := 5;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Calculadoras';
        cdsProdutossubgrupo.AsString := 'Comuns';
        cdsProdutosquantidade.AsInteger := 14;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Televisão';
        cdsProdutossubgrupo.AsString := 'Full HD';
        cdsProdutosquantidade.AsInteger := 2;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Televisão';
        cdsProdutossubgrupo.AsString := 'HD';
        cdsProdutosquantidade.AsInteger := 10;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Televisão';
        cdsProdutossubgrupo.AsString := 'Plasma';
        cdsProdutosquantidade.AsInteger := 23;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Televisão';
        cdsProdutossubgrupo.AsString := 'Flat';
        cdsProdutosquantidade.AsInteger := 39;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Softwares';
        cdsProdutossubgrupo.AsString := 'Microsoft';
        cdsProdutosquantidade.AsInteger := 12;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Softwares';
        cdsProdutossubgrupo.AsString := 'Adobe';
        cdsProdutosquantidade.AsInteger := 3;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Periféricos';
        cdsProdutossubgrupo.AsString := 'Placa de Vídeo';
        cdsProdutosquantidade.AsInteger := 15;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Periféricos';
        cdsProdutossubgrupo.AsString := 'Teclado';
        cdsProdutosquantidade.AsInteger := 32;
        cdsProdutos.Post;
        cdsProdutos.Insert;
        cdsProdutosgrupo.AsString := 'Periféricos';
        cdsProdutossubgrupo.AsString := 'Mouse';
        cdsProdutosquantidade.AsInteger := 18;
        cdsProdutos.Post;

        TimerFTPTimer(Sender);
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

procedure TfrmCADInfo.tileInfoWEBClick(Sender: TdxTileControlItem);
var
  I : Integer;
begin
  for I := 0 to frmCADInfo.XML.DocumentElement.ChildNodes.Count - 1 do
  begin
    With frmCADInfo.XML.DocumentElement.ChildNodes[I] do
    begin
      if ChildNodes['info'].Text = tileInfoWEB.ActiveFrame.Text1.Value then
      begin
        ShellExecute(Handle,'open',PWideChar(ChildNodes['link'].Text),nil,nil,SW_SHOWNORMAL);
        break;
      end;
    end;
  end;

end;

procedure TfrmCADInfo.TimerFTPTimer(Sender: TObject);
var
  FTP : ThreadFTP;
begin
  FTP := ThreadFTP.Create(false);
  FTP.Resume;
end;

procedure TfrmCADInfo.TimerHoraTimer(Sender: TObject);
begin
  inherited;
  tileInfoBemVindoB.Text4.Value := TimeToStr(now);
end;

end.
