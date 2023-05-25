unit VM.Pizzas;

interface

uses
  System.SysUtils, System.Variants, System.Classes, VM.BaseForList, iORM, iORM.Attributes, iORM.CommonTypes, iORM.Where.Interfaces, iORM.MVVM.VMAction,
  iORM.MVVM.ModelPresenter.Custom, iORM.MVVM.ModelPresenter.Master, Model.Interfaces,
  iORM.MVVM.Interfaces;

type

  TVMPizzas = class(TVMBaseForList)
  private
    FEmbedded: Boolean;
    procedure SetEmbedded(const Value: Boolean);
  public
    property Embedded: Boolean read FEmbedded write SetEmbedded;
  end;

implementation

{$R *.dfm}

{ TVMPizzas }

procedure TVMPizzas.SetEmbedded(const Value: Boolean);
begin
  acAdd.Visible := not Value;
  acBack.Visible := not Value;
  acDelete.Visible := not Value;
  acSelectCurrent.CloseQueryAction := nil;
end;

end.
