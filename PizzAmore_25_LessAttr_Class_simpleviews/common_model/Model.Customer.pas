unit Model.Customer;

interface

uses
  iORM;

type

//  [ioConnectionDefName('SQLiteConn')]
  [ioEntity('CUSTOMERS')]
  TCustomer = class
  private
    FID: Integer;
    [ioWhereAttribute(coLike)]
    FName: String;
    FCity: String;
    FAddress: String;
    FPhoneNumber: String;
    function GetFullAddress: String;
  public
    property ID: Integer read FID write FID;
    property Name: String read FName write FName;
    property City: String read FCity write FCity;
    property Address: String read FAddress write FAddress;
    [ioWhereSkip]
    property FullAddress: String read GetFullAddress;  // ReadOnly - Not mapped
    property PhoneNumber: String read FPhoneNumber write FPhoneNumber;
  end;

implementation

uses
  System.SysUtils;

{ TCustomer }

function TCustomer.GetFullAddress: String;
begin
  Result := Format('%s, %s', [FCity, FAddress]);
end;

end.
