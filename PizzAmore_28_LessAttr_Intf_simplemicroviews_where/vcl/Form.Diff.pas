unit Form.Diff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ETM.Repository, iORM, Vcl.StdCtrls;

type

  [diSimpleViewFor(TTimeSlot)]
  TDiffForm = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Model.Interfaces;

{$R *.dfm}

procedure TDiffForm.Button1Click(Sender: TObject);
var
  LPizza: IPizza;
  LTimeLine: TioEtmTimeLine;
  LDiff: String;
begin
  LPizza := io.LoadObject<IPizza>(4);
  LTimeLine := io.etm.TimeLineFor(LPizza);
  try
//    ShowMessage(Format('Timeline contains %d items.', [LTimeLine.Count]));
//    LDiff := io.etm.Diff(LPizza, LTimeLine[0], dmOneway, True);
    LDiff := io.etm.Diff(LPizza, LTimeLine[0], dmTwoway, False);
    Memo1.Clear;
    Memo1.Lines.Text := LDiff;
  finally
    LTimeLine.Free;
  end;
end;

procedure TDiffForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
