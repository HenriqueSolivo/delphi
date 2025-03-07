program Exercicio3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
name1, name2, name3: string;
idade1, idade2, idade3, soma: integer;

begin
  try
    Write('Escreva o primeiro nome: ');
      readln(name1);
    Write(Format('Escreva a idade de %s ', [name1]));
      readln(idade1);

    write('Escreva o segundo nome: ');
      readln(name2);
    Write(Format('Escreva a idade de %s ', [name2]));
      readln(idade2);

    Write('Escreva o terceiro nome: ');
      readln(name3);
    Write(Format('Escreva a idade de %s ', [name3]));
      readln(idade3);

  Readln;
  soma := (idade1 + idade2 + idade3);

  Writeln(Format('%s tem %d anos', [name1, idade1]));
  Writeln(Format('%s tem %d anos', [name2, idade2]));
  Writeln(Format('%s tem %d anos', [name3, idade3]));
  Writeln(Format('%s, %s e %s juntos tem %d anos', [name1, name2, name3, soma]));

  Readln;

    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
