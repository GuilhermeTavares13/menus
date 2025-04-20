unit Menus.Model.Conexoes.TableFiredac;

interface

uses
  Menus.Model.Conexoes.Interfaces, System.Classes, FireDAC.Comp.Client;

type
  TModelConexoesTableFiredac = class(TInterfacedObject, iModelDataSet)
    private
      FTable : TFDTable;
    public
      constructor Create(Conexao : iModelConexao);
      destructor Destroy; override;
      class function New(Conexao : iModelConexao) : iModelDataSet;
      function Open(ATable : String) : iModelDataSet;
      function EndDataSet : TComponent;
  end;

implementation

{ TTableFiredac }

constructor TModelConexoesTableFiredac.Create(Conexao : iModelConexao);
begin
  FTable := TFDtable.Create(nil);
  FTable.Connection := (Conexao.EndConexao as TFDConnection);
end;

destructor TModelConexoesTableFiredac.Destroy;
begin
  FTable.Free;
  inherited;
end;

function TModelConexoesTableFiredac.EndDataSet: TComponent;
begin
  Result := FTable;
end;

class function TModelConexoesTableFiredac.New(Conexao : iModelConexao): iModelDataSet;
begin
  Result := Self.Create(Conexao);
end;

function TModelConexoesTableFiredac.Open(ATable: String): iModelDataSet;
begin
  Result := Self;
  FTable.Open(ATable);
end;

end.
