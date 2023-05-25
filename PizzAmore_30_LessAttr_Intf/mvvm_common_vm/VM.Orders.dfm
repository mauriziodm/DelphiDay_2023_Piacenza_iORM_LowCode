inherited VMOrders: TVMOrders
  inherited BSMaster: TioModelPresenterMaster
    TypeName = 'IOrder'
  end
  inherited acAdd: TioVMActionBSPersistenceAppend
    EntityTypeName = 'IOrder'
  end
end
