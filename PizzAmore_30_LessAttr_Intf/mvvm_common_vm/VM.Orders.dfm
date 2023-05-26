inherited VMOrders: TVMOrders
  inherited BSMaster: TioModelPresenterMaster
    TypeName = 'IOrder'
  end
  inherited acAdd: TioVMActionBSPersistenceAppend
    EntityTypeName = 'IOrder'
  end
  inherited BSWhere: TioModelPresenterMaster
    TypeName = 'IWhereOrder'
    OnAfterSelectionInterface = BSWhereAfterSelectionInterface
  end
  inherited acWhereBuild: TioVMActionWhereBuild
    PersistAction = acWherePersist
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
  object acWherePersist: TioVMActionBSPersistencePersist
    Name = 'acWherePersist'
    TargetBindSource = BSWhere
    Left = 512
    Top = 48
  end
end
