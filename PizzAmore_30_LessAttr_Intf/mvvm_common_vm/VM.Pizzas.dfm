inherited VMPizzas: TVMPizzas
  inherited BSMaster: TioModelPresenterMaster
    TypeName = 'IPizza'
  end
  inherited acBack: TioVMActionBSCloseQuery
    TargetBindSource = nil
  end
  inherited acAdd: TioVMActionBSPersistenceAppend
    EntityTypeName = 'IPizza'
  end
end
