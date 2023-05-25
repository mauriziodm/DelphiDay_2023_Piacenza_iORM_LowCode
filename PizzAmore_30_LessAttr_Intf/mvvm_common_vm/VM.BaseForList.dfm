object VMBaseForList: TVMBaseForList
  OnViewPairing = ioViewModelViewPairing
  Height = 480
  Width = 640
  object BSMaster: TioModelPresenterMaster
    AsDefault = True
    Paging.CurrentPageOfFormat = '%d/%d'
    OnReceiveSelectionCloneObject = False
    OnReceiveSelectionFreeObject = False
    Left = 56
    Top = 48
  end
  object acDelete: TioVMActionBSPersistenceDelete
    Name = 'acDelete'
    TargetBindSource = BSMaster
    Left = 192
    Top = 304
  end
  object acBack: TioVMActionBSCloseQuery
    Name = 'acBack'
    OnUpdateScope = usGlobal
    TargetBindSource = BSMaster
    Left = 192
    Top = 48
  end
  object acShowOrSelect: TioVMActionBSShowOrSelect
    Name = 'acShowOrSelect'
    ParentCloseQueryAction = acBack
    SelectCurrentAction = acSelectCurrent
    ShowMode = smBSCurrent
    TargetBindSource = BSMaster
    ViewContextBy = vcByDefaultViewContextProvider
    Left = 192
    Top = 112
  end
  object acAdd: TioVMActionBSPersistenceAppend
    Name = 'acAdd'
    ShowOrSelectAction = acShowOrSelect
    TargetBindSource = BSMaster
    Left = 192
    Top = 240
  end
  object acSelectCurrent: TioVMActionBSSelectCurrent
    Name = 'acSelectCurrent'
    CloseQueryAction = acBack
    TargetBindSource = BSMaster
    Left = 192
    Top = 176
  end
end
