unit View.Customers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, View.BaseForList, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, iORM, iORM.Attributes, iORM.CommonTypes, iORM.Where.Interfaces, Data.Bind.Components, Data.Bind.ObjectScope,
  iORM.LiveBindings.PrototypeBindSource.Custom, iORM.LiveBindings.PrototypeBindSource.Master, Fmx.Bind.Navigator, System.Actions, FMX.ActnList, FMX.ListView,
  FMX.Controls.Presentation, FMX.Objects, Data.Bind.GenData, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, iORM.StdActions.Fmx, iORM.MVVM.Interfaces, iORM.MVVM.ModelBindSource, iORM.MVVM.ViewModelBridge, Model.Interfaces,
  FMX.Edit, FMX.Menus;

type

  [diSimpleViewFor(IGenericCustomer)]
  TViewCustomers = class(TViewBaseForList)
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    Label1: TLabel;
    EditWhereID: TEdit;
    Label2: TLabel;
    EditWhereCity: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    PopupMenuAddCustomer: TPopupMenu;
    MenuItemBusinessCustomer: TMenuItem;
    MenuItemPrivateCustomer: TMenuItem;
    acAddBusinessCustomer: TioBSPersistenceAppend;
    acAddPrivateCustomer: TioBSPersistenceAppend;
    ButtonPgDown: TSpeedButton;
    ButtonPgUp: TSpeedButton;
    LabelPage: TLabel;
    acNextPage: TioBSNextPage;
    acPrevPage: TioBSPrevPage;
    LinkPropertyToFieldText: TLinkPropertyToField;
    procedure ButtonAddClick(Sender: TObject);
  private
  public
  end;

implementation

{$R *.fmx}

procedure TViewCustomers.ButtonAddClick(Sender: TObject);
begin
  PopupMenuAddCustomer.Popup(Screen.MousePos.X , Screen.MousePos.Y);
end;

end.
