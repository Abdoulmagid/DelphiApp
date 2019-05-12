unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, jpeg, ExtCtrls;

type
  TLoginForm = class(TForm)
    userField: TEdit;
    passField: TMaskEdit;
    userLabel: TLabel;
    passLabel: TLabel;
    connectBtn: TButton;
    quitBtn: TButton;
    CheckBox1: TCheckBox;
    Image1: TImage;
    Image2: TImage;
    procedure CheckBox1Click(Sender: TObject);
    procedure quitBtnClick(Sender: TObject);
    procedure connectBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

procedure TLoginForm.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
  passField.PasswordChar:=#0
else
  passField.PasswordChar:='*' ;
end;

procedure TLoginForm.quitBtnClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TLoginForm.connectBtnClick(Sender: TObject);
begin
if (userField.Text='') then
  begin
  ShowMessage('Entrez le nom d utilisateur');
  end
else
 if (passField.Text='') then
  begin
  ShowMessage('Entrez le mot de passe');
  end
  else
    begin
    modalresult := mrok;
    end;
end;

end.
