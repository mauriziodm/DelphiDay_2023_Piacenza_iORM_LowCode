inherited VMPizzas: TVMPizzas
  inherited acDelete: TioVMActionBSPersistenceDelete [0]
    TargetBindSource = nil
  end
  inherited acBack: TioVMActionBSCloseQuery [1]
    TargetBindSource = nil
  end
  inherited acAdd: TioVMActionBSPersistenceAppend [2]
    EntityTypeName = 'IPizza'
    ShowOrSelectAction = nil
    TargetBindSource = nil
  end
  inherited acSelectCurrent: TioVMActionBSSelectCurrent [3]
  end
  inherited BSMaster: TioModelPresenterMaster [4]
    TypeName = 'IPizza'
  end
  inherited acShowOrSelect: TioVMActionBSShowOrSelect [5]
  end
end
