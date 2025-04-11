unit Menus.Controller.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  iControllerListBoxItensFactory = interface
    ['{4EA74759-8DA1-4DB3-BA30-E943685610E7}']
  end;

  iControllerListBoxFactory = interface
    ['{F23FEAF5-8280-4F04-96AF-FFD7F7968D2A}']
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

implementation

end.
