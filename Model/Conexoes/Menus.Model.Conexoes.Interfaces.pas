unit Menus.Model.Conexoes.Interfaces;

interface

uses
  System.Classes;

type
  iModelConexaoParametros = interface;

  iModelConexao = interface
    ['{E50F0C07-5044-4897-B397-F93996383411}']
    function Conectar : iModelConexao;
    function EndConexao : TComponent;
    function Parametros : iModelConexaoParametros;
  end;

  iModelConexaoParametros = interface
    ['{B06CC0B1-7DC8-43B2-9FB5-4679B9E6C12E}']
    function Database(Value : String) : iModelConexaoParametros;
    function UserName(Value : String) : iModelConexaoParametros;
    function Password(Value : String) : iModelConexaoParametros;
    function DriverID(Value : String) : iModelConexaoParametros;
    function Server(Value : String) : iModelConexaoParametros;
    function Porta(Value : Integer) : iModelConexaoParametros;
    function EndParametros : iModelConexao;
  end;

  iModelDataSet = interface
    ['{64B3B810-46B1-436A-8C9B-56DE6E82C6D5}']
    function Open(ATable : String) : iModelDataSet;
    function EndDataSet : TComponent;
  end;

  iModelFactoryConexao = interface
    ['{D724AB5B-A62C-4542-9B1E-861E6A9D3B38}']
    function ConexaoFiredac : iModelConexao;
  end;

  iModelFactoryDataSet = interface
    ['{6F54DBE6-2F1A-4BF1-AC93-5A350FEC7822}']
    function DataSetFiredac(Conexao : iModelConexao) : iModelDataSet;
  end;


implementation

end.
