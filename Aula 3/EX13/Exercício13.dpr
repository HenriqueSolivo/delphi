program Exercício13;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  custo, venda: array of double;
  qtdprodutos: integer;
  totalcusto, totalvenda: Double;

begin
  try

  writeln('Digite a quantidade de produtos produzidos');
  readln(qtdprodutos);

  Setlength(custo, qtdprodutos);
  Setlength(venda, qtdprodutos);

  for var I := 0 to qtdprodutos - 1 do
  begin
  Writeln(Format('Digite o valor de custo do %dº produto', [i+1]));
  Readln(custo[i]);
  totalcusto := (totalcusto + custo[i]);
  end;

    for var I := 0 to qtdprodutos - 1 do
  begin
  Writeln(Format('Digite o valor de venda do %dº produto com valor de %2.f', [i+1, custo[i]]));
  Readln(venda[i]);
  totalvenda := (totalvenda + venda[i]);
  end;

  Writeln(Format('A média de custo por produto foi R$ %2.f',[totalcusto / qtdprodutos]));
  Writeln(Format('O valor total de venda foi R$ %2.f',[totalvenda / qtdprodutos]));
  Writeln(Format('O lucro da empresa foi de R$ %2.f', [totalvenda - totalcusto]));
  readln;






    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
