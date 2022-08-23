program CadastroCliente;

uses
  Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Paciente in 'Paciente.pas' {FrmPacientes},
  Medico in 'Medico.pas' {FrmMedico},
  Atendimento in 'Atendimento.pas' {FrmAtendimentos},
  Consulta_Atendimento in 'Consulta_Atendimento.pas' {FrmConsultaAtendimento};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
