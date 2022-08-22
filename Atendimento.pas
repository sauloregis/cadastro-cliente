unit Atendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, DateUtils,
  dxGDIPlusClasses, ExtCtrls, ComCtrls, DB, ADODB;

type
  TFrmAtendimentos = class(TForm)
    PnlMenu: TPanel;
    PnlAtendimento: TPanel;
    PnlNovoAtendimento: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    QryAtendimento: TADOQuery;
    DSAtendimento: TDataSource;
    QryAtendimentoidatendimento: TAutoIncField;
    QryAtendimentoidpaciente: TIntegerField;
    QryAtendimentoidmedico: TIntegerField;
    QryAtendimentoDt_atendimento: TDateTimeField;
    QryAtendimentoProcedimento: TStringField;
    LblPaciente: TLabel;
    LblNomedoMedico: TLabel;
    Label7: TLabel;
    DBEditDatadeAtendimento: TDBEdit;
    Label8: TLabel;
    DBEditProcedimento: TDBEdit;
    DSListaPaciente: TDataSource;
    QryListaPaciente: TADOQuery;
    CBNomePaciente: TDBLookupComboBox;
    QryListaPacienteNome: TStringField;
    QryListaPacienteSexo: TStringField;
    QryListaPacienteRua: TStringField;
    QryListaPacienteCidade: TStringField;
    QryListaPacienteEstado: TStringField;
    QryListaPacienteCEP: TStringField;
    QryListaPacienteidcliente: TAutoIncField;
    QryListaPacienteData_Nascimento: TDateTimeField;
    CBNomeMedico: TDBLookupComboBox;
    DSListaMedico: TDataSource;
    QryListaMedico: TADOQuery;
    QryListaMedicoNome: TStringField;
    QryListaMedicoSexo: TStringField;
    QryListaMedicoCRM: TStringField;
    QryListaMedicoidmedico: TAutoIncField;
    ImgNovoPaciente: TImage;
    ImgNovoMedico: TImage;
    ImgFechar2: TImage;
    BtnSalvarAtendimento: TButton;
    BtnResetarAtendimento: TButton;
    procedure PnlNovoAtendimentoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImgNovoPacienteClick(Sender: TObject);
    procedure ImgNovoMedicoClick(Sender: TObject);
    procedure BtnNovoAtendimentoClick(Sender: TObject);
    procedure ImgFechar2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PnlAtendimentoClick(Sender: TObject);
    procedure BtnSalvarAtendimentoClick(Sender: TObject);
    procedure QryAtendimentoDt_atendimentoSetText(Sender: TField;
      const Text: String);
    procedure BtnResetarAtendimentoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtendimentos: TFrmAtendimentos;

implementation

uses
  Principal, Paciente, Medico;

{$R *.dfm}

procedure TFrmAtendimentos.PnlNovoAtendimentoEnter(Sender: TObject);
begin
  QryAtendimento.Open;
  QryAtendimento.Insert;
end;

procedure TFrmAtendimentos.FormCreate(Sender: TObject);
begin
  QryListaPaciente.Open;
  QryListaMedico.Open;
end;

procedure TFrmAtendimentos.ImgNovoPacienteClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPacientes, FrmPacientes);
  FrmPacientes.PnlConteudo.Show;
  FrmPacientes.BtnNovo.Click;
  FrmPacientes.fechar_formulario := True;
  FrmPacientes.ShowModal;
  QryListaPaciente.Close;
  QryListaPaciente.Open;

  if (FrmPacientes.id_paciente <> 0) then
    QryAtendimentoidpaciente.AsInteger := FrmPacientes.id_paciente;

  FreeAndNil(FrmPacientes);
end;

procedure TFrmAtendimentos.ImgNovoMedicoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmMedico, FrmMedico);
  FrmMedico.PnlConteudo.Show;
  FrmMedico.BtnNovoMedico.Click;
  FrmMedico.fechar_formulario := True;
  FrmMedico.ShowModal;
  QryListaMedico.Close;
  QryListaMedico.Open;

  if (FrmMedico.id_medico <> 0) then
    QryAtendimentoidmedico.AsInteger := FrmMedico.id_medico;

  FreeAndNil(FrmMedico);
end;

procedure TFrmAtendimentos.BtnNovoAtendimentoClick(Sender: TObject);
begin
  QryAtendimento.Open;
  QryAtendimento.Insert;
end;

procedure TFrmAtendimentos.ImgFechar2Click(Sender: TObject);
begin
  PnlNovoAtendimento.Hide;
end;

procedure TFrmAtendimentos.FormShow(Sender: TObject);
begin
  PnlNovoAtendimento.Hide;
end;

procedure TFrmAtendimentos.PnlAtendimentoClick(Sender: TObject);
begin
  PnlNovoAtendimento.Show;
end;

procedure TFrmAtendimentos.BtnSalvarAtendimentoClick(Sender: TObject);
var Ano,
    Mes,
    Dia: Word;
begin
  if (CBNomePaciente.KeyValue = null) then
  begin
    ShowMessage('Por favor, preencha o nome do paciente.');
    Abort;
  end;
  if (CBNomeMedico.KeyValue = null) then
  begin
    ShowMessage('Por favor, preencha o nome do médico.');
    Abort;
  end;
  Ano := StrToIntDef(Copy(DBEditDatadeAtendimento.Text,7,4), 0);
  Mes := StrToIntDef(Copy(DBEditDatadeAtendimento.Text,4,2), 0);
  Dia := StrToIntDef(Copy(DBEditDatadeAtendimento.Text,1,2), 0);

  if not IsValidDate(Ano, Mes, Dia) then
  begin
    ShowMessage('Por favor, digite uma data válida.');
    Abort;
  end;

  QryAtendimento.Post;
  ShowMessage('Cadastro realizado com sucesso.');
  QryAtendimento.Close;
  QryAtendimento.Open;
  QryAtendimento.Insert;
end;

procedure TFrmAtendimentos.QryAtendimentoDt_atendimentoSetText(
  Sender: TField; const Text: String);
var Ano,
    Mes,
    Dia: Word;
begin
  Ano := StrToIntDef(Copy(DBEditDatadeAtendimento.Text,7,4), 0);
  Mes := StrToIntDef(Copy(DBEditDatadeAtendimento.Text,4,2), 0);
  Dia := StrToIntDef(Copy(DBEditDatadeAtendimento.Text,1,2), 0);

  if not IsValidDate(Ano, Mes, Dia) then
  begin
    ShowMessage('Por favor, digite uma data válida.');
    Abort;
  end;
  Sender.Value := Text;
end;

procedure TFrmAtendimentos.BtnResetarAtendimentoClick(Sender: TObject);
begin
  QryAtendimento.Cancel;
end;

end.
