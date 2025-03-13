program EX10;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  a, b, Resultado: Real;
  Opcao: Integer;

begin
  try

    Write('Digite o primeiro valor (a): ');
    Readln(a);

    Write('Digite o segundo valor (b): ');
    Readln(b);

    Writeln;
    Writeln('Escolha uma opção:');
    Writeln('1 - Subtrair o valor b de a');
    Writeln('2 - Somar a e b');
    Writeln('3 - Multiplicar a e b');
    Writeln('4 - Mostrar qual o maior número');
    Writeln;

    Write('Digite sua escolha: ');
    Readln(Opcao);

    case Opcao of
      1:
        begin
          Resultado := a - b;
          Writeln(Format('Resultado da subtração: %.2f', [Resultado]));
        end;
      2:
        begin
          Resultado := a + b;
          Writeln(Format('Resultado da soma: %.2f', [Resultado]));
        end;
      3:
        begin
          Resultado := a * b;
          Writeln(Format('Resultado da multiplicação: %.2f', [Resultado]));
        end;
      4:
        begin
          if a > b then
            Writeln(Format('O maior número é: %.2f', [a]))
          else if b > a then
            Writeln(Format('O maior número é: %.2f', [b]))
          else
            Writeln('Os números são iguais.');
        end;
      else
        Writeln('Opção inválida. Escolha um número entre 1 e 4.');
    end;

  except
    on E: EConvertError do
      Writeln('Erro: Entrada inválida. Digite apenas números.');
    on E: Exception do
      Writeln('Erro inesperado: ', E.Message);
  end;

  Readln;
end.
