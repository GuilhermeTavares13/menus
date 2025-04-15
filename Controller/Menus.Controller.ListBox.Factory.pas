unit Menus.Controller.ListBox.Factory;

interface

uses Menus.Controller.Interfaces, System.Classes;

type
  TControllerListBoxFactory = class(TInterfacedObject, iControllerListBoxFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxFactory;
    function Default(Container: TComponent) : iControllerListBoxDefault;
    function Principal(Container : TComponent) : iControllerListBoxMenu;
    function Produto(Container : TComponent) : iControllerListBoxMenu;
    function Cliente(Container : TComponent) : iControllerListBoxMenu;
    function Fornecedor(Container : TComponent) : iControllerListBoxMenu;
  end;

implementation

uses
  Menus.Controller.ListBox.Default, Menus.Controller.ListBox.Principal,
  Menus.Controller.ListBox.Produto, Menus.Controller.ListBox.Fornecedor;

{ TControllerListBoxFactory }

function TControllerListBoxFactory.Cliente(
  Container: TComponent): iControllerListBoxMenu;
begin
  Result := TControllerListBoxProduto.New(Container);
end;

constructor TControllerListBoxFactory.Create;
begin

end;

function TControllerListBoxFactory.Default(
  Container: TComponent): iControllerListBoxDefault;
begin
  Result := TControllerListBoxDefault.New(Container);
end;

destructor TControllerListBoxFactory.Destroy;
begin

  inherited;
end;

function TControllerListBoxFactory.Fornecedor(
  Container: TComponent): iControllerListBoxMenu;
begin
  Result := TControllerListBoxFornecedor.New(Container);
end;

class function TControllerListBoxFactory.New: iControllerListBoxFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxFactory.Principal(
  Container: TComponent): iControllerListBoxMenu;
begin
  Result := TControllerListBoxPrincipal.New(Container);
end;

function TControllerListBoxFactory.Produto(
  Container: TComponent): iControllerListBoxMenu;
begin
  Result := TControllerListBoxProduto.New(Container);
end;

end.
