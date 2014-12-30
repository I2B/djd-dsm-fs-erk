unit unFrameProdutoGrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unFramePai, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  Data.DB, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit,
  Datasnap.DBClient, cxCheckListBox, cxDBCheckListBox, cxListBox;

type
  TFrameProdutoGrade = class(TFramePai)
    edtProdutoNome: TcxTextEdit;
    dxLayoutControlItem2: TdxLayoutItem;
    dxLayoutControlGroup1: TdxLayoutGroup;
    dxLayoutControlGroup2: TdxLayoutGroup;
    dxLayoutControlGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutControlGroup4: TdxLayoutAutoCreatedGroup;
    clbCor: TcxCheckListBox;
    dxLayoutControlItem3: TdxLayoutItem;
    clbTamanho: TcxCheckListBox;
    dxLayoutControlItem4: TdxLayoutItem;
    edtProduto: TcxTextEdit;
    dxLayoutControlItem1: TdxLayoutItem;
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameProdutoGrade: TFrameProdutoGrade;
  cdsProdutoCor: TClientDataSet;

implementation

{$R *.dfm}

uses unDM, unI2BBD;

procedure TFrameProdutoGrade.cxDBTextEdit1PropertiesChange(Sender: TObject);
var
  cdsProdutoTamanho: TClientDataSet;
begin
  inherited;
  cdsProdutoCor := i2bGetClient ('select * from produtoCor', DM.dspConnection);
  if cdsProdutoCor.RecordCount <> 0 then
  begin
    with cdsProdutoCor do
    begin
      clbCor.Clear;
      if (RecordCount > 10) and (RecordCount <= 20) then
      begin
        clbCor.Columns := 2;
      end
      else if RecordCount > 20 then
      begin
        clbCor.Columns := 3;
      end;
      while not Eof do
      begin
        clbCor.Items.Add.Text := FieldByName('nome').AsString;
        Next;
      end;
    end;
  end
  else
  begin
     Application.MessageBox('Não encontrado nenhuma cor no cadastro!','Aviso',MB_ICONINFORMATION + MB_OK);
  end;
  cdsProdutoTamanho := i2bGetClient('select * from produtoTamanho', DM.dspConnection);
  if cdsProdutoTamanho.RecordCount <> 0 then
  begin
    with cdsProdutoTamanho do
    begin
      clbTamanho.Clear;
      if (RecordCount > 10) and (RecordCount <= 20) then
      begin
        clbTamanho.Columns := 2;
      end
      else if RecordCount > 20 then
      begin
        clbTamanho.Columns := 3;
      end;
      while not Eof do
      begin
        clbTamanho.Items.Add.Text := FieldByName('codigo').AsString;
        Next;
      end;
    end;
  end
  else
  begin
     Application.MessageBox('Não encontrado nenhuma tamanho no cadastro!','Aviso',MB_ICONINFORMATION + MB_OK);
  end;
end;

end.
