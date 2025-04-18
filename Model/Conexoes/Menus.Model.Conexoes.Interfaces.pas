unit Menus.Model.Conexoes.Interfaces;

interface

uses
  System.Classes;

type
  iModelConexao = interface
    ['{E50F0C07-5044-4897-B397-F93996383411}']
    function EndConexao : TComponent;
  end;

  iModelConexaoParametros = interface
    ['{B06CC0B1-7DC8-43B2-9FB5-4679B9E6C12E}']
    function ConexaoParametros : iModelConexaoParametros;
  end;


implementation

end.
