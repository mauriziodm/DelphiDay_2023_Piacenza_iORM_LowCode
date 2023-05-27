unit View.Pizzas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseForList, iORM, iORM.Attributes, iORM.CommonTypes, iORM.MVVM.Interfaces, Data.DB, iORM.MVVM.ViewModelBridge,
  iORM.DB.DataSet.Base, iORM.MVVM.ModelDataSet, System.Actions, Vcl.ActnList, iORM.StdActions.Vcl, uniLabel, uniButton, uniBitBtn, uniSpeedButton,
  uniGUIBaseClasses, uniGUIClasses, uniPanel, uniBasicGrid, uniDBGrid, Model.Interfaces, uniEdit, uniDBEdit, uniImage, uniDBImage;

type

  [diViewFor(IPizza)]
  TViewPizzas = class(TViewBaseForList)
    BSMasterID: TIntegerField;
    BSMasterName: TStringField;
    BSMasterPrice: TCurrencyField;
    BSMasterImage: TGraphicField;
    GridCustomers: TUniDBGrid;
    BSWhereID: TIntegerField;
    BSWhereName: TStringField;
    BSWhereFromPrice: TCurrencyField;
    BSWhereToPrice: TCurrencyField;
    PanelImage: TUniPanel;
    UniDBImage1: TUniDBImage;
    UniLabel1: TUniLabel;
    DBEditWhereID: TUniDBEdit;
    UniLabel2: TUniLabel;
    DBEditWhereName: TUniDBEdit;
    UniLabel3: TUniLabel;
    DBEditWhereFromPrice: TUniDBEdit;
    UniLabel4: TUniLabel;
    DBEditWhereToPrice: TUniDBEdit;
  private
  public
  end;

implementation

{$R *.dfm}

end.
