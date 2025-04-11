unit Menus.Controller.StringList.Default;

interface

uses Menus.Controller.Interfaces, System.Classes;

type
  TControllerStringListDefault = class(TInterfacedObject,iControllerStringListDefault)
  private
    FStringList : TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerStringListDefault;
    function AddText(Value : String) : iControllerStringListDefault;
    function SaveToFile(Value : String) : iControllerStringListDefault;
    function Item : TStringList;
  end;

implementation

{ TControllerStringListDefault }

function TControllerStringListDefault.AddText(
  Value: String): iControllerStringListDefault;
begin
  Result := Self;
  FStringList.Add(Value);
end;

constructor TControllerStringListDefault.Create;
begin
  FStringList.Create;
end;

destructor TControllerStringListDefault.Destroy;
begin

  inherited;
end;

function TControllerStringListDefault.Item: TStringList;
begin
  Result := FStringList;
end;

class function TControllerStringListDefault.New: iControllerStringListDefault;
begin
  Result := Self.Create;
end;

function TControllerStringListDefault.SaveToFile(
  Value: String): iControllerStringListDefault;
begin
  Result := Self;
  FStringList.SaveToFile(Value);
end;

end.
