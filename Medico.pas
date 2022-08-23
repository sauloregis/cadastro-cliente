unit Medico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, Buttons, Grids, DBGrids,
  dxGDIPlusClasses, ComCtrls, DB, ADODB;

type
  TFrmMedico = class(TForm)
    PnlMenu: TPanel;
    PnlMedicos: TPanel;
    PnlConteudo: TPanel;
    PageCCadastroMedico: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    DBGridCadastros: TDBGrid;
    BtnNovoMedico: TBitBtn;
    GbxConsultaNome: TGroupBox;
    EdtConsultaNomeMedico: TEdit;
    BtnEditarMedico: TBitBtn;
    BtnExcluir: TBitBtn;
    DBEdit1: TDBEdit;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    GBoxCadastroMedico: TGroupBox;
    DSListaMedica: TDataSource;
    DSCadastroMedico: TDataSource;
    QRYCadastroMedico: TADOQuery;
    QRYListaMedica: TADOQuery;
    Label3: TLabel;
    DBEditNomeMedico: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEditCRM: TDBEdit;
    QRYCadastroMedicoIdmedico: TIntegerField;
    QRYCadastroMedicoNome: TStringField;
    QRYCadastroMedicoSexo: TStringField;
    QRYCadastroMedicoCRM: TStringField;
    QRYListaMedicaIdmedico: TIntegerField;
    QRYListaMedicaNome: TStringField;
    QRYListaMedicaSexo: TStringField;
    QRYListaMedicaCRM: TStringField;
    LblBuscar: TLabel;
    CBoxTipodeConsulta: TComboBox;
    LblTipodeConsulta: TLabel;
    DBcboxSexo: TDBComboBox;
    BtnCancelar: TBitBtn;
    BtnSalvarMedico: TBitBtn;
    procedure BtnNovoMedicoClick(Sender: TObject);
    procedure BtnEditarMedicoClick(Sender: TObject);
    procedure BtnSalvarMedicoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure EdtConsultaNomeMedicoChange(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    id_medico: Integer;
    fechar_formulario: Boolean;
    { Public declarations }
  end;

var
  FrmMedico: TFrmMedico;

implementation

uses
  Principal;

{$R *.dfm}

procedure TFrmMedico.BtnNovoMedicoClick(Sender: TObject);
begin
  QRYCadastroMedico.Open;
  QRYCadastroMedico.Insert;
  PageCCadastroMedico.TabIndex := 1;
end;

procedure TFrmMedico.BtnEditarMedicoClick(Sender: TObject);
begin
  QRYCadastroMedico.Close;
  QRYCadastroMedico.SQL[2] := 'set @Idmedico = ' + IntToStr(QRYListaMedicaIdmedico.Value);
  QRYCadastroMedico.Open;
  QRYCadastroMedico.Edit;
  PageCCadastroMedico.TabIndex := 1;
  DBEditNomeMedico.SetFocus;
  DBEditNomeMedico.SelStart := Length(DBEditNomeMedico.Text);
end;

procedure TFrmMedico.BtnSalvarMedicoClick(Sender: TObject);
begin
   if QRYCadastroMedico.State = Dsinsert then
  begin
    QRYCadastroMedico.Post;
    ShowMessage('Cadastro realizado com sucesso.');
  end
  else
  begin
    if QRYCadastroMedico.State = Dsedit then
    begin
      QRYCadastroMedico.Post;
      ShowMessage('Cadastro editado com sucesso.');
    end;
  end;
  id_medico := QRYCadastroMedicoIdmedico.AsInteger;
  QRYCadastroMedico.Close;
  QRYListaMedica.Close;
  QRYListaMedica.Open;
  PageCCadastroMedico.TabIndex := 0;
end;

procedure TFrmMedico.BtnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esse registro?', 'Excluir registro', MB_YESNO + MB_ICONQUESTION) = mrYes then
  QRYListaMedica.Delete;
end;

procedure TFrmMedico.EdtConsultaNomeMedicoChange(Sender: TObject);
begin
  begin
  QRYListaMedica.SQL.Clear;
  case CBoxTipodeConsulta.ItemIndex of
    0:QRYListaMedica.SQL.Add('select * from Medico where idmedico like ''%' + EdtConsultaNomeMedico.Text + '%''');
    1:QRYListaMedica.SQL.Add('select * from Medico where Nome like ''%' + EdtConsultaNomeMedico.Text + '%''');
    2:QRYListaMedica.SQL.Add('select * from Medico where Sexo like ''%' + EdtConsultaNomeMedico.Text + '%''');
    3:QRYListaMedica.SQL.Add('select * from Medico where CRM like ''%' + EdtConsultaNomeMedico.Text + '%''');
  end;
  QRYListaMedica.Open;
  EdtConsultaNomeMedico.SetFocus;
end;

end;

procedure TFrmMedico.BtnCancelarClick(Sender: TObject);
begin
  PageCCadastroMedico.TabIndex := 0;
  QRYCadastroMedico.Close;
  id_medico := 0;
end;

procedure TFrmMedico.FormShow(Sender: TObject);
begin
  QRYListaMedica.Open;
end;

end.
