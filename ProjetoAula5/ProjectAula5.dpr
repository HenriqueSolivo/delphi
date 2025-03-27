program ProjectAula5;

uses
  Vcl.Forms,
  UnitPrincipalAula in 'UnitPrincipalAula.pas' {FormHenrique};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormHenrique, FormHenrique);
  Application.Run;
end.
