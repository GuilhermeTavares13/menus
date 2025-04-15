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
    procedure onClick(Sender : TObject);
  end;

implementation

{ TControllerListBoxItensProduto }

uses Menus.View.Produtos;

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

procedure TControllerListBoxItensProduto.onClick(Sender: TObject);
begin
  frmProdutos.Show;
end;

function TControllerListBoxItensProduto.Show: TFmxObject;
begin
  Result :=
    TControllerListBoxItensFactory
      .New
      .Default
      .Name('btnProduto')
      .Text('Produto')
      .onClick(onClick)
      .Item;
end;

end.
