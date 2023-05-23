unit View.Where.OrderHistory;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  View.BaseForList, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, iORM, iORM.Attributes, iORM.CommonTypes,
  iORM.Where.Interfaces, iORM.StdActions.Fmx, FMX.ActnList, System.Actions,
  Data.Bind.Components, Data.Bind.ObjectScope,
  iORM.LiveBindings.PrototypeBindSource.Custom,
  iORM.LiveBindings.PrototypeBindSource.Master, FMX.ListView,
  FMX.Controls.Presentation, FMX.Objects, Model.Where.Interfaces,
  Data.Bind.GenData, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt;

type

  [diSimpleViewFor(IWhereOrder)]
  TViewOrderHistory = class(TViewBaseForList)
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
  private
  public
  end;

implementation

{$R *.fmx}

end.
