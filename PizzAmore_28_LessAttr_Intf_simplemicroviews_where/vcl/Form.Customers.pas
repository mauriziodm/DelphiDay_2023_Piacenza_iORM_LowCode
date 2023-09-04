unit Form.Customers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, iORM, iORM.Attributes, iORM.CommonTypes, iORM.Where.Interfaces, Data.DB, iORM.DB.DataSet.Base, iORM.DB.DataSet.Custom,
  iORM.DB.DataSet.Master, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.Buttons, Vcl.DBGrids, Vcl.DBCtrls, iORM.StdActions.Vcl, System.Actions, Vcl.ActnList,
  Model.Interfaces, Vcl.Mask, Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls;

type

  [diSimpleViewFor(IGenericCustomer)]
  TCustomersForm = class(TForm)
    DSCustomers: TioDataSetMaster;
    DSCustomersID: TIntegerField;
    SourceCustomers: TDataSource;
    PanelBottom: TPanel;
    ButtonAdd: TSpeedButton;
    ButtonPageUp: TSpeedButton;
    PanelTop: TPanel;
    ButtonSelect: TSpeedButton;
    ButtonBack: TSpeedButton;
    LabelTitle: TLabel;
    ButtonDelete: TSpeedButton;
    ButtonPageDown: TSpeedButton;
    DSCustomersStateName: TStringField;
    GridCustomers: TDBGrid;
    DBTextPageOf: TDBText;
    DSCustomersPagingCurrentPageOf: TStringField;
    DSCustomersFullName: TStringField;
    ActionList1: TActionList;
    acDelete: TioBSPersistenceDelete;
    acNextPage: TioBSNextPage;
    acPrevPage: TioBSPrevPage;
    acBack: TioBSCloseQuery;
    acShowOrSelect: TioBSShowOrSelect;
    acAddPrivateCustomer: TioBSPersistenceAppend;
    acSelectCurrent: TioBSSelectCurrent;
    PanelWhere: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    ButtonSearch: TSpeedButton;
    ButtonClear: TSpeedButton;
    DBEditWhereID: TDBEdit;
    DBEditWhereCity: TDBEdit;
    DSWhere: TioDataSetMaster;
    DSWhereID: TIntegerField;
    DSWhereCity: TStringField;
    SourceWhere: TDataSource;
    acAddBusinessCustomer: TioBSPersistenceAppend;
    PopupMenuAddCustomer: TPopupMenu;
    Businesscustomer1: TMenuItem;
    Privatecustomer1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonAddClick(Sender: TObject);
  private
  public
  end;

implementation

uses
  System.Generics.Collections;

{$R *.dfm}

procedure TCustomersForm.ButtonAddClick(Sender: TObject);
begin
  PopupMenuAddCustomer.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCustomersForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCustomersForm.FormShow(Sender: TObject);
begin
  DSCustomers.Open;
  DSWhere.Open;
end;

end.
