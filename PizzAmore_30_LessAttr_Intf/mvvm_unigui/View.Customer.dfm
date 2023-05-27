inherited ViewCustomer: TViewCustomer
  inherited PanelTop: TUniPanel
    inherited LabelTitle: TUniLabel
      Caption = 'Customer'
    end
  end
  object UniLabel1: TUniLabel [2]
    Left = 10
    Top = 60
    Width = 100
    Height = 21
    Hint = ''
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'ID'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -16
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object DBEditID: TUniDBEdit [3]
    Left = 125
    Top = 60
    Width = 55
    Height = 25
    Hint = ''
    DataField = 'ID'
    DataSource = BSSource
    ParentFont = False
    Font.Height = -16
    TabOrder = 3
    BorderStyle = ubsNone
  end
  object UniLabel2: TUniLabel [4]
    Left = 10
    Top = 100
    Width = 100
    Height = 21
    Hint = ''
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Name'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -16
    Font.Style = [fsBold]
    TabOrder = 4
  end
  object DBEditName: TUniDBEdit [5]
    Left = 125
    Top = 100
    Width = 636
    Height = 25
    Hint = ''
    DataField = 'Name'
    DataSource = BSSource
    ParentFont = False
    Font.Height = -16
    TabOrder = 5
    BorderStyle = ubsNone
  end
  object UniLabel3: TUniLabel [6]
    Left = 10
    Top = 140
    Width = 100
    Height = 21
    Hint = ''
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Phone'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -16
    Font.Style = [fsBold]
    TabOrder = 6
  end
  object DBEditPhone: TUniDBEdit [7]
    Left = 125
    Top = 140
    Width = 636
    Height = 25
    Hint = ''
    DataField = 'PhoneNumber'
    DataSource = BSSource
    ParentFont = False
    Font.Height = -16
    TabOrder = 7
    BorderStyle = ubsNone
  end
  object UniLabel4: TUniLabel [8]
    Left = 10
    Top = 180
    Width = 100
    Height = 21
    Hint = ''
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'City'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -16
    Font.Style = [fsBold]
    TabOrder = 8
  end
  object DBEditCity: TUniDBEdit [9]
    Left = 125
    Top = 180
    Width = 636
    Height = 25
    Hint = ''
    DataField = 'City'
    DataSource = BSSource
    ParentFont = False
    Font.Height = -16
    TabOrder = 9
    BorderStyle = ubsNone
  end
  object UniLabel5: TUniLabel [10]
    Left = 10
    Top = 220
    Width = 100
    Height = 21
    Hint = ''
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Address'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -16
    Font.Style = [fsBold]
    TabOrder = 10
  end
  object DBEditAddress: TUniDBEdit [11]
    Left = 125
    Top = 220
    Width = 636
    Height = 25
    Hint = ''
    DataField = 'Address'
    DataSource = BSSource
    ParentFont = False
    Font.Height = -16
    TabOrder = 11
    BorderStyle = ubsNone
  end
  inherited BSMaster: TioModelDataSet
    object BSMasterID: TIntegerField
      FieldName = 'ID'
    end
    object BSMasterName: TStringField
      FieldName = 'Name'
      Size = 100
    end
    object BSMasterAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object BSMasterCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object BSMasterPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 100
    end
  end
end
