unit Form.Orders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, iORM, iORM.Attributes,
  iORM.CommonTypes, iORM.Where.Interfaces, iORM.StdActions.Vcl, System.Actions, Vcl.ActnList, iORM.DB.DataSet.Base, iORM.DB.DataSet.Custom,
  iORM.DB.DataSet.Master, Model.Order, Vcl.Mask;

type

  [diSimpleViewFor(TOrder, 'LIST')]
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
    ActionList1: TActionList;
    acDelete: TioBSPersistenceDelete;
    DSOrdersOrderDate: TDateField;
    DSOrdersCustomerName: TStringField;
    DSOrdersGrandTotal: TCurrencyField;
    acBack: TioBSCloseQuery;
    acShowOrSelect: TioBSShowOrSelect;
    acAdd: TioBSPersistenceAppend;
    DSOrdersOrderState: TStringField;
    PanelWhere: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonSearch: TSpeedButton;
    ButtonClear: TSpeedButton;
    DBEditWhereID: TDBEdit;
    DBEditWhereFromDate: TDBEdit;
    Label4: TLabel;
    DBEditWhereToDate: TDBEdit;
    DBComboBoxWhereOrderState: TDBComboBox;
    Label5: TLabel;
    DBEditWhereNote: TDBEdit;
    Shape1: TShape;
    DSWhere: TioDataSetMaster;
    DSWhereOrderID: TIntegerField;
    SourceWhere: TDataSource;
    DSWhereOrderState: TStringField;
    DSWhereNote: TStringField;
    DSWhereFromDate: TDateField;
    DSWhereToDate: TDateField;
    acWhereBuild: TioBSWhereBuild;
    acWhereClear: TioBSWhereClear;
    acWherePersist: TioBSPersistencePersist;
    ButtonHistory: TSpeedButton;
    acWhereShowHistory: TioBSShowOrSelect;
    Label6: TLabel;
    DBEditWhereCustName: TDBEdit;
    DSWhereCustomerName: TStringField;
    ButtonSearchCustomerName: TButton;
    DSWhereCustomerStateName: TStringField;
    ButtonSearchCustomerStateName: TButton;
    ButtonSearchRowDescription: TButton;
    ButtonSearchCstomerStateObj: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSWhereAfterSelectionObject(const ASender: TObject; var ASelected: TObject; var ASelectionType: TioSelectionType);
    procedure ButtonSearchCustomerNameClick(Sender: TObject);
    procedure ButtonSearchCustomerStateNameClick(Sender: TObject);
    procedure ButtonSearchRowDescriptionClick(Sender: TObject);
    procedure ButtonSearchCstomerStateObjClick(Sender: TObject);
  private
  public
  end;

implementation

uses
  Model.State;

{$R *.dfm}

procedure TOrdersForm.ButtonSearchCstomerStateObjClick(Sender: TObject);
var
  LState: TState;
begin
  LState := io.LoadObject<TState>(1);
  try
    DSOrders.Where := io.Where('Customer.State', coEqual, LState);
    DSOrders.Persistence.Reload;
  finally
    LState.Free;
  end;
end;

procedure TOrdersForm.ButtonSearchCustomerNameClick(Sender: TObject);
begin
  DSOrders.Where := io.Where('Customer.Name', coLike, 'Omar%');
  DSOrders.Persistence.Reload;
end;

procedure TOrdersForm.ButtonSearchCustomerStateNameClick(Sender: TObject);
begin
  DSOrders.Where := io.Where('Customer.State.Name', coLike, 'New Jersey');
  DSOrders.Persistence.Reload;
end;

procedure TOrdersForm.ButtonSearchRowDescriptionClick(Sender: TObject);
begin
  DSOrders.Where := io.Where('Rows.Description', coLike, 'Love%');
  DSOrders.Persistence.Reload;
end;

procedure TOrdersForm.DSWhereAfterSelectionObject(const ASender: TObject; var ASelected: TObject; var ASelectionType: TioSelectionType);
begin
  DSWhere.WhereBuild;
end;

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

end.
