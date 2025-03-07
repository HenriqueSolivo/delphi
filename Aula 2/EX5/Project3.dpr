program Exercício5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
altura, pesoideal: Double;
sexo: char;

begin
  try

writeln('Qual o seu sexo? M ou F?');
readln(sexo);

Writeln('Qual o sua altura?');
Readln(altura);

  if (sexo = 'M') then
  begin
    pesoideal := ((72.7 * altura) - 58);
  end
  else if (sexo = 'F') then
  begin
    pesoideal := ((62.1 * altura) - 44.7);
  end;

        Writeln(Format('O peso ideal é %2.f', [pesoideal]));
  Readln;






    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
