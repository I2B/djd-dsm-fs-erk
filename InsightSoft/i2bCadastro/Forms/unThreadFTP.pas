unit unThreadFTP;

interface

uses
  System.Classes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, dxCustomTileControl, dxTileControl, IdHTTP;

type
  ThreadFTP = class(TThread)
  private
    { Private declarations }
    IdFTP: TIdFTP;
    XML : TXMLDocument;
    procedure setInfo;
  protected
    procedure Execute; override;
  end;

implementation

uses unCADInfo;

{ Thread }

procedure ThreadFTP.Execute;
begin
  try
    IdFTP := TIdFTP.Create(nil);
    IdFTP.Disconnect;
    IdFTP.Host := 'ftp.i2bsoft.com.br';
    IdFTP.Port := 21;
    IdFTP.Username := 'u370909348';
    IdFTP.Password := 'Insight';
    IdFTP.Passive := True;
    IdFTP.Connect();
    IdFTP.Get('/public_html/XML/infoI2B.xml','C:\InsightSoft\infoI2B.xml',true,false);
    Synchronize(self.setInfo);
  finally

  end;
end;

procedure ThreadFTP.setInfo;
var
  I: Integer;
  Frame : TdxTileControlItemFrame;
  MS : TMemoryStream;
  IdHTTP : TIdHTTP;
  img : String;
begin
  IdHTTP := TIdHTTP.Create(nil);
  MS := TMemoryStream.Create;
  frmCADInfo.XML.Active := False;
  frmCADInfo.XML.FileName := ('C:\InsightSoft\infoI2B.xml');
  frmCADInfo.XML.Active := True;
  frmCADInfo.tileInfoWEB.Frames.Clear;
  for I := 0 to frmCADInfo.XML.DocumentElement.ChildNodes.Count - 1 do
  begin
    With frmCADInfo.XML.DocumentElement.ChildNodes[I] do
    begin
      Frame := frmCADInfo.tileInfoWEB.Frames.Add;
      Frame.Text1.Value := ChildNodes['info'].Text;
      img := ChildNodes['img'].Text;
      if img <> '' then
      begin
        try
          MS.Clear;
          IdHTTP.Get(img,MS);
          MS.Seek(0,soFromBeginning);
          Frame.Glyph.Image.LoadFromStream(MS);
          Frame.Glyph.Align := oaBottomRight;
        except
        end;
      end;
    end;
  end;
end;

end.
