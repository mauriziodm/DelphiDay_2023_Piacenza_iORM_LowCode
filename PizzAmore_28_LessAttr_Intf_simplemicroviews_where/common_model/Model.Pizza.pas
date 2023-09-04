unit Model.Pizza;

interface

uses
  // "ioFMX" is defined in project options to indicate that it is a firemonkey project (Project | Options | Delphi Compiler | Conditional defines).
  // Note: You need to build your project (Project | Build <ProjectName> or Shift + F9) for the changes to take effect.
{$IFDEF ioFMX}
  Fmx.Graphics,
{$ELSE}
  Vcl.Graphics,
{$IFEND}
  iORM, Model.Interfaces, Model.BaseBO, System.Generics.Collections, ETM.Repository;

type

  [ioEntity('PIZZAS'), diImplements(IPizza)]
  [etmTrace(TTimeSlot)]
  TPizza = class(TBaseBO, IPizza)
  private
    FName: String;
    FPrice: Currency;
    FIngredients: TList<IIngredient>;
    [ioSkip([ssETM])]
    FImage: TBitmap;
    FObjVersion: TioObjVersion;
    FObjCreated: TioObjCreated;
    FObjCreatedUserID: TioObjCreatedUserID;
    FObjCreatedUserName: TioObjCreatedUserName;
    FObjUpdated: TioObjUpdated;
    FObjUpdatedUserID: TioObjUpdatedUserID;
    FObjUpdatedUserName: TioObjUpdatedUserName;
    // Name
    procedure SetName(const AValue: String);
    function GetName: String;
    // Price
    procedure SetPrice(const AValue: Currency);
    function GetPrice: Currency;
    // Image
    function GetImage: TBitmap;
    // Ingredients
    function GetIngredients: TList<IIngredient>;
    // ObjVersion
    function GetObjVersion: TioObjVersion;
  public
    constructor Create; overload;
    constructor Create(const AName: String; const APrice: Currency; const AImageFileName: String); overload;
    destructor Destroy; override;
    property Name: String read GetName write SetName;
    property Price: Currency read GetPrice write SetPrice;
    property Image: TBitmap read GetImage;
    property Ingredients: TList<IIngredient> read GetIngredients;
    property ObjVersion: TioObjVersion read GetObjVersion;
  end;

  [ioEntity('INGREDIENTS')]
  TIngredient = class(TBaseBO, IIngredient)
  private
    [ioVarchar(30)]
    FName: String;
    procedure SetName(const AValue: String);
    function GetName: String;
  public
    constructor Create(const AName: String);
    property Name: String read GetName write SetName;
  end;

implementation

{ TPizza }

constructor TPizza.Create;
begin
  inherited;
  FImage := TBitmap.Create;
  FIngredients := TList<IIngredient>.Create;
end;

constructor TPizza.Create(const AName: String; const APrice: Currency; const AImageFileName: String);
begin
  Create;
  FName := AName;
  FPrice := APrice;
  FImage.LoadFromFile(AImageFileName);
end;

destructor TPizza.Destroy;
begin
  FImage.Free;
  FIngredients.Free;
  inherited;
end;

function TPizza.GetImage: TBitmap;
begin
  Result := FImage;
end;

function TPizza.GetIngredients: TList<IIngredient>;
begin
  Result := FIngredients;
end;

function TPizza.GetName: String;
begin
  Result := FName;
end;

function TPizza.GetObjVersion: TioObjVersion;
begin
  Result := FObjVersion;
end;

function TPizza.GetPrice: Currency;
begin
  Result := FPrice;
end;

procedure TPizza.SetName(const AValue: String);
begin
  FName := AValue;
end;

procedure TPizza.SetPrice(const AValue: Currency);
begin
  FPrice := AValue;
end;

{ TIngredient }

constructor TIngredient.Create(const AName: String);
begin
  FName := AName;
end;

function TIngredient.GetName: String;
begin
  Result := FName;
end;

procedure TIngredient.SetName(const AValue: String);
begin
  FName := AValue;
end;

end.
