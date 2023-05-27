object CustomersForm: TCustomersForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pizz'#39'Amore'
  ClientHeight = 761
  ClientWidth = 384
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
  object PanelBottom: TPanel
    Left = 0
    Top = 721
    Width = 384
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 720
    ExplicitWidth = 380
    object ButtonAdd: TSpeedButton
      Left = 334
      Top = 0
      Width = 50
      Height = 40
      Align = alRight
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenuAddCustomer
      OnClick = ButtonAddClick
      ExplicitLeft = 264
    end
    object ButtonPageUp: TSpeedButton
      Left = 100
      Top = 0
      Width = 50
      Height = 40
      Action = acNextPage
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 94
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
      ExplicitLeft = -6
      ExplicitTop = 6
    end
    object ButtonPageDown: TSpeedButton
      Left = 50
      Top = 0
      Width = 50
      Height = 40
      Action = acPrevPage
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 56
      ExplicitTop = 6
    end
    object DBTextPageOf: TDBText
      Left = 150
      Top = 0
      Width = 184
      Height = 40
      Align = alClient
      Alignment = taCenter
      DataField = '%Paging.CurrentPageOf'
      DataSource = SourceCustomers
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 154
      ExplicitTop = 12
      ExplicitWidth = 176
      ExplicitHeight = 17
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = clNavy
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 380
    object ButtonSelect: TSpeedButton
      Left = 334
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
      Left = 150
      Top = 7
      Width = 80
      Height = 21
      Caption = 'Customers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GridCustomers: TDBGrid
    Left = 0
    Top = 40
    Width = 384
    Height = 602
    Align = alClient
    DataSource = SourceCustomers
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
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FullName'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
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
        FieldName = 'PhoneNumber'
        Title.Alignment = taCenter
        Title.Caption = 'Phone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object PanelWhere: TPanel
    Left = 0
    Top = 642
    Width = 384
    Height = 79
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 636
    object Label1: TLabel
      Left = 8
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
    object Label3: TLabel
      Left = 7
      Top = 37
      Width = 30
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'City'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonSearch: TSpeedButton
      Left = 334
      Top = 0
      Width = 50
      Height = 45
      Action = acWhereBuild
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ButtonClear: TSpeedButton
      Left = 334
      Top = 49
      Width = 50
      Height = 25
      Action = acWhereClear
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEditWhereID: TDBEdit
      Left = 43
      Top = 7
      Width = 40
      Height = 25
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'ID'
      DataSource = SourceWhere
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEditWhereCity: TDBEdit
      Left = 43
      Top = 38
      Width = 278
      Height = 25
      BorderStyle = bsNone
      Color = clWhite
      DataField = 'City'
      DataSource = SourceWhere
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object DSCustomers: TioDataSetMaster
    AsDefault = True
    TypeName = 'IGenericCustomer'
    VirtualFields = True
    Paging.CurrentPageOfFormat = 'Page %d of %d'
    Paging.PageSize = 50
    Paging.PagingType = ptHardPaging
    Left = 56
    Top = 112
    object DSCustomersID: TIntegerField
      FieldName = 'ID'
    end
    object DSCustomersFullName: TStringField
      FieldName = 'FullName'
      Size = 250
    end
    object DSCustomersPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 100
    end
    object DSCustomersPagingCurrentPageOf: TStringField
      Alignment = taCenter
      FieldName = '%Paging.CurrentPageOf'
      Size = 100
    end
  end
  object SourceCustomers: TDataSource
    DataSet = DSCustomers
    Left = 56
    Top = 168
  end
  object ActionList1: TActionList
    Left = 184
    Top = 112
    object acDelete: TioBSPersistenceDelete
      Category = 'iORM-BSPersistence'
      Caption = 'Delete'
      TargetBindSource = DSCustomers
    end
    object acNextPage: TioBSNextPage
      Category = 'iORM-BSPaging'
      Caption = 'Pg.Up'
      TargetBindSource = DSCustomers
    end
    object acPrevPage: TioBSPrevPage
      Category = 'iORM-BSPaging'
      Caption = 'Pg.Dn'
      TargetBindSource = DSCustomers
    end
    object acBack: TioBSCloseQuery
      Category = 'iORM-BS'
      Caption = 'Back'
      OnUpdateScope = usGlobal
      TargetBindSource = DSCustomers
    end
    object acShowOrSelect: TioBSShowOrSelect
      Category = 'iORM-BS'
      Caption = 'Select'
      ParentCloseQueryAction = acBack
      SelectCurrentAction = acSelectCurrent
      ShowMode = smBSCurrent
      TargetBindSource = DSCustomers
      ViewContextBy = vcByDefaultViewContextProvider
    end
    object acAddPrivateCustomer: TioBSPersistenceAppend
      Category = 'iORM-BSPersistence'
      Caption = 'Private customer'
      EntityTypeAlias = 'Private'
      EntityTypeName = 'IGenericCustomer'
      ShowOrSelectAction = acShowOrSelect
      TargetBindSource = DSCustomers
    end
    object acAddBusinessCustomer: TioBSPersistenceAppend
      Category = 'iORM-BSPersistence'
      Caption = 'Business customer'
      EntityTypeAlias = 'Business'
      EntityTypeName = 'IGenericCustomer'
      ShowOrSelectAction = acShowOrSelect
      TargetBindSource = DSCustomers
    end
    object acSelectCurrent: TioBSSelectCurrent
      Category = 'iORM-BS'
      Caption = 'Select'
      CloseQueryAction = acBack
      TargetBindSource = DSCustomers
    end
    object acWhereBuild: TioBSWhereBuild
      Category = 'iORM-BSWhereBuilder'
      Caption = 'Search'
      TargetBindSource = DSWhere
    end
    object acWhereClear: TioBSWhereClear
      Category = 'iORM-BSWhereBuilder'
      Caption = 'Clear'
      TargetBindSource = DSWhere
      WhereAutoExecuteOnTargetBS = True
    end
  end
  object DSWhere: TioDataSetMaster
    AsDefault = False
    TypeName = 'IGenericCustomer'
    TypeAlias = 'Private'
    LoadType = ltCreate
    TypeOfCollection = tcSingleObject
    Paging.CurrentPageOfFormat = '%d/%d'
    WhereBuilderFor = DSCustomers
    Left = 199
    Top = 673
    object DSWhereID: TIntegerField
      FieldName = 'ID'
    end
    object DSWhereCity: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object SourceWhere: TDataSource
    DataSet = DSWhere
    Left = 264
    Top = 673
  end
  object PopupMenuAddCustomer: TPopupMenu
    Left = 184
    Top = 168
    object Businesscustomer1: TMenuItem
      Action = acAddBusinessCustomer
    end
    object Privatecustomer1: TMenuItem
      Action = acAddPrivateCustomer
    end
  end
end
