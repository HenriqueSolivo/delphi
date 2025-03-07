program Exercicio01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var

Valor1, Valor2, Valor3: Double;
Media: Double;

begin
  try

  Writeln ('digite o valor: ');
  Readln (Valor1);
  Writeln ('digite o valor: ');
  Readln (Valor2);
  Writeln ('digite o valor: ');
  Readln (Valor3);

  Media := ((Valor1 + Valor2 + Valor3) / 3);

  Writeln (Format('a Media é: %.4f', [Media]));
  Readln;

  except

  end;
end.
