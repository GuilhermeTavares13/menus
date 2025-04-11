unit Menus.Controller.StringList.Factory;

interface

uses Menus.Controller.Interfaces;

type
  TControllerStringListFactory = class(TInterfacedObject,iControllerStringListFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerStringListFactory;
  end;

implementation

{ TControllerStringListFactory }

constructor TControllerStringListFactory.Create;
begin

end;

destructor TControllerStringListFactory.Destroy;
begin

  inherited;
end;

class function TControllerStringListFactory.New: iControllerStringListFactory;
begin
  Result := Self.Create;
end;

end.
