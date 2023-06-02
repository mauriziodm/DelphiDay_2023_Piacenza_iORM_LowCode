unit Form.Order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids, iORM, iORM.Attributes, iORM.CommonTypes,
  iORM.Where.Interfaces, Data.DB, iORM.DB.DataSet.Base, iORM.DB.DataSet.Custom, iORM.DB.DataSet.Master, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, iORM.DB.DataSet.Detail,
  iORM.StdActions.Vcl, System.Actions, Vcl.ActnList, Vcl.DBActns, Model.Order, MicroView.Customer, iORM.MVVM.Interfaces, iORM.MVVM.ViewContextProvider;

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
    Label6: TLabel;
    DBEditGrandTotal: TDBEdit;
    DSOrder: TioDataSetMaster;
    DSOrderID: TIntegerField;
    DSOrderOrderDate: TDateField;
    DSOrderNote: TStringField;
    DSOrderGrandTotal: TCurrencyField;
    SourceOrder: TDataSource;
    ActionList1: TActionList;
    acPersist: TioBSPersistencePersist;
    acRevert: TioBSPersistenceRevertOrDelete;
    ButtonAdd: TSpeedButton;
    acSelectPizza: TioBSSelectCurrent;
    MicroViewCustomer1: TMicroViewCustomer;
    ScrollBoxRows: TScrollBox;
    VCProviderOrderRows: TioViewContextProvider;
    DSRows: TioDataSetDetail;
    SpeedButton1: TSpeedButton;
    acAddCustomPizza: TAction;
    acBack: TioBSCloseQuery;
    Label7: TLabel;
    DBComboBoxOrderState: TDBComboBox;
    DSOrderOrderState: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VCProviderOrderRowsRequest(const Sender: TObject; out ResultViewContext: TComponent);
    procedure VCProviderOrderRowsAfterRequest(const Sender: TObject; const AView, AViewContext: TComponent);
    procedure DSRowsAfterOpen(DataSet: TDataSet);
    procedure DSOrderSelectionInterface(const ASender: TObject; var ASelected: IInterface; var ASelectionType: TioSelectionType; var ADone: Boolean);
    procedure acAddCustomPizzaExecute(Sender: TObject);
  private
  public
  end;

implementation

uses
  Model.Interfaces, System.Rtti;

{$R *.dfm}

procedure TOrderForm.acAddCustomPizzaExecute(Sender: TObject);
var
  LNewOrderRow: IOrderRow;
begin
  inherited;
  LNewOrderRow := io.Create<IOrderRow>('CustomOrderRow');
  DSRows.Append(LNewOrderRow);
  DSRows.ShowCurrent(acBack, VCProviderOrderRows);
end;

procedure TOrderForm.DSOrderSelectionInterface(const ASender: TObject; var ASelected: IInterface; var ASelectionType: TioSelectionType; var ADone: Boolean);
var
  LPizza: IPizza;
begin
  ADone := True;
  if Supports(ASelected, IPizza, LPizza) then
  begin
    if DSOrder.CurrentAs<IOrder>.TryAddPizzaToExistingRow(LPizza) then
      DSRows.Refresh
    else
    begin
      DSRows.Append( io.Create<IOrderRow>('PizzaOrderRow', [TValue.From<IPizza>(LPizza), 1]) );
      DSRows.ShowCurrent(acBack, VCProviderOrderRows);
    end;
  end;
end;

procedure TOrderForm.DSRowsAfterOpen(DataSet: TDataSet);
begin
  DSRows.ShowEach(acBack, VCProviderOrderRows);
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

procedure TOrderForm.VCProviderOrderRowsAfterRequest(const Sender: TObject; const AView, AViewContext: TComponent);
begin
  (AView as TControl).Align := alTop;
  (AView as TControl).Name := String.Empty;
end;

procedure TOrderForm.VCProviderOrderRowsRequest(const Sender: TObject; out ResultViewContext: TComponent);
begin
  ResultViewContext := ScrollBoxRows;
end;

end.
