object frmF2: TfrmF2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Busca de Dados'
  ClientHeight = 404
  ClientWidth = 860
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = 5177344
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    DesignSize = (
      860
      57)
    object Label1: TLabel
      Left = 104
      Top = 16
      Width = 30
      Height = 15
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -12
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object btnVoltar: TcxButton
      Left = 752
      Top = 10
      Width = 100
      Height = 29
      Anchors = [akTop, akRight]
      Caption = 'Voltar [Esc]'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000707071D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001E1E1E81292929B00707071D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000606061A2D2D2DBF3C3C3CFF1A1A1A7000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000181818663C3C3CFF2B2B2BB700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000707071F3C3C3CFF373737EA00000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
        000000000000000000000707071F3C3C3CFF373737EA00000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        00000000000000000000181818663C3C3CFF2B2B2BB700000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF343434DF0C0C0C3300000000000000000000
        0000000000000C0C0C332D2D2DBF3C3C3CFF1A1A1A7000000000000000000000
        00003C3C3CFF3C3C3CFF333333D73C3C3CFF2D2D2DBF181818660707071F0707
        071F181818662D2D2DBF3C3C3CFF292929B00707071D00000000000000000000
        00003C3C3CFF1E1E1E7E0D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF292929B00D0D0D390000000000000000000000000000
        00001E1E1E7E00000000000000000707071D1A1A1A702B2B2BB7373737EA3737
        37EA2B2B2BB71A1A1A700707071D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
    end
  end
  object cxGrid: TcxGrid
    Left = 0
    Top = 57
    Width = 860
    Height = 347
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 264
    ExplicitTop = 104
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGridDBTableView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Nenhum registro para ser exibido>'
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
    end
    object cxGridLevel: TcxGridLevel
      GridView = cxGridDBTableView
    end
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 168
  end
  object ds: TDataSource
    AutoEdit = False
    Left = 248
    Top = 168
  end
end
