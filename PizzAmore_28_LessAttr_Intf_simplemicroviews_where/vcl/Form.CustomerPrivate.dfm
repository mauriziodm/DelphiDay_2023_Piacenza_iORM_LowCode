object PrivateCustomerForm: TPrivateCustomerForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pizz'#39'Amore'
  ClientHeight = 401
  ClientWidth = 584
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  TextHeight = 15
  object Label1: TLabel
    Left = 10
    Top = 61
    Width = 100
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 125
    Width = 100
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'First name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 228
    Width = 100
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
  object Label4: TLabel
    Left = 10
    Top = 267
    Width = 100
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'City'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 306
    Width = 100
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
  object Label6: TLabel
    Left = 8
    Top = 164
    Width = 100
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Last name'
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
    Width = 584
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 580
    DesignSize = (
      584
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
      Width = 465
      Height = 21
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Private  customer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 481
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 361
    Width = 584
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenu
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 360
    ExplicitWidth = 580
    object ButtonRevert: TSpeedButton
      Left = 0
      Top = 0
      Width = 50
      Height = 40
      Action = acRevert
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
      Left = 534
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
      ExplicitLeft = 334
      ExplicitTop = -6
    end
  end
  object DBEditID: TDBEdit
    Left = 122
    Top = 61
    Width = 55
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
    TabOrder = 2
  end
  object DBEditFirstName: TDBEdit
    Left = 122
    Top = 125
    Width = 447
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'FirstName'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEditPhone: TDBEdit
    Left = 122
    Top = 228
    Width = 447
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEditCity: TDBEdit
    Left = 122
    Top = 267
    Width = 447
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'City'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEditAddress: TDBEdit
    Left = 120
    Top = 306
    Width = 449
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'Address'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBEditLastName: TDBEdit
    Left = 120
    Top = 164
    Width = 447
    Height = 25
    BorderStyle = bsNone
    Color = clInactiveBorder
    DataField = 'LastName'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DSCustomer: TioDataSetMaster
    AsDefault = True
    TypeName = 'TPrivateCustomer'
    LoadType = ltFromBSReload
    TypeOfCollection = tcSingleObject
    VirtualFields = True
    Paging.CurrentPageOfFormat = '%d/%d'
    Paging.PageSize = 10
    Left = 320
    Top = 48
    object DSCustomerID: TIntegerField
      FieldName = 'ID'
    end
    object DSCustomerName: TStringField
      FieldName = 'FirstName'
      Size = 100
    end
    object DSCustomerLastName: TStringField
      FieldName = 'LastName'
      Size = 250
    end
    object DSCustomerCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object DSCustomerAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
  end
  object SourceCustomer: TDataSource
    DataSet = DSCustomer
    Left = 320
    Top = 104
  end
  object ActionList1: TActionList
    Left = 416
    Top = 48
    object acPersist: TioBSPersistencePersist
      Category = 'iORM-BSPersistence'
      Caption = 'Persist'
      TargetBindSource = DSCustomer
    end
    object acRevert: TioBSPersistenceRevertOrDelete
      Category = 'iORM-BSPersistence'
      Caption = 'Revert'
      CloseQueryAction = acBack
      TargetBindSource = DSCustomer
    end
    object acBack: TioBSCloseQuery
      Category = 'iORM-BS'
      Caption = 'Back'
      OnUpdateScope = usGlobal
      TargetBindSource = DSCustomer
    end
  end
end
