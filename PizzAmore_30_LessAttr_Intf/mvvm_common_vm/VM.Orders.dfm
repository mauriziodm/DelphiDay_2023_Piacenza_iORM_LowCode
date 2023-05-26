inherited VMOrders: TVMOrders
  inherited BSMaster: TioModelPresenterMaster
    TypeName = 'IOrder'
  end
  inherited acAdd: TioVMActionBSPersistenceAppend
    EntityTypeName = 'IOrder'
  end
  inherited BSWhere: TioModelPresenterMaster
    TypeName = 'IWhereOrder'
  end
  object acWhereShowHistory: TioVMActionBSShowOrSelect
    Name = 'acWhereShowHistory'
    ParentCloseQueryAction = acBack
    ShowMode = smBSTypeNameAsSelector
    TargetBindSource = BSWhere
    ViewContextBy = vcByDefaultViewContextProvider
    Left = 416
    Top = 176
  end
end
