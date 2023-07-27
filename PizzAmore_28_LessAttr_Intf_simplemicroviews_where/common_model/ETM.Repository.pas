unit ETM.Repository;

interface

uses
  iORM;

type

  [etmRepository('ETM_MAIN')]
  TMainRepo = class(TioEtmCustomRepository)

  end;

implementation

end.
