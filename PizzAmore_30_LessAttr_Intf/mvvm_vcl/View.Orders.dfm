inherited ViewOrders: TViewOrders
  inherited PanelTop: TPanel
    inherited LabelTitle: TLabel
      Caption = 'Orders'
      ExplicitWidth = 50
    end
  end
  object GridOrders: TDBGrid [2]
    Left = 0
    Top = 40
    Width = 800
    Height = 428
    Align = alClient
    DataSource = SourceMaster
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OrderDate'
        Title.Alignment = taCenter
        Title.Caption = 'Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer.Name'
        Title.Alignment = taCenter
        Title.Caption = 'Customer'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GrandTotal'
        Title.Caption = 'Grand total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end>
  end
  inherited PanelWhere: TPanel
    Top = 468
    Height = 92
    ExplicitTop = 474
    ExplicitHeight = 92
    object ButtonHistory: TSpeedButton [1]
      Left = 750
      Top = 44
      Width = 50
      Height = 25
      Action = acWhereShowHistory
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel [2]
      Left = 9
      Top = 7
      Width = 17
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel [3]
      Left = 105
      Top = 7
      Width = 54
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel [4]
      Left = -5
      Top = 41
      Width = 51
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Note'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape [5]
      Left = 528
      Top = 6
      Width = 1
      Height = 57
      Anchors = [akTop, akRight]
      Pen.Color = clGray
    end
    object Label4: TLabel [6]
      Left = 551
      Top = 41
      Width = 63
      Height = 25
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'To date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel [7]
      Left = 535
      Top = 7
      Width = 79
      Height = 25
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'From date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited ButtonClear: TSpeedButton
      Top = 68
      ExplicitTop = 68
    end
    object DBEditWhereID: TDBEdit
      Left = 54
      Top = 7
      Width = 40
      Height = 25
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'OrderID'
      DataSource = SourceWhere
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBComboBoxWhereOrderState: TDBComboBox
      Left = 167
      Top = 4
      Width = 105
      Height = 29
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clInactiveBorder
      Ctl3D = False
      DataField = 'OrderState'
      DataSource = SourceWhere
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      Sorted = True
      TabOrder = 1
    end
    object DBEditWhereNote: TDBEdit
      Left = 54
      Top = 41
      Width = 468
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'Note'
      DataSource = SourceWhere
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEditWhereFromDate: TDBEdit
      Left = 623
      Top = 6
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'FromDate'
      DataSource = SourceWhere
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEditWhereToDate: TDBEdit
      Left = 623
      Top = 41
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'ToDate'
      DataSource = SourceWhere
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited ActionList1: TActionList
    object acWhereShowHistory: TioViewAction
      Category = 'iORM-MVVM'
      Caption = 'History'
      Enabled = True
      Visible = True
      VMActionName = 'acWhereShowHistory'
    end
  end
  inherited BSMaster: TioModelDataSet
    object BSMasterID: TIntegerField
      FieldName = 'ID'
    end
    object BSMasterOrderDate: TDateTimeField
      FieldName = 'OrderDate'
    end
    object BSMasterNote: TStringField
      FieldName = 'Note'
      Size = 250
    end
    object BSMasterCustomerName: TStringField
      FieldName = 'Customer.Name'
      Size = 250
    end
    object BSMasterGrandTotal: TCurrencyField
      FieldName = 'GrandTotal'
    end
  end
  inherited BSWhere: TioModelDataSet
    object BSWhereOrderID: TIntegerField
      FieldName = 'OrderID'
    end
    object BSWhereOrderState: TStringField
      FieldName = 'OrderState'
      Size = 100
    end
    object BSWhereNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object BSWhereFromDate: TDateField
      FieldName = 'FromDate'
    end
    object BSWhereToDate: TDateField
      FieldName = 'ToDate'
    end
  end
end
