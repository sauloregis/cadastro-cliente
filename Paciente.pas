unit Paciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, DateUtils, StrUtils,
  Buttons, ComCtrls, QRCtrls, QuickRpt, dxGDIPlusClasses;

type
  TFrmPacientes = class(TForm)
    QryLista: TADOQuery;
    DSCliente: TDataSource;
    ADOQueryClientes: TADOQuery;
    QryListaidcliente: TAutoIncField;
    QryListaNome: TStringField;
    QryListaSexo: TStringField;
    QryListaRua: TStringField;
    QryListaCidade: TStringField;
    QryListaEstado: TStringField;
    QryListaCEP: TStringField;
    QuickRep1: TQuickRep;
    QRBandTitulo: TQRBand;
    QRBandDados: TQRBand;
    QRDBNome: TQRDBText;
    QRDBidcliente: TQRDBText;
    QRDBDataNascimento: TQRDBText;
    QRLabel1: TQRLabel;
    DSLista: TDataSource;
    QRDBText1: TQRDBText;
    PnlMenu: TPanel;
    ADOQueryClientesidcliente: TAutoIncField;
    ADOQueryClientesNome: TStringField;
    ADOQueryClientesSexo: TStringField;
    ADOQueryClientesRua: TStringField;
    ADOQueryClientesCidade: TStringField;
    ADOQueryClientesEstado: TStringField;
    ADOQueryClientesCEP: TStringField;
    QRBandTotais: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRBandColunas: TQRBand;
    QRLabelID: TQRLabel;
    QRLabelNome: TQRLabel;
    QRLabelDataNascimento: TQRLabel;
    QRLabelCidade: TQRLabel;
    ADOQueryClientesData_Nascimento: TDateTimeField;
    QryListaData_Nascimento: TDateTimeField;
    PnlClientes: TPanel;
    PnlRelatorio: TPanel;
    PnlConteudo: TPanel;
    PageContCadastro: TPageControl;
    TabSheet1: TTabSheet;
    ImgFechar: TImage;
    DBGridCadastros: TDBGrid;
    BtnNovo: TBitBtn;
    GbxConsultaNome: TGroupBox;
    EdtConsultaNome: TEdit;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    DBEdit1: TDBEdit;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEditNome: TDBEdit;
    DBComboBox1: TDBComboBox;
    EdtRua: TDBEdit;
    EdtCidade: TDBEdit;
    EdtCEP: TDBEdit;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    DBEditDataNascimento: TDBEdit;
    ImgFechar2: TImage;
    LblTipodeConsulta: TLabel;
    LblBuscar: TLabel;
    CBoxTipodeConsulta: TComboBox;
    CBoxEstado: TDBComboBox;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtConsultaNomeChange(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnNovoCadastroClick(Sender: TObject);
    procedure QRBandDadosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BtnConsultarClienteClick(Sender: TObject);
    procedure BtnExibirRelatorioClick(Sender: TObject);
    procedure ADOQueryClientesData_NascimentoSetText(Sender: TField;
      const Text: String);
    procedure ImgFecharClick(Sender: TObject);
    procedure PageContCadastroChange(Sender: TObject);

  private
    { Private declarations }
  public
    id_paciente: Integer;
    fechar_formulario: Boolean;
    { Public declarations }
  end;

var
  FrmPacientes: TFrmPacientes;
  TipodaLinha: Boolean;

implementation

uses
  Principal;


{$R *.dfm}

procedure TFrmPacientes.BtnNovoClick(Sender: TObject);
begin
  ADOQueryClientes.Open;
  ADOQueryClientes.Insert;
  PageContCadastro.TabIndex := 1;
end;

procedure TFrmPacientes.BtnEditarClick(Sender: TObject);
begin
  ADOQueryClientes.Close;
  ADOQueryClientes.SQL[2] := 'set @IdCliente = ' + IntToStr(QryListaidcliente.Value);
  ADOQueryClientes.Open;
  ADOQueryClientes.Edit;
  PageContCadastro.TabIndex := 1;
  DBEditNome.SetFocus;
  DBEditNome.SelStart := Length(DBEditNome.Text);
end;

procedure TFrmPacientes.BtnSalvarClick(Sender: TObject);
begin
  if (DBEditNome.Text = '') then
  begin
    ShowMessage('Por favor, digite o nome do paciente.');
    DBEditNome.SetFocus;
    Abort;
  end;
  
  if ADOQueryClientes.State = Dsinsert then
  begin
    ADOQueryClientes.Post;
    ShowMessage('Cadastro realizado com sucesso.');
  end
  else
  begin
    if ADOQueryClientes.State = Dsedit then
    begin
      ADOQueryClientes.Post;
      ShowMessage('Cadastro editado com sucesso.');
    end;
  end;
  id_paciente := ADOQueryClientesidcliente.AsInteger;
  if (fechar_formulario) then
    FrmPacientes.Close;

  ADOQueryClientes.Close;
  QryLista.Close;
  QryLista.Open;
  PageContCadastro.TabIndex := 0;
end;

procedure TFrmPacientes.FormShow(Sender: TObject);
begin
  QuickRep1.Hide;
  QryLista.Open;
end;

procedure TFrmPacientes.EdtConsultaNomeChange(Sender: TObject);
begin

  if (EdtConsultaNome.Text = '''') then
  begin
     EdtConsultaNome.Text := '';
     ShowMessage('Você está utilizando caracteres inválidos, por favor, refaça a busca.');
     Abort;
     EdtConsultaNome.SetFocus;
  end;
  QryLista.Close;

  case CBoxTipodeConsulta.ItemIndex of
    0:QryLista.SQL[1] := 'where idcliente like '+ QuotedStr('%' + EdtConsultaNome.Text + '%');
    1:QryLista.SQL[1] := 'where Nome like ' + QuotedStr('%' + EdtConsultaNome.Text + '%');
    2:QryLista.SQL[1] := 'where Sexo like ' + QuotedStr('%' + EdtConsultaNome.Text + '%');
    3:QryLista.SQL[1] := 'where Data_Nascimento like ' + QuotedStr('%' + EdtConsultaNome.Text + '%');
    4:QryLista.SQL[1] := 'where Rua like ' + QuotedStr('%' + EdtConsultaNome.Text + '%');
    5:QryLista.SQL[1] := 'where Cidade like ' + QuotedStr('%' + EdtConsultaNome.Text + '%');
    6:QryLista.SQL[1] := 'where Estado like ' + QuotedStr('%' + EdtConsultaNome.Text + '%');
    7:QryLista.SQL[1] := 'where CEP like ' + QuotedStr('%' + EdtConsultaNome.Text + '%');
  end;
  QryLista.Open;
  EdtConsultaNome.SetFocus;
end;

procedure TFrmPacientes.BtnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esse registro?', 'Excluir registro', MB_YESNO + MB_ICONQUESTION) = mrYes then
  QryLista.Delete;
end;

procedure TFrmPacientes.BtnCancelarClick(Sender: TObject);
begin
  PageContCadastro.TabIndex := 0;
  ADOQueryClientes.Close;
  id_paciente := 0;
end;

procedure TFrmPacientes.BtnNovoCadastroClick(Sender: TObject);
begin
  PageContCadastro.Show;
  PageContCadastro.TabIndex := 1;
  ADOQueryClientes.Open;
  ADOQueryClientes.Insert;
end;

procedure TFrmPacientes.QRBandDadosBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if (TipodaLinha) then
  begin
    QRBandDados.Color := $00EEEEEE;
  end
  else
  begin
    QRBandDados.Color := $00FFFFFF;
  end;
  TipodaLinha := not TipodaLinha;
end;


procedure TFrmPacientes.BtnConsultarClienteClick(Sender: TObject);
begin
  PnlConteudo.Show;
  PageContCadastro.Show;
  PageContCadastro.TabIndex := 0;
end;

procedure TFrmPacientes.BtnExibirRelatorioClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TFrmPacientes.ADOQueryClientesData_NascimentoSetText(Sender: TField;
  const Text: String);
var Ano,
    Mes,
    Dia: Word;
begin
  Ano := StrToIntDef(Copy(DBEditDataNascimento.Text,7,4), 0);
  Mes := StrToIntDef(Copy(DBEditDataNascimento.Text,4,2), 0);
  Dia := StrToIntDef(Copy(DBEditDataNascimento.Text,1,2), 0);

  if Ano < 1800 then
  begin
    ShowMessage('Por favor, digite uma data válida.');
    Abort;
  end;

  if not IsValidDate(Ano, Mes, Dia) then
  begin
    ShowMessage('Por favor, digite uma data válida.');
    Abort;
  end;
  Sender.Value := Text;
end;

procedure TFrmPacientes.ImgFecharClick(Sender: TObject);
begin
  PageContCadastro.Hide;
  PnlConteudo.Hide;
end;

procedure TFrmPacientes.PageContCadastroChange(Sender: TObject);
begin
  if (PageContCadastro.ActivePageIndex = 0) then
  begin
    PnlConteudo.Width := 1216;
    PnlConteudo.Height := 587;
  end
  else
  begin
    PnlConteudo.Width := 734;
    PnlConteudo.Height := 282;
  end;

  ADOQueryClientes.Close;
  ADOQueryClientes.SQL[2] := 'set @IdCliente = ' + IntToStr(QryListaidcliente.Value);
  ADOQueryClientes.Open;
  ADOQueryClientes.Edit;
end;

end.
