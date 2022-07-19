unit kg;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
	System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
	TForm1 = class(TForm)
		GroupBox1: TGroupBox;
		ComboBox1: TComboBox;
		Button1: TButton;
		Panel1: TPanel;
		Label1: TLabel;
		Label2: TLabel;
		Edit1: TEdit;
		procedure FormCreate(Sender: TObject);
		procedure ComboBox1Change(Sender: TObject);
		procedure Button1Click(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	Form1: TForm1;
	o: integer;

type
	TProdotto = record
		Nome: String;
		Val1: Word;
		Val2: Word;
		Val3: Word;
		Val4: Word;
		Val5: Word;
	end;

const
	ProdN = 3;
	ListaSoftware: array [0 .. ProdN - 1] of TProdotto =
		((Nome: 'Asoftis 3D Box Creator'; Val1: $0002; Val2: $00DD; Val3: $0010;
		Val4: $000A; Val5: $01BD;), (Nome: 'Asoftis PC Cleaner'; Val1: $0002;
		Val2: $00F1; Val3: $000C; Val4: $000A; Val5: $01C1;
		), (Nome: 'Asoftis IP Changer'; Val1: $0002; Val2: $011E; Val3: $0011;
		Val4: $000C; Val5: $0319;));

implementation

{$R *.dfm}

function Generachiave(const Prodotto: TProdotto; const Nome: String): String;
var
	a, b, c: integer;
	S: String;
begin
	Result := '';
	S := Trim(Nome);
	if S <> '' then
	begin
		c := 0;
		for a := 0 to Length(S) do
		begin
			if a > 0 then
			begin
				for b := 0 to 255 do
				begin
					if Byte(S[a]) = b then
						Inc(c, Prodotto.Val1 * b);
				end;
			end;
			Inc(c, Length(S) * Prodotto.Val2);
		end;
		Result := IntToStr(c * Prodotto.Val3) +
			IntToStr(not(c * Prodotto.Val4 - Prodotto.Val5));
	end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
	Nome: string;
begin
	Nome := Edit1.Text;
	Label2.Caption := Generachiave(ListaSoftware[o], Nome);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
	if ComboBox1.ItemIndex = -1 then
		ShowMessage('Devi selezionare un prodotto')
	else
		Edit1.Visible := true;
	o := ComboBox1.ItemIndex;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
	for var i:integer := Low(ListaSoftware) to High(ListaSoftware) do
		ComboBox1.Items.Add(ListaSoftware[i].Nome);
end;

end.
