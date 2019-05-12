program Project1;

uses
  Forms,
  Controls,
  Principale in 'Principale.pas' {Dashboard},
  Login in 'Login.pas' {LoginForm},
  DataMod in 'DataMod.pas' {DataModule1: TDataModule};

{$R *.res}
var f : TLoginForm ;
begin
f := TLoginForm.Create(application);
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);

  if f.ShowModal=mrok then
  begin
  try
    Application.CreateForm(TDashboard, Dashboard);
    Application.MainForm.Name:='Dashboard' ;
    Application.Run ;
  finally
    f.Free ;
  end;


  end;

  Application.CreateForm(TLoginForm, LoginForm);

  Application.Run;
end.
