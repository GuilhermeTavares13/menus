unit Menus.Controller.ListBox.Itens.Factory;

interface

uses Menus.Controller.Interfaces;

type
  TControllerListBoxItensFactory = class(TInterfacedObject,iControllerListBoxItensFactory)
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItensFactory;
    function Default : iControllerListBoxItensDefault;
    function Produto : iControllerListBoxItemForm;
    function Cliente : iControllerListBoxItemForm;
    function Fornecedor : iControllerListBoxItemForm;
  end;

implementation

uses
  Menus.Controller.ListBox.Itens.Default, Menus.Controller.ListBox.Itens.Produto,
  Menus.Controller.ListBox.Itens.Cliente,
  Menus.Controller.ListBox.Itens.Fornecedor;

{ TControllerListBoxItensFactory }

function TControllerListBoxItensFactory.Cliente: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensCliente.New;
end;

constructor TControllerListBoxItensFactory.Create;
begin

end;

function TControllerListBoxItensFactory.Default: iControllerListBoxItensDefault;
begin
  Result := TControllerListBoxitensDefault.New;
end;

destructor TControllerListBoxItensFactory.Destroy;
begin

  inherited;
end;

function TControllerListBoxItensFactory.Fornecedor: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensFornecedor.New;
end;

class function TControllerListBoxItensFactory.New: iControllerListBoxItensFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensFactory.Produto: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensProduto.New;
end;

end.
