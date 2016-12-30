unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ExtCtrls,math, shellapi, Menus, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Plik1: TMenuItem;
    info1: TMenuItem;
    Wersja1: TMenuItem;
    Autor1: TMenuItem;
    Zakocz1: TMenuItem;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label9: TLabel;
    Label10: TLabel;
    RadioButton1: TRadioButton;
    Button3: TButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    Edit3: TEdit;
    Memo2: TMemo;
    Button4: TButton;
  
    procedure Edit2Change(Sender: TObject);
    
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Zakocz1Click(Sender: TObject);
    procedure Wersja1Click(Sender: TObject);
    procedure Autor1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  d,v,n,  p: real;
implementation

{$R *.dfm}

procedure TForm1.Edit1Change(Sender: TObject);
begin
memo1.Clear;
label9.Caption := ' ';
label10.Caption := ' ';
 try
      StrToFloat(Edit1.Text);       {try except zabezpiecza przed wpisywaniem innych znaków ni¿ cyfry}
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit1.Text := '0';



end;
end;
end;
procedure TForm1.Edit2Change(Sender: TObject);
begin
memo1.Clear;
 label10.Caption := ' ';
 try
      StrToFloat(Edit2.Text);       {try except zabezpiecza przed wpisywaniem innych znaków ni¿ cyfry}
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit2.Text := '0';
end;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

d := strtofloat(Edit1.Text);
v := strtofloat(Edit2.Text);


begin

if (d < 0) or (d=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

if (v < 0) or (v=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

end;
begin
p := (v*1000)/(pi*d);

 begin

p:=RoundTo(p,-2);               {zaokr¹glenie do dwóch miejsc po przecinku}

Memo1.Text:=floattostr(p);
label9.Caption := edit1.Text;
label10.Caption := memo1.Text;
end;
end;
 begin
 if (p<0) or (p=0) then
 memo1.Clear;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if (p<0) or (p=0) then
MessageBox(0,'Najpierw kliknij na licz!', 'B³¹d wartosci',MB_OK);

p := (v*1000)/(pi*d);
begin
p:=RoundTo(p,-0);
Memo1.Text:=floattostr(p);
label9.Caption := edit1.Text;
label10.Caption := memo1.Text;
end;
 end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label8.Caption:=TimeToStr(Time);         {zegarek}
end;

procedure TForm1.Zakocz1Click(Sender: TObject);
begin
close
end;

procedure TForm1.Wersja1Click(Sender: TObject);
begin
MessageBox(0,'Wersja 1.1', 'B³¹d wartosci',MB_OK);
end;

procedure TForm1.Autor1Click(Sender: TObject);
begin
MessageBox(0,'Pawel Andrzejczyk', 'B³¹d wartosci',MB_OK);
end;



procedure TForm1.RadioButton1Click(Sender: TObject);
begin
button1.Visible:=true;
button3.Visible:=false;
button2.Visible:=true;
button4.Visible:=false;
memo1.Visible:=true;
edit3.Visible:=false;
memo2.Visible:=false;
edit2.Visible:=true;
edit1.Visible:=true;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
button1.Visible:=false;
button3.Visible:=true;
button2.Visible:=false;
button4.Visible:=true;
memo1.Visible:=false;
edit3.Visible:=true;
memo2.Visible:=true;
edit2.Visible:=false;
edit1.Visible:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
d := strtofloat(Edit1.Text);
n := strtofloat(Edit3.Text);


begin

if (d < 0) or (d=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

if (n < 0) or (n=0)  then
MessageBox(0,'WprowadŸ poprawn¹ liczbê!', 'B³¹d wartosci',MB_OK);

end;
begin
p := (pi*d*n)/(1000);

 begin

p:=RoundTo(p,-2);               {zaokr¹glenie do dwóch miejsc po przecinku}

memo2.Text:=floattostr(p);
label9.Caption := edit1.Text;
label10.Caption := edit3.Text;
end;
end;
 begin
 if (p<0) or (p=0) then
 memo2.Clear;
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if (p<0) or (p=0) then
MessageBox(0,'Najpierw kliknij na licz!', 'B³¹d wartosci',MB_OK);

p := (pi*d*n)/(1000);
begin
p:=RoundTo(p,-0);
Memo2.Text:=floattostr(p);
label9.Caption := edit1.Text;
label10.Caption := edit3.Text;
end;
 end;


end.

