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
  Writeln('meu texto é:' +meutexto);
  Readln;

  Imprimirtexto;
  Readln;

  except

  Writeln('Ocorreu um erro')
  end;
end.

        //Write é igual o console log, e o ln é para quebrar linha
        //readline é para ler o que o usuario vai escrever
        //const e var são como declarar variavel
        //PROCEDURE É UM METODO (algo que não tem retorno)
        //typecast = converção de tipo