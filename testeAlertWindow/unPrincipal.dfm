object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 440
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 738
    Height = 122
    BarManager = dxBarManager1
    Style = rs2013
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Office2013White'
    Contexts = <>
    TabOrder = 2
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Cadastros'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Caption = 'Lan'#231'amentos'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 1
    end
    object dxRibbon1Tab3: TdxRibbonTab
      Caption = 'Relat'#243'rios'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 2
    end
  end
  object cxButton1: TcxButton
    Left = 296
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Alerta'
    TabOrder = 5
    OnClick = cxButton1Click
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 32
    Top = 136
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 772
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 772
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 772
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockedLeft = 300
      DockedTop = 0
      FloatLeft = 772
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Clientes'
      Category = 0
      Hint = 'Clientes'
      Visible = ivAlways
      OnClick = dxBarLargeButton4Click
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Fornecedores'
      Category = 0
      Hint = 'Fornecedores'
      Visible = ivAlways
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Transportador'
      Category = 0
      Hint = 'Transportador'
      Visible = ivAlways
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Adicionar'
      Category = 0
      Hint = 'Adicionar'
      Visible = ivAlways
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'Excluir'
      Category = 0
      Hint = 'Excluir'
      Visible = ivAlways
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Caption = 'Agenda'
      Category = 0
      Hint = 'Agenda'
      Visible = ivAlways
      OnClick = dxBarLargeButton13Click
    end
  end
  object dxRibbonPopupMenu1: TdxRibbonPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 64
    Top = 136
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013White'
    Left = 312
    Top = 152
  end
  object dxAlertWindowManager1: TdxAlertWindowManager
    OptionsButtons.Buttons = <
      item
        Hint = 'Gravar'
        ImageIndex = 1
      end
      item
        Hint = 'Cancelar'
        ImageIndex = 2
      end
      item
        Hint = 'Ajuda'
        ImageIndex = 3
      end>
    OptionsButtons.Images = cxImageList1
    OptionsCaptionButtons.PopupMenu = PopupMenu1
    OptionsMessage.Caption.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Caption.Font.Color = clWindowText
    OptionsMessage.Caption.Font.Height = -13
    OptionsMessage.Caption.Font.Name = 'Tahoma'
    OptionsMessage.Caption.Font.Style = [fsBold]
    OptionsMessage.Images = cxImageList1
    OptionsMessage.Text.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Text.Font.Color = clWindowText
    OptionsMessage.Text.Font.Height = -11
    OptionsMessage.Text.Font.Name = 'Tahoma'
    OptionsMessage.Text.Font.Style = []
    OptionsNavigationPanel.Font.Charset = DEFAULT_CHARSET
    OptionsNavigationPanel.Font.Color = clWindowText
    OptionsNavigationPanel.Font.Height = -11
    OptionsNavigationPanel.Font.Name = 'Tahoma'
    OptionsNavigationPanel.Font.Style = []
    OnButtonClick = dxAlertWindowManager1ButtonClick
    Left = 656
    Top = 136
    PixelsPerInch = 96
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 8913440
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F310101046000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000001E1E1E7E3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000001E1E1E8100000000000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
          3CFF3C3C3CFF3C3C3CFF000000001E1E1E813C3C3CFF1E1E1E81000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E8100000000000000003C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E81000000003C3C3CFF3C3C3CFF3C3C3CFF2121218D101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
          39F33C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF1E1E
          1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
          3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E7E1E1E1E7E0000
          000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
          3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E811E1E1E810000
          000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D101010463939
          39F33C3C3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E81000000001E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000007B7B7BB9828282F5626262FE464646FF464646FF6262
          62FE828282F57B7B7BB900000000000000000000000000000000000000000000
          00004B4B4B69828383F5444444FF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF444444FF828383F54B4B4B690000000000000000000000004B4B
          4B69777878FB3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF777878FB4B4B4B6900000000000000008283
          83F53C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF828383F5000000007B7B7BB94444
          44FF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF444444FF7B7B7BB9828282F53C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF828282F5626262FE3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003838
          38EE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF626262FE464646FF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF303030CC000000000808
          0822383838EE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF464646FF464646FF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF282828AA0000
          0000181818663C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF464646FF626262FE3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF20202088202020883C3C3CFF383838EE0000
          00000C0C0C333C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF626262FE828282F53C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF080808220000000018181866141414550000
          00001C1C1C773C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF828282F57B7B7BB94444
          44FF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0808082200000000000000001414
          14553C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF444444FF7B7B7BB9000000008283
          83F53C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF828383F500000000000000004B4B
          4B69777878FB3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF777878FB4B4B4B6900000000000000000000
          00004B4B4B69828383F5444444FF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF444444FF828383F54B4B4B690000000000000000000000000000
          000000000000000000007B7B7BB9828282F5626262FE464646FF464646FF6262
          62FE828282F57B7B7BB900000000000000000000000000000000}
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 184
    object este11: TMenuItem
      Caption = 'Teste 1'
    end
    object este21: TMenuItem
      Caption = 'Teste 2'
    end
    object este31: TMenuItem
      Caption = 'Teste 3'
    end
  end
  object ActionManager1: TActionManager
    Left = 440
    Top = 224
    StyleName = 'Platform Default'
  end
  object dxTabbedMDIManager1: TdxTabbedMDIManager
    Active = True
    TabProperties.AllowTabDragDrop = True
    TabProperties.CloseButtonMode = cbmActiveTab
    TabProperties.CloseTabWithMiddleClick = True
    TabProperties.CustomButtons.Buttons = <>
    TabProperties.MultiLine = True
    Left = 560
    Top = 304
  end
end
