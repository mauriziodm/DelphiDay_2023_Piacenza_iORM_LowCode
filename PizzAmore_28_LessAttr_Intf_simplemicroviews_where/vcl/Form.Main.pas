unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, iORM, iORM.Attributes, iORM.CommonTypes, iORM.DBBuilder.Interfaces, iORM.DB.ConnectionDef,
  iORM.Abstraction.VCL, iORM.MVVM.Interfaces, iORM.MVVM.ViewContextProvider, System.Actions, Vcl.ActnList, iORM.StdActions.Vcl;

type
  TMainForm = class(TForm)
    ImagePizza: TImage;
    LabelTitlePizz: TLabel;
    LabelTitleAmore: TLabel;
    Shape1: TShape;
    ioVCL1: TioVCL;
    SQLiteConn: TioSQLiteConnectionDef;
    ButtonOrders: TButton;
    ButtonCustomers: TButton;
    ButtonPizzas: TButton;
    ButtonQuit: TButton;
    ActionList1: TActionList;
    acQuit: TioBSCloseQuery;
    acShowCustomers: TioBSShowOrSelect;
    acShowPizzas: TioBSShowOrSelect;
    acShowOrders: TioBSShowOrSelect;
    FBConn: TioFirebirdConnectionDef;
    acShowDiff: TioBSShowOrSelect;
    procedure FBConnAfterCreateOrAlterDB(const Sender: TioCustomConnectionDef; const ADBStatus: TioDBBuilderEngineResult; const AScript, AWarnings: TStrings);
    procedure FBConnAfterRegister(Sender: TObject);
  private
  public
  end;

var
  MainForm: TMainForm;

implementation

uses
  Utils.SampleData, Model.Interfaces, Model.Pizza;

{$R *.dfm}

procedure TMainForm.FBConnAfterCreateOrAlterDB(const Sender: TioCustomConnectionDef; const ADBStatus: TioDBBuilderEngineResult; const AScript,
  AWarnings: TStrings);
begin
  TSampleData.CheckForSampleDataCreation;
end;

procedure TMainForm.FBConnAfterRegister(Sender: TObject);
begin
  io.Connections.UseUser(1, 'Mauri');
end;

end.
