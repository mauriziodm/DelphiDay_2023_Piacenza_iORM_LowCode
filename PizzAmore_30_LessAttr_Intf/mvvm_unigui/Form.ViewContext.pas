unit Form.ViewContext;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, iORM.StdActions.CloseQueryRepeater;

type
  TViewContextForm = class(TUniForm)
    ioCloseQueryRepeater1: TioCloseQueryRepeater;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}

end.
