unit View.Where.OrderHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseForList, iORM, iORM.Attributes,
  iORM.CommonTypes, iORM.MVVM.Interfaces, Data.DB, iORM.MVVM.ViewModelBridge,
  iORM.DB.DataSet.Base, iORM.MVVM.ModelDataSet, System.Actions, Vcl.ActnList,
  iORM.StdActions.Vcl, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Model.Where.Interfaces;

type

  [diViewFor(IWhereOrder)]
  TViewWhereOrderHistory = class(TViewBaseForList)
    GridCustomers: TDBGrid;
    BSMasterFromDate: TDateField;
    BSMasterToDate: TDateField;
    BSMasterNote: TStringField;
    BSMasterOrderID: TIntegerField;
    BSMasterOrderState: TStringField;
  private
  public
  end;

implementation

{$R *.dfm}

end.
