unit Consulta_Atendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  dxGDIPlusClasses, ExtCtrls, ComCtrls;

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
    QryBuscarProcedimento: TStringField;
    EdtBuscaProcedimento: TEdit;
    DTPBuscarData: TDateTimePicker;
    PnlPesquisar: TPanel;
    Image1: TImage;
    PnlResetarTodos: TPanel;
    ImgResetTodos: TImage;
    Image4: TImage;
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ImgBuscarAtendimentoClick(Sender: TObject);
    procedure ImgResetClick(Sender: TObject);
    procedure PnlPesquisarClick(Sender: TObject);
    procedure PnlPesquisarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PnlResetarTodosClick(Sender: TObject);
    procedure PnlResetarTodosMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
var i: Integer;
    n: Integer;
begin
  QryBuscar.Close;
  for n := 10 to 13 do
    QryBuscar.SQL[n] := '';

  i := 0;
  if (CBBuscarPaciente.KeyValue <> null) then
  begin
    QryBuscar.SQL[10] := 'where C.idcliente =' + VarToStr(CBBuscarPaciente.KeyValue);
    i := 1;
  end;

  if (CBBuscarMedico.KeyValue <> null) then
  begin
    if (i = 0) then
    begin
      QryBuscar.SQL[10] := 'where M.idmedico =' + VarToStr(CBBuscarMedico.KeyValue);
    end
    else
    begin
      QryBuscar.SQL[10+i] := 'and M.idmedico =' + VarToStr(CBBuscarMedico.KeyValue);
    end;
  i := i+1;
  end;

  if (DateToStr(DTPBuscarData.Date) <> '01/01/1800') then
  begin
      if (i = 0) then
      begin
        QryBuscar.SQL[10] := 'where Dt_atendimento =' + QuotedStr(DateToStr(DTPBuscarData.Date));
      end
      else
      begin
        QryBuscar.SQL[10+i] := 'and Dt_atendimento =' + QuotedStr(DateToStr(DTPBuscarData.Date));
      end;
  i := i+1;
  end;

  if (EdtBuscaProcedimento.text  <> '') then
  begin
    if (i = 0) then
    begin
      QryBuscar.SQL[10] := 'where A.Procedimento =' + QuotedStr(EdtBuscaProcedimento.Text);
    end
    else
    begin
      QryBuscar.SQL[10+i] := 'and A.Procedimento =' + QuotedStr(EdtBuscaProcedimento.Text);
    end;
  end;
  i := 0;
  QryBuscar.Open;
end;

procedure TFrmConsultaAtendimento.ImgResetClick(Sender: TObject);
var n: Integer;
begin
  EdtBuscaProcedimento.Text := '';
  DTPBuscarData.Date := StrToDate('01/01/1800');
  QryBuscar.Close;
  for n := 10 to 13 do
    QryBuscar.SQL[n] := '';
  CBBuscarMedico.KeyValue := null;
  CBBuscarPaciente.KeyValue := null;
end;

procedure TFrmConsultaAtendimento.PnlPesquisarClick(Sender: TObject);
var i: Integer;
    n: Integer;
begin
  PnlPesquisar.Color := clWhite;
  PnlPesquisar.Caption := '        Pesquisar';
  QryBuscar.Close;
  for n := 10 to 13 do
    QryBuscar.SQL[n] := '';

  i := 0;
  if (CBBuscarPaciente.KeyValue <> null) then
  begin
    QryBuscar.SQL[10] := 'where C.idcliente =' + VarToStr(CBBuscarPaciente.KeyValue);
    i := 1;
  end;

  if (CBBuscarMedico.KeyValue <> null) then
  begin
    if (i = 0) then
    begin
      QryBuscar.SQL[10] := 'where M.idmedico =' + VarToStr(CBBuscarMedico.KeyValue);
    end
    else
    begin
      QryBuscar.SQL[10+i] := 'and M.idmedico =' + VarToStr(CBBuscarMedico.KeyValue);
    end;
  i := i+1;
  end;

  if (DateToStr(DTPBuscarData.Date) <> '01/01/1800') then
  begin
      if (i = 0) then
      begin
        QryBuscar.SQL[10] := 'where Dt_atendimento =' + QuotedStr(DateToStr(DTPBuscarData.Date));
      end
      else
      begin
        QryBuscar.SQL[10+i] := 'and Dt_atendimento =' + QuotedStr(DateToStr(DTPBuscarData.Date));
      end;
  i := i+1;
  end;

  if (EdtBuscaProcedimento.text  <> '') then
  begin
    if (i = 0) then
    begin
      QryBuscar.SQL[10] := 'where A.Procedimento =' + QuotedStr(EdtBuscaProcedimento.Text);
    end
    else
    begin
      QryBuscar.SQL[10+i] := 'and A.Procedimento =' + QuotedStr(EdtBuscaProcedimento.Text);
    end;
  end;
  i := 0;
  QryBuscar.Open;
end;

procedure TFrmConsultaAtendimento.PnlPesquisarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     PnlPesquisar.Color := $00F8F8F8;
     PnlPesquisar.Caption := '      Aguarde';
end;

procedure TFrmConsultaAtendimento.PnlResetarTodosClick(Sender: TObject);
var n: Integer;
begin
  PnlResetarTodos.Color := clWhite;
  PnlResetarTodos.Caption := '      Resetar';
  EdtBuscaProcedimento.Text := '';
  DTPBuscarData.Date := StrToDate('01/01/1800');
  QryBuscar.Close;
  for n := 10 to 13 do
    QryBuscar.SQL[n] := '';
  CBBuscarMedico.KeyValue := null;
  CBBuscarPaciente.KeyValue := null;
end;

procedure TFrmConsultaAtendimento.PnlResetarTodosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PnlResetarTodos.Color := $00F8F8F8;
  PnlResetarTodos.Caption := '      Aguarde';
end;

end.
