unit Menus.Model.Conexoes.ConexaoFiredac;

interface

uses
  Menus.Model.Conexoes.Interfaces, System.Classes, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.FB;

type
  TModelConexaoFireDac = class(TInterfacedObject, iModelConexao)
    private
      FConexao : TFDConnection;
      FDGUIxWaitCursor1: TFDGUIxWaitCursor;
      FDPhysFBDriverLink1: TFDPhysFBDriverLink;
      FDatabase : String;
      FUserName : String;
      FPassword : String;
      FDriverID : String;
      FServer : String;
      FPorta : Integer;
    public
      function EndConexao : TComponent;
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConexao;
      function ConexaoParametros : iModelConexaoParametros;
  end;

implementation

{ TConexaoFireDac }

constructor TModelConexaoFireDac.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(nil);
  FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(nil);
end;

destructor TModelConexaoFireDac.Destroy;
begin
  FConexao.Free;
  FDGUIxWaitCursor1.Free;
  FDPhysFBDriverLink1.Free;
  inherited;
end;

function TModelConexaoFireDac.EndConexao: TComponent;
begin
  Result := FConexao;
end;

class function TModelConexaoFireDac.New: iModelConexao;
begin
  Result := Self.Create;
end;

end.
