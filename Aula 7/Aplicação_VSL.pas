unit Aplicação_VSL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    FCcontador: Integer;
    FImagemSelecionado: TImage;
    function SortearImage: string;
    procedure EventoAoEntrarNaImgame(Sender: TObject);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Math;

procedure TForm1.EventoAoEntrarNaImgame(Sender: TObject);

Var
  Stream: TFileStream;

begin
  Stream := TFileStream.Create(SortearImage, 0);
  try
    TImage(Sender).Picture.Assign(nil);
    TImage(Sender).Picture.LoadFromStream(Stream);
    TImage(Sender).Repaint;
    FImagemSelecionado := TImage(Sender);
    Inc(FCcontador);
    Self.Caption := 'Trocas: ' + FCcontador.ToString;

  finally
    Stream.Free;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FCcontador := 0;
end;

procedure TForm1.FormShow(Sender: TObject);
const
  QTD_colunas = 10;
  QTD_linhas = 10;
  QTD_size = 64;
var
  Button: TImage;
  Stream: TFileStream;
begin
  for var Collondex := 1 to QTD_colunas do
    for var LinhaIdex := 1 to QTD_linhas do
    begin
      Stream := TFileStream.Create(SortearImage, 0);
      try
        Button := TImage.Create(Self);
        Button.Parent := Self;
        Button.Height := QTD_size;
        Button.Width := QTD_size;
        Button.Picture.LoadFromStream(Stream);
        Button.Left := (Collondex - 1) * QTD_size;
        Button.Top := (LinhaIdex - 1) * QTD_size;
        Button.OnMouseEnter := EventoAoEntrarNaImgame;
      finally
        Stream.Free;
      end;
    end;
end;

function TForm1.SortearImage: string;
const
  DIR = 'C:\Users\Henrique\GitH\delphi\Aula 7\';
  EXT = '.PNG';
var
  Index: Integer;
begin
  Index := RandomRange(1, 6);
  Result := DIR + 'Imagem' + Index.ToString + EXT;
end;

procedure TForm1.TimerTimer(Sender: TObject);
var
Stream: TFileStream;

begin
  if Assigned(FImagemSelecionado) then
  begin
    Stream := TFileStream.Create(SortearImage, 0);
    try
    FImagemSelecionado.Picture.Assign(nil);
      FImagemSelecionado.Picture.LoadFromStream(Stream);
      FImagemSelecionado.Repaint;
    finally
      Stream.Free;
    end;

  end;
end;

end.
