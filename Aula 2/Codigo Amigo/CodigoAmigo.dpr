program CodigoAmigo;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  meunumero, meunumero2: Integer;
  meutexto: string;

function Buscarmeutexto: string;
begin
  Result := 'Texto função';
end;  // <-- Correção: Adicionado ponto e vírgula

procedure Imprimirtexto;
begin
  Writeln('Texto procedure');
end;  // <-- Correção: Adicionado ponto e vírgula

begin  // <-- Correção: Bloco principal começa aqui
  try
    Writeln('Digite um texto:');
    Readln(meutexto);

    Writeln(Buscarmeutexto);

    Writeln('Meu texto é: ' + meutexto);

    Imprimirtexto;

  except
    on E: Exception do
      Writeln('Ocorreu um erro: ', E.Message);
  end;

  Readln;  // Aguarda entrada antes de finalizar
end.  // <-- Correção: Programa finaliza corretamente
