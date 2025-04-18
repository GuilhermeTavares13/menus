unit Menus.View.Cliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Types;

type
  TfrmCliente = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

uses
  Menus.Controller.ListBox.Factory;

{$R *.fmx}

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Cliente(Layout1).Exibir;
end;

initialization
  RegisterFmxClasses([TfrmCliente]);

end.
