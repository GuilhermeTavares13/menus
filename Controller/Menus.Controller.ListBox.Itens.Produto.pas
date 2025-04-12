unit Menus.Controller.ListBox.Itens.Produto;

interface

uses
  Menus.Controller.Interfaces, FMX.Types, Menus.Controller.ListBox.Itens.Factory;

type
  TControllerListBoxItensProduto = class(TInterfacedObject,iControllerListBoxItemForm)
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItemForm;
    function Show : TFmxObject;
  end;

implementation

{ TControllerListBoxItensProduto }

constructor TControllerListBoxItensProduto.Create;
begin

end;

destructor TControllerListBoxItensProduto.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensProduto.New: iControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensProduto.Show: TFmxObject;
begin
  Result :=
    TControllerListBoxItensFactory
      .New
      .Default
      .Name('btnProduto')
      .Text('Produto')
      .Item;
end;

end.
