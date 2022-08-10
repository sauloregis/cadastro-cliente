object Form1: TForm1
  Left = 23
  Top = -751
  Width = 1158
  Height = 604
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 736
    Top = 92
    Width = 359
    Height = 296
    Caption = 'Cadastro de Cliente'
    TabOrder = 2
    object Label1: TLabel
      Left = 92
      Top = 68
      Width = 40
      Height = 13
      Caption = 'Idcliente'
    end
    object Label2: TLabel
      Left = 27
      Top = 29
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEditNome
    end
    object Label3: TLabel
      Left = 143
      Top = 68
      Width = 85
      Height = 13
      Caption = 'Data_Nascimento'
      FocusControl = DBEditDataNascimento
    end
    object Label4: TLabel
      Left = 26
      Top = 70
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label5: TLabel
      Left = 30
      Top = 123
      Width = 20
      Height = 13
      Caption = 'Rua'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 29
      Top = 168
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 281
      Top = 165
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 150
      Top = 168
      Width = 21
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit8
    end
    object DBEditIdCliente: TDBEdit
      Left = 91
      Top = 84
      Width = 31
      Height = 21
      DataField = 'Idcliente'
      DataSource = DSCliente
      TabOrder = 0
    end
    object DBEditNome: TDBEdit
      Left = 27
      Top = 43
      Width = 308
      Height = 21
      DataField = 'Nome'
      DataSource = DSCliente
      TabOrder = 1
    end
    object DBEditDataNascimento: TDBEdit
      Left = 143
      Top = 83
      Width = 92
      Height = 21
      DataField = 'Data_Nascimento'
      DataSource = DSCliente
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 27
      Top = 85
      Width = 50
      Height = 21
      DataField = 'Sexo'
      DataSource = DSCliente
      ItemHeight = 13
      Items.Strings = (
        'M'
        'F')
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 30
      Top = 138
      Width = 304
      Height = 21
      DataField = 'Rua'
      DataSource = DSCliente
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 29
      Top = 184
      Width = 101
      Height = 21
      DataField = 'Cidade'
      DataSource = DSCliente
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 282
      Top = 181
      Width = 50
      Height = 21
      DataField = 'Estado'
      DataSource = DSCliente
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 149
      Top = 183
      Width = 108
      Height = 21
      DataField = 'CEP'
      DataSource = DSCliente
      TabOrder = 7
    end
    object BtnSalvar: TBitBtn
      Left = 27
      Top = 228
      Width = 99
      Height = 40
      Caption = 'Salvar'
      TabOrder = 8
      OnClick = BtnSalvarClick
    end
  end
  object DBGridCadastros: TDBGrid
    Left = 20
    Top = 96
    Width = 687
    Height = 249
    DataSource = DSLista
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Idcliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 398
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Nascimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sexo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rua'
        Width = 202
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 79
        Visible = True
      end>
  end
  object BtnNovo: TBitBtn
    Left = 18
    Top = 352
    Width = 99
    Height = 40
    Caption = 'Novo'
    TabOrder = 1
    OnClick = BtnNovoClick
  end
  object GbxConsultaNome: TGroupBox
    Left = 22
    Top = 21
    Width = 353
    Height = 57
    Caption = 'Consultar por Nome'
    TabOrder = 3
    object EdtConsultaNome: TEdit
      Left = 9
      Top = 22
      Width = 328
      Height = 21
      TabOrder = 0
      OnChange = EdtConsultaNomeChange
    end
  end
  object BtnEditar: TBitBtn
    Left = 129
    Top = 352
    Width = 99
    Height = 40
    Caption = 'Editar'
    TabOrder = 4
    OnClick = BtnEditarClick
  end
  object BtnExcluir: TBitBtn
    Left = 243
    Top = 352
    Width = 99
    Height = 40
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = BtnExcluirClick
  end
  object ADOConnectionCliente: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=dbcadastro_cliente;Data Source=LIGAET21' +
      '020004;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 493
    Top = 6
  end
  object ADOQueryLista: TADOQuery
    Connection = ADOConnectionCliente
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Cliente'
      'order by Idcliente'
      ''
      '')
    Left = 391
    Top = 185
    object ADOQueryListaIdcliente: TIntegerField
      FieldName = 'Idcliente'
    end
    object ADOQueryListaNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object ADOQueryListaSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object ADOQueryListaRua: TStringField
      FieldName = 'Rua'
      Size = 50
    end
    object ADOQueryListaCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object ADOQueryListaEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object ADOQueryListaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object ADOQueryListaData_Nascimento: TWideStringField
      FieldName = 'Data_Nascimento'
      Size = 10
    end
  end
  object DSCliente: TDataSource
    DataSet = ADOQueryClientes
    Left = 450
    Top = 7
  end
  object ADOQueryClientes: TADOQuery
    Connection = ADOConnectionCliente
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'declare @IdCliente integer'
      ''
      'set @IdCliente = 1'
      ''
      'select * from Cliente'
      'where Idcliente = @IdCliente'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 919
    Top = 84
    object ADOQueryClientesIdcliente: TIntegerField
      FieldName = 'Idcliente'
    end
    object ADOQueryClientesNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object ADOQueryClientesSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object ADOQueryClientesRua: TStringField
      FieldName = 'Rua'
      Size = 50
    end
    object ADOQueryClientesCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object ADOQueryClientesEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object ADOQueryClientesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object ADOQueryClientesData_Nascimento: TWideStringField
      FieldName = 'Data_Nascimento'
      EditMask = '99/99/9999;1;_'
      Size = 10
    end
  end
  object DSLista: TDataSource
    DataSet = ADOQueryLista
    Left = 915
    Top = 12
  end
end
