unit Menus.Model.Conexoes.ConexaoFiredac;

interface

uses
  Menus.Model.Conexoes.Interfaces, System.Classes, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.FB;

type
  TModelConexaoFireDac = class(TInterfacedObject, iModelConexao,iModelConexaoParametros)
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
    procedure LerParametros;
    public
      function EndConexao : TComponent;
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConexao;
      function Parametros : iModelConexaoParametros;
      function Database(Value : String) : iModelConexaoParametros;
      function UserName(Value : String) : iModelConexaoParametros;
      function Password(Value : String) : iModelConexaoParametros;
      function DriverID(Value : String) : iModelConexaoParametros;
      function Server(Value : String) : iModelConexaoParametros;
      function Porta(Value : Integer) : iModelConexaoParametros;
      function EndParametros : iModelConexao;
  end;

implementation

uses
  System.SysUtils;


{ TConexaoFireDac }

constructor TModelConexaoFireDac.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(nil);
  FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(nil);
  LerParametros;
  FConexao.Connected := True;
end;

function TModelConexaoFireDac.Database(Value: String): iModelConexaoParametros;
begin
  Result := Self;
  FDatabase := Value;
end;

destructor TModelConexaoFireDac.Destroy;
begin
  FConexao.Free;
  FDGUIxWaitCursor1.Free;
  FDPhysFBDriverLink1.Free;
  inherited;
end;

function TModelConexaoFireDac.DriverID(Value: String): iModelConexaoParametros;
begin
  Result := Self;
  FDriverID := Value;
end;

function TModelConexaoFireDac.EndConexao: TComponent;
begin
  Result := FConexao;
end;

function TModelConexaoFireDac.EndParametros: iModelConexao;
begin
  Result := Self;
end;

procedure TModelConexaoFireDac.LerParametros;
begin
  FConexao.Params.Database := FDatabase;
  FConexao.Params.UserName := FUserName;
  FConexao.Params.Password := FPassword;
  FConexao.Params.DriverID := FDriverID;
  FConexao.Params.Add('Server=' + FServer);
  FConexao.Params.Add('Port=' + IntToStr(FPorta));
end;

class function TModelConexaoFireDac.New: iModelConexao;
begin
  Result := Self.Create;
end;

function TModelConexaoFireDac.Parametros: iModelConexaoParametros;
begin
  Result := Self;
end;

function TModelConexaoFireDac.Password(Value: String): iModelConexaoParametros;
begin
  Result := Self;
  FPassword := Value;
end;

function TModelConexaoFireDac.Porta(Value: Integer): iModelConexaoParametros;
begin
  Result := Self;
  FPorta := Value;
end;

function TModelConexaoFireDac.Server(Value: String): iModelConexaoParametros;
begin
  Result := Self;
  FServer := Value;
end;

function TModelConexaoFireDac.UserName(Value: String): iModelConexaoParametros;
begin
  Result := Self;
  FUserName := Value;
end;

end.
