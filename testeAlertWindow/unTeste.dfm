object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de Exemplo'
  ClientHeight = 458
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 762
    Height = 458
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 136
    ExplicitTop = 128
    ExplicitWidth = 289
    ExplicitHeight = 193
    ClientRectBottom = 456
    ClientRectLeft = 2
    ClientRectRight = 760
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      ExplicitWidth = 285
      ExplicitHeight = 163
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 758
        Height = 428
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitWidth = 285
      ExplicitHeight = 163
      inline Frame11: TFrame1
        Left = 0
        Top = 0
        Width = 758
        Height = 428
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 176
        ExplicitTop = 53
      end
    end
  end
end
