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
  unFrameIndicadorEconomico in 'Frames\unFrameIndicadorEconomico.pas' {frameIndicadorEconomico: TFrame},
  unIndicadorEconomico in 'Forms\unIndicadorEconomico.pas' {frmCADIndicadorEconomico},
  UnFrameBanco in 'Frames\UnFrameBanco.pas' {FrameBanco: TFrame},
  unCADBanco in 'Forms\unCADBanco.pas' {frmCADBanco},
  unFramePortador in 'Frames\unFramePortador.pas' {FramePortador: TFrame},
  unCADPortador in 'Forms\unCADPortador.pas' {frmCadPortador},
  unFrameCBO in 'Frames\unFrameCBO.pas' {FrameCBO: TFrame},
  unCADCBO in 'Forms\unCADCBO.pas' {frmCADCBO},
  unFrameCEP in 'Frames\unFrameCEP.pas' {FrameCEP: TFrame},
  unCADCEP in 'Forms\unCADCEP.pas' {frmCADCEP},
  unFrameCFOP in 'Frames\unFrameCFOP.pas' {FrameCFOP: TFrame},
  unCADCFOP in 'Forms\unCADCFOP.pas' {frmCADCFOP},
  unFrameCNAE in 'Frames\unFrameCNAE.pas' {FrameCNAE: TFrame},
  unCADCNAE in 'Forms\unCADCNAE.pas' {frmCADCNAE},
  unFrameUnidadeNegocio in 'Frames\unFrameUnidadeNegocio.pas' {FrameUnidadeNegocio: TFrame},
  unCADUnidadeNegocio in 'Forms\unCADUnidadeNegocio.pas' {frmCADUnidadeNegocio},
  unFrameTipoTelefone in 'Frames\unFrameTipoTelefone.pas' {FrameTipoTelefone: TFrame},
  unCADTipoTelefone in 'Forms\unCADTipoTelefone.pas' {frmCADTipoTelefone},
  unFrameTipoOperacao in 'Frames\unFrameTipoOperacao.pas' {FrameTipoOperacao: TFrame},
  unCADTipoOperacao in 'Forms\unCADTipoOperacao.pas' {frmCADTipoOperacao},
  unFrameTelefone in 'Frames\unFrameTelefone.pas' {FrameTelefone: TFrame},
  unFrameCSTCofins in 'Frames\unFrameCSTCofins.pas' {FrameCSTCofins: TFrame},
  unFrameCSTIPI in 'Frames\unFrameCSTIPI.pas' {FrameCSTIPI: TFrame},
  unFrameCSTPIS in 'Frames\unFrameCSTPIS.pas' {FramePIS: TFrame},
  unCADCSTCofins in 'Forms\unCADCSTCofins.pas' {frmCADCSTCofins},
  unCADCSTIPI in 'Forms\unCADCSTIPI.pas' {frmCADCSTIPI},
  unCADCSTPIS in 'Forms\unCADCSTPIS.pas' {frmCADCSTPIS},
  unCADAuditoria in 'Forms\unCADAuditoria.pas' {frmCADAuditoria},
  unCADTelefone in 'Forms\unCADTelefone.pas' {frmCADTelefone},
  unFrameEmpresa in 'Frames\unFrameEmpresa.pas' {FrameEmpresa: TFrame},
  unCADEmpresa in 'Forms\unCADEmpresa.pas' {frmCADEmpresa},
  unCADRegraFiscalObservacao in 'Forms\unCADRegraFiscalObservacao.pas',
  unCADSetor in 'Forms\unCADSetor.pas',
  unFrameRegraFiscalObservacao in 'Frames\unFrameRegraFiscalObservacao.pas' {FrameRegraFiscalObservacao: TFrame},
  unFrameSetor in 'Frames\unFrameSetor.pas' {FrameSetor: TFrame},
  unFrameRegraFiscal in 'Frames\unFrameRegraFiscal.pas' {FrameRegraFiscal: TFrame},
  unCADRegraFiscal in 'Forms\unCADRegraFiscal.pas' {frmCADRegraFiscal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCADRegraFiscal, frmCADRegraFiscal);
  Application.Run;
end.
