unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ButtonExcute: TButton;
    EditNum1: TEdit;
    EditNum2: TEdit;
    EditResult: TEdit;
    LabelAdd: TLabel;
    LabelResult: TLabel;
    procedure ButtonExcuteClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function DoMyJob(txt1, txt2: string): string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function MyAdd(x,y : Integer) : Integer;
begin
  Result := x + y;
end;


procedure TForm1.ButtonExcuteClick(Sender: TObject);
begin
  EditResult.Text := DoMyJob(EditNum1.Text, EditNum2.Text);
end;

function TForm1.DoMyJob(txt1: string; txt2: string) : string;
var
  x, y,r : Integer;
begin
  x := StrToInt(txt1);
  y := StrToInt(txt2);
  r := MyAdd(x,y);
  result := r.ToString();
end;

end.
