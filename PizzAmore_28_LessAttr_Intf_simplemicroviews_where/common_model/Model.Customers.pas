unit Model.Customers;

interface

uses
  iORM, iORM.Attributes, Model.Interfaces, Model.BaseBO,
  System.Generics.Collections, ETM.Repository;

type

  TGenericCustomer = class(TBaseBO, IGenericCustomer)
  private
    FAddress: String;
    FState: IState;
    [ioWhere(coLike)]
    FCity: String;
    FContacts: TList<IContact>;
    FObjVersion: TioObjVersion;
  protected
    function GetFullName: String; virtual; abstract;
    function GetFullAddress: String;
    function GetContacts: TList<IContact>;
    function GetState: IState;
    procedure SetState(const AValue: IState);
  public
    constructor Create; overload;
    constructor Create(const AAddress, ACity: String); overload;
    destructor Destroy; override;
    property Address: String read FAddress write FAddress;
    property State: IState read GetState write SetState;
    property City: String read FCity write FCity;
    property Contacts: TList<IContact> read GetContacts;
    // IGenericCustomer
    [ioWhereSkip]
    property FullName: String read GetFullName;
    [ioWhereSkip]
    property FullAddress: String read GetFullAddress;
  end;

  [ioEntity('CUST_PRIV'), ioKeyGenerator('CUSTOMERS'), diImplements(IGenericCustomer, 'Private')]
  [etmTrace(TTimeSlot)]
  TPrivateCustomer = class(TGenericCustomer)
  private
    FFirstName: String;
    FLastName: String;
  protected
    function GetFullName: String; override;
  public
    constructor Create(const AFirstName, ALastName, AAddress, ACity: String); reintroduce; overload;
    property FirstName: String read FFirstName write FFirstName;
    property LastName: String read FLastName write FLastName;
  end;

  [ioEntity('CUST_BUS'), ioKeyGenerator('CUSTOMERS'), diImplements(IGenericCustomer, 'Business')]
  [etmTrace(TTimeSlot)]
  TBusinessCustomer = class(TGenericCustomer)
  private
    FBusinessName: String;
    FVAT: String;
  protected
    function GetFullName: String; override;
  public
    constructor Create(const ABusinessName, AVAT, AAddress, ACity: String); reintroduce; overload;
    property BusinessName: String read FBusinessName write FBusinessName;
    property VAT: String read FVAT write FVAT;
  end;

  [ioEntity('STATES')]
  TState = class(TBaseBO, IState)
  private
    FName: String;
    procedure SetName(const AValue: String);
    function GetName: String;
  public
    constructor Create(const AName: String);
    property Name: String read GetName write SetName;
  end;

  [ioEntity('CONTACTS')]
  TContact = class(TBaseBO, IContact)
  private
    FContactType: TContactType;
    FContact: String;
    // Type
    procedure SetContactType(const AValue: TContactType);
    function GetContactType: TContactType;
    // Contact
    procedure SetContact(const AValue: String);
    function GetContact: String;
  public
    constructor Create(const AContactType: TContactType; const AContact: String);
    property ContactType: TContactType read GetContactType write SetContactType;
    property Contact: String read GetContact write SetContact;
  end;

implementation

uses
  System.SysUtils;

{ TGenericCustomer }

constructor TGenericCustomer.Create;
begin
  FState := nil;
  FContacts := TList<IContact>.Create;
end;

constructor TGenericCustomer.Create(const AAddress, ACity: String);
begin
  Create;
  FAddress := AAddress;
  FCity := ACity;
end;

destructor TGenericCustomer.Destroy;
begin
  FContacts.Free;
  inherited;
end;

function TGenericCustomer.GetContacts: TList<IContact>;
begin
  Result := FContacts;
end;

function TGenericCustomer.GetFullAddress: String;
begin
  Result := Format('%s - %s', [FAddress, FCity]).Trim;
end;

function TGenericCustomer.GetState: IState;
begin
  Result := FState;
end;

procedure TGenericCustomer.SetState(const AValue: IState);
begin
  FState := AValue;
end;

{ TPrivateCustomer }

constructor TPrivateCustomer.Create(const AFirstName, ALastName, AAddress, ACity: String);
begin
  inherited Create(AAddress, ACity);
  FFirstName := AFirstName;
  FLastName := ALastName;
end;

function TPrivateCustomer.GetFullName: String;
begin
  Result := Format('%s %s (%d)', [FFirstName, FLastName, ID]).Trim;
end;

{ TBusinessCustomer }

constructor TBusinessCustomer.Create(const ABusinessName, AVAT, AAddress, ACity: String);
begin
  inherited Create(AAddress, ACity);
  FBusinessName := ABusinessName;
  FVAT := AVAT;
end;

function TBusinessCustomer.GetFullName: String;
begin
  Result := Format('%s (%d)', [FBusinessName, ID]).Trim;
end;

{ TState }

constructor TState.Create(const AName: String);
begin
  FName := AName;
end;

function TState.GetName: String;
begin
  Result := FName;
end;

procedure TState.SetName(const AValue: String);
begin
  FName := AValue;
end;

{ TContact }

constructor TContact.Create(const AContactType: TContactType; const AContact: String);
begin
  FContactType := AContactType;
  FContact := AContact;
end;

function TContact.GetContact: String;
begin
  Result := FContact;
end;

function TContact.GetContactType: TContactType;
begin
  Result := FContactType;
end;

procedure TContact.SetContact(const AValue: String);
begin
  FContact := AValue;
end;

procedure TContact.SetContactType(const AValue: TContactType);
begin
  FContactType := AValue;
end;

end.
