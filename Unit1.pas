unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ButtonMyAdd: TButton;
    EditValue1: TEdit;
    EditValue2: TEdit;
    EditResult: TEdit;
    LabelAnd: TLabel;
    LabelResult: TLabel;
    ButtonMySub: TButton;
    procedure ButtonMyAddClick(Sender: TObject);
    procedure ButtonMySubClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function MyAdd(txt1, txt2: string): string;
    function MySub(txt1, txt2: string): string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonMyAddClick(Sender: TObject);
begin
  EditResult.Text := MyAdd(EditValue1.Text, EditValue2.Text);
end;

procedure TForm1.ButtonMySubClick(Sender: TObject);
begin
  EditResult.Text := MySub(EditValue1.Text, EditValue2.Text);
end;

function TForm1.MyAdd(txt1: string; txt2: string): string;
var
  x, y, r: Integer;
begin
  x := StrToInt(txt1);
  y := StrToInt(txt2);
  r := x + y;
  result := r.ToString();
end;

function TForm1.MySub(txt1: string; txt2: string): string;
var
  x, y, r: Integer;
begin
  x := StrToInt(txt1);
  y := StrToInt(txt2);
  r := x - y;
  result := r.ToString();
end;

end.
