unit unCADProdutoGrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxButtonEdit, dxScreenTip,
  dxSkinsdxBarPainter, Data.FMTBcd, Datasnap.DBClient, Data.SqlExpr, dxBar, dxRibbonRadialMenu, System.Actions,
  Vcl.ActnList, dxCustomHint, cxHint, cxGroupBox, cxRadioGroup, cxMemo, cxGridCustomTableView, cxGridTableView,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, cxPC, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, unFramePai,
  unFrameProdutoGrade;

type
  TfrmCADProdutoGrade = class(TfrmCadastro)
    cxGridDBidproduto: TcxGridDBColumn;
    cxGridDBprodutonome: TcxGridDBColumn;
    cxGridDBcornome: TcxGridDBColumn;
    cxGridDBtamanhonome: TcxGridDBColumn;
    cxGridDBativo: TcxGridDBColumn;
    cxGridDBcodigo: TcxGridDBColumn;
    FrameProdutoGrade: TFrameProdutoGrade;
    procedure acSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADProdutoGrade: TfrmCADProdutoGrade;

implementation

{$R *.dfm}

uses unDM, unI2BBD;

procedure TfrmCADProdutoGrade.acSalvarExecute(Sender: TObject);
var
  Linha: Integer;
  Coluna: Integer;
  colunaGrade: Integer;
  cadastrado: TClientDataSet;
begin
  FrameProdutoGrade.tvGrade.DataController.GotoFirst;
  for Linha := 0 to FrameProdutoGrade.tvGrade.DataController.RecordCount -1 do
  begin
    for Coluna := 3 to FrameProdutoGrade.tvGrade.ColumnCount -1 do
    begin
      colunaGrade := coluna;
      cadastrado := i2bGetClient('select codigo from produtograde where codigo = '+FrameProdutoGrade.edtIDProduto.Text+
        IntToStr(FrameProdutoGrade.tvGradeCodCor.EditValue)+VarToStr(FrameProdutoGrade.tvGrade.Columns[Coluna].Tag),DM.dspConnection);
      if (cadastrado.RecordCount = 0) and (FrameProdutoGrade.tvGrade.Columns[Coluna].EditValue = True) then
      begin
        i2bExecutaSQL('insert into produtograde (idProduto, idProdutoCor, idProdutoTamanho, codigo)'
          +'values('+FrameProdutoGrade.edtIDProduto.Text+','+IntToStr(FrameProdutoGrade.tvGradeCodCor.EditValue)+','+
           VarToStr(FrameProdutoGrade.tvGrade.Columns[Coluna].Tag)+','+FrameProdutoGrade.edtIDProduto.Text+
           IntToStr(FrameProdutoGrade.tvGradeCodCor.EditValue)+VarToStr(FrameProdutoGrade.tvGrade.Columns[Coluna].Tag)+')',dm.dspConnection);
      end
      else if (cadastrado.RecordCount <> 0) and (FrameProdutoGrade.tvGrade.Columns[Coluna].EditValue = false) then
      begin
        i2bExecutaSQL('update produtograde set ativo = false where codigo ='+FrameProdutoGrade.edtIDProduto.Text+
          IntToStr(FrameProdutoGrade.tvGradeCodCor.EditValue)+VarToStr(FrameProdutoGrade.tvGrade.Columns[Coluna].Tag),DM.dspConnection);
      end
      else if (cadastrado.RecordCount <> 0) and (FrameProdutoGrade.tvGrade.Columns[Coluna].EditValue = true) then
      begin
        i2bExecutaSQL('update produtograde set ativo = true where codigo ='+FrameProdutoGrade.edtIDProduto.Text+
          IntToStr(FrameProdutoGrade.tvGradeCodCor.EditValue)+VarToStr(FrameProdutoGrade.tvGrade.Columns[Coluna].Tag),DM.dspConnection);
      end;
    end;
    FrameProdutoGrade.tvGrade.DataController.GotoNext;
  end;
end;

end.
