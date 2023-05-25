unit VM.Customers;

interface

uses
  System.SysUtils, System.Variants, System.Classes, VM.BaseForList, iORM, iORM.Attributes, iORM.CommonTypes, iORM.Where.Interfaces, iORM.MVVM.VMAction,
  iORM.MVVM.ModelPresenter.Custom, iORM.MVVM.ModelPresenter.Master, Model.Interfaces,
  iORM.MVVM.Interfaces;

type

  [diViewModelFor(ICustomer)]
  TVMCustomers = class(TVMBaseForList)
    acNextPage: TioVMActionBSNextPage;
    acPrevPage: TioVMActionBSPrevPage;
  private
  public
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
