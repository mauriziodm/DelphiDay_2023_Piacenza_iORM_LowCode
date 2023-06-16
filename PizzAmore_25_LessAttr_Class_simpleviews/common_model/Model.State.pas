unit Model.State;

interface

uses
  iORM;

type

  [ioEntity('STATES')]
  TState = class
  private
    FID: Integer;
    [ioWhere(coLike)]
    FName: String;
  public
    property ID: Integer read FID write FID;
    property Name: String read FName write FName;
  end;

implementation

end.
