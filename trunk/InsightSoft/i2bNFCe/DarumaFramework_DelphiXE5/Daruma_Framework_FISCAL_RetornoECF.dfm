object FR_FISCAL_RetornoECF: TFR_FISCAL_RetornoECF
  Left = 361
  Top = 242
  Caption = 'DarumaFramework Metodos de Retorno, Informa'#231#245'es e Status'
  ClientHeight = 254
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 667
    Height = 169
    Caption = 'Daruma Framework Retornos da Impressora:'
    TabOrder = 0
    object Edt_Retorno: TMemo
      Left = 8
      Top = 17
      Width = 649
      Height = 144
      TabOrder = 0
    end
  end
  object Fechar: TButton
    Left = 583
    Top = 184
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = FecharClick
  end
  object Btn_Limpar: TButton
    Left = 496
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = Btn_LimparClick
  end
  object MainMenu1: TMainMenu
    Left = 656
    object MtodosRetornosECF1: TMenuItem
      Caption = 'M'#233'todos Retornos ECF'
      object MtodorRetornarInformacaoECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rRetornarInformacao_ECF_Daruma'
        OnClick = MtodorRetornarInformacaoECFDaruma1Click
      end
      object rRetornarInformacaoECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rRetornarInformacaoSeparador_ECF_Daruma'
        OnClick = rRetornarInformacaoECFDaruma1Click
      end
      object MtodorLerAliquotasECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rLerAliquotas_ECF_Daruma'
        OnClick = MtodorLerAliquotasECFDaruma1Click
      end
      object MtodorLerMeiosPagtoECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rLerMeiosPagto_ECF_Daruma'
        OnClick = MtodorLerMeiosPagtoECFDaruma1Click
      end
      object MtodorLerRGECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rLerRG_ECF_Daruma'
        OnClick = MtodorLerRGECFDaruma1Click
      end
      object MtodorLerCNFECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rLerCNF_ECF_Daruma'
        OnClick = MtodorLerCNFECFDaruma1Click
      end
      object MtodosrLerDecimaisECFDaruma1: TMenuItem
        Caption = 'M'#233'todos rLerDecimais_ECF_Daruma'
        OnClick = MtodosrLerDecimaisECFDaruma1Click
      end
      object MtodorLerDecimaisIntECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rLerDecimaisInt_ECF_Daruma'
        OnClick = MtodorLerDecimaisIntECFDaruma1Click
      end
      object MtodorLerDecimaisStrECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rLerDecimaisStr_ECF_Daruma'
        OnClick = MtodorLerDecimaisStrECFDaruma1Click
      end
      object MtodosrDataHoraImpressoraECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rDataHoraImpressora_ECF_Daruma'
        OnClick = MtodosrDataHoraImpressoraECFDaruma1Click
      end
      object MtodorVerificaImpressoraLigadaECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rVerificaImpressoraLigada_ECF_Daruma'
        OnClick = MtodorVerificaImpressoraLigadaECFDaruma1Click
      end
      object MtodorVerificarReducaoZECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rVerificarReducaoZ_ECF_Daruma'
        OnClick = MtodorVerificarReducaoZECFDaruma1Click
      end
      object MtodorRetornarDadosReducaoZECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rRetornarDadosReducaoZ_ECF_Daruma'
        OnClick = MtodorRetornarDadosReducaoZECFDaruma1Click
      end
      object MtodorTipoUltimoDocumentoIntECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rTipoUltimoDocumentoInt_ECF_Daruma'
        OnClick = MtodorTipoUltimoDocumentoIntECFDaruma1Click
      end
      object MtodorTipoUltimoDocumentoStrECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rTipoUltimoDocumentoStr_ECF_Daruma'
        OnClick = MtodorTipoUltimoDocumentoStrECFDaruma1Click
      end
      object MtodorUltimoCMDEnviadoECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rUltimoCMDEnviado_ECF_Daruma'
        OnClick = MtodorUltimoCMDEnviadoECFDaruma1Click
      end
      object MtodprMinasLegalECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rMinasLegal_ECF_Daruma'
        OnClick = MtodprMinasLegalECFDaruma1Click
      end
      object MtodorRetornarVendaBrutaECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rRetornarVendaBruta_ECF_Daruma'
        OnClick = MtodorRetornarVendaBrutaECFDaruma1Click
      end
      object MtodorCMEfetuarCalculoECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rCMEfetuarCalculo_ECF_Daruma'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object RetornoCupomFiscal1: TMenuItem
        Caption = 'Retorno Cupom Fiscal'
        object MtodosrCFSaldoAPagarECFDaruma1: TMenuItem
          Caption = 'M'#233'todo rCFSaldoAPagar_ECF_Daruma'
          OnClick = MtodosrCFSaldoAPagarECFDaruma1Click
        end
        object MtodorCFSubTotalECFDaruma1: TMenuItem
          Caption = 'M'#233'todo rCFSubTotal_ECF_Daruma'
          OnClick = MtodorCFSubTotalECFDaruma1Click
        end
        object MtodorCFVerificarStatusECFDaruma1: TMenuItem
          Caption = 'M'#233'todo rCFVerificarStatus_ECF_Daruma'
          OnClick = MtodorCFVerificarStatusECFDaruma1Click
        end
      end
    end
    object MtodosStatus1: TMenuItem
      Caption = 'M'#233'todos Status'
      object Mtodo1: TMenuItem
        Caption = 'M'#233'todo rStatusImpressora_ECF_Daruma'
        OnClick = Mtodo1Click
      end
      object MtodorStatusImpressoraBinarioECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rStatusImpressoraBinario_ECF_Daruma'
        OnClick = MtodorStatusImpressoraBinarioECFDaruma1Click
      end
      object MtodorConsultaStatusImpressoraStrECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rConsultaStatusImpressoraStr_ECF_Daruma'
        OnClick = MtodorConsultaStatusImpressoraStrECFDaruma1Click
      end
      object MtodorConsultaStatusImpressoraIntECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rConsultaStatusImpressoraInt_ECF_Daruma'
        OnClick = MtodorConsultaStatusImpressoraIntECFDaruma1Click
      end
      object MtodorStatusUltimoCmdECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rStatusUltimoCmd_ECF_Daruma'
        OnClick = MtodorStatusUltimoCmdECFDaruma1Click
      end
      object MtodorInfoEstendidaECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rInfoEstendida_ECF_Daruma'
        OnClick = MtodorInfoEstendidaECFDaruma1Click
      end
      object Mt1: TMenuItem
        Caption = 'M'#233'todo rInfoEstentida1_ECF_Daruma'
        OnClick = Mt1Click
      end
      object MtodorInfoEstentida2ECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rInfoEstentida2_ECF_Daruma'
        OnClick = MtodorInfoEstentida2ECFDaruma1Click
      end
      object MtodorInfoEstentida3ECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rInfoEstentida3_ECF_Daruma'
        OnClick = MtodorInfoEstentida3ECFDaruma1Click
      end
      object MtodorInfoEstentida4ECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rInfoEstentida4_ECF_Daruma'
        OnClick = MtodorInfoEstentida4ECFDaruma1Click
      end
      object MtodorInfoEstentida5ECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rInfoEstentida5_ECF_Daruma'
        OnClick = MtodorInfoEstentida5ECFDaruma1Click
      end
      object MtodorStatusUltimoCmdIntECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rStatusUltimoCmdInt_ECF_Daruma'
      end
      object MtodorStatusUltimoCmdStrECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rStatusUltimoCmdStr_ECF_Daruma'
      end
      object MtodorCFVerificarStatusIntECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rCFVerificarStatusInt_ECF_Daruma'
      end
      object MtodorCFVerificarStatusStrECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rCFVerificarStatusStr_ECF_Daruma'
      end
      object MtodorRGVerificarStatusECFDaruma1: TMenuItem
        Caption = 'M'#233'todo rRGVerificarStatus_ECF_Daruma'
      end
    end
    object MtodosEspeciais1: TMenuItem
      Caption = 'M'#233'todos Especiais'
      object Mtodo2: TMenuItem
        Caption = 'M'#233'todo eBuscarPortaVelocidade_ECF_Daruma'
        OnClick = Mtodo2Click
      end
      object MtodoseVerificarVersaoDLLDaruma1: TMenuItem
        Caption = 'M'#233'todos eVerificarVersaoDLL_Daruma'
        OnClick = MtodoseVerificarVersaoDLLDaruma1Click
      end
      object MtodoeRetornarPortasComECFDaruma1: TMenuItem
        Caption = 'M'#233'todo eRetornarPortasCom_ECF_Daruma'
        OnClick = MtodoeRetornarPortasComECFDaruma1Click
      end
      object MtodoeRetornarAvisoErroUltimoCMDECFDaruma1: TMenuItem
        Caption = 'M'#233'todo eRetornarAvisoErroUltimoCMD_ECF_Daruma'
        OnClick = MtodoeRetornarAvisoErroUltimoCMDECFDaruma1Click
      end
      object eInterpretarRetornoECFDaruma1: TMenuItem
        Caption = 'M'#233'todo eInterpretarRetorno_ECF_Daruma'
        OnClick = eInterpretarRetornoECFDaruma1Click
      end
      object MtodoeInterpretarAvisoECFDaruma1: TMenuItem
        Caption = 'M'#233'todo eInterpretarAviso_ECF_Daruma'
        OnClick = MtodoeInterpretarAvisoECFDaruma1Click
      end
      object MtodoeInterpretarErroECFDaruma1: TMenuItem
        Caption = 'M'#233'todo eInterpretarErro_ECF_Daruma'
        OnClick = MtodoeInterpretarErroECFDaruma1Click
      end
    end
    object RelatriodeConfigurao1: TMenuItem
      Caption = 'Relat'#243'rio de Configura'#231#227'o '
      object MtodoiRelatorioConfiguracaoECFDaruma1: TMenuItem
        Caption = 'M'#233'todo iRelatorioConfiguracao_ECF_Daruma'
        OnClick = MtodoiRelatorioConfiguracaoECFDaruma1Click
      end
    end
  end
end
