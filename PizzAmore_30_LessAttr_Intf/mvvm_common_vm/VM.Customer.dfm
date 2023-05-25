inherited VMCustomer: TVMCustomer
  inherited BSMaster: TioModelPresenterMaster
    TypeName = 'ICustomer'
  end
  inherited acRevert: TioVMActionBSPersistenceRevertOrDelete
    CloseQueryAction = nil
  end
end
