unit Consulta_Atendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  dxGDIPlusClasses, ExtCtrls;

type
  TFrmConsultaAtendimento = class(TForm)
    PnlConsultaAtendimento: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image3: TImage;
    ImgBuscarAtendimento: TImage;
    EditConsultaData: TDBEdit;
    EditConsultaProcedimento: TDBEdit;
    GridConsultaAtendimentos: TDBGrid;
    DSBuscar: TDataSource;
    QryBuscar: TADOQuery;
    QryPaciente: TADOQuery;
    DSPaciente: TDataSource;
    DSMedico: TDataSource;
    QryMedico: TADOQuery;
    QryBuscaridatendimento: TAutoIncField;
    QryBuscarData_Atendimento: TWideStringField;
    QryBuscarNome_Paciente: TStringField;
    QryBuscarNome_Medico: TStringField;
    CBBuscarPaciente: TDBLookupComboBox;
    CBBuscarMedico: TDBLookupComboBox;
    QryPacienteidcliente: TAutoIncField;
    QryPacientenome: TStringField;
    QryMedicoidmedico: TAutoIncField;
    QryMediconome: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ImgBuscarAtendimentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaAtendimento: TFrmConsultaAtendimento;

implementation

uses
  Principal;

{$R *.dfm}

procedure TFrmConsultaAtendimento.FormShow(Sender: TObject);
begin
  PnlConsultaAtendimento.Show;
  QryPaciente.Open;
  QryMedico.Open;
end;

procedure TFrmConsultaAtendimento.Image3Click(Sender: TObject);
begin
  PnlConsultaAtendimento.Hide;
end;

procedure TFrmConsultaAtendimento.ImgBuscarAtendimentoClick(
  Sender: TObject);
begin
  QryBuscar.Close;
  QryBuscar.SQL[9] := 'where C.idcliente =' + VarToStr(CBBuscarPaciente.KeyValue);
  QryBuscar.Open;
end;

end.
