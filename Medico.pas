unit Medico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, Buttons, Grids, DBGrids,
  dxGDIPlusClasses, ComCtrls, DB, ADODB;

type
  TFrmMedico = class(TForm)
    PnlMenu: TPanel;
    PnlClientes: TPanel;
    PnlConteudo: TPanel;
    PageContCadastro: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
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
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    DSListaMedica: TDataSource;
    DSCadastroMedico: TDataSource;
    QRYCadastroMedico: TADOQuery;
    QRYListaMedica: TADOQuery;
    QRYListaMedicaIdmedico: TIntegerField;
    QRYListaMedicaNome: TStringField;
    QRYListaMedicaSexo: TStringField;
    QRYListaMedicaCRM: TStringField;
    QRYCadastroMedicoIdmedico: TIntegerField;
    QRYCadastroMedicoNome: TStringField;
    QRYCadastroMedicoSexo: TStringField;
    QRYCadastroMedicoCRM: TStringField;
    Label3: TLabel;
    DBEditNomeMedico: TDBEdit;
    Label4: TLabel;
    DBEditSexoMedico: TDBEdit;
    Label5: TLabel;
    DBEditCRM: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMedico: TFrmMedico;

implementation

uses
  Principal;

{$R *.dfm}

end.
