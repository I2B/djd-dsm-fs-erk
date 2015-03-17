object frmNFCPreVenda: TfrmNFCPreVenda
  Left = 0
  Top = 0
  Caption = 'Pr'#233' Venda'
  ClientHeight = 515
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 689
    Height = 515
    Align = alClient
    TabOrder = 0
    object edtProduto: TcxDBTextEdit
      Left = 22
      Top = 46
      DataBinding.DataField = 'idProduto'
      DataBinding.DataSource = dtsItem
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnKeyPress = edtProdutoKeyPress
      Width = 121
    end
    object grdItem: TcxGrid
      Left = 22
      Top = 148
      Width = 643
      Height = 200
      TabOrder = 8
      object grdItemDBtable: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dtsItem
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = grdItemDBtablevalordesconto
          end
          item
            Kind = skSum
            Column = grdItemDBtablevalortotal
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object grdItemDBtabledescricao: TcxGridDBColumn
          DataBinding.FieldName = 'descricao'
          Width = 220
        end
        object grdItemDBtablequantidade: TcxGridDBColumn
          DataBinding.FieldName = 'quantidade'
          HeaderAlignmentHorz = taRightJustify
          Width = 80
        end
        object grdItemDBtablevalorunitario: TcxGridDBColumn
          DataBinding.FieldName = 'valorunitario'
          HeaderAlignmentHorz = taRightJustify
          Width = 80
        end
        object grdItemDBtablevalordesconto: TcxGridDBColumn
          DataBinding.FieldName = 'valordesconto'
          HeaderAlignmentHorz = taRightJustify
          Width = 80
        end
        object grdItemDBtablevalortotal: TcxGridDBColumn
          DataBinding.FieldName = 'valortotal'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 120
        end
        object grdItemDBtableCancelar: TcxGridDBColumn
          Caption = 'Cancelar'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = grdItemDBtableCancelarPropertiesButtonClick
          HeaderAlignmentHorz = taRightJustify
          Width = 50
        end
      end
      object grdItemLevel1: TcxGridLevel
        GridView = grdItemDBtable
      end
    end
    object edtQuantidade: TcxDBCurrencyEdit
      Left = 22
      Top = 91
      DataBinding.DataSource = dtsItem
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtValor: TcxDBCurrencyEdit
      Left = 149
      Top = 91
      DataBinding.DataSource = dtsItem
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object edtDescricao: TcxDBTextEdit
      Left = 149
      Top = 46
      TabStop = False
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = dtsItem
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 375
    end
    object edtDesconto: TcxDBCurrencyEdit
      Left = 276
      Top = 91
      DataBinding.DataSource = dtsItem
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object edtValorDesconto: TcxDBCurrencyEdit
      Left = 403
      Top = 91
      DataBinding.DataSource = dtsItem
      Properties.AssignedValues.MinValue = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object edtTotal: TcxDBCurrencyEdit
      Left = 530
      Top = 91
      TabStop = False
      DataBinding.DataSource = dtsItem
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxCheckBox1: TcxCheckBox
      Left = 530
      Top = 46
      Caption = 'Reservar Estoque'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Produto'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Totais'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Cliente'
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'C'#243'digo [F2]'
      CaptionOptions.Layout = clTop
      Control = edtProduto
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Itens'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Layout = clTop
      Control = grdItem
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahClient
      CaptionOptions.Text = 'Quantidade'
      CaptionOptions.Layout = clTop
      Control = edtQuantidade
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Pre'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtValor
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group5
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDescricao
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group5
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Desconto %'
      CaptionOptions.Layout = clTop
      Control = edtDesconto
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Desconto'
      CaptionOptions.Layout = clTop
      Control = edtValorDesconto
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Total'
      CaptionOptions.Layout = clTop
      Control = edtTotal
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cxCheckBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object tblItem: TFDMemTable
    OnCalcFields = tblItemCalcFields
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 544
    Top = 408
    object tblItemidProduto: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'idProduto'
    end
    object tblItemdescricao: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'descricao'
      Size = 100
    end
    object tblItemquantidade: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'quantidade'
      DisplayFormat = '#.###,##0.00'
    end
    object tblItemvalorunitario: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valorunitario'
      DisplayFormat = '#.###,##0.00'
      currency = True
    end
    object tblItemtaxadesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'taxadesconto'
      DisplayFormat = '#.###,##0.00'
    end
    object tblItemvalordesconto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'valordesconto'
      DisplayFormat = '#.###,##0.00'
      currency = True
    end
    object tblItemvalortotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'valortotal'
      DisplayFormat = '#.###,##0.00'
      currency = True
      Calculated = True
    end
    object tblItemTotal: TAggregateField
      FieldName = 'Total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valortotal)'
    end
    object tblItemDesconto: TAggregateField
      FieldName = 'Desconto'
      currency = True
      DisplayName = ''
      Expression = 'sum(valordescontol)'
    end
  end
  object dtsItem: TDataSource
    DataSet = tblItem
    Left = 504
    Top = 408
  end
end
