unit Model.OrderRow;

interface

uses
  // "ioFMX" is defined in project options to indicate that it is a firemonkey project (Project | Options | Delphi Compiler | Conditional defines).
  // Note: You need to build your project (Project | Build <ProjectName> or Shift + F9) for the changes to take effect.
{$IFDEF ioFMX}
  Fmx.Graphics,
{$ELSE}
  Vcl.Graphics,
{$IFEND}
  iORM, Model.Interfaces, Model.BaseBO, System.Generics.Collections;

type

  TBaseOrderRow = class(TBaseBO, IOrderRow)
  private
    FOrderID: Integer;
    FQty: Integer;
    FObjStatus: TioObjStatus;
    FCustomizations: TList<IRowCustomization>;
    // Qty
    procedure SetQty(const AValue: Integer);
    function GetQty: Integer;
    // Customizations
    function GetCustomizations: TList<IRowCustomization>;
  protected
    function GetRowTotal: Currency; virtual; abstract;
  public
    constructor Create;
    destructor Destroy; override;
    property Qty: Integer read GetQty write SetQty;
    property RowTotal: Currency read GetRowTotal;
    property Customizations: TList<IRowCustomization> read GetCustomizations;
  end;

  [ioEntity('ROWS_PIZZA'), ioKeyGenerator('ORDERROWS'), diImplements(IOrderRow, 'PizzaOrderRow')]
  TPizzaOrderRow = class(TBaseOrderRow, IPizzaOrderRow)
  private
    FPizza: IPizza;
  protected
    function GetPizza: IPizza;
    function GetRowTotal: Currency; override;
    function GetImage: TBitmap;
  public
    constructor Create(const APizza: IPizza; const AQty: Integer = 1); overload;
    procedure AddOne;
    property Pizza: IPizza read GetPizza;
    property Image: TBitmap read GetImage;
  end;

  [ioEntity('ROWS_CUSTOM'), ioKeyGenerator('ORDERROWS'), diImplements(IOrderRow, 'CustomOrderRow')]
  TCustomOrderRow = class(TBaseOrderRow)
  private
    FDescription: String;
    FPrice: Currency;
  protected
    function GetRowTotal: Currency; override;
  public
    constructor Create(const ADescription: String; const APrice: Currency; const AQty: Integer = 1); overload;
    property Description: String read FDescription write FDescription;
    property Price: Currency read FPrice write FPrice;
  end;

  [ioEntity('CUSTOMS')]
  TRowCustomization = class(TBaseBO, IRowCustomization)
  private
    [ioVarchar(30)]
    FDescription: String;
    procedure SetDescription(const AValue: String);
    function GetDescription: String;
  public
    constructor Create(const ADescription: String);
    property Description: String read GetDescription write SetDescription;
  end;

implementation

{ TBaseOrderRow }

constructor TBaseOrderRow.Create;
begin
  FQty := 1;
  FCustomizations := TList<IRowCustomization>.Create;
end;

destructor TBaseOrderRow.Destroy;
begin
  FCustomizations.Free;
  inherited;
end;

function TBaseOrderRow.GetCustomizations: TList<IRowCustomization>;
begin
  Result := FCustomizations;
end;

function TBaseOrderRow.GetQty: Integer;
begin
  Result := FQty;
end;

procedure TBaseOrderRow.SetQty(const AValue: Integer);
begin
  if AValue <> FQty then
  begin
    FQty := AValue;
    FObjStatus := osDirty;
  end;
end;

{ TPizzaOrderRow }

procedure TPizzaOrderRow.AddOne;
begin
  Qty := Qty + 1;
end;

constructor TPizzaOrderRow.Create(const APizza: IPizza; const AQty: Integer = 1);
begin
  inherited Create;
  FPizza := APizza;
  FQty := AQty;
end;

function TPizzaOrderRow.GetImage: TBitmap;
begin
  Result := FPizza.Image;
end;

function TPizzaOrderRow.GetPizza: IPizza;
begin
  Result := FPizza;
end;

function TPizzaOrderRow.GetRowTotal: Currency;
begin
  Result := FPizza.Price * FQty;
end;

{ TCustomOrderRow }

constructor TCustomOrderRow.Create(const ADescription: String; const APrice: Currency; const AQty: Integer = 1);
begin
  inherited Create;
  FDescription := ADescription;
  FPrice := APrice;
  FQty := AQty;
end;

function TCustomOrderRow.GetRowTotal: Currency;
begin
  Result := FPrice * FQty;
end;

{ TRowCustomization }

constructor TRowCustomization.Create(const ADescription: String);
begin
  FDescription := ADescription;
end;

function TRowCustomization.GetDescription: String;
begin
  Result := FDescription;
end;

procedure TRowCustomization.SetDescription(const AValue: String);
begin
  FDescription := AValue;
end;

end.
