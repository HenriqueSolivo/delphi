program Exercicio_6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
 x, y: Integer;

begin

  try
  Writeln('X = ');
  Readln (x);

  Writeln('Y = ');
  Readln (y);

  Writeln(Format('O valor da adição: %d + %d = %d', [x,y,x + y]));
  Writeln(Format('O valor da adição: %d - %d = %d', [x,y,x - y]));
  Writeln(Format('O valor da adição: %d * %d = %d', [x,y,x * y]));
  Writeln(Format('O valor da adição: %d / %d = %d', [x,y,x / y]));
  Readln;

  except

  end;

end
