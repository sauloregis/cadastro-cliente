program CadastroCliente;

uses
  Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Paciente in 'Paciente.pas' {FrmPaciente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPacientes, FrmPaciente);
  Application.Run;
end.
