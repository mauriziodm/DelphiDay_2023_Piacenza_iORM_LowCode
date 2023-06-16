unit Utils.SampleData;

interface

type

  TSampleData = class
  private
    class procedure CreateStates;
    class procedure CreateRealCustomers;
    class procedure CreateOtherCustomers;
    class procedure CreatePizzas;
    class procedure CreateOrders;
  public
    class procedure CheckForSampleDataCreation;
  end;

implementation

uses
  iORM, System.SysUtils, Model.Interfaces, Model.Customers, Model.Order,
  Model.OrderRow, Model.Pizza, System.IOUtils;

{ TSampleData }

class procedure TSampleData.CheckForSampleDataCreation;
begin
  if io.NotExists<IPizza> then
  begin
    io.StartTransaction;
    try
      CreatePizzas;
      CreateStates;
      CreateRealCustomers;
      CreateOtherCustomers;
      CreateOrders;
      io.CommitTransaction;
    except
      io.RollbackTransaction;
      raise;
    end;
  end;
end;

class procedure TSampleData.CreatePizzas;
var
  LPizza: IPizza;
  LImagesPath: String;
begin
  // Detect the right images path for mobile or win32 (test "MargheritaPizza.bmp" file only)
  if FileExists(TPath.Combine(TPath.GetDocumentsPath, 'MargheritaPizza.bmp')) then
    LImagesPath := TPath.GetDocumentsPath
  else
    LImagesPath := TPath.GetFullPath('..\..\..\..\common_images');

  // Margherita pizza
  LPizza := TPizza.Create('Margherita pizza', 4.50, TPath.Combine(LImagesPath, 'MargheritaPizza.bmp'));
  io.Persist(LPizza);
  // Capricciosa pizza
  LPizza := TPizza.Create('Capricciosa pizza', 7.00, TPath.Combine(LImagesPath, 'CapricciosaPizza.bmp'));
  io.Persist(LPizza);
  // Pepperoni pizza
  LPizza := TPizza.Create('Pepperoni pizza', 6.50, TPath.Combine(LImagesPath, 'PepperoniPizza.bmp'));
  io.Persist(LPizza);
  // Love pizza
  LPizza := TPizza.Create('Love pizza', 5.00, TPath.Combine(LImagesPath, 'LovePizza.bmp'));
  io.Persist(LPizza);
end;

class procedure TSampleData.CreateStates;
var
  LState: IState;
begin
  // New York (1)
  LState := TState.Create('New York');
  io.Persist(LState);
  // New Jersey (2)
  LState := TState.Create('New Jersey');
  io.Persist(LState);
  // Italy (3)
  LState := TState.Create('Italy');
  io.Persist(LState);
  // Ireland (4)
  LState := TState.Create('Ireland');
  io.Persist(LState);
  // Texas (5)
  LState := TState.Create('Texas');
  io.Persist(LState);
  // Unknown (6)
  LState := TState.Create('Unknown');
  io.Persist(LState);
end;

class procedure TSampleData.CreateRealCustomers;
var
  LCustomer: IGenericCustomer;
begin
  // Mr. Maurizio Del Magno
  LCustomer := TPrivateCustomer.Create('Maurizio', 'Del Magno', '301 Park Ave', 'New York City');
  LCustomer.State := io.LoadObject<IState>(1);
  Lcustomer.Contacts.Add( TContact.Create(ctHomePhone, '111-111-111') );
  Lcustomer.Contacts.Add( TContact.Create(ctMobilePhone, '111-111-112') );
  Lcustomer.Contacts.Add( TContact.Create(ctEmail, 'mauriziodelmagno@gmail.com') );
  io.Persist(LCustomer);
  // Mr. Marco Mottadelli
  LCustomer := TPrivateCustomer.Create('Marco', 'Mottadelli', '3501 Bergenline Ave', 'Union City');
  LCustomer.State := io.LoadObject<IState>(2);
  Lcustomer.Contacts.Add( TContact.Create(ctWorkPhone, '222-222-222') );
  Lcustomer.Contacts.Add( TContact.Create(ctEmail, 'mmotta@myworkoffice.com') );
  io.Persist(LCustomer);
  // Mr. Fabio Codebue
  LCustomer := TPrivateCustomer.Create('Fabio', 'Codebue', '150 Lake Corniche', 'Tavernola Bergamasca City');
  LCustomer.State := io.LoadObject<IState>(3);
  Lcustomer.Contacts.Add( TContact.Create(ctEmail, 'f.cbue@gmail.com') );
  io.Persist(LCustomer);
  // Embarcadero Technologies
  LCustomer := TBusinessCustomer.Create('Embarcadero Technologies Europe LTD', 'GB697737756', 'Easthampstead Road', 'Bracknell');
  LCustomer.State := io.LoadObject<IState>(1);
  Lcustomer.Contacts.Add( TContact.Create(ctEmail, 'info@embarcadero.com') );
  Lcustomer.Contacts.Add( TContact.Create(ctEmail, 'mauriziodelmagno@gmail.com') );
  io.Persist(LCustomer);
  // Idera
  LCustomer := TBusinessCustomer.Create('Idera Inc.', 'US760662481', '10801 N Mopac', 'Austin');
  LCustomer.State := io.LoadObject<IState>(5);
  Lcustomer.Contacts.Add( TContact.Create(ctEmail, 'info@idera.com') );
  io.Persist(LCustomer);
end;

class procedure TSampleData.CreateOtherCustomers;
var
  LCounter: Integer;
  LCustomer: IGenericCustomer;
begin
  for LCounter := 6 to 1000 do
  begin
    LCustomer := TPrivateCustomer.Create('FirstName' + LCounter.ToString, 'LastName' + LCounter.ToString, 'Address' + LCounter.ToString,
      'City' + LCounter.ToString);
    LCustomer.State := io.LoadObject<IState>(6);
    Lcustomer.Contacts.Add( TContact.Create(ctEmail, Format('info@customer%d.com', [LCounter])) );
    io.Persist(LCustomer);
  end;
end;

class procedure TSampleData.CreateOrders;
 var
 LOrder: IOrder;
begin
   // First order
   LOrder := TOrder.Create;
   LOrder.Customer := io.LoadObject<IGenericCustomer>(1);
   LOrder.Note := 'Well done';
   LOrder.Rows.Add( TPizzaOrderRow.Create(io.LoadObject<IPizza>(1), 3) );
   LOrder.Rows.Add( TPizzaOrderRow.Create(io.LoadObject<IPizza>(2), 2) );
   LOrder.Rows.Add( TCustomOrderRow.Create('Pizza with artichokes and blue cheese without mozzarella', 9.00, 1) );
   LOrder.Rows.Add( TPizzaOrderRow.Create(io.LoadObject<IPizza>(3), 1) );
   LOrder.OrderState := osReady;
   io.Persist(LOrder);
   // Second order
   LOrder := TOrder.Create;
   LOrder.Customer := io.LoadObject<IGenericCustomer>(2);
   LOrder.Note := 'Double cheese';
   LOrder.Rows.Add( TPizzaOrderRow.Create(io.LoadObject<IPizza>(1)) );
   LOrder.Rows.Add( TPizzaOrderRow.Create(io.LoadObject<IPizza>(3)) );
   LOrder.OrderState := osPreparing;
   io.Persist(LOrder);
   // Third order
   LOrder := TOrder.Create;
   LOrder.Customer := io.LoadObject<IGenericCustomer>(4);
   LOrder.Rows.Add( TPizzaOrderRow.Create(io.LoadObject<IPizza>(4)) );
   LOrder.OrderState := osWaiting;
   io.Persist(LOrder);
end;

end.
