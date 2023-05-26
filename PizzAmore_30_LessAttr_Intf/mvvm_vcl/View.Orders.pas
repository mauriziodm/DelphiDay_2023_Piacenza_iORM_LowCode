unit View.Orders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseForList, iORM, iORM.Attributes, iORM.CommonTypes, iORM.MVVM.Interfaces, Data.DB, iORM.MVVM.ViewModelBridge,
  iORM.DB.DataSet.Base, iORM.MVVM.ModelDataSet, System.Actions, Vcl.ActnList, iORM.StdActions.Vcl, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Model.Interfaces, Vcl.DBCtrls, Vcl.Mask;

type

  [diViewFor(IOrder)]
  TViewOrders = class(TViewBaseForList)
    GridOrders: TDBGrid;
    BSMasterID: TIntegerField;
    BSMasterOrderDate: TDateTimeField;
    BSMasterNote: TStringField;
    BSMasterCustomerName: TStringField;
    BSMasterGrandTotal: TCurrencyField;
    ButtonHistory: TSpeedButton;
    Label1: TLabel;
    DBEditWhereID: TDBEdit;
    Label3: TLabel;
    DBComboBoxWhereOrderState: TDBComboBox;
    Label5: TLabel;
    DBEditWhereNote: TDBEdit;
    Shape1: TShape;
    DBEditWhereFromDate: TDBEdit;
    Label4: TLabel;
    DBEditWhereToDate: TDBEdit;
    Label2: TLabel;
    BSWhereOrderID: TIntegerField;
    BSWhereOrderState: TStringField;
    BSWhereNote: TStringField;
    BSWhereFromDate: TDateField;
    acWhereShowHistory: TioViewAction;
    BSWhereToDate: TDateField;
    BSMasterOrderState: TStringField;
  private
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

{ TViewOrders }

constructor TViewOrders.Create(AOwner: TComponent);
begin
  inherited;
  io.Enums.FillStrings<TOrderState>(DBComboBoxWhereOrderState.Items);
end;

end.
