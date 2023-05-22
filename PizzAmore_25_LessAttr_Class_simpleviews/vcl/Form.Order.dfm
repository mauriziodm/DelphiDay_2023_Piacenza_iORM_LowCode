object OrderForm: TOrderForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pizz'#39'Amore'
  ClientHeight = 562
  ClientWidth = 784
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 5
    Top = 57
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Order'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 5
    Top = 88
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Note'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 5
    Top = 137
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Customer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 3
    Top = 168
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 3
    Top = 199
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Phone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ButtonSelectCustomer: TSpeedButton
    Left = 392
    Top = 137
    Width = 25
    Height = 25
    Action = acShowCustomerSelector
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 209
    Top = 57
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Back'
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      784
      40)
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
      Left = 56
      Top = 7
      Width = 681
      Height = 21
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Order'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 481
    end
    object ButtonAdd: TSpeedButton
      Left = 734
      Top = 0
      Width = 50
      Height = 40
      Action = acSelectPizza
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 712
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 522
    Width = 784
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 1
    object ButtonRevert: TSpeedButton
      Left = 0
      Top = 0
      Width = 50
      Height = 40
      Action = acRevertOrDelete
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 334
      ExplicitTop = -6
    end
    object ButtonPersist: TSpeedButton
      Left = 734
      Top = 0
      Width = 50
      Height = 40
      Action = acPersist
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 8
    end
    object Label6: TLabel
      Left = 206
      Top = 9
      Width = 96
      Height = 25
      AutoSize = False
      Caption = 'Grand total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonDeleteRow: TSpeedButton
      Left = 50
      Top = 0
      Width = 79
      Height = 40
      Action = acDeleteRow
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEditGrandTotal: TDBEdit
      Left = 310
      Top = 7
      Width = 90
      Height = 25
      TabStop = False
      BorderStyle = bsNone
      DataField = 'GrandTotal'
      DataSource = SourceOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object PanelPizzas: TPanel
    Left = 434
    Top = 40
    Width = 350
    Height = 482
    Align = alRight
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 2
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 0
      Top = 0
      Width = 350
      Height = 482
      Align = alClient
      AllowDelete = False
      AllowInsert = False
      DataSource = SourcePizzas
      PanelHeight = 96
      PanelWidth = 333
      TabOrder = 0
      RowCount = 5
      SelectedColor = 13828095
      ShowFocus = False
      object DBTextName: TDBText
        Left = 99
        Top = 20
        Width = 222
        Height = 25
        DataField = 'Name'
        DataSource = SourcePizzas
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
        Width = 198
        Height = 25
        DataField = 'Price'
        DataSource = SourcePizzas
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
        DataSource = SourcePizzas
        Proportional = True
        Stretch = True
        TabOrder = 0
      end
    end
  end
  object DBEditID: TDBEdit
    Left = 92
    Top = 57
    Width = 30
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'ID'
    DataSource = SourceOrder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEditDate: TDBEdit
    Left = 128
    Top = 57
    Width = 100
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'OrderDate'
    DataSource = SourceOrder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEditNote: TDBEdit
    Left = 92
    Top = 88
    Width = 325
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'Note'
    DataSource = SourceOrder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEditCustID: TDBEdit
    Left = 92
    Top = 137
    Width = 30
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'ID'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEditCustName: TDBEdit
    Left = 128
    Top = 137
    Width = 261
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'Name'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBEditCustAddress: TDBEdit
    Left = 92
    Top = 168
    Width = 325
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'FullAddress'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBECustPhone: TDBEdit
    Left = 92
    Top = 199
    Width = 325
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'PhoneNumber'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object GridRows: TDBGrid
    Left = 5
    Top = 239
    Width = 423
    Height = 277
    BorderStyle = bsNone
    DataSource = SourceRows
    FixedColor = clInactiveBorder
    GradientEndColor = clInactiveBorder
    GradientStartColor = clInactiveBorder
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitPrice'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qty'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RowTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object DBComboBoxOrderState: TDBComboBox
    Left = 290
    Top = 54
    Width = 127
    Height = 29
    BevelInner = bvNone
    BevelOuter = bvNone
    Color = clInactiveBorder
    Ctl3D = False
    DataField = 'OrderState'
    DataSource = SourceOrder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    Sorted = True
    TabOrder = 11
  end
  object DSPizzas: TioDataSetMaster
    AsDefault = False
    TypeName = 'TPizza'
    SelectorFor = DSOrder
    Paging.CurrentPageOfFormat = '%d/%d'
    Left = 584
    Top = 176
    object DSPizzasName: TStringField
      FieldName = 'Name'
      Size = 100
    end
    object DSPizzasPrice: TCurrencyField
      FieldName = 'Price'
    end
    object DSPizzasImage: TGraphicField
      FieldName = 'Image'
      BlobType = ftGraphic
    end
  end
  object SourcePizzas: TDataSource
    AutoEdit = False
    DataSet = DSPizzas
    Left = 584
    Top = 240
  end
  object DSOrder: TioDataSetMaster
    AsDefault = True
    TypeName = 'TOrder'
    LoadType = ltFromBSReload
    TypeOfCollection = tcSingleObject
    Paging.CurrentPageOfFormat = '%d/%d'
    OnSelectionObject = DSOrderSelectionObject
    OnReceiveSelectionCloneObject = False
    OnReceiveSelectionFreeObject = False
    Left = 56
    Top = 312
    object DSOrderID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object DSOrderOrderDate: TDateField
      FieldName = 'OrderDate'
    end
    object DSOrderNote: TStringField
      FieldName = 'Note'
      Size = 250
    end
    object DSOrderGrandTotal: TCurrencyField
      FieldName = 'GrandTotal'
    end
    object DSOrderOrderState: TStringField
      FieldName = 'OrderState'
      Size = 100
    end
  end
  object SourceOrder: TDataSource
    DataSet = DSOrder
    Left = 144
    Top = 312
  end
  object DSCustomer: TioDataSetDetail
    AsDefault = False
    MasterBindSource = DSOrder
    MasterPropertyName = 'Customer'
    Left = 56
    Top = 376
    object DSCustomerID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object DSCustomerFullAddress: TStringField
      FieldName = 'FullAddress'
      Size = 100
    end
    object DSCustomerName: TStringField
      FieldName = 'Name'
      Size = 100
    end
    object DSCustomerPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 100
    end
  end
  object SourceCustomer: TDataSource
    DataSet = DSCustomer
    Left = 144
    Top = 376
  end
  object DSRows: TioDataSetDetail
    AsDefault = False
    MasterBindSource = DSOrder
    MasterPropertyName = 'Rows'
    Left = 56
    Top = 440
    object DSRowsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object DSRowsPrice: TCurrencyField
      FieldName = 'Price'
    end
    object DSRowsQty: TIntegerField
      FieldName = 'Qty'
    end
    object DSRowsRowTotal: TCurrencyField
      FieldName = 'RowTotal'
    end
  end
  object SourceRows: TDataSource
    DataSet = DSRows
    Left = 144
    Top = 440
  end
  object ActionList1: TActionList
    Left = 256
    Top = 312
    object acPersist: TioBSPersistencePersist
      Category = 'iORM-BSPersistence'
      Caption = 'Persist'
      TargetBindSource = DSOrder
    end
    object acRevertOrDelete: TioBSPersistenceRevertOrDelete
      Category = 'iORM-BSPersistence'
      Caption = 'Revert'
      CloseQueryAction = acBack
      TargetBindSource = DSOrder
    end
    object acSelectPizza: TioBSSelectCurrent
      Category = 'iORM-BS'
      Caption = 'Add'
      TargetBindSource = DSPizzas
    end
    object acDeleteRow: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Delete row'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = SourceRows
    end
    object acBack: TioBSCloseQuery
      Category = 'iORM-BS'
      Caption = 'Back'
      OnUpdateScope = usGlobal
      TargetBindSource = DSOrder
    end
    object acShowCustomerSelector: TioBSShowOrSelect
      Category = 'iORM-BS'
      Caption = '...'
      EntityTypeName = 'TCustomer'
      ParentCloseQueryAction = acBack
      ShowMode = smEntityTypeNameAsSelector
      TargetBindSource = DSCustomer
      VVMTypeAlias = 'LIST'
      ViewContextBy = vcByDefaultViewContextProvider
    end
  end
end
