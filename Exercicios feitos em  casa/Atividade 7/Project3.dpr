program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  A, B, C: Integer;
  Result: Double;

begin
  try
    Writeln('Escreva o valor de A: ');
    Readln(A);
    Writeln('Escreva o valor de B: ');
    Readln(B);
    Writeln('Escreva o valor de C: ');
    Readln(C);

    Writeln;
    Writeln('Os resultados são:');

    Writeln(Format('%d + %d + %d = %d', [A, B, C, A+B+C]));
    Writeln(Format('%d - %d + %d = %d', [A, B, C, A-B+C]));
    Writeln(Format('%d - (%d + %d) = %d', [A, B, C, A-(B+C)]));
    Writeln(Format('(%d * 4) + (2 / %d) - (%d+8) = %.2f', [A, C, B, (A*4) + (2 / C) - (B+8)]));
    Writeln(Format('(%d * 4) + (%d / 2) - (%d + 8) = %.2f', [A, C, B, (A * 4) + (C / 2) - (B + 8)]));
    Writeln(Format('(%d / 2) + (%d / 2) + (%d / 2) = %.2f', [A, B, C, (A / 2.0) + (B / 2.0) + (C / 2.0)]));
    Writeln(Format('%d² + %d² = %d', [A, B, (A*A) + (B*B)]));
    Writeln(Format('%d² + 3 * %d = %d', [C, B, (C*C) + (3 * B)]));
    Writeln(Format('%d mod 2 = %d', [A, A mod 2]));
    Writeln(Format('%d mod 2 = %d', [B, B mod 2]));
    Writeln(Format('%d mod 2 = %d', [C, C mod 2]));

    Readln;
  except

  end;

  Readln;
end.
