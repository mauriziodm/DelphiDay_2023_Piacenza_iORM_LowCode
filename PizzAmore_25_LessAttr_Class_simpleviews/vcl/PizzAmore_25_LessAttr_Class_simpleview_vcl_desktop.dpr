program PizzAmore_25_LessAttr_Class_simpleview_vcl_desktop;

uses
  Vcl.Forms,
  Form.Main in 'Form.Main.pas' {MainForm},
  Model.Customer in '..\common_model\Model.Customer.pas',
  Model.Order in '..\common_model\Model.Order.pas',
  Model.OrderRow in '..\common_model\Model.OrderRow.pas',
  Model.Pizza in '..\common_model\Model.Pizza.pas',
  Utils.SampleData in '..\common_model\Utils.SampleData.pas',
  Form.Customers in 'Form.Customers.pas' {CustomersForm},
  Form.Customer in 'Form.Customer.pas' {CustomerForm},
  Form.Pizzas in 'Form.Pizzas.pas' {PizzasForm},
  Form.Pizza in 'Form.Pizza.pas' {PizzaForm},
  Form.Orders in 'Form.Orders.pas' {OrdersForm},
  Form.Order in 'Form.Order.pas' {OrderForm},
  Model.Where.Order in '..\common_model\Model.Where.Order.pas',
  Model.Where.Pizza in '..\common_model\Model.Where.Pizza.pas',
  Form.Where.OrderHistory in 'Form.Where.OrderHistory.pas' {OrderWhereHistoryForm},
  Model.State in '..\common_model\Model.State.pas';

{$R *.res}
{$STRONGLINKTYPES ON}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
