unit Form.Pizzas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids, iORM, iORM.Attributes, iORM.CommonTypes,
  iORM.Where.Interfaces, Data.DB, iORM.DB.DataSet.Base, iORM.DB.DataSet.Custom, iORM.DB.DataSet.Master, System.Actions, Vcl.ActnList, iORM.StdActions.Vcl,
  Model.Pizza, Vcl.Mask;

type

  [diSimpleViewFor(TPizza, 'LIST')]
  TPizzasForm = class(TForm)
    PanelTop: TPanel;
    ButtonSelect: TSpeedButton;
    ButtonBack: TSpeedButton;
    LabelTitle: TLabel;
    PanelBottom: TPanel;
    ButtonAdd: TSpeedButton;
    ButtonDelete: TSpeedButton;
    DBCtrlGrid1: TDBCtrlGrid;
    DBImage: TDBImage;
    DBTextName: TDBText;
    DBTextPrice: TDBText;
    DSPizzas: TioDataSetMaster;
    SourcePizzas: TDataSource;
    DSPizzasName: TStringField;
    DSPizzasPrice: TCurrencyField;
    DSPizzasImage: TGraphicField;
    ActionList1: TActionList;
    acDelete: TioBSPersistenceDelete;
    acBack: TioBSCloseQuery;
    acShowOrSelect: TioBSShowOrSelect;
    acAdd: TioBSPersistenceAppend;
    PanelWhere: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonSearch: TSpeedButton;
    ButtonClear: TSpeedButton;
    DBEditWhereID: TDBEdit;
    DBEditWhereName: TDBEdit;
    DBEditWhereFromPrice: TDBEdit;
    DSWhere: TioDataSetMaster;
    DSWhereID: TIntegerField;
    DSWhereName: TStringField;
    SourceWhere: TDataSource;
    DSWhereFromPrice: TCurrencyField;
    DSWhereToPrice: TCurrencyField;
    Label4: TLabel;
    DBEditWhereToPrice: TDBEdit;
    acWhereBuild: TioBSWhereBuild;
    acWhereClear: TioBSWhereClear;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TPizzasForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPizzasForm.FormCreate(Sender: TObject);
begin
  DSPizzas.Open;
  DSWhere.Open;
end;

end.
