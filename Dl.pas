unit Dl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtDlgs, StdCtrls, ExtCtrls, Jpeg, Printers;

type                                    
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Panel1: TPanel;
    Image1: TImage;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReplaceDialog1Find(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  EditFile: string;

implementation

{$R *.DFM}

procedure TForm1.Button12Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
 Memo1.Font.Size:=8;
 Memo1.Font.Color:=clWindowText;
 Memo1.Color:=clWindow;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
  begin
   EditFile:=OpenDialog1.FileName;
   Memo1.Lines.LoadFromFile(EditFile);
   Form1.Caption:='My Word - '+ExtractFileName(EditFile);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 //if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(EditFile);//запись на пр€мую в файл
  if Memo1.Modified then Memo1.Modified:=false;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
 if SaveDialog1.Execute then//запись в файл + диалоговое оконо
  begin
   EditFile:=SaveDialog1.FileName;
   Memo1.Lines.SaveToFile(EditFile);
   Form1.Caption:='My Word - '+ExtractFileName(EditFile);
   if Memo1.Modified then Memo1.Modified:=false;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 if FontDialog1.Execute then Memo1.Font:=FontDialog1.Font;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 if ColorDialog1.Execute then Memo1.Font.Color:=ColorDialog1.Color;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
if ColorDialog1.Execute then Memo1.Color:=ColorDialog1.Color;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
 Stroka:System.TextFile;
 i:integer;    
begin
 if PrintDialog1.Execute then
  begin
   AssignPrn(Stroka);
   Rewrite(Stroka);
   Printer.Canvas.Font:=Memo1.Font;
   for i:=0 to Memo1.Lines.Count-1 do
    Writeln(Stroka,Memo1.Lines[i]);
   System.CloseFile(Stroka);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
  Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 if SavePictureDialog1.Execute then
  Image1.Picture.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
 PrinterSetupDialog1.Execute;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 FindDialog1.Execute;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
 ReplaceDialog1.Execute;
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
{begin
 //ищетс€ первое по€вление строки
 if pos(FindDialog1.FindText,Memo1.Text)<>0 then
  begin
   Memo1.HideSelection:=false;
   Memo1.SelStart:=pos(FindDialog1.FindText,Memo1.Text)-1;
   Memo1.SelLength:=Length(FindDialog1.FindText);
  end
 else
  MessageDlg('String '+FindDialog1.FindText+' not found!',mtConfirmation,[mbYes],0);}
var
 Buff,P,FT: PChar;
 BuffLen: Word;
begin
 with Sender as TFindDialog do
  begin
   GetMem(FT, Length(FindText) + 1);
   StrPCopy(FT, FindText);
   BuffLen:= Memo1.GetTextLen + 1;
   GetMem(Buff, BuffLen);
   Memo1.GetTextBuf(Buff, BuffLen);
   P:= Buff + Memo1.SelStart + Memo1.SelLength;
   P:= StrPos(P, FT);
   if P=nil then MessageBeep(0)
   else
    begin
     Memo1.SelStart:= P - Buff;
     Memo1.SelLength:= Length(FindText);
    end;
   FreeMem(FT, Length(FindText) + 1);
   FreeMem(Buff, BuffLen);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 EditFile:='Noname.txt';
 Form1.Caption:='My Word - '+ExtractFileName(EditFile);
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
label 10;//метка
begin
 Memo1.HideSelection:=true;
 10://метка
  if pos(ReplaceDialog1.FindText,Memo1.Text)<>0 then
   begin
    Memo1.SelStart:=pos(ReplaceDialog1.FindText,Memo1.Text)-1;
    Memo1.SelLength:=Length(ReplaceDialog1.FindText);
    Memo1.SelText:=ReplaceDialog1.ReplaceText;
    goto 10;
   end;
 Memo1.HideSelection:=false;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Memo1.Modified then
  if MessageDlg('File '+ExtractFileName(EditFile)+' changed'+#10#13'Confirm Exit?',
   mtConfirmation,[mbYes,mbNo],0)=mrYes
   then Action:=caFree
   else Action:=caNone;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.ReplaceDialog1Find(Sender: TObject);
begin
 with Sender as TReplaceDialog do
  while True do
   begin
    if Memo1.SelText <> FindText then
    FindDialog1Find(Sender);
    if Memo1.SelLength = 0 then Break;
    Memo1.SelText:= ReplaceText;
    if not (frReplaceAll in Options) then Break;
   end;
end;

end.
