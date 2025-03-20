program Exercício11;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
opcao: string;
lixo: Integer;

const
estados: array[0..26] of string =
( 'AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA',
'PB', 'PR', 'PE', 'RJ', 'RN', 'SE', 'PI', 'RS', 'RO', 'RR', 'SC', 'SP', 'TO');

capitais: array[0..26] of string =
('Acre - Rio Branco', 'Alagoas - Maceió', 'Amapá - Macapá', 'Amazonas - Manaus',
     'Bahia - Salvador', 'Ceará - Fortaleza', 'Distrito Federal - Brasília',
     'Espírito Santo - Vitória', 'Goiás - Goiânia', 'Maranhão - São Luís',
     'Mato Grosso - Cuiabá', 'Mato Grosso do Sul - Campo Grande',
     'Minas Gerais - Belo Horizonte', 'Pará - Belém', 'Paraíba - João Pessoa',
     'Paraná - Curitiba', 'Pernambuco - Recife', 'Rio de Janeiro - Rio de Janeiro',
     'Rio Grande do Norte - Natal', 'Sergipe - Aracaju', 'Piauí - Teresina',
     'Rio Grande do Sul - Porto Alegre', 'Rondônia - Porto Velho', 'Roraima - Boa Vista',
     'Santa Catarina - Florianópolis', 'São Paulo - São Paulo', 'Tocantins - Palmas');

begin
  try

    Readln(opcao);

  for var I := 0 to 26 do
    begin
     if (opcao = estados[i]) then
       Writeln(estados[i], ' = ', capitais[i]);
    end;

    Readln;




    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
