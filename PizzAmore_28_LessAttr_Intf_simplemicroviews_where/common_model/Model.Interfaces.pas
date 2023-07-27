unit Model.Interfaces;

interface

uses
  iORM,
// "ioFMX" is defined in project options to indicate that it is a firemonkey project (Project | Options | Delphi Compiler | Conditional defines).
// Note: You need to build your project (Project | Build <ProjectName> or Shift + F9) for the changes to take effect.
{$IFDEF ioFMX}
  Fmx.Graphics,
{$ELSE}
  Vcl.Graphics,
{$IFEND}
  System.Generics.Collections;

type

  [ioEnumerated('All, Waiting, Preparing, Ready, Delivered')]
  TOrderState = (osUnknown, osWaiting, osPreparing, osReady, osDelivered);

  [ioEnumerated('Home phone, Mobile phone, Work prhone, Email')]
  TContactType = (ctHomePhone, ctMobilePhone, ctWorkPhone, ctEmail);

  IContact = interface;
  IState = interface;
  IRowCustomization = interface;
  IIngredient = interface;

  IBaseBO = interface
    ['{BCA1B62F-1AE4-4C6A-AEE4-C0FFE2A8198A}']
    // ID property (Read Only)
    function GetID: Integer;
    property ID: Integer read GetID;
  end;

  IGenericCustomer = interface(IBaseBO)
    ['{7CF86B95-2E8C-4525-A2EA-752F777C3977}']
    // Name
    function GetFullName: String;
    property FullName: String read GetFullName;
    // FullAddress
    function GetFullAddress: String;
    property FullAddress: String read GetFullAddress;
    // State
    function GetState: IState;
    procedure SetState(const AValue: IState);
    property State: IState read GetState write SetState;
    // Contacts
    function GetContacts: TList<IContact>;
    property Contacts: TList<IContact> read GetContacts;
  end;

  IState = interface(IBaseBO)
    ['{0FC2B241-A57C-40F1-AC35-DDE23644EC26}']
    // Name property
    procedure SetName(const AValue: String);
    function GetName: String;
    property Name: String read GetName write SetName;
  end;

  IContact = interface(IBaseBO)
    ['{C7BBC4CC-8652-431C-B6BA-368FDA08221E}']
    // Type
    procedure SetContactType(const AValue: TContactType);
    function GetContactType: TContactType;
    property ContactType: TContactType read GetContactType write SetContactType;
    // Contact
    procedure SetContact(const AValue: String);
    function GetContact: String;
    property Contact: String read GetContact write SetContact;
  end;

  IPizza = interface(IBaseBO)
    ['{3D0E488C-A965-4CFF-B50B-71F38240710C}']
    // Name property
    procedure SetName(const AValue: String);
    function GetName: String;
    property Name: String read GetName write SetName;
    // Price property
    procedure SetPrice(const AValue: Currency);
    function GetPrice: Currency;
    property Price: Currency read GetPrice write SetPrice;
    // Image property (Read Only)
    function GetImage: TBitmap;
    property Image: TBitmap read GetImage;
    // Ingredients
    function GetIngredients: TList<IIngredient>;
    property Ingredients: TList<IIngredient> read GetIngredients;
  end;

  IIngredient = interface(IBaseBO)
    ['{A0810A7D-6733-43B0-AFC8-67AAD2452F40}']
    // Name property
    procedure SetName(const AValue: String);
    function GetName: String;
    property Name: String read GetName write SetName;
  end;

  IOrderRow = interface(IBaseBO)
    ['{5DC17439-9594-4CE9-A64A-585C32BA5903}']
    // Qty
    procedure SetQty(const AValue: Integer);
    function GetQty: Integer;
    property Qty: Integer read getQty write SetQty;
    // RowTotal property (Read Only)
    function GetRowTotal: Currency;
    property RowTotal: Currency read GetRowTotal;
    // Customizations
    function GetCustomizations: TList<IRowCustomization>;
    property Customizations: TList<IRowCustomization> read GetCustomizations;
  end;

  IPizzaOrderRow = interface(IOrderRow)
    ['{7ED56F3E-C41A-4FF8-9008-C4B4F2235C4E}']
    procedure AddOne;
    // Pizza
    function GetPizza: IPizza;
    property Pizza: IPizza read GetPizza;
  end;

  IRowCustomization = interface(IBaseBO)
    ['{BC701D2A-A801-4E58-82C8-9442A4CB4A5C}']
    // Description
    procedure SetDescription(const AValue: String);
    function GetDescription: String;
    property Description: String read GetDescription write SetDescription;
  end;

  IOrder = interface(IBaseBO)
    ['{53E0D8FC-BCDC-43BB-814E-256F44C75305}']
    function TryAddPizzaToExistingRow(const APizza: IPizza): Boolean;
    // OrderDate property
    procedure SetOrderDate(const AValue: TDate);
    function GetOrderDate: TDate;
    property OrderDate: TDate read GetOrderDate Write SetOrderDate;
    // Customer property
    procedure SetCustomer(const AValue: IGenericCustomer);
    function GetCustomer: IGenericCustomer;
    property Customer: IGenericCustomer read GetCustomer write SetCustomer;
    // Rows property
    function GetRows: TList<IOrderRow>;
    property Rows: TList<IOrderRow> read GetRows;
    // Note property
    procedure SetNote(const AValue: String);
    function GetNote: String;
    property Note: String read GetNote write SetNote;
    // OrderState property
    procedure SetOrderState(const AValue: TOrderState);
    function GetOrderState: TOrderState;
    property OrderState: TOrderState read GetOrderState write SetOrderState;
    // GrandTotal property (Read Only)
    function GetGrandTotal: Currency;
    property GrandTotal: Currency read GetGrandTotal; // ReadOnly
  end;

implementation

end.
