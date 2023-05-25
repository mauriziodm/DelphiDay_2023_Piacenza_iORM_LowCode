unit VM.Order.PizzaSel;

interface

uses
  System.SysUtils, System.Variants, System.Classes, VM.Order, iORM, iORM.Attributes, iORM.CommonTypes, iORM.Where.Interfaces, iORM.MVVM.ModelPresenter.Detail,
  iORM.MVVM.VMAction, iORM.MVVM.ModelPresenter.Custom, iORM.MVVM.ModelPresenter.Master, iORM.MVVM.ViewModel;

type

  TVMOrderPizzaSel = class(TVMOrder)
    procedure ioViewModelViewPairing(const Sender: TioViewModel);
  private
  public
  end;

implementation

uses
  Model.Interfaces;

{$R *.dfm}

procedure TVMOrderPizzaSel.ioViewModelViewPairing(const Sender: TioViewModel);
begin
  inherited;
  io.ShowAsSelector<IPizza>(BSMaster, acBack, VCProviderByName('VCProviderOrder'), 'embedded');
end;

end.
