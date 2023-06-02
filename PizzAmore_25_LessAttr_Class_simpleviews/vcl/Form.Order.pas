unit Form.Order;

interface

uses
  Vcl.Forms, Data.DB, iORM, iORM.Attributes, iORM.CommonTypes, iORM.Where.Interfaces, iORM.StdActions.Vcl, Vcl.DBActns, Vcl.ActnList, System.Classes,
  System.Actions, iORM.DB.DataSet.Detail, iORM.DB.DataSet.Base, iORM.DB.DataSet.Custom, iORM.DB.DataSet.Master, Vcl.Controls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Model.Order;

type

  [diSimpleViewFor(TOrder)]
  TOrderForm = class(TForm)
    PanelTop: TPanel;
    ButtonBack: TSpeedButton;
    LabelTitle: TLabel;
    PanelBottom: TPanel;
    ButtonRevert: TSpeedButton;
    ButtonPersist: TSpeedButton;
    PanelPizzas: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBTextName: TDBText;
    DBTextPrice: TDBText;
    DBImage: TDBImage;
    DSPizzas: TioDataSetMaster;
    DSPizzasName: TStringField;
    DSPizzasPrice: TCurrencyField;
    DSPizzasImage: TGraphicField;
    SourcePizzas: TDataSource;
    Label1: TLabel;
    DBEditID: TDBEdit;
    DBEditDate: TDBEdit;
    Label2: TLabel;
    DBEditNote: TDBEdit;
    Label3: TLabel;
    DBEditCustID: TDBEdit;
    DBEditCustName: TDBEdit;
    Label4: TLabel;
    DBEditCustAddress: TDBEdit;
    Label5: TLabel;
    DBECustPhone: TDBEdit;
    ButtonSelectCustomer: TSpeedButton;
    GridRows: TDBGrid;
    Label6: TLabel;
    DBEditGrandTotal: TDBEdit;
    DSOrder: TioDataSetMaster;
    DSOrderID: TIntegerField;
    DSOrderOrderDate: TDateField;
    DSOrderNote: TStringField;
    DSOrderGrandTotal: TCurrencyField;
    SourceOrder: TDataSource;
    DSCustomer: TioDataSetDetail;
    DSCustomerID: TIntegerField;
    DSCustomerName: TStringField;
    DSCustomerPhoneNumber: TStringField;
    SourceCustomer: TDataSource;
    DSRows: TioDataSetDetail;
    DSRowsDescription: TStringField;
    DSRowsPrice: TCurrencyField;
    DSRowsQty: TIntegerField;
    DSRowsRowTotal: TCurrencyField;
    SourceRows: TDataSource;
    DSCustomerFullAddress: TStringField;
    ActionList1: TActionList;
    acPersist: TioBSPersistencePersist;
    acRevertOrDelete: TioBSPersistenceRevertOrDelete;
    ButtonAdd: TSpeedButton;
    acSelectPizza: TioBSSelectCurrent;
    ButtonDeleteRow: TSpeedButton;
    acDeleteRow: TDataSetDelete;
    acBack: TioBSCloseQuery;
    acShowCustomerSelector: TioBSShowOrSelect;
    Label7: TLabel;
    DBComboBoxOrderState: TDBComboBox;
    DSOrderOrderState: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSOrderSelectionObject(const ASender: TObject; var ASelected: TObject; var ASelectionType: TioSelectionType; var ADone: Boolean);
  private
  public
  end;

implementation

uses
  Model.Pizza;

{$R *.dfm}

procedure TOrderForm.DSOrderSelectionObject(const ASender: TObject; var ASelected: TObject; var ASelectionType: TioSelectionType; var ADone: Boolean);
begin
  DSOrder.CurrentAs<TOrder>.AddPizza(ASelected as TPizza);
  DSOrder.Refresh;
  ADone := True;
end;

procedure TOrderForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOrderForm.FormShow(Sender: TObject);
begin
  io.Enums.FillStrings<TOrderState>(DBComboBoxOrderState.Items);
  DSPizzas.Open;
end;

end.
