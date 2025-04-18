unit Menus.Controller.ListBox.Principal;

interface

uses
  Menus.Controller.Interfaces, System.Classes;

type
  TControllerListBoxPrincipal = class(TInterfacedObject, iControllerListBoxMenu)
  private
    FContainer: TComponent;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): iControllerListBoxMenu;
    procedure Exibir;
  end;

implementation

uses
  FMX.Layouts, Menus.Controller.ListBox.Factory,
  Menus.Controller.ListBox.Itens.Factory;

{ TControllerListBoxPrincipal }

constructor TControllerListBoxPrincipal.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxPrincipal.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxPrincipal.Exibir;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Produto.Show)
    .AddItem(TControllerListBoxItensFactory.New.Cliente.Show)
    .AddItem(TControllerListBoxItensFactory.New.Fornecedor.Show)
    .Exibir;
end;

class function TControllerListBoxPrincipal.New(Container: TComponent)
  : iControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

end.
