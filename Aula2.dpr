program Aula2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

  var

 // meunumero, meunumero2: Integer;
  meutexto: string;
  MeuNumero: string;

  const

  MinhaConstante = 'Texto fixo';

  procedure Imprimirtexto;
  begin

  Writeln('Meu Texto:');

  end;

begin
  try

  Readln(meutexto);
  Writeln('meu texto �:' +meutexto);
  Readln;

  Imprimirtexto;
  Readln;

  except

  Writeln('Ocorreu um erro')
  end;
end.

        //Write � igual o console log, e o ln � para quebrar linha
        //readline � para ler o que o usuario vai escrever
        //const e var s�o como declarar variavel
        //PROCEDURE � UM METODO (algo que n�o tem retorno)
        //typecast = conver��o de tipo