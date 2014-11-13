program i2bCadastro;

uses
  Vcl.Forms,
  unPrincipal in 'Forms\unPrincipal.pas' {frmPrincipal},
  unDM in 'Forms\unDM.pas' {DM: TDataModule},
  unBase in '..\Framework\HerancaVisual\unBase.pas' {frmBase},
  unGrid in '..\Framework\HerancaVisual\unGrid.pas' {frmGrid},
  unCadastro in '..\Framework\HerancaVisual\unCadastro.pas' {frmCadastro},
  unSerie in 'Forms\unSerie.pas' {frmSerie},
  unFramePai in '..\Framework\HerancaVisual\unFramePai.pas' {FramePai: TFrame},
  unFrameSerie in 'Frames\unFrameSerie.pas' {FrameSerie: TFrame},
  unCADAuditoria in 'Forms\unCADAuditoria.pas' {frmCADAuditoria},
  unFrameIndicadorEconomico in 'Frames\unFrameIndicadorEconomico.pas' {frameIndicadorEconomico: TFrame},
  unIndicadorEconomico in 'Forms\unIndicadorEconomico.pas' {frmCADIndicadorEconomico},
  UnFrameBanco in 'Frames\UnFrameBanco.pas' {FrameBanco: TFrame},
  unCADBanco in 'Forms\unCADBanco.pas' {frmCADBanco},
  unFramePortador in 'Frames\unFramePortador.pas' {FramePortador: TFrame},
  unCADPortador in 'Forms\unCADPortador.pas' {frmCadPortador},
  unFrameCBO in 'Frames\unFrameCBO.pas' {FrameCBO: TFrame},
  unCADCBO in 'Forms\unCADCBO.pas' {frmCADCBO};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.