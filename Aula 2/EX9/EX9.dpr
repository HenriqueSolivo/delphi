program EX9;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
Quant, i, Maior, Menor: Integer;
Idades: array of integer;
FIM: string;

begin
  try

  writeln ('Quantos alunos são? ');
  Readln (Quant);
  SetLength(Idades, Quant);

  writeln (Format('Digite a indade do aluno %d: ', [i + 1]));
  Readln(Idades[0]);
  Maior:= Idades[0];
  Menor:= Idades[0];
  Writeln(Format('Idade do Aluno 1 é %d', [Idades[0]]));
  Writeln;

  for i := 1 to Quant-1 do
  begin
  writeln (Format('Digite a indade do aluno %d: ', [i + 1]));
  Readln(Idades[i]);
  Writeln(Format('Idade do Aluno %d é %d', [i + 1, Idades[i]]));
  Writeln;
  if Idades[i] < Menor then
  Menor:= Idades[i];
  if Idades[i] > Maior then
  Maior:= Idades[i];

  end;

  Writeln;
  Writeln(Format ('O maior é %d e o menor é %d', [Maior, Menor]));
  Readln;

except

end;

end.
