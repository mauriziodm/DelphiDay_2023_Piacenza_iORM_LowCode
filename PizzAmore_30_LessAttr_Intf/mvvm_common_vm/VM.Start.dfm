object VMStart: TVMStart
  Height = 480
  Width = 640
  object acQuit: TioVMActionBSCloseQuery
    Name = 'acQuit'
    OnExecuteAction = eaTerminateApplication
    OnUpdateScope = usGlobal
    Left = 48
    Top = 32
  end
  object acShowOrders: TioVMActionBSShowOrSelect
    Name = 'acShowOrders'
    EntityTypeName = 'IOrder'
    ParentCloseQueryAction = acQuit
    ShowMode = smEntityTypeName
    ViewContextBy = vcByDefaultViewContextProvider
    Left = 192
    Top = 32
  end
  object acShowCustomers: TioVMActionBSShowOrSelect
    Name = 'acShowCustomers'
    EntityTypeName = 'ICustomer'
    ParentCloseQueryAction = acQuit
    ShowMode = smEntityTypeName
    ViewContextBy = vcByDefaultViewContextProvider
    Left = 192
    Top = 96
  end
  object acShowPizzas: TioVMActionBSShowOrSelect
    Name = 'acShowPizzas'
    EntityTypeName = 'IPizza'
    ParentCloseQueryAction = acQuit
    ShowMode = smEntityTypeName
    ViewContextBy = vcByDefaultViewContextProvider
    Left = 192
    Top = 160
  end
end
