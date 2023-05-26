unit View.Pizzas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseForList, iORM, iORM.Attributes, iORM.CommonTypes, iORM.MVVM.Interfaces, Data.DB, iORM.MVVM.ViewModelBridge,
  iORM.DB.DataSet.Base, iORM.MVVM.ModelDataSet, System.Actions, Vcl.ActnList, iORM.StdActions.Vcl, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.DBCGrids, Model.Interfaces;

type

  [diViewFor(IPizza), diViewFor(IPizza, 'embedded')]
  TViewPizzas = class(TViewBaseForList)
    CtrlGridPizzas: TDBCtrlGrid;
    DBTextName: TDBText;
    DBTextPrice: TDBText;
    DBImage: TDBImage;
    BSMasterName: TStringField;
    BSMasterPrice: TCurrencyField;
    BSMasterImage: TGraphicField;
  private
  public
  end;

implementation

{$R *.dfm}

end.
