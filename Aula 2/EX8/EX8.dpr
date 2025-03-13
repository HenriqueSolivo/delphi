program EX8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  X, i, Num, Maior, Menor: Integer;

begin
  try

  Write('Informe a quantidade de valores a serem lidos: ');
  Readln(X);

  Write('Digite um número: ');
  Readln(Num);
  Maior := Num;
  Menor := Num;

    for i := 2 to X do
    begin
      Write('Digite um número: ');
      Readln(Num);

      if Num > Maior then
        Maior := Num;
      if Num < Menor then
        Menor := Num;
    end;

  Writeln;
  Writeln('Maior valor: ', Maior);
  Writeln('Menor valor: ', Menor);

  Readln;

  except

  end;


end.

