unit Model.Order;

interface

uses
  iORM.Attributes, Model.Interfaces, Model.BaseBO, System.Generics.Collections;

type

  [ioEntity('ORDERS'), diImplements(IOrder)]
  TOrder = class(TBaseBO, IOrder)
  private
    FCustomer: IGenericCustomer;
    FOrderDate: TDate;
    [ioHasMany(IOrderRow, 'OrderID')]
    FRows: TList<IOrderRow>;
    FNote: String;
    FOrderState: TOrderState;
    procedure SetCustomer(const AValue: IGenericCustomer);
    procedure SetOrderDate(const AValue: TDate);
    procedure SetNote(const AValue: String);
    procedure SetOrderState(const AValue: TOrderState);
    function GetCustomer: IGenericCustomer;
    function GetOrderDate: TDate;
    function GetRows: TList<IOrderRow>;
    function GetNote: String;
    function GetOrderState: TOrderState;
    function GetGrandTotal: Currency;
  public
    constructor Create;
    destructor Destroy; override;
    function TryAddPizzaToExistingRow(const APizza: IPizza): Boolean;
    property OrderDate: TDate read GetOrderDate Write SetOrderDate;
    property Customer: IGenericCustomer read GetCustomer write SetCustomer;
    property Rows: TList<IOrderRow> read GetRows;
    property Note: String read GetNote write SetNote;
    property OrderState: TOrderState read GetOrderState write SetOrderState;
    property GrandTotal: Currency read GetGrandTotal;
  end;

implementation

uses
  System.SysUtils, Model.OrderRow;

{ TOrder }

constructor TOrder.Create;
begin
  inherited;
  FOrderDate := Date;
  FRows := TList<IOrderRow>.Create;
end;

destructor TOrder.Destroy;
begin
  FRows.Free;
  inherited;
end;

function TOrder.TryAddPizzaToExistingRow(const APizza: IPizza): Boolean;
var
  LRow: IOrderRow;
  LPizzaRow: IPizzaOrderRow;
begin
  // If a row with the same pizza is present then increment its qty
  for LRow in Rows do
    if Supports(LRow, IPizzaOrderRow, LPizzaRow) and (LPizzaRow.Pizza.ID = APizza.ID) then
    begin
      LPizzaRow.AddOne;
      Exit(True);
    end;
  Result := False;
end;

function TOrder.GetGrandTotal: Currency;
var
  LRow: IOrderRow;
begin
  Result := 0;
  for LRow in FRows do
    Result := Result + LRow.RowTotal;
end;

function TOrder.GetCustomer: IGenericCustomer;
begin
  Result := FCustomer;
end;

function TOrder.GetNote: String;
begin
  Result := FNote;
end;

function TOrder.GetOrderDate: TDate;
begin
  Result := FOrderDate;
end;

function TOrder.GetOrderState: TOrderState;
begin
  Result := FOrderState;
end;

function TOrder.GetRows: TList<IOrderRow>;
begin
  Result := FRows;
end;

procedure TOrder.SetCustomer(const AValue: IGenericCustomer);
begin
  FCustomer := AValue;
end;

procedure TOrder.SetNote(const AValue: String);
begin
  FNote := AValue;
end;

procedure TOrder.SetOrderDate(const AValue: TDate);
begin
  FOrderDate := AValue;
end;

procedure TOrder.SetOrderState(const AValue: TOrderState);
begin
  FOrderState := AValue;
end;

end.
