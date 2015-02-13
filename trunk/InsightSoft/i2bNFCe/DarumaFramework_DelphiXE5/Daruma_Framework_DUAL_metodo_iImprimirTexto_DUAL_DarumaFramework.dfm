object FR_DUAL_iImprimirTexto_DUAL_DarumaFramework: TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework
  Left = 351
  Top = 45
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'M'#233'todo iImprimirTexto_DUAL_DarumaFramework                      ' +
    '                          Daruma DDC'
  ClientHeight = 617
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GB_Texto: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 521
    Caption = 'Digite o texto:'
    TabOrder = 0
    object MB_Texto: TMemo
      Left = 16
      Top = 24
      Width = 313
      Height = 481
      TabOrder = 0
    end
  end
  object BT_Enviar: TButton
    Left = 12
    Top = 583
    Width = 155
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 193
    Top = 583
    Width = 155
    Height = 25
    Caption = 'Fechar'
    ModalResult = 1
    TabOrder = 2
    OnClick = BT_FecharClick
  end
  object BT_CompletoSeparado: TButton
    Left = 192
    Top = 543
    Width = 155
    Height = 25
    Caption = 'Teste completo (Separado)'
    TabOrder = 3
    OnClick = BT_CompletoSeparadoClick
  end
  object BT_Completo: TButton
    Left = 11
    Top = 543
    Width = 155
    Height = 25
    Caption = 'Teste completo (Completo)'
    TabOrder = 4
    OnClick = BT_CompletoClick
  end
  object GB_Tags: TGroupBox
    Left = 368
    Top = 8
    Width = 273
    Height = 601
    Caption = 'TAGS:'
    TabOrder = 5
    object LB_ce: TLabel
      Left = 8
      Top = 15
      Width = 204
      Height = 13
      Caption = 'Texto centralizado: <ce>Centralizado</ce>'
    end
    object LB_b: TLabel
      Left = 8
      Top = 31
      Width = 162
      Height = 13
      Caption = 'Texto em Negrito: <b>Negrito</b>'
    end
    object LB_i: TLabel
      Left = 8
      Top = 47
      Width = 142
      Height = 13
      Caption = 'Texto em Italico: <i>Italico</i>'
    end
    object LB_s: TLabel
      Left = 8
      Top = 63
      Width = 198
      Height = 13
      Caption = 'Texto em Sublinhado: <s>Sublinhado</s>'
    end
    object LB_e: TLabel
      Left = 8
      Top = 79
      Width = 177
      Height = 13
      Caption = 'Texto Expandido: <e>Expandido</e>'
    end
    object LB_c: TLabel
      Left = 8
      Top = 94
      Width = 197
      Height = 13
      Caption = 'Texto Condensado: <c>Condensado</c>'
    end
    object LB_n: TLabel
      Left = 8
      Top = 109
      Width = 143
      Height = 13
      Caption = 'Texto Normal: <n>Normal</n>'
    end
    object LB_l: TLabel
      Left = 9
      Top = 125
      Width = 209
      Height = 13
      Caption = 'Saltar uma Linha: <l></l>Salto de uma Linha'
    end
    object LB_sl: TLabel
      Left = 9
      Top = 140
      Width = 249
      Height = 13
      Caption = 'Saltar varias Linhas: <sl>NN</sl>Saltar varias Linhas'
    end
    object LB_tc: TLabel
      Left = 8
      Top = 155
      Width = 237
      Height = 13
      Caption = 'Riscar Linha com Caracter Especifico: <tc>C</tc>'
    end
    object LB_dt: TLabel
      Left = 8
      Top = 171
      Width = 141
      Height = 13
      Caption = 'Imprimir Data Atual: <dt></dt>'
    end
    object LB_hr: TLabel
      Left = 8
      Top = 187
      Width = 141
      Height = 13
      Caption = 'Imprimir Hora Atual: <hr></hr>'
    end
    object LB_sp: TLabel
      Left = 8
      Top = 202
      Width = 199
      Height = 13
      Caption = 'Inserir Espa'#231'os em Branco: <sp>NN</sp>'
    end
    object LB_sn: TLabel
      Left = 9
      Top = 219
      Width = 150
      Height = 13
      Caption = 'Sinal Sonoro, Apitar: <sn></sn>'
    end
    object LB_g: TLabel
      Left = 8
      Top = 235
      Width = 163
      Height = 13
      Caption = 'Abrir Gaveta de Dinheiro: <g></g>'
    end
    object LB_a: TLabel
      Left = 8
      Top = 249
      Width = 206
      Height = 13
      Caption = 'Aguardar o Termino da Impress'#227'o: <a></a>'
    end
    object LB_tb: TLabel
      Left = 8
      Top = 264
      Width = 160
      Height = 13
      Caption = 'Usando as Tabulacoes <tb></tb>'
    end
    object LB_CodigodeBarras: TLabel
      Left = 10
      Top = 329
      Width = 172
      Height = 13
      Caption = 'Imprimindo Codigos de Barras:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LB_ean13: TLabel
      Left = 8
      Top = 348
      Width = 161
      Height = 13
      Caption = '<ean13>123456789012</ean13>'
    end
    object LB_ean8: TLabel
      Left = 8
      Top = 364
      Width = 119
      Height = 13
      Caption = '<ean8>1234567</ean8>'
    end
    object LB_upc: TLabel
      Left = 8
      Top = 380
      Width = 149
      Height = 13
      Caption = '<upc-a>12345678901</upc-a>'
    end
    object LB_code39: TLabel
      Left = 8
      Top = 395
      Width = 146
      Height = 13
      Caption = '<code39>CODE 39</code39>'
    end
    object LB_code93: TLabel
      Left = 8
      Top = 412
      Width = 146
      Height = 13
      Caption = '<code93>CODE 93</code93>'
    end
    object LB_codabar: TLabel
      Left = 8
      Top = 428
      Width = 159
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = '<codabar>CODABAR</codabar>'
      ParentBiDiMode = False
    end
    object LB_msi: TLabel
      Left = 9
      Top = 444
      Width = 113
      Height = 13
      Caption = '<msi>123456789</msi>'
    end
    object LB_code11: TLabel
      Left = 9
      Top = 459
      Width = 167
      Height = 13
      Caption = '<code11>12345678901</code11>'
    end
    object LB_ad: TLabel
      Left = 8
      Top = 280
      Width = 145
      Height = 13
      Caption = 'Alinhando a Direita <ad></ad>'
    end
    object LB_bmp: TLabel
      Left = 9
      Top = 560
      Width = 152
      Height = 13
      Caption = 'Carregar logotipo <bmp></bmp>'
    end
    object LB_gui: TLabel
      Left = 10
      Top = 576
      Width = 144
      Height = 13
      Caption = 'Acionar guilhotina <gui></gui>'
    end
    object LB_da: TLabel
      Left = 8
      Top = 294
      Width = 188
      Height = 13
      Caption = 'Duplica a Altura do caracter <da></da>'
    end
    object LB_pdf: TLabel
      Left = 9
      Top = 475
      Width = 83
      Height = 13
      Caption = '<pdf>1234</pdf>'
    end
    object LB_Comandos: TLabel
      Left = 10
      Top = 542
      Width = 63
      Height = 13
      Caption = 'Comandos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LB_fe: TLabel
      Left = 8
      Top = 309
      Width = 200
      Height = 13
      Caption = 'Habilita o Modo Fonte Elite <fe>texto</fe>'
    end
    object LB_Code128: TLabel
      Left = 9
      Top = 491
      Width = 229
      Height = 13
      Caption = '<code128>123456789123-A-B-*_%-&</code128>'
    end
    object LB_i2of5: TLabel
      Left = 9
      Top = 507
      Width = 99
      Height = 13
      Caption = '<i2of5>1234</i2of5>'
    end
    object LB_s2of5: TLabel
      Left = 9
      Top = 523
      Width = 129
      Height = 13
      Caption = '<s2of5>12345678</s2of5>'
    end
  end
end
