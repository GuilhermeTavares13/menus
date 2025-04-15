unit Menus.Controller.ListBox.Itens.Fornecedor;


interface

uses
  Menus.Controller.Interfaces, FMX.Types, Menus.Controller.ListBox.Itens.Factory;

type
  TControllerListBoxItensFornecedor = class(TInterfacedObject,iControllerListBoxItemForm)
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItemForm;
    function Show : TFmxObject;
    procedure onClick(Sender : TObject);
  end;

implementation

{ TControllerListBoxItensProduto }

uses Menus.View.Fornecedor;

constructor TControllerListBoxItensFornecedor.Create;
begin

end;

destructor TControllerListBoxItensFornecedor.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensFornecedor.New: iControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensFornecedor.onClick(Sender: TObject);
begin
  frmFornecedor.Show;
end;

function TControllerListBoxItensFornecedor.Show: TFmxObject;
begin
  Result :=
    TControllerListBoxItensFactory
      .New
      .Default
      .Name('btnFornecedor')
      .Text('Fornecedor')
      .onClick(onClick)
      .Item;
end;

end.
