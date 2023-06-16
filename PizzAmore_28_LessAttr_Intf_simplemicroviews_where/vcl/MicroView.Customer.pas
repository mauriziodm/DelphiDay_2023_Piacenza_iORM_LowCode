unit MicroView.Customer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, iORM, iORM.Attributes, iORM.CommonTypes,
  iORM.MVVM.Interfaces, Data.DB, iORM.MVVM.ViewModelBridge, iORM.DB.DataSet.Base, iORM.MVVM.ModelDataSet, System.Actions, Vcl.ActnList, iORM.StdActions.Vcl,
  iORM.Where.Interfaces, iORM.DB.DataSet.Custom, iORM.DB.DataSet.Detail;

type

  TMicroViewCustomer = class(TFrame)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ButtonSelectCustomer: TSpeedButton;
    DBEditCustID: TDBEdit;
    DBEditCustName: TDBEdit;
    DBEditCustAddress: TDBEdit;
    DBECustPhone: TDBEdit;
    SourceCustomer: TDataSource;
    ActionListCustMView: TActionList;
    ButtonViewCustomer: TSpeedButton;
    DSCustomer: TioDataSetDetail;
    DSCustomerID: TIntegerField;
    DSCustomerFullName: TStringField;
    DSCustomerFullAddress: TStringField;
    DSCustomerStateName: TStringField;
    acShow: TioBSShowOrSelect;
    acSelect: TioBSShowOrSelect;
  private
  public
  end;

implementation

{$R *.dfm}

end.
