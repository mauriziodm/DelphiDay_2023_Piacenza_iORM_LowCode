inherited VMPizzas: TVMPizzas
  inherited BSMaster: TioModelPresenterMaster
    TypeName = 'IPizza'
  end
  inherited acBack: TioVMActionBSCloseQuery [1]
    TargetBindSource = nil
  end
  inherited acShowOrSelect: TioVMActionBSShowOrSelect [2]
  end
  inherited acSelectCurrent: TioVMActionBSSelectCurrent [3]
  end
  inherited BSWhere: TioModelPresenterMaster [4]
    TypeName = 'IWherePizza'
  end
  inherited acWhereBuild: TioVMActionWhereBuild [5]
  end
  inherited acWhereClear: TioVMActionWhereClear [6]
  end
  inherited acAdd: TioVMActionBSPersistenceAppend [7]
    EntityTypeName = 'IPizza'
  end
  inherited acDelete: TioVMActionBSPersistenceDelete [8]
  end
end
