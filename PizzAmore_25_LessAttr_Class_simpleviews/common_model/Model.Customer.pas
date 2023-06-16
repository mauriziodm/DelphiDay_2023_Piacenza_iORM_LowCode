unit Model.Customer;

interface

uses
  iORM, Model.State;

type

//  [ioConnectionDefName('SQLiteConn')]
  [ioEntity('CUSTOMERS')]
  TCustomer = class
  private
    FID: Integer;
    [ioWhere(coLike)]
    FName: String;
    FState: TState;
    FCity: String;
    FAddress: String;
    FPhoneNumber: String;
    function GetFullAddress: String;
  public
    constructor Create;
    destructor Destroy; override;
    property ID: Integer read FID write FID;
    property Name: String read FName write FName;
    property State: TState read FState write FState;
    property City: String read FCity write FCity;
    property Address: String read FAddress write FAddress;
    property PhoneNumber: String read FPhoneNumber write FPhoneNumber;
    [ioWhereSkip]
    property FullAddress: String read GetFullAddress;  // ReadOnly - Not mapped
  end;

implementation

uses
  System.SysUtils;

{ TCustomer }

constructor TCustomer.Create;
begin
  Sleep(1);
  FState := nil;
end;

destructor TCustomer.Destroy;
begin
  if Assigned(FState) then
    FState.Free;
  inherited;
end;

function TCustomer.GetFullAddress: String;
begin
  Result := Format('%s, %s', [FCity, FAddress]);
end;

end.
