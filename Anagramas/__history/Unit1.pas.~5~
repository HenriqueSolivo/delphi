unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Generics.Collections, IOUtils;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Pesquisa: TEdit;
    Contador: TLabel;
    PinelGoblal: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure PesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Fpaises: TList<string>;
    FLabelsPaises: TDictionary<string, TLabel>;
    FAcertos: Integer;
    procedure CriarOjetosPises;
    function CriptografarPalavra(APalavra: string): string;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  ListaPaises: TArray<string>;
begin
  ListaPaises := TFile.ReadAllLines('C:\Users\Henrique\GitH\delphi\Racha_Cuca_Trivia\Paises.txt');

  Fpaises := TList<string>.Create(ListaPaises);
  FLabelsPaises := TDictionary<string, TLabel>.Create;
  FAcertos := 0;

  CriarOjetosPises;
end;

procedure TForm1.CriarOjetosPises;
const
  PalavrasPorPanel = 35;
var
  Panel: TPanel;
  Pias: TLabel;
  PaisOriginal: string;
  IndexPainel: Integer;
begin
  IndexPainel := 0;

  for var I := 0 to Fpaises.Count - 1 do
  begin
    PaisOriginal := Fpaises.Items[I];


    if FLabelsPaises.ContainsKey(PaisOriginal) then
      Continue;


    if (IndexPainel mod PalavrasPorPanel = 0) then
    begin
      Panel := TPanel.Create(Self);
      Panel.Parent := PinelGoblal;
      Panel.Align := alLeft;
      Panel.Width := 300;
    end;


    Pias := TLabel.Create(Self);
    Pias.Parent := Panel;
    Pias.Align := alTop;
    Pias.Alignment := taLeftJustify;
    Pias.Font.Size := 10;
    Pias.Caption := CriptografarPalavra(PaisOriginal);


    FLabelsPaises.Add(PaisOriginal, Pias);
    Inc(IndexPainel);
  end;
end;

function TForm1.CriptografarPalavra(APalavra: string): string;
var
  ConjuntoPalavras: TArray<string>;
begin
  Result := '';
  ConjuntoPalavras := APalavra.Trim.Split([' ']);

  for var Palavra in ConjuntoPalavras do
  begin
    if Palavra.Length > 0 then
    begin
      var PalavraCriptografada := UpperCase(Palavra[1]) +
        string.Empty.PadLeft(Palavra.Length - 1, '?');

      if Result.IsEmpty then
        Result := PalavraCriptografada
      else
        Result := Result + ' ' + PalavraCriptografada;
    end;
  end;
end;

procedure TForm1.PesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Pesquisar;
  end;
end;

procedure TForm1.Pesquisar;
var
  PalavraDigitada: string;
begin
  PalavraDigitada := Trim(Pesquisa.Text).ToLower;

  for var Pais in Fpaises do
  begin
    if PalavraDigitada = Pais.ToLower then
    begin
      if FLabelsPaises.ContainsKey(Pais) and
         (Pos('?', FLabelsPaises[Pais].Caption) > 0) then
      begin

        FLabelsPaises[Pais].Caption := Pais;


        Inc(FAcertos);
        Contador.Caption := 'Acertos: ' + FAcertos.ToString;
      end;
      Break;
    end;
  end;

  Pesquisa.Clear;
end;

end.

