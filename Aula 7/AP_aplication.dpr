program AP_aplication;

uses
  Vcl.Forms,
  Aplicação_VSL in 'Aplicação_VSL.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
