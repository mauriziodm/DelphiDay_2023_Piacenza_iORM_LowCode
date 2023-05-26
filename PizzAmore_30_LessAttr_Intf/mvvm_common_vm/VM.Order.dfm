inherited VMOrder: TVMOrder
  inherited BSMaster: TioModelPresenterMaster
    TypeName = 'IOrder'
    OnSelectionInterface = MPMasterSelectionInterface
  end
  object BSCustomer: TioModelPresenterDetail
    AsDefault = False
    MasterBindSource = BSMaster
    MasterPropertyName = 'Customer'
    Left = 56
    Top = 112
  end
  object BSRows: TioModelPresenterDetail
    AsDefault = False
    MasterBindSource = BSMaster
    MasterPropertyName = 'Rows'
    Left = 56
    Top = 176
  end
  object acDeleteRow: TioVMAction
    Name = 'acDeleteRow'
    OnExecute = acDeleteRowExecute
    Left = 328
    Top = 48
  end
  object acShowCustomerSelector: TioVMActionBSShowOrSelect
    Name = 'acShowCustomerSelector'
    EntityTypeName = 'ICustomer'
    ParentCloseQueryAction = acBack
    ShowMode = smEntityTypeNameAsSelector
    TargetBindSource = BSCustomer
    ViewContextBy = vcByDefaultViewContextProvider
    Left = 328
    Top = 112
  end
  object acShowPizzaSelector: TioVMActionBSShowOrSelect
    Name = 'acShowPizzaSelector'
    EntityTypeName = 'IPizza'
    ParentCloseQueryAction = acBack
    ShowMode = smEntityTypeNameAsSelector
    TargetBindSource = BSMaster
    ViewContextBy = vcByDefaultViewContextProvider
    Left = 328
    Top = 176
  end
end
