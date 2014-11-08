object FramePai: TFramePai
  Left = 0
  Top = 0
  Width = 580
  Height = 308
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  ParentBackground = False
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  object dxLayoutControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 580
    Height = 308
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    object dxLayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    Left = 288
    Top = 192
  end
end
