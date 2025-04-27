unit Menus.Controller.Conexoes.Interfaces;

interface

uses Menus.Model.Conexoes.Interfaces;

type
  iControllerFactoryConexao = interface
   ['{809F263D-FBEE-42CF-BB2A-7FCABEF273B5}']
   function Conexao : iModelConexao;
  end;

  iControllerFactoryDataSet = interface
    ['{3177D00A-F030-40FA-B7A0-EAC9B998A67E}']
    function DataSet : iModelDataSet;
  end;

implementation

end.
