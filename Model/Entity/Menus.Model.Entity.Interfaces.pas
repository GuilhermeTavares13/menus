unit Menus.Model.Entity.Interfaces;

interface

uses
  System.Classes,
  Menus.Model.Conexoes.Interfaces;

type
  iModelEntity = interface
    ['{75D2D218-3B5D-49A5-8AE0-BF347A270DD8}']
    function Listar : TComponent;
  end;

  iModelEntityFactory = interface
    ['{8DF1F528-6BB6-4840-91E3-1EAA09006987}']
    function Produtos(DataSet : iModelDataSet) : iModelEntity;
  end;

implementation


end.
