program Exercício2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
name: string;
age: integer;

begin
  try

  Write('Escreva seu nome: ');
  Read(name);

  Write('Escreva sua idade: ');
  Readln(age);


  Writeln('Ola ', name, '. Atualmente voce possui ', age, ' anos. Daqui a 5 anos você terá: ', age+5, ' anos');
readln;


    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
