object FrmConsultaAtendimento: TFrmConsultaAtendimento
  Left = 343
  Top = 258
  Width = 1305
  Height = 675
  Caption = 'FrmConsultaAtendimento'
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
  object PnlConsultaAtendimento: TPanel
    Left = 16
    Top = 13
    Width = 819
    Height = 379
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      819
      379)
    object Label2: TLabel
      Left = 26
      Top = 12
      Width = 209
      Height = 25
      Caption = 'Consultar Atendimentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape2: TShape
      Left = 26
      Top = 40
      Width = 1200
      Height = 1
      Brush.Color = clSilver
      Brush.Style = bsHorizontal
      Pen.Color = clMedGray
    end
    object Label3: TLabel
      Left = 28
      Top = 47
      Width = 105
      Height = 13
      Caption = 'Nome do Paciente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 207
      Top = 47
      Width = 96
      Height = 13
      Caption = 'Nome do M'#233'dico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 380
      Top = 49
      Width = 120
      Height = 13
      Caption = 'Data de Atendimento'
      FocusControl = EditConsultaData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 575
      Top = 49
      Width = 78
      Height = 13
      Caption = 'Procedimento'
      FocusControl = EditConsultaProcedimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image3: TImage
      Left = 792
      Top = 3
      Width = 24
      Height = 24
      Anchors = [akTop, akRight]
      AutoSize = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
        000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
        0970485973000000CF000000CF0146B971440000001974455874536F66747761
        7265007777772E696E6B73636170652E6F72679BEE3C1A0000012E4944415448
        4BA595316EC23014402DD1C245BA754476561467E9017218D8DA63D04EA55555
        016ABB949E8A01A7EA68FE8FF22B1359CECFF7932C8183DF23C116EAD79A5553
        99A32B8BB55F2CAE5426E840173A1B5B2C31E01A6B7C3B4AF39E13C1B5E8F8F7
        59735250D90413E24844EEE12E9E95AF6FA7CE9A8FF002DCD5D6CFE7D7DDDA41
        7C5D4F40FE1A3AE08B7FFBBB9B59F7017964504E48226C393126325A4E702262
        39918A64CB897844EF9A52BF85732239118B5C8E0C39D1453EFB727864876C39
        D23E73DB7F2C10A8F49E734E92C47FD020C23C8C51A2F2CAFCB84A7F8573A248
        6A2B72CE4912CE3E174738726274648C9C604724726230922327921178F3145E
        C06D880BBAB56CDA486F0B43F4F1E24F5F2A2722919372B67880177F305E72E4
        043AD0854E67F5FD1929D85BDDF7CCAF350000000049454E44AE426082}
      OnClick = Image3Click
    end
    object ImgBuscarAtendimento: TImage
      Left = 740
      Top = 55
      Width = 28
      Height = 26
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
        000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
        0970485973000000A6000000A601DD7DFF380000001974455874536F66747761
        7265007777772E696E6B73636170652E6F72679BEE3C1A000002FB4944415448
        4BA594CB4F135114C6BB3071AF6B77FA07401F52834A44A45368638C0F443B43
        41494411C485511111312E541E0990B820860D0B1F41C5445D4862C410425245
        4122684869E4A94210E4D97EDEAF719A69BD351617BFE9DCB4F73BA7E79CEF98
        00FC41B2C3936951D46B56457D263E27057E8BA2B5991D5A7972966696DD8947
        D4C196AE6EB43AB5BBA97B8FC3E92981B7AC1A95F52DB870B319B9A72AA01C39
        0DBB2B3F6856D41B9B95E2F5C6BBF188BC981D6AAA101FCFF294A2E6CE43BC1A
        18C3C0D81CFCDF16F026300BDFC82C5EF4FA71B9AE051939276156B4FEADD979
        5B8C6232C28FDF998F7BCF56E3F1EB7E0C4DCE63692528BE02E61657F136F023
        1C40A7F579370E149E87285D4F5A5ADA3A6AC423FC60599879BB10FF20B226CC
        BC6F742E4AD8484B7B27D20F9E10FF44BD142B6A24DC50D69C6519FEBA809560
        482A2883BD49717997AD7BBC9B64E2C4C469614359F39FCB414CCC2E49C5643C
        EAECC3EE4345B0383C39327162E228725A58F7500878FF25BADE7FA36B680A2E
        AD4C04506FC9C409FFC1244771E4FB025613288FCEB173D7D9EC973271C2007E
        D63230BD28CE888CE4BFA295568155D005631101B4369AE8E3C4BC38037D0994
        887DE3F4599D9EABBA602CC2605A391DDAF16E04A3338B52A178DCEBF0619718
        558B4373CBC48989BB85F6A7436522F1E8199E4671451D6CCEBC197B66C10699
        38093FB85B687F3A542626A3A1F52976EC2B140DD6D4585123E1071717770BED
        4F87CA04759839C595A325D8E6CEF7159CA98C9B3D89BC707171B7D0FE9C2A9A
        8873AE0BB3A1AC39CBC2CC299E5B74119EE20A5F8A3BDFBDDDE5D96914D6893A
        707171B7D0FE74284DC439E728725AD850D69C6561E614CF564BBA6C4ECFE8A7
        66E7141A2D878D7A24EAA0C3DD42FBD3A13411E79CA3C86931369499537CB0CA
        FE194D36E089128C0D1279590B2CCBE015FB206A92104612E48F4B09539BB45F
        88AFC40B22BF9428F1823459DCF20B6B2136C8ED1484EEA70FCB7FBC568C411A
        ADC0838C80FC87FF436D92220274A3DEDC8B068BF3174BB678E73AAC56E50000
        000049454E44AE426082}
      OnClick = ImgBuscarAtendimentoClick
    end
    object EditConsultaData: TDBEdit
      Left = 380
      Top = 62
      Width = 150
      Height = 21
      DataField = 'Dt_atendimento'
      TabOrder = 0
    end
    object EditConsultaProcedimento: TDBEdit
      Left = 575
      Top = 62
      Width = 150
      Height = 21
      DataField = 'Procedimento'
      TabOrder = 1
    end
    object GridConsultaAtendimentos: TDBGrid
      Left = 30
      Top = 103
      Width = 751
      Height = 242
      DataSource = DSBuscar
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idatendimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Atendimento'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Paciente'
          Width = 256
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Medico'
          Visible = True
        end>
    end
    object CBBuscarPaciente: TDBLookupComboBox
      Left = 28
      Top = 63
      Width = 145
      Height = 21
      KeyField = 'idcliente'
      ListField = 'nome'
      ListSource = DSPaciente
      TabOrder = 3
    end
    object CBBuscarMedico: TDBLookupComboBox
      Left = 207
      Top = 62
      Width = 145
      Height = 21
      KeyField = 'idmedico'
      ListField = 'nome'
      ListSource = DSMedico
      TabOrder = 4
    end
  end
  object DSBuscar: TDataSource
    DataSet = QryBuscar
    Left = 1122
    Top = 143
  end
  object QryBuscar: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    Parameters = <>
    SQL.Strings = (
      'select'
      #9'A.idatendimento,'
      #9'FORMAT(A.Dt_atendimento, '#39'dd/MM/yyyy'#39') as Data_Atendimento,'
      #9'C.Nome Nome_Paciente,'
      #9'M.Nome Nome_Medico'
      ''
      'from Atendimento A '
      'inner join Cliente C on C.idcliente = A.idpaciente '
      'inner join Medico M on M.idmedico = A.idmedico'
      '')
    Left = 1188
    Top = 142
    object QryBuscaridatendimento: TAutoIncField
      DisplayLabel = 'Id de Atendimento'
      FieldName = 'idatendimento'
      ReadOnly = True
    end
    object QryBuscarData_Atendimento: TWideStringField
      DisplayLabel = 'Data de Atendimento'
      FieldName = 'Data_Atendimento'
      ReadOnly = True
      Size = 4000
    end
    object QryBuscarNome_Paciente: TStringField
      DisplayLabel = 'Nome do Paciente'
      FieldName = 'Nome_Paciente'
      Size = 80
    end
    object QryBuscarNome_Medico: TStringField
      DisplayLabel = 'Nome do Medico'
      FieldName = 'Nome_Medico'
      Size = 80
    end
  end
  object QryPaciente: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    Parameters = <>
    SQL.Strings = (
      'select'
      'idcliente,'
      'nome'
      ''
      'from Cliente')
    Left = 1188
    Top = 91
    object QryPacienteidcliente: TAutoIncField
      FieldName = 'idcliente'
      ReadOnly = True
    end
    object QryPacientenome: TStringField
      FieldName = 'nome'
      Size = 80
    end
  end
  object DSPaciente: TDataSource
    DataSet = QryPaciente
    Left = 1124
    Top = 91
  end
  object DSMedico: TDataSource
    DataSet = QryMedico
    Left = 1125
    Top = 41
  end
  object QryMedico: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    Parameters = <>
    SQL.Strings = (
      'select'
      'idmedico,'
      'nome'
      ''
      ''
      'from Medico')
    Left = 1182
    Top = 42
    object QryMedicoidmedico: TAutoIncField
      FieldName = 'idmedico'
      ReadOnly = True
    end
    object QryMediconome: TStringField
      FieldName = 'nome'
      Size = 80
    end
  end
end
