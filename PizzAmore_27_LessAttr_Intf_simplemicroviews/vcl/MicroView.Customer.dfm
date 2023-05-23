object MicroViewCustomer: TMicroViewCustomer
  Left = 0
  Top = 0
  Width = 430
  Height = 100
  Color = 16056308
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  DesignSize = (
    430
    100)
  object Label3: TLabel
    Left = 5
    Top = 6
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Customer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 28416
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 3
    Top = 37
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 28416
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 3
    Top = 68
    Width = 75
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Phone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 28416
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ButtonSelectCustomer: TSpeedButton
    Left = 395
    Top = 6
    Width = 25
    Height = 25
    Action = acSelect
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ButtonViewCustomer: TSpeedButton
    Left = 347
    Top = 6
    Width = 42
    Height = 25
    Action = acShow
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object DBEditCustID: TDBEdit
    Left = 87
    Top = 6
    Width = 30
    Height = 25
    TabStop = False
    BorderStyle = bsNone
    DataField = 'ID'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEditCustName: TDBEdit
    Left = 123
    Top = 6
    Width = 217
    Height = 25
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    BorderStyle = bsNone
    DataField = 'FullName'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEditCustAddress: TDBEdit
    Left = 87
    Top = 37
    Width = 325
    Height = 25
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    BorderStyle = bsNone
    DataField = 'FullAddress'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBECustPhone: TDBEdit
    Left = 87
    Top = 68
    Width = 325
    Height = 25
    TabStop = False
    Anchors = [akLeft, akTop, akRight]
    BorderStyle = bsNone
    DataField = 'PhoneNumber'
    DataSource = SourceCustomer
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object SourceCustomer: TDataSource
    DataSet = DSCustomer
    Left = 366
    Top = 48
  end
  object ActionListCustMView: TActionList
    Left = 276
    object acShow: TioBSShowOrSelect
      Category = 'iORM-BS'
      Caption = 'Show'
      ShowMode = smBSCurrent
      TargetBindSource = DSCustomer
      ViewContextBy = vcByDefaultViewContextProvider
    end
    object acSelect: TioBSShowOrSelect
      Category = 'iORM-BS'
      Caption = '...'
      EntityTypeName = 'IGenericCustomer'
      ShowMode = smEntityTypeNameAsSelector
      TargetBindSource = DSCustomer
      ViewContextBy = vcByDefaultViewContextProvider
    end
  end
  object DSCustomer: TioDataSetDetail
    AsDefault = True
    Left = 272
    Top = 48
    object DSCustomerID: TIntegerField
      FieldName = 'ID'
    end
    object DSCustomerFullName: TStringField
      FieldName = 'FullName'
      Size = 250
    end
    object DSCustomerFullAddress: TStringField
      FieldName = 'FullAddress'
      Size = 250
    end
    object DSCustomerPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 250
    end
  end
end
