unit Menus.Controller.Conexoes.Factory.Conexao;

interface

uses Menus.Controller.Conexoes.Interfaces, Menus.Model.Conexoes.Interfaces,
  Menus.Model.Conexoes.Factory.Conexao;

type
  TControllerConexoesFactoryConexao = class(TInterfacedObject, iControllerFactoryConexao)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerFactoryConexao;
      function Conexao : iModelConexao;
  end;

implementation

{ TControllerConexoesFactoryConexao }


function TControllerConexoesFactoryConexao.Conexao: iModelConexao;
begin
  Result := TModelConexaoFactoryConexoes
          .New
          .ConexaoFireDac
          .Parametros
          .Database('D:\Bancos\Firebird\DIVERSOS.FDB')
          .UserName('SYSDBA')
          .Password('materkey')
          .DriverID('FB')
          .Server('localhost')
          .Porta(3050)
          .EndParametros
          .Conectar;
end;

constructor TControllerConexoesFactoryConexao.Create;
begin

end;

destructor TControllerConexoesFactoryConexao.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFactoryConexao.New: iControllerFactoryConexao;
begin
  Result := Self.Create;
end;

end.
