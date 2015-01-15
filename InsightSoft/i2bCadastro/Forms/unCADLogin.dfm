object frmCADLogin: TfrmCADLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmCADLogin'
  ClientHeight = 323
  ClientWidth = 566
  Color = 5177344
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    566
    323)
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 10
    Height = 323
    Align = alLeft
    Brush.Color = 28906
    Pen.Style = psClear
  end
  object cxLabel1: TcxLabel
    Left = 32
    Top = 40
    Caption = 'Insigth Soft'
    ParentFont = False
    Style.BorderColor = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -56
    Style.Font.Name = 'Segoe UI Light'
    Style.Font.Style = []
    Style.TextColor = clWhite
    Style.IsFontAssigned = True
    StyleDisabled.TextColor = clWhite
    StyleFocused.TextColor = clWhite
    StyleHot.TextColor = clWhite
    Transparent = True
  end
  object lblUsuario: TcxLabel
    Left = 291
    Top = 168
    Caption = 'Usu'#225'rio'
    ParentFont = False
    Style.BorderColor = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Segoe UI Light'
    Style.Font.Style = []
    Style.TextColor = clWhite
    Style.IsFontAssigned = True
    StyleDisabled.TextColor = clWhite
    StyleFocused.TextColor = clWhite
    StyleHot.TextColor = clWhite
    Transparent = True
  end
  object lblSenha: TcxLabel
    Left = 302
    Top = 216
    Caption = 'Senha'
    ParentFont = False
    Style.BorderColor = clWhite
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Segoe UI Light'
    Style.Font.Style = []
    Style.TextColor = clWhite
    Style.IsFontAssigned = True
    StyleDisabled.TextColor = clWhite
    StyleFocused.TextColor = clWhite
    StyleHot.TextColor = clWhite
    Transparent = True
  end
  object edtUsuario: TcxTextEdit
    Left = 360
    Top = 168
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 161
  end
  object edtSenha: TcxTextEdit
    Left = 360
    Top = 216
    ParentFont = False
    Properties.EchoMode = eemPassword
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 161
  end
  object lblProgresso: TcxLabel
    Left = 32
    Top = 294
    Anchors = [akRight, akBottom]
    AutoSize = False
    ParentColor = False
    ParentFont = False
    Style.BorderColor = clWhite
    Style.Color = 5177344
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Segoe UI Light'
    Style.Font.Style = []
    Style.TextColor = 28906
    Style.IsFontAssigned = True
    StyleDisabled.TextColor = 28906
    StyleFocused.TextColor = 28906
    StyleHot.TextColor = 28906
    Properties.Alignment.Horz = taRightJustify
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 21
    Width = 526
    AnchorX = 558
    AnchorY = 305
  end
end
