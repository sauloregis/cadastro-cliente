unit Formulario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, DateUtils, StrUtils,
  Buttons, ComCtrls, QRCtrls, QuickRpt;

type
  TForm1 = class(TForm)
    PageContCadastro: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridCadastros: TDBGrid;
    BtnNovo: TBitBtn;
    GbxConsultaNome: TGroupBox;
    EdtConsultaNome: TEdit;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    ADOQueryLista: TADOQuery;
    DSCliente: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEditNome: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    BtnSalvar: TBitBtn;
    ADOConnectionCliente: TADOConnection;
    ADOQueryClientes: TADOQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BtnCancelar: TBitBtn;
    Label3: TLabel;
    ADOQueryListaidcliente: TAutoIncField;
    ADOQueryListaNome: TStringField;
    ADOQueryListaSexo: TStringField;
    ADOQueryListaData_Nascimento: TStringField;
    ADOQueryListaRua: TStringField;
    ADOQueryListaCidade: TStringField;
    ADOQueryListaEstado: TStringField;
    ADOQueryListaCEP: TStringField;
    DTPDataNascimento: TDateTimePicker;
    BtnNovoCadastro: TButton;
    QuickRep1: TQuickRep;
    QRBandTitulo: TQRBand;
    QRBandDados: TQRBand;
    QRDBNome: TQRDBText;
    QRDBidcliente: TQRDBText;
    QRDBDataNascimento: TQRDBText;
    QRLabel1: TQRLabel;
    DSLista: TDataSource;
    QRDBText1: TQRDBText;
    Panel1: TPanel;
    BtnExibirRelatorio: TButton;
    BtnConsultarCliente: TButton;
    ADOQueryClientesidcliente: TAutoIncField;
    ADOQueryClientesNome: TStringField;
    ADOQueryClientesSexo: TStringField;
    ADOQueryClientesData_Nascimento: TWideStringField;
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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TipodaLinha: Boolean;

implementation


{$R *.dfm}

procedure TForm1.BtnNovoClick(Sender: TObject);
begin
  ADOQueryClientes.Open;
  ADOQueryClientes.Insert;
  PageContCadastro.TabIndex := 1;
end;

procedure TForm1.BtnEditarClick(Sender: TObject);
begin
  ADOQueryClientes.Close;
  ADOQueryClientes.SQL[2] := 'set @IdCliente = ' + IntToStr(ADOQueryListaidcliente.Value);
  ADOQueryClientes.Open;
  ADOQueryClientes.Edit;
  PageContCadastro.TabIndex := 1;
  DBEditNome.SetFocus;
  DBEditNome.SelStart := Length(DBEditNome.Text);
end;

procedure TForm1.BtnSalvarClick(Sender: TObject);
begin
  ADOQueryClientesData_Nascimento.AsString := DateToStr(DTPDataNascimento.Date);

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

  ADOQueryClientes.Close;
  ADOQueryLista.Close;
  ADOQueryLista.Open;
  PageContCadastro.TabIndex := 0;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  QuickRep1.Hide;
  PageContCadastro.Hide;
  ADOQueryLista.Open;
end;

procedure TForm1.EdtConsultaNomeChange(Sender: TObject);
begin
  ADOQueryLista.SQL.Clear;
  ADOQueryLista.SQL.Add('select * from Cliente where Nome like ''%' + EdtConsultaNome.Text + '%''');
  ADOQueryLista.Open;
end;

procedure TForm1.BtnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir esse registro?', 'Excluir registro', MB_YESNO + MB_ICONQUESTION) = mrYes then
  ADOQueryLista.Delete;
end;

procedure TForm1.BtnCancelarClick(Sender: TObject);
begin
  PageContCadastro.TabIndex := 0;
  ADOQueryClientes.Close;
end;

procedure TForm1.BtnNovoCadastroClick(Sender: TObject);
begin
  PageContCadastro.Show;
  PageContCadastro.TabIndex := 1;
  ADOQueryClientes.Open;
  ADOQueryClientes.Insert;
end;

procedure TForm1.QRBandDadosBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if (TipodaLinha) then
  begin
    QRBandColunas.Color := $00EEEEEE;
  end
  else
  begin
    QRBandColunas.Color := $00FFFFFF;
  end;
  TipodaLinha := not TipodaLinha;
end;


procedure TForm1.BtnConsultarClienteClick(Sender: TObject);
begin
  PageContCadastro.Show;
end;

procedure TForm1.BtnExibirRelatorioClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

end.
