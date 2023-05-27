object OrdersForm: TOrdersForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pizz'#39'Amore'
  ClientHeight = 561
  ClientWidth = 531
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 527
    object ButtonSelect: TSpeedButton
      Left = 481
      Top = 0
      Width = 50
      Height = 40
      Action = acShowOrSelect
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 334
      ExplicitTop = -6
    end
    object ButtonBack: TSpeedButton
      Left = 0
      Top = 0
      Width = 50
      Height = 40
      Action = acBack
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelTitle: TLabel
      Left = 190
      Top = 7
      Width = 50
      Height = 21
      Caption = 'Orders'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 521
    Width = 531
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 520
    ExplicitWidth = 527
    object ButtonAdd: TSpeedButton
      Left = 481
      Top = 0
      Width = 50
      Height = 40
      Action = acAdd
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 264
    end
    object ButtonDelete: TSpeedButton
      Left = 0
      Top = 0
      Width = 50
      Height = 40
      Action = acDelete
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 8
    end
  end
  object GridCustomers: TDBGrid
    Left = 0
    Top = 40
    Width = 531
    Height = 389
    Align = alClient
    DataSource = SourceOrders
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OrderDate'
        Title.Alignment = taCenter
        Title.Caption = 'Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer.FullName'
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OrderState'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end>
  end
  object PanelWhere: TPanel
    Left = 0
    Top = 429
    Width = 531
    Height = 92
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 428
    ExplicitWidth = 527
    DesignSize = (
      531
      92)
    object Label1: TLabel
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
    object Label2: TLabel
      Left = 287
      Top = 7
      Width = 79
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
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
    object ButtonSearch: TSpeedButton
      Left = 477
      Top = 0
      Width = 50
      Height = 45
      Action = acWhereBuild
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 481
    end
    object ButtonClear: TSpeedButton
      Left = 477
      Top = 68
      Width = 50
      Height = 25
      Action = acWhereClear
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 481
    end
    object Label4: TLabel
      Left = 303
      Top = 41
      Width = 63
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
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
    object Shape1: TShape
      Left = 280
      Top = 6
      Width = 1
      Height = 57
      Pen.Color = clGray
    end
    object ButtonHistory: TSpeedButton
      Left = 477
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
      ExplicitLeft = 481
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
    object DBEditWhereFromDate: TDBEdit
      Left = 375
      Top = 6
      Width = 100
      Height = 25
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
      Left = 375
      Top = 41
      Width = 100
      Height = 25
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
      Width = 218
      Height = 25
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
  end
  object DSOrders: TioDataSetMaster
    AsDefault = True
    TypeName = 'IOrder'
    VirtualFields = True
    Paging.CurrentPageOfFormat = 'Page %d of %d'
    Paging.PageSize = 10
    Left = 56
    Top = 112
    object DSOrdersID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object DSOrdersOrderDate: TDateField
      Alignment = taCenter
      FieldName = 'OrderDate'
    end
    object DSOrdersCustomerName: TStringField
      FieldName = 'Customer.FullName'
      Size = 100
    end
    object DSOrdersGrandTotal: TCurrencyField
      FieldName = 'GrandTotal'
    end
    object DSOrdersOrderState: TStringField
      FieldName = 'OrderState'
      Size = 100
    end
  end
  object SourceOrders: TDataSource
    DataSet = DSOrders
    Left = 56
    Top = 168
  end
  object DSWhere: TioDataSetMaster
    AsDefault = False
    TypeName = 'IWhereOrder'
    LoadType = ltCreate
    TypeOfCollection = tcSingleObject
    Paging.CurrentPageOfFormat = '%d/%d'
    WhereBuilderFor = DSOrders
    OnReceiveSelectionFreeObject = False
    Left = 223
    Top = 512
    object DSWhereOrderID: TIntegerField
      FieldName = 'OrderID'
    end
    object DSWhereOrderState: TStringField
      FieldName = 'OrderState'
      Size = 100
    end
    object DSWhereNote: TStringField
      FieldName = 'Note'
      Size = 100
    end
    object DSWhereFromDate: TDateField
      FieldName = 'FromDate'
    end
    object DSWhereToDate: TDateField
      FieldName = 'ToDate'
    end
  end
  object SourceWhere: TDataSource
    DataSet = DSWhere
    Left = 288
    Top = 512
  end
  object ActionList1: TActionList
    Left = 184
    Top = 112
    object acDelete: TioBSPersistenceDelete
      Category = 'iORM-BSPersistence'
      Caption = 'Delete'
      TargetBindSource = DSOrders
    end
    object acBack: TioBSCloseQuery
      Category = 'iORM-BS'
      Caption = 'Back'
      OnUpdateScope = usGlobal
      TargetBindSource = DSOrders
    end
    object acShowOrSelect: TioBSShowOrSelect
      Category = 'iORM-BS'
      Caption = 'Select'
      ParentCloseQueryAction = acBack
      ShowMode = smBSCurrent
      TargetBindSource = DSOrders
      ViewContextBy = vcByDefaultViewContextProvider
    end
    object acAdd: TioBSPersistenceAppend
      Category = 'iORM-BSPersistence'
      Caption = 'Add'
      EntityTypeName = 'IOrder'
      ShowOrSelectAction = acShowOrSelect
      TargetBindSource = DSOrders
    end
    object acWhereBuild: TioBSWhereBuild
      Category = 'iORM-BSWhereBuilder'
      Caption = 'Search'
      PersistAction = acWherePersist
      TargetBindSource = DSWhere
    end
    object acWhereClear: TioBSWhereClear
      Category = 'iORM-BSWhereBuilder'
      Caption = 'Clear'
      TargetBindSource = DSWhere
      WhereAutoExecuteOnTargetBS = True
    end
    object acWherePersist: TioBSPersistencePersist
      Category = 'iORM-BSPersistence'
      Caption = 'Persist'
      TargetBindSource = DSWhere
    end
    object acWhereShowHistory: TioBSShowOrSelect
      Category = 'iORM-BS'
      Caption = 'History'
      ParentCloseQueryAction = acBack
      ShowMode = smBSTypeNameAsSelector
      TargetBindSource = DSWhere
      ViewContextBy = vcByDefaultViewContextProvider
    end
  end
end
