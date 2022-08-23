unit Paciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, DateUtils, StrUtils,
  Buttons, ComCtrls, QRCtrls, QuickRpt, dxGDIPlusClasses;

type
  TFrmPacientes = class(TForm)
    ADOQueryLista: TADOQuery;
    DSCliente: TDataSource;
    ADOQueryClientes: TADOQuery;
    ADOQueryListaidcliente: TAutoIncField;
    ADOQueryListaNome: TStringField;
    ADOQueryListaSexo: TStringField;
    ADOQueryListaRua: TStringField;
    ADOQueryListaCidade: TStringField;
    ADOQueryListaEstado: TStringField;
    ADOQueryListaCEP: TStringField;
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
    ADOQueryListaData_Nascimento: TDateTimeField;
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
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    DBEditDataNascimento: TDBEdit;
    ImgFechar2: TImage;
    LblTipodeConsulta: TLabel;
    LblBuscar: TLabel;
    CBoxTipodeConsulta: TComboBox;
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
  ADOQueryClientes.SQL[2] := 'set @IdCliente = ' + IntToStr(ADOQueryListaidcliente.Value);
  ADOQueryClientes.Open;
  ADOQueryClientes.Edit;
  PageContCadastro.TabIndex := 1;
  DBEditNome.SetFocus;
  DBEditNome.SelStart := Length(DBEditNome.Text);
end;

procedure TFrmPacientes.BtnSalvarClick(Sender: TObject);
begin
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
  ADOQueryLista.Close;
  ADOQueryLista.Open;
  PageContCadastro.TabIndex := 0;
end;

procedure TFrmPacientes.FormShow(Sender: TObject);
begin
  QuickRep1.Hide;
  ADOQueryLista.Open;
end;

procedure TFrmPacientes.EdtConsultaNomeChange(Sender: TObject);
begin
  ADOQueryLista.SQL.Clear;
  case CBoxTipodeConsulta.ItemIndex of
    0:ADOQueryLista.SQL.Add('select * from Cliente where idcliente like ''%' + EdtConsultaNome.Text + '%''');
    1:ADOQueryLista.SQL.Add('select * from Cliente where Nome like ''%' + EdtConsultaNome.Text + '%''');
    2:ADOQueryLista.SQL.Add('select * from Cliente where Sexo like ''%' + EdtConsultaNome.Text + '%''');
    3:ADOQueryLista.SQL.Add('select * from Cliente where Data_Nascimento like ''%' + EdtConsultaNome.Text + '%''');
    4:ADOQueryLista.SQL.Add('select * from Cliente where Rua like ''%' + EdtConsultaNome.Text + '%''');
    5:ADOQueryLista.SQL.Add('select * from Cliente where Cidade like ''%' + EdtConsultaNome.Text + '%''');
    6:ADOQueryLista.SQL.Add('select * from Cliente where Estado like ''%' + EdtConsultaNome.Text + '%''');
    7:ADOQueryLista.SQL.Add('select * from Cliente where CEP like ''%' + EdtConsultaNome.Text + '%''');
  end;
  ADOQueryLista.Open;
  EdtConsultaNome.SetFocus;
end;

procedure TFrmPacientes.BtnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esse registro?', 'Excluir registro', MB_YESNO + MB_ICONQUESTION) = mrYes then
  ADOQueryLista.Delete;
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
  ADOQueryClientes.Close;
  ADOQueryClientes.SQL[2] := 'set @IdCliente = ' + IntToStr(ADOQueryListaidcliente.Value);
  ADOQueryClientes.Open;
  ADOQueryClientes.Edit;
end;

end.
