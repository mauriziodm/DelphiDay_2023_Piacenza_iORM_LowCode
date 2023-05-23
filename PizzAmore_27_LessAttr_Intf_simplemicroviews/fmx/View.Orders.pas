unit View.Orders;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, View.BaseForList, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, iORM, iORM.Attributes, iORM.CommonTypes, iORM.Where.Interfaces, Data.Bind.Components, Data.Bind.ObjectScope,
  iORM.LiveBindings.PrototypeBindSource.Custom, iORM.LiveBindings.PrototypeBindSource.Master, Fmx.Bind.Navigator, System.Actions, FMX.ActnList, FMX.ListView,
  FMX.Controls.Presentation, FMX.Objects, Data.Bind.GenData, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  iORM.StdActions.Fmx, Model.Interfaces, FMX.DateTimeCtrls, FMX.Edit,
  FMX.ListBox;

type

  [diSimpleViewFor(IOrder)]
  TViewOrders = class(TViewBaseForList)
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    Label2: TLabel;
    ComboBoxWhereState: TComboBox;
    Label1: TLabel;
    EditWhereNote: TEdit;
    Line1: TLine;
    Label3: TLabel;
    Label4: TLabel;
    DateEditWhereFromDate: TDateEdit;
    DateEditToDate: TDateEdit;
    ButtonWhereHistory: TSpeedButton;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    acWherePersist: TioBSPersistencePersist;
    acWhereShowHistory: TioBSShowOrSelect;
  private
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.fmx}

{ TViewOrders }

constructor TViewOrders.Create(AOwner: TComponent);
begin
  inherited;
  io.Enums.FillStrings<TOrderState>(ComboBoxWhereState.Items);
end;

end.
