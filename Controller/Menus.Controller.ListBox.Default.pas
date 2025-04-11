unit Menus.Controller.ListBox.Default;

interface

uses Menus.Controller.Interfaces, System.Classes, FMX.ListBox, FMX.Types;

type
  TControllerListBoxDefault = class(TInterfacedObject, iControllerListBoxDefault)
  private
    FContainer : TComponent;
    FListBox : TListBox;
  public
    constructor Create(Container : TComponent);
    destructor Destroy; override;
    class function New(Container : TComponent) : iControllerListBoxDefault;
    function Name(Value : String) : iControllerListBoxDefault;
    function Align(Value : TAlignLayout) : iControllerListBoxDefault;
    function ItemHeight(Value : Integer) : iControllerListBoxDefault;
    function AddItem(Value : TFmxObject) : iControllerListBoxDefault;
    function Lista : TFMXOBject;
  end;

implementation

{ TControllerListBoxDefault }

function TControllerListBoxDefault.AddItem(
  Value: TFmxObject): iControllerListBoxDefault;
begin
  Result := Self;
end;

function TControllerListBoxDefault.Align(
  Value: TAlignLayout): iControllerListBoxDefault;
begin
  Result := Self;
  FListBox.Align := Value;
end;

constructor TControllerListBoxDefault.Create(Container : TComponent);
begin
  FContainer := Container;
  New(FContainer)
  .Name('ListaDefault')
  .Align(TAlignLayout.Client)
  .ItemHeight(60);
end;

destructor TControllerListBoxDefault.Destroy;
begin

  inherited;
end;

function TControllerListBoxDefault.Lista: TFMXOBject;
begin
  Result := FListBox;
end;

function TControllerListBoxDefault.ItemHeight(
  Value: Integer): iControllerListBoxDefault;
begin
  Result := Self;
  FListBox.ItemHeight := Value;
end;

function TControllerListBoxDefault.Name(
  Value: String): iControllerListBoxDefault;
begin
  Result := Self;
  FListBox.Name := Value;
end;

class function TControllerListBoxDefault.New(Container : TComponent): iControllerListBoxDefault;
begin
  Result := Self.Create(Container);
end;

end.
