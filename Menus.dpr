program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Principal in 'View\Menus.View.Principal.pas' {Form1},
  Menus.Controller.Interfaces in 'Controller\Menus.Controller.Interfaces.pas',
  Menus.Model.Interfaces in 'Model\Menus.Model.Interfaces.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus.Controller.ListBox.Itens.Factory.pas',
  Menus.Controller.ListBox.Factory in 'Controller\Menus.Controller.ListBox.Factory.pas',
  Menus.Controller.ListBox.Itens.Default in 'Controller\Menus.Controller.ListBox.Itens.Default.pas',
  Menus.Controller.StringList.Factory in 'Controller\Menus.Controller.StringList.Factory.pas',
  Menus.Controller.StringList.Default in 'Controller\Menus.Controller.StringList.Default.pas',
  Menus.Controller.ListBox.Default in 'Controller\Menus.Controller.ListBox.Default.pas',
  Menus.Controller.ListBox.Itens.Produto in 'Controller\Menus.Controller.ListBox.Itens.Produto.pas',
  Menus.Controller.ListBox.Principal in 'Controller\Menus.Controller.ListBox.Principal.pas',
  Menus.Controller.ListBox.Itens.Cliente in 'Controller\Menus.Controller.ListBox.Itens.Cliente.pas',
  Menus.View.Produtos in 'View\Menus.View.Produtos.pas' {frmProdutos},
  Menus.View.Cliente in 'View\Menus.View.Cliente.pas' {frmCliente},
  Menus.Controller.ListBox.Produto in 'Controller\Menus.Controller.ListBox.Produto.pas',
  Menus.Controller.ListBox.Cliente in 'Controller\Menus.Controller.ListBox.Cliente.pas',
  Menus.View.Fornecedor in 'View\Menus.View.Fornecedor.pas' {frmFornecedor},
  Menus.Controller.ListBox.Fornecedor in 'Controller\Menus.Controller.ListBox.Fornecedor.pas',
  Menus.Controller.ListBox.Itens.Fornecedor in 'Controller\Menus.Controller.ListBox.Itens.Fornecedor.pas',
  Menus.Controller.Forms.Default in 'Controller\Menus.Controller.Forms.Default.pas',
  Menus.Model.Conexoes.Interfaces in 'Model\Conexoes\Menus.Model.Conexoes.Interfaces.pas',
  Menus.Model.Conexoes.ConexaoFiredac in 'Model\Conexoes\Menus.Model.Conexoes.ConexaoFiredac.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
