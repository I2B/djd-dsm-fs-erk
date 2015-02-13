object FR_FISCAL_iCCDEstornar_ECF_Daruma: TFR_FISCAL_iCCDEstornar_ECF_Daruma
  Left = 328
  Top = 303
  Caption = 'M'#233'todo iCCDEstornar_ECF_Daruma'
  ClientHeight = 182
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 32
    Width = 26
    Height = 13
    Caption = 'COO:'
  end
  object Label2: TLabel
    Left = 38
    Top = 64
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label3: TLabel
    Left = 33
    Top = 95
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label4: TLabel
    Left = 15
    Top = 124
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Edt_COO: TEdit
    Left = 68
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '999999'
  end
  object Edt_CPF: TEdit
    Left = 68
    Top = 56
    Width = 225
    Height = 21
    TabOrder = 1
    Text = '123.123.123-99'
  end
  object Edt_Nome: TEdit
    Left = 68
    Top = 88
    Width = 393
    Height = 21
    TabOrder = 2
    Text = 'Daruma Developer Community'
  end
  object Edt_Endereco: TEdit
    Left = 68
    Top = 120
    Width = 393
    Height = 21
    TabOrder = 3
    Text = 
      'Av. Shishima Hifumi, 2911. 4 andar - Sala. 406  - S'#227'o Jos'#233' dos C' +
      'ampos - S'#227'o Paulo'
  end
  object BT_ENVIAR: TButton
    Left = 305
    Top = 149
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 385
    Top = 149
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FECHARClick
  end
end
