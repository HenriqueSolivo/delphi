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
    Writeln('Escolha uma op��o:');
    Writeln('1 - Subtrair o valor b de a');
    Writeln('2 - Somar a e b');
    Writeln('3 - Multiplicar a e b');
    Writeln('4 - Mostrar qual o maior n�mero');
    Writeln;

    Write('Digite sua escolha: ');
    Readln(Opcao);

    case Opcao of
      1:
        begin
          Resultado := a - b;
          Writeln(Format('Resultado da subtra��o: %.2f', [Resultado]));
        end;
      2:
        begin
          Resultado := a + b;
          Writeln(Format('Resultado da soma: %.2f', [Resultado]));
        end;
      3:
        begin
          Resultado := a * b;
          Writeln(Format('Resultado da multiplica��o: %.2f', [Resultado]));
        end;
      4:
        begin
          if a > b then
            Writeln(Format('O maior n�mero �: %.2f', [a]))
          else if b > a then
            Writeln(Format('O maior n�mero �: %.2f', [b]))
          else
            Writeln('Os n�meros s�o iguais.');
        end;
      else
        Writeln('Op��o inv�lida. Escolha um n�mero entre 1 e 4.');
    end;

  except
    on E: EConvertError do
      Writeln('Erro: Entrada inv�lida. Digite apenas n�meros.');
    on E: Exception do
      Writeln('Erro inesperado: ', E.Message);
  end;

  Readln;
end.
