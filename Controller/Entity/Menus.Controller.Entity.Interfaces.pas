unit Menus.Controller.Entity.Interfaces;

interface

uses
  Data.DB;

type
  iControllerEntity = interface
    ['{CEB51F1A-9524-4533-9087-A6E90878C877}']
    function Listar(aDataSource : TDataSource) : iControllerEntity;
  end;

  iControllerEntityFactory = interface
    ['{5E698B1C-C6F7-4BF8-BC18-871FE2621379}']
    function Produto : iControllerEntity;
  end;

implementation

end.
