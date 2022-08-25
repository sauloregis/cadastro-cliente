unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Atendimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Paciente1: TMenuItem;
    Medico: TMenuItem;
    NovoAtendimento1: TMenuItem;
    ConsultarAtendimento1: TMenuItem;
    Paciente2: TMenuItem;
    Mdico2: TMenuItem;
    Atendimento1: TMenuItem;
    ADOConnectionCliente: TADOConnection;
    procedure Paciente1Click(Sender: TObject);
    procedure MedicoClick(Sender: TObject);
    procedure NovoAtendimento1Click(Sender: TObject);
    procedure ConsultarAtendimento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Paciente, Medico, Atendimento, Consulta_Atendimento;

{$R *.dfm}

procedure TFrmPrincipal.Paciente1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPacientes,FrmPacientes);
  FrmPacientes.ShowModal;
  FreeAndNil(FrmPacientes);
end;

procedure TFrmPrincipal.MedicoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmMedico, FrmMedico);
  FrmMedico.ShowModal;
  FreeAndNil(FrmMedico);
end;

procedure TFrmPrincipal.NovoAtendimento1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmAtendimentos, FrmAtendimentos);
  FrmAtendimentos.ShowModal;
  FreeAndNil(FrmAtendimentos);
end;

procedure TFrmPrincipal.ConsultarAtendimento1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultaAtendimento, FrmConsultaAtendimento);
  FrmConsultaAtendimento.ShowModal;
  FreeAndNil(FrmConsultaAtendimento);
end;
            
end.
