unit VM.Orders;

interface

uses
  System.SysUtils, System.Variants, System.Classes, VM.BaseForList, iORM, iORM.Attributes, iORM.CommonTypes, iORM.Where.Interfaces, iORM.MVVM.VMAction,
  iORM.MVVM.ModelPresenter.Custom, iORM.MVVM.ModelPresenter.Master, Model.Interfaces,
  iORM.MVVM.Interfaces;

type

  [diViewModelFor(IOrder)]
  TVMOrders = class(TVMBaseForList)
    acWhereShowHistory: TioVMActionBSShowOrSelect;
  private
  public
  end;

implementation

{$R *.dfm}

end.
