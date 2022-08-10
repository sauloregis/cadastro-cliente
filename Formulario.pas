unit Formulario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, DateUtils,
  Buttons;

type
  TForm1 = class(TForm)
    ADOConnectionCliente: TADOConnection;
    ADOQueryLista: TADOQuery;
    DSCliente: TDataSource;
    ADOQueryListaIdcliente: TIntegerField;
    ADOQueryListaNome: TStringField;
    ADOQueryListaSexo: TStringField;
    ADOQueryListaRua: TStringField;
    ADOQueryListaCidade: TStringField;
    ADOQueryListaEstado: TStringField;
    ADOQueryListaCEP: TStringField;
    DBGridCadastros: TDBGrid;
    ADOQueryClientes: TADOQuery;
    DSLista: TDataSource;
    ADOQueryClientesIdcliente: TIntegerField;
    ADOQueryClientesNome: TStringField;
    ADOQueryClientesSexo: TStringField;
    ADOQueryClientesRua: TStringField;
    ADOQueryClientesCidade: TStringField;
    ADOQueryClientesEstado: TStringField;
    ADOQueryClientesCEP: TStringField;
    BtnNovo: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEditIdCliente: TDBEdit;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    Label3: TLabel;
    DBEditDataNascimento: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    BtnSalvar: TBitBtn;
    GbxConsultaNome: TGroupBox;
    EdtConsultaNome: TEdit;
    BtnEditar: TBitBtn;
    ADOQueryClientesData_Nascimento: TWideStringField;
    ADOQueryListaData_Nascimento: TWideStringField;
    BtnExcluir: TBitBtn;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtConsultaNomeChange(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.BtnNovoClick(Sender: TObject);
begin
  ADOQueryClientes.Insert;
end;

procedure TForm1.BtnSalvarClick(Sender: TObject);
begin
  IsValidDate()
  ADOQueryClientes.Post;
  ADOQueryLista.Close;
  ADOQueryLista.Open;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ADOQueryLista.Open;
  ADOQueryClientes.Open;
end;

procedure TForm1.EdtConsultaNomeChange(Sender: TObject);
begin
  ADOQueryLista.SQL.Clear;
  ADOQueryLista.SQL.Add('select * from Cliente where Nome like ''%' + EdtConsultaNome.Text + '%''');
  ADOQueryLista.Open;
end;

procedure TForm1.BtnEditarClick(Sender: TObject);
begin
  ADOQueryClientes.Close;
  ADOQueryClientes.SQL[2] := 'set @IdCliente = ' + IntToStr(ADOQueryListaIdcliente.Value);
  ADOQueryClientes.Open;
end;

procedure TForm1.BtnExcluirClick(Sender: TObject);
begin
  ADOQueryLista.Delete;
end;

end.
