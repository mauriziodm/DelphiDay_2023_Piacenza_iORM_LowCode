unit ETM.Repository;

interface

uses
  iORM;

type

  [etmRepository('ETM_MAIN')]
  TTimeSlot = class(TioEtmCustomTimeSlot)

  end;

implementation

end.
