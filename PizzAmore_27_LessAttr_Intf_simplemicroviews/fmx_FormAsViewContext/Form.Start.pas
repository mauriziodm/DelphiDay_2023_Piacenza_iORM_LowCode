unit Form.Start;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.TabControl,
  System.Actions, FMX.ActnList, iORM.Abstraction.FMX, iORM, iORM.Attributes, iORM.CommonTypes, iORM.DBBuilder.Interfaces, iORM.DB.ConnectionDef,
  iORM.MVVM.Interfaces, iORM.MVVM.ViewContextProvider, iORM.StdActions.Fmx;

type
  TStartForm = class(TForm)
    TabControlStart: TTabControl;
    TabItemStart: TTabItem;
    RectangleTitle: TRectangle;
    LabelTitle: TLabel;
    ButtonQuit: TSpeedButton;
    ButtonGoToOrderList: TButton;
    ButtonGoToPizzaList: TButton;
    ButtonGoToCustomerList: TButton;
    LayoutMain: TLayout;
    Layout1: TLayout;
    Label2: TLabel;
    Label1: TLabel;
    ActionList1: TActionList;
    ioFMX1: TioFMX;
    acShowCustomers: TAction;
    acShowPizzas: TAction;
    acShowOrders: TAction;
    SQLiteConn: TioSQLiteConnectionDef;
    VCProvider: TioViewContextProvider;
    acQuit: TioBSCloseQuery;
    ImageLogo: TImage;
    procedure acQuitExecute(Sender: TObject);
    procedure acShowCustomersExecute(Sender: TObject);
    procedure acShowPizzasExecute(Sender: TObject);
    procedure acShowOrdersExecute(Sender: TObject);
    procedure SQLiteConnAfterCreateOrAlterDB(const Sender: TioCustomConnectionDef; const ADBStatus: TioDBBuilderEngineResult; const AScript,
      AWarnings: TStrings);
    procedure VCProviderRequest(const Sender: TObject; out ResultViewContext: TComponent);
    procedure VCProviderRelease(const Sender: TObject; const AView, AViewContext: TComponent);
    procedure VCProviderAfterRequest(const Sender: TObject; const AView, AViewContext: TComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StartForm: TStartForm;

implementation

uses
  Utils.SampleData, System.IOUtils, Model.Interfaces, Form.ViewContext;

{$R *.fmx}

procedure TStartForm.acQuitExecute(Sender: TObject);
begin
  io.TerminateApplication;
end;

procedure TStartForm.acShowCustomersExecute(Sender: TObject);
begin
  io.Show<IGenericCustomer>(acQuit);
end;

procedure TStartForm.acShowOrdersExecute(Sender: TObject);
begin
  io.Show<IOrder>(acQuit);
end;

procedure TStartForm.acShowPizzasExecute(Sender: TObject);
begin
  io.Show<IPizza>(acQuit);
end;

procedure TStartForm.SQLiteConnAfterCreateOrAlterDB(const Sender: TioCustomConnectionDef; const ADBStatus: TioDBBuilderEngineResult; const AScript,
  AWarnings: TStrings);
begin
  TSampleData.CheckForSampleDataCreation;
end;

procedure TStartForm.VCProviderAfterRequest(const Sender: TObject; const AView, AViewContext: TComponent);
begin
  (AView as TFrame).Align := TAlignLayout.Client;
end;

procedure TStartForm.VCProviderRelease(const Sender: TObject; const AView, AViewContext: TComponent);
begin
  (AViewContext as TForm).Close;
end;

procedure TStartForm.VCProviderRequest(const Sender: TObject; out ResultViewContext: TComponent);
begin
  Application.CreateForm(TFormViewContext, ResultViewContext);
end;

end.
