inherited ViewPizzas: TViewPizzas
  inherited PanelTop: TPanel
    inherited LabelTitle: TLabel
      Caption = 'Pizzas'
      ExplicitWidth = 47
    end
  end
  object CtrlGridPizzas: TDBCtrlGrid [2]
    Left = 0
    Top = 40
    Width = 800
    Height = 520
    Align = alClient
    DataSource = SourceMaster
    PanelHeight = 130
    PanelWidth = 783
    TabOrder = 2
    RowCount = 4
    SelectedColor = 13828095
    ShowFocus = False
    object DBTextName: TDBText
      Left = 99
      Top = 20
      Width = 259
      Height = 25
      DataField = 'Name'
      DataSource = SourceMaster
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBTextPrice: TDBText
      Left = 99
      Top = 51
      Width = 259
      Height = 25
      DataField = 'Price'
      DataSource = SourceMaster
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBImage: TDBImage
      Left = 7
      Top = 7
      Width = 80
      Height = 80
      BorderStyle = bsNone
      Color = clInactiveBorder
      DataField = 'Image'
      DataSource = SourceMaster
      Proportional = True
      Stretch = True
      TabOrder = 0
    end
  end
  inherited BSMaster: TioModelDataSet
    object BSMasterName: TStringField
      FieldName = 'Name'
      Size = 250
    end
    object BSMasterPrice: TCurrencyField
      FieldName = 'Price'
    end
    object BSMasterImage: TGraphicField
      FieldName = 'Image'
      BlobType = ftGraphic
    end
  end
end
