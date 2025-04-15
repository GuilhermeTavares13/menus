unit Menus.View.Fornecedor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation;

type
  TfrmFornecedor = class(TForm)
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
  frmFornecedor: TfrmFornecedor;

implementation

uses
  Menus.Controller.ListBox.Factory;

{$R *.fmx}

procedure TfrmFornecedor.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Fornecedor(Layout1).Exibir;
end;

initialization
  RegisterFmxClasses(['TfrmFornecedor']);

end.
