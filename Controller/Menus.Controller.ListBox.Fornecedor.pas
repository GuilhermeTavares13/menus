unit Menus.Controller.ListBox.Fornecedor;

interface

uses
  Menus.Controller.Interfaces, System.Classes;

type
  TControllerListBoxFornecedor = class(TInterfacedObject, iControllerListBoxMenu)
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

{ TControllerListBoxProduto }

constructor TControllerListBoxFornecedor.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxFornecedor.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxFornecedor.Exibir;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Cliente.Show)
    .Exibir;
end;

class function TControllerListBoxFornecedor.New(Container: TComponent)
  : iControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;


end.
