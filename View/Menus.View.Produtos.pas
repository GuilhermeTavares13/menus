unit Menus.View.Produtos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.Types;

type
  TfrmProdutos = class(TForm)
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
  frmProdutos: TfrmProdutos;

implementation

uses
  Menus.Controller.ListBox.Factory;

{$R *.fmx}

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Produto(Layout1).Exibir;
end;

initialization
  RegisterFmxClasses(['TfrmProduto']);

end.
