program Exercicio4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
Idade: Integer;

begin
  try
  Writeln('qual a idade: ');
  Readln (Idade);

  if Idade in [5..7] then
  Writeln('Infantil A')
  else if Idade in [8..10] then
  Writeln('Infantil B')
  else if Idade in [11..13] then
  Writeln('Juvenil A')
  else if Idade in [14..17] then
  Writeln('Juvenil B')
  else
  Writeln('Infantil B');
  Readln;


  except

  end;
end.
