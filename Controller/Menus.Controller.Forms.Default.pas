unit Menus.Controller.Forms.Default;

interface

type
  TControllerFormsDefault = class
    class procedure CreateForm(ClassName : String);
  end;

implementation

uses
  FMX.Types, System.Classes, FMX.Forms, System.SysUtils;

{ TControllerFormsDefault }

class procedure TControllerFormsDefault.CreateForm(ClassName: String);
var
  ObjFMX : TFMXObjectClass;
  NewForm : TCustomForm;
begin
  ObjFMX := TFMXObjectClass(GetClass(ClassName));
  try
    NewForm :=  (ObjFMX.Create(nil) as TCustomForm);
  except
     raise Exception.Create('Objeto n�o existe');
  end;
  try
    NewForm.ShowModal;
  finally
    NewForm.Free;
  end;
end;

end.
