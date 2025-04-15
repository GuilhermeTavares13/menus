unit Menus.Controller.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  iControllerListBoxitensDefault = interface;
  iControllerListBoxDefault = interface;

  iControllerListBoxItemForm = interface
    ['{0CA66C6F-8805-47F8-BB4B-66A2375398B4}']
    function Show : TFmxObject;
  end;

  iControllerListBoxMenu = interface
    ['{4BBED6B4-579B-4B25-8286-23735D25C896}']
    procedure Exibir;
  end;

  iControllerListBoxItensFactory = interface
    ['{4EA74759-8DA1-4DB3-BA30-E943685610E7}']
    function Default : iControllerListBoxItensDefault;
    function Produto : iControllerListBoxItemForm;
    function Cliente : iControllerListBoxItemForm;
    function Fornecedor : iControllerListBoxItemForm;
  end;

  iControllerListBoxFactory = interface
    ['{F23FEAF5-8280-4F04-96AF-FFD7F7968D2A}']
    function Default(Container: TComponent) : iControllerListBoxDefault;
    function Principal(Container : TComponent) : iControllerListBoxMenu;
    function Produto(Container : TComponent) : iControllerListBoxMenu;
    function Cliente(Container : TComponent) : iControllerListBoxMenu;
    function Fornecedor(Container : TComponent) : iControllerListBoxMenu;
  end;

  iControllerListBoxItensDefault = interface
    ['{934CB2A0-92BD-44AA-BB31-35E3AB9BFE13}']
    function Name(Value : String) : iControllerListBoxItensDefault;
    function Text(Value : String) : iControllerListBoxItensDefault;
    function StyleLookup(Value : String) : iControllerListBoxItensDefault;
    function onClick(Value : TNotifyEvent) : iControllerListBoxItensDefault;
    function Item : TFMXOBject;
  end;


  iControllerStringListFactory = interface
    ['{FE3EBE41-6C9F-4656-B395-ECA01A9AF5D3}']
  end;

  iControllerStringListDefault = interface
    ['{3314AEBC-3D5D-4759-A0D1-6D1FFE8568E8}']
    function AddText(Value : String) : iControllerStringListDefault;
    function SaveToFile(Value : String) : iControllerStringListDefault;
    function Item : TStringList;
  end;

  iControllerListBoxDefault = interface
    ['{E40AF6F9-5E0F-4154-9F0C-A42E3E0863D6}']
    function Name(Value : String) : iControllerListBoxDefault;
    function Align(Value : TAlignLayout) : iControllerListBoxDefault;
    function ItemHeight(Value : Integer) : iControllerListBoxDefault;
    function AddItem(Value : TFmxObject) : iControllerListBoxDefault;
    function Lista : TFmxObject;
    procedure Exibir;
  end;

implementation

end.
