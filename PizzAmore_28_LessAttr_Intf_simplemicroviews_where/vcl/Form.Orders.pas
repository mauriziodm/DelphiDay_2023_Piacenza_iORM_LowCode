unit Form.Orders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, iORM, iORM.Attributes,
  iORM.CommonTypes, iORM.Where.Interfaces, iORM.StdActions.Vcl, System.Actions, Vcl.ActnList, iORM.DB.DataSet.Base, iORM.DB.DataSet.Custom,
  iORM.DB.DataSet.Master, Model.Interfaces, Vcl.Mask;

type

  [diSimpleViewFor(IOrder)]
  TOrdersForm = class(TForm)
    PanelTop: TPanel;
    ButtonSelect: TSpeedButton;
    ButtonBack: TSpeedButton;
    LabelTitle: TLabel;
    PanelBottom: TPanel;
    ButtonAdd: TSpeedButton;
    ButtonDelete: TSpeedButton;
    GridCustomers: TDBGrid;
    DSOrders: TioDataSetMaster;
    DSOrdersID: TIntegerField;
    SourceOrders: TDataSource;
    DSOrdersOrderDate: TDateField;
    DSOrdersCustomerName: TStringField;
    DSOrdersGrandTotal: TCurrencyField;
    DSOrdersOrderState: TStringField;
    PanelWhere: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonSearch: TSpeedButton;
    ButtonClear: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    ButtonHistory: TSpeedButton;
    DBEditWhereID: TDBEdit;
    DBEditWhereFromDate: TDBEdit;
    DBEditWhereToDate: TDBEdit;
    DBComboBoxWhereOrderState: TDBComboBox;
    DBEditWhereNote: TDBEdit;
    DSWhere: TioDataSetMaster;
    DSWhereOrderID: TIntegerField;
    DSWhereOrderState: TStringField;
    DSWhereNote: TStringField;
    DSWhereFromDate: TDateField;
    DSWhereToDate: TDateField;
    SourceWhere: TDataSource;
    ActionList1: TActionList;
    acDelete: TioBSPersistenceDelete;
    acBack: TioBSCloseQuery;
    acShowOrSelect: TioBSShowOrSelect;
    acAdd: TioBSPersistenceAppend;
    acWhereBuild: TioBSWhereBuild;
    acWhereClear: TioBSWhereClear;
    acWherePersist: TioBSPersistencePersist;
    acWhereShowHistory: TioBSShowOrSelect;
    ButtonSearchCustomerStateName: TButton;
    ButtonSearchStateObj: TButton;
    ButtonSearchContact: TButton;
    ButtonSearchRowCustomization: TButton;
    ButtonSearchRowQty: TButton;
    ButonSearchRowsPizzaName: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonSearchCustomerStateNameClick(Sender: TObject);
    procedure ButtonSearchStateObjClick(Sender: TObject);
    procedure ButtonSearchContactClick(Sender: TObject);
    procedure ButtonSearchRowCustomizationClick(Sender: TObject);
    procedure ButtonSearchRowQtyClick(Sender: TObject);
    procedure ButonSearchRowsPizzaNameClick(Sender: TObject);
  private
  public
  end;

implementation

uses
  Form.Order;

{$R *.dfm}

procedure TOrdersForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOrdersForm.FormCreate(Sender: TObject);
begin
  io.Enums.FillStrings<TOrderState>(DBComboBoxWhereOrderState.Items);
  DSOrders.Open;
  DSWhere.Open;
end;

procedure TOrdersForm.ButtonSearchContactClick(Sender: TObject);
var
  LWhere: IioWhere;
begin
  LWhere := io.Where('Customer.Contacts.Contact', coLike, 'mauriziodelmagno@gmail.com');
  DSOrders.Where := LWhere;
  DSOrders.Persistence.Reload;
end;

procedure TOrdersForm.ButtonSearchCustomerStateNameClick(Sender: TObject);
var
  LWhere: IioWhere;
begin
  LWhere := io.Where('Customer.State.Name', coEquals, 'New York');
  DSOrders.Where := LWhere;
  DSOrders.Persistence.Reload;
end;

procedure TOrdersForm.ButtonSearchRowCustomizationClick(Sender: TObject);
var
  LWhere: IioWhere;
begin
  LWhere := io.Where('Rows.Customizations.Description', coEquals, 'thick');
  DSOrders.Where := LWhere;
  DSOrders.Persistence.Reload;
end;

procedure TOrdersForm.ButonSearchRowsPizzaNameClick(Sender: TObject);
var
  LWhere: IioWhere;
begin
//  LWhere := io.Where('Rows.Pizza.Name', coLike, 'Margherita%')._And('Customer.FirstName', coNotLike, 'Marco%');
//  LWhere := io.Where('Rows.Pizza.Name', coLike, 'Margherita%')._And('Customer.FirstName', coLike, 'Marco%');
  LWhere := io.Where('Rows.Pizza.Name', coLike, 'Margherita%');
  DSOrders.Where := LWhere;
  DSOrders.Persistence.Reload;
end;

procedure TOrdersForm.ButtonSearchRowQtyClick(Sender: TObject);
var
  LWhere: IioWhere;
begin
  LWhere := io.Where('Rows.Qty', coGreaterOrEqual, 3);
  DSOrders.Where := LWhere;
  DSOrders.Persistence.Reload;
end;

procedure TOrdersForm.ButtonSearchStateObjClick(Sender: TObject);
var
  LWhere: IioWhere;
  LState: IState;
begin
  LState := io.LoadObject<IState>(1);
  LWhere := io.Where('Customer.State', coEquals, LState);
  DSOrders.Where := LWhere;
  DSOrders.Persistence.Reload;
end;

end.
