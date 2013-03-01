unit LoginU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TLoginFrm = class(TForm)
    Label1: TLabel;
    edtUserName: TEdit;
    bbnOK: TBitBtn;
    bbnCancel: TBitBtn;
    edtPassword: TEdit;
    Label2: TLabel;
    procedure bbnCancelClick(Sender: TObject);
    procedure bbnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtUserNameKeyPress(Sender: TObject; var Key: Char);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure edtUserNameExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    isTerminate: boolean;
  end;

var
  LoginFrm: TLoginFrm;

implementation

uses CommU;

{$R *.dfm}

procedure TLoginFrm.bbnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TLoginFrm.bbnOKClick(Sender: TObject);
var
  id: integer;
  sUser, sPwd: string;

begin
  isTerminate := true;
  procGetIniInfo;
  saveUserCode(edtUserName.Text);
 // if usename<>'' then;
  //edtUserName.Text:=usename;
  sUser := Trim(edtUserName.Text);
  sPwd := Trim(edtPassword.Text);
 // procWriteIniInfo;
  Screen.Cursor := crHourGlass;
  try
    if funcConnectDB() then
    begin
      User := TUserInfo.Create(sUser, sPwd);
      //��֤�û�����
      id := User.funcLogin;
      case id of
        -1:
          FuncShowMessage(Handle, '����δ֪����', 2);
        0:
          begin
            //��֯�û���Ϣ
            if User.funcGetMenuList then
            begin
              isTerminate := false;
              close;
            end;
          end;
        1:
          FuncShowMessage(Handle, '�û������ڣ�', 2);
        2:
          FuncShowMessage(Handle, '�������', 2);
        3:
          FuncShowMessage(Handle, '�ʺ���������', 2);
        4:
          FuncShowMessage(Handle, '�ʺ���ע����', 2);
        5:
          FuncShowMessage(Handle, '�ʺŲ��Ǳ�ϵͳ����Ա��', 2);
      end;
    end;
    usename := edtUserName.Text;
    //procWriteIniInfo;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TLoginFrm.FormCreate(Sender: TObject);
var
  sFileName: string;
begin
  isTerminate := true;
  sFileName := GetAppPath + LOGINFILE;
end;

procedure TLoginFrm.edtUserNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    edtPassword.SelectAll;
    edtPassword.SetFocus;
  end;
end;

procedure TLoginFrm.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    bbnOK.SetFocus;
    bbnOK.Click;
  end;
end;

procedure TLoginFrm.edtUserNameExit(Sender: TObject);
begin
  edtUserName.Text := UpperCase(edtUserName.Text);
end;

procedure TLoginFrm.FormShow(Sender: TObject);
begin
  procGetIniInfo;

  edtUserName.Text := readUserCode;

end;

end.
