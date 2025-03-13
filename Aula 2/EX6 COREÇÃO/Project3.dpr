program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
X,Y: Integer;

begin
  try

  Writeln('Escreva o Valor de X: ');
  Readln (X);

  Writeln('Escreva o Valor de Y: ');
  Readln (Y);

  Writeln(Format('O resultado de %d + %d é %d', [x,y,x + y]));
  Readln;

  Writeln(Format('O resultado de %d - %d é %d', [x,y,x - y]));
  Readln;

  Writeln(Format('O resultado de %d x %d é %d', [x,y,x * y]));
  Readln;

  Writeln(Format('O resultado de %d / %d é %f', [x,y,x / y]));
  Readln;

  except

  end;
end.
