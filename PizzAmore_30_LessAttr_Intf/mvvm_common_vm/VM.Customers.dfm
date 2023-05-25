inherited VMCustomers: TVMCustomers
  inherited BSMaster: TioModelPresenterMaster
    TypeName = 'ICustomer'
    VirtualFields = True
    Paging.CurrentPageOfFormat = 'Page %d of %d'
    Paging.PageSize = 50
    Paging.PagingType = ptHardPaging
  end
  inherited acAdd: TioVMActionBSPersistenceAppend
    EntityTypeName = 'ICustomer'
  end
  object acNextPage: TioVMActionBSNextPage
    Name = 'acNextPage'
    TargetBindSource = BSMaster
    Left = 384
    Top = 48
  end
  object acPrevPage: TioVMActionBSPrevPage
    Name = 'acPrevPage'
    TargetBindSource = BSMaster
    Left = 384
    Top = 112
  end
end
