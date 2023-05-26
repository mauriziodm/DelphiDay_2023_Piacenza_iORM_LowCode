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
    Left = 160
    Top = 304
  end
  object acBack: TioVMActionBSCloseQuery
    Name = 'acBack'
    OnUpdateScope = usGlobal
    TargetBindSource = BSMaster
    Left = 160
    Top = 48
  end
  object acShowOrSelect: TioVMActionBSShowOrSelect
    Name = 'acShowOrSelect'
    ParentCloseQueryAction = acBack
    SelectCurrentAction = acSelectCurrent
    ShowMode = smBSCurrent
    TargetBindSource = BSMaster
    ViewContextBy = vcByDefaultViewContextProvider
    Left = 160
    Top = 112
  end
  object acAdd: TioVMActionBSPersistenceAppend
    Name = 'acAdd'
    ShowOrSelectAction = acShowOrSelect
    TargetBindSource = BSMaster
    Left = 160
    Top = 240
  end
  object acSelectCurrent: TioVMActionBSSelectCurrent
    Name = 'acSelectCurrent'
    CloseQueryAction = acBack
    TargetBindSource = BSMaster
    Left = 160
    Top = 176
  end
  object BSWhere: TioModelPresenterMaster
    AsDefault = False
    LoadType = ltCreate
    TypeOfCollection = tcSingleObject
    Paging.CurrentPageOfFormat = '%d/%d'
    WhereBuilderFor = BSMaster
    Left = 320
    Top = 48
  end
  object acWhereBuild: TioVMActionWhereBuild
    Name = 'acWhereBuild'
    TargetBindSource = BSWhere
    Left = 416
    Top = 48
  end
  object acWhereClear: TioVMActionWhereClear
    Name = 'acWhereClear'
    TargetBindSource = BSWhere
    WhereAutoExecuteOnTargetBS = True
    Left = 416
    Top = 112
  end
end
