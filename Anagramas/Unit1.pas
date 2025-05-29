unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Generics.Collections, IOUtils,
  System.Generics.Defaults, System.Character;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Contador: TLabel;
    PinelGoblal: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Letra1: TButton;
    Letra2: TButton;
    Letra3: TButton;
    Letra4: TButton;
    Letra5: TButton;
    Letra6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure LetraClick(Sender: TObject);
  private
    Fpaises: TList<string>;
    FLabelsPaises: TDictionary<string, TLabel>;
    FAcertos: Integer;
    FResposta: string;
    procedure CriarOjetosPises;
    function CriptografarPalavra(APalavra: string): string;
    function RemoverAcentos(const Texto: string): string;
    procedure Pesquisar;
    procedure CriarBotoesLetras;
    procedure BotaoLetraClick(Sender: TObject);
    procedure BtnRevelarClick(Sender: TObject);
    procedure BtnReembaralharClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure Venceu;
    procedure AtualizarRespostaVisual;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.RemoverAcentos(const Texto: string): string;
const
  ComAcento  = '¡¿¬√…» ÕÃŒ”“‘’⁄Ÿ€«·‡‚„ÈËÍÌÏÓÛÚÙı˙˘˚Á';
  SemAcento  = 'AAAAEEEIIIOOOOUUUCaaaaeeeiiioooouuuc';
var
  i, j: Integer;
begin
  Result := Texto;
  for i := 1 to Length(Result) do
  begin
    for j := 1 to Length(ComAcento) do
    begin
      if Result[i] = ComAcento[j] then
      begin
        Result[i] := SemAcento[j];
        Break;
      end;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ListaPaises: TArray<string>;
  i: Integer;
begin
  ListaPaises := TFile.ReadAllLines('C:\Users\Henrique\GitH\delphi\Racha_Cuca_Trivia\Palavras.txt');
  Fpaises := TList<string>.Create(ListaPaises);
  FLabelsPaises := TDictionary<string, TLabel>.Create;
  FAcertos := 0;
  FResposta := '';
  CriarOjetosPises;
  CriarBotoesLetras;

  // Atribui o evento LetraClick aos botıes fixos
  for i := 1 to 6 do
    if FindComponent('Letra' + i.ToString) is TButton then
      TButton(FindComponent('Letra' + i.ToString)).OnClick := LetraClick;
end;

procedure TForm1.CriarBotoesLetras;
var
  Letras: array of Char;
  Botao, BtnRevelar, BtnReembaralhar, BtnLimpar: TButton;
  i: Integer;
begin
  SetLength(Letras, 6);
  Letras[0] := 'R';
  Letras[1] := 'A';
  Letras[2] := 'S';
  Letras[3] := 'T';
  Letras[4] := 'E';
  Letras[5] := 'O';

  TArray.Sort<Char>(Letras, TComparer<Char>.Construct(
    function(const L, R: Char): Integer
    begin
      Result := Random(3) - 1;
    end
  ));

  for i := Panel2.ControlCount - 1 downto 0 do
    Panel2.Controls[i].Free;

  FResposta := '';
  AtualizarRespostaVisual;

  for i := 0 to High(Letras) do
  begin
    Botao := TButton.Create(Self);
    Botao.Parent := Panel2;
    Botao.Caption := Letras[i];
    Botao.Width := 60;
    Botao.Height := 60;
    Botao.Left := i * 65;
    Botao.Top := 10;
    Botao.Font.Size := 18;
    Botao.OnClick := BotaoLetraClick;
  end;

  BtnRevelar := TButton.Create(Self);
  BtnRevelar.Parent := Panel2;
  BtnRevelar.Caption := 'Revelar Palavra';
  BtnRevelar.Width := 180;
  BtnRevelar.Height := 40;
  BtnRevelar.Left := 0;
  BtnRevelar.Top := 80;
  BtnRevelar.Font.Size := 10;
  BtnRevelar.OnClick := BtnRevelarClick;

  BtnReembaralhar := TButton.Create(Self);
  BtnReembaralhar.Parent := Panel2;
  BtnReembaralhar.Caption := 'Reembaralhar Letras';
  BtnReembaralhar.Width := 180;
  BtnReembaralhar.Height := 40;
  BtnReembaralhar.Left := 200;
  BtnReembaralhar.Top := 80;
  BtnReembaralhar.Font.Size := 10;
  BtnReembaralhar.OnClick := BtnReembaralharClick;

  BtnLimpar := TButton.Create(Self);
  BtnLimpar.Parent := Panel2;
  BtnLimpar.Caption := 'Limpar';
  BtnLimpar.Width := 100;
  BtnLimpar.Height := 40;
  BtnLimpar.Left := 410;
  BtnLimpar.Top := 80;
  BtnLimpar.Font.Size := 10;
  BtnLimpar.OnClick := BtnLimparClick;
end;

procedure TForm1.BotaoLetraClick(Sender: TObject);
var
  B: TButton;
  i: Integer;
begin
  B := Sender as TButton;
  B.Enabled := False;

  for i := 1 to 6 do
  begin
    if (FindComponent('Letra' + i.ToString) is TButton) and
       (TButton(FindComponent('Letra' + i.ToString)).Caption = '') then
    begin
      TButton(FindComponent('Letra' + i.ToString)).Caption := B.Caption;
      FResposta := FResposta + B.Caption;
      Break;
    end;
  end;

  AtualizarRespostaVisual;
  Pesquisar;
end;

procedure TForm1.LetraClick(Sender: TObject);
var
  B: TButton;
  LetraRemovida: string;
  i, j: Integer;
begin
  B := Sender as TButton;
  if B.Caption = '' then Exit;

  LetraRemovida := B.Caption;
  B.Caption := '';

  // Reorganiza os botıes para andar para tr·s
  for i := 1 to 5 do
  begin
    if (TButton(FindComponent('Letra' + i.ToString)).Caption = '') then
    begin
      for j := i + 1 to 6 do
      begin
        TButton(FindComponent('Letra' + (j - 1).ToString)).Caption :=
          TButton(FindComponent('Letra' + j.ToString)).Caption;
      end;
      TButton(FindComponent('Letra6')).Caption := '';
      Break;
    end;
  end;

  // Remove ˙ltima ocorrÍncia da letra da FResposta
  i := LastDelimiter(LetraRemovida, FResposta);
  if i > 0 then
    Delete(FResposta, i, 1);

  // Reativa o bot„o no painel inferior
  for i := 0 to Panel2.ControlCount - 1 do
  begin
    if (Panel2.Controls[i] is TButton) and
       (TButton(Panel2.Controls[i]).Caption = LetraRemovida) and
       (not TButton(Panel2.Controls[i]).Enabled) then
    begin
      TButton(Panel2.Controls[i]).Enabled := True;
      Break;
    end;
  end;

  AtualizarRespostaVisual;
end;

procedure TForm1.BtnLimparClick(Sender: TObject);
var
  i: Integer;
begin
  FResposta := '';
  for i := 1 to 6 do
    TButton(FindComponent('Letra' + i.ToString)).Caption := '';

  for i := 0 to Panel2.ControlCount - 1 do
    if Panel2.Controls[i] is TButton then
      TButton(Panel2.Controls[i]).Enabled := True;
end;

procedure TForm1.BtnReembaralharClick(Sender: TObject);
begin
  BtnLimparClick(Sender);
  CriarBotoesLetras;
end;

procedure TForm1.BtnRevelarClick(Sender: TObject);
var
  Palavra: string;
  PalavrasOcultas: TList<string>;
  Index: Integer;
begin
  PalavrasOcultas := TList<string>.Create;
  try
    for Palavra in Fpaises do
    begin
      if FLabelsPaises.ContainsKey(Palavra) and
         (Pos('?', FLabelsPaises[Palavra].Caption) > 0) then
        PalavrasOcultas.Add(Palavra);
    end;

    if PalavrasOcultas.Count > 0 then
    begin
      Randomize;
      Index := Random(PalavrasOcultas.Count);
      Palavra := PalavrasOcultas[Index];
      FLabelsPaises[Palavra].Caption := Palavra;
      Inc(FAcertos);
      Contador.Caption := 'Acertos: ' + FAcertos.ToString;
      if FAcertos = 50 then
        Venceu;
    end;
  finally
    PalavrasOcultas.Free;
  end;
end;

procedure TForm1.CriarOjetosPises;
const
  PalavrasPorPanel = 10;
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
    Pias.Font.Size := 16;
    Pias.Caption := CriptografarPalavra(PaisOriginal);

    FLabelsPaises.Add(PaisOriginal, Pias);
    Inc(IndexPainel);
  end;
end;

function TForm1.CriptografarPalavra(APalavra: string): string;
begin
  Result := '';
  for var Ch in APalavra do
  begin
    if Ch = ' ' then
      Result := Result + ' '
    else
      Result := Result + '?';
  end;
end;


procedure TForm1.Pesquisar;
var
  Palavra: string;
begin
  for Palavra in Fpaises do
  begin
    if SameText(RemoverAcentos(FResposta), RemoverAcentos(Palavra)) then
    begin
      if FLabelsPaises.ContainsKey(Palavra) and
         (Pos('?', FLabelsPaises[Palavra].Caption) > 0) then
      begin
        FLabelsPaises[Palavra].Caption := Palavra;
        Inc(FAcertos);
        Contador.Caption := 'Acertos: ' + FAcertos.ToString;
        if FAcertos = 50 then
          Venceu;
        BtnLimparClick(Self);
        Break;
      end;
    end;
  end;
end;

procedure TForm1.Venceu;
begin
  ShowMessage('ParabÈns! VocÍ acertou todas as palavras!');
end;

procedure TForm1.AtualizarRespostaVisual;
begin
  // Os botıes j· est„o atualizados diretamente
end;

end.

