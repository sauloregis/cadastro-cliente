object FrmAtendimentos: TFrmAtendimentos
  Left = 208
  Top = 0
  Width = 1225
  Height = 735
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FrmAtendimentos'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlNovoAtendimento: TPanel
    Left = 21
    Top = 56
    Width = 410
    Height = 199
    BevelOuter = bvNone
    TabOrder = 1
    OnEnter = PnlNovoAtendimentoEnter
    DesignSize = (
      410
      199)
    object Label1: TLabel
      Left = 14
      Top = 12
      Width = 161
      Height = 25
      Caption = 'Novo Atendimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 14
      Top = 40
      Width = 700
      Height = 1
      Brush.Color = clSilver
      Brush.Style = bsHorizontal
      Pen.Color = clMedGray
    end
    object LblPaciente: TLabel
      Left = 16
      Top = 46
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
    object LblNomedoMedico: TLabel
      Left = 210
      Top = 46
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
    object Label7: TLabel
      Left = 16
      Top = 92
      Width = 120
      Height = 13
      Caption = 'Data de Atendimento'
      FocusControl = DBEditDatadeAtendimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 210
      Top = 91
      Width = 78
      Height = 13
      Caption = 'Procedimento'
      FocusControl = DBEditProcedimento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ImgNovoPaciente: TImage
      Left = 172
      Top = 58
      Width = 26
      Height = 25
      Hint = 'Criar novo paciente'
      ParentShowHint = False
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
        000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
        0970485973000000850000008501E2ECFFC10000001974455874536F66747761
        7265007777772E696E6B73636170652E6F72679BEE3C1A000004714944415448
        4BC594094C936718C79963F701C12188B4A585725A39642DE32C14ECB088502E
        81A1634A440837883AB7E8CC840C9948108445916B33C3649B829B6C7219C3C4
        C921C6291441260C540426B2A893FFDEEF6BFBA56535BBB2EC9FFC93EF7DDFE7
        F93DEFF75E7AFF9716114B586C76A5398BD5C9E559F692EF4E36875BADAFAF1F
        40C69EA1A3FE890C0C0C22D91C0B45727AE654E3993628466FE1C6ED690C8C4E
        A0A9BD03E9D9DB66385CEE90919151BC2AE5AFCB82C72B8B7B67E354FFCD711A
        4AB9A3FB32EA8E7F89F60BDD4C1F354E2630C3E2704E91B4E794D97FA2B73726
        C45D1B199F5143AE0CDD444C74142264627C901683D8107FC84383D1DB3FC414
        2AADAC7D60656BF703497F4A4979824CCCCC5233B76E9F5627528E5E1789D315
        DB307FA9967147DD6EAC91BDC9C450CE787FF723BE9DDD7E154AA75EE25BDB8C
        5C1F9F6492DA3ABB10B356A205573B396E0D4E343533B13D37C6E02414DD271C
        63256E810C0D0DD38BCACA1FAA1328571DAB4741CE069D058EEC494451693913
        AB18BF8B5D6515E0F1F9BAFF826DC13D4FADB766816FCF7E8F4D51813A0BE424
        84A1FEE4D74CEC30F1575D7DB05DE138AA426ACBDACE5EA109573B68B5143DC7
        F76AC1071A0BE1EFE78DA189BB4C1C55A0B1EF2A9C446EBFA890DA12383A8F68
        82D5BE78A51F81AB24F48C6BF393F1EE9648F88BBDE863AB19779D146BB8F423
        3C2501BF12DCCB4AAA861C042B863413343D7C6B8A5E8E8FF617E3D81727A179
        10D4EEFB69822EB0D2DD638EE0F495540DF12CF957172655934D8E080BC16AA9
        1FD6CA5631964925082377E1704D1D137B4E318C43274E6119C7E2FED32F3C1B
        4390564AB24AE66C76F5376DE7E8606AC67171B1D8121D88B1E6835AEBAFF6CF
        2D07F15E522422C3E5683E7F118E120F78A5CA21AFCD425079F2BC75B0686299
        C8BA5285A7250C8F8EB94315C82BD8479223748217BA30773D58CB2D913A5081
        ACB12AB86F92C1273D0C3B66EB293FF6C891D711F6F37405F252B6B7745C80AF
        A7080FBAAA7402B5DC5B8B70B907127B8A69E0E6EE03088E8D82A397485D00C1
        15290F4D9CB907E802446C5B7B8751A9D84D3750D33D5578D4FA315CA52E4855
        5420A83811BE3BA3F15652025CFD3CE976504912B6DEAE83A9136F5CC52737DA
        D8D8DBC58EF7DB48431E9961F51FC1DD95404709D09C0F454D36FC360722B426
        13E4F545E9E1A3F4F3D2F05D2BFDED450E03F557E66E36332A3C23FE1BCE3673
        4529C1983BBD17385B08B4ED035AF28133A44D7CAF61170A126510867B3E8E6F
        CB8383D8157C910089D91910CBA4A4FD3AECFD5C9136F809CC5CADA6555C2D2D
        12ADB4DFEE2B14CC868A9DE6776E0840615210B2D78921276D1FE1F2391F0FD7
        0F17F3CD2EE74CD4327B104B964818E0CDEC417C6B1E4C1DB91D2AE6136548EC
        48EC4F2C207E8598D68BAFBD2A7388F4BAB3E3DEE748B97608E6B63CB0057C1A
        9E3172042C775BEAE269DF89BF2B53013BD7C25730B9BE690F72273F45D6E851
        8454A6CD2F75E6CD1A5A2E095185FD6B999B3A5B7EB6D4C56AD044C0195CE2C0
        2A217D8B9543FFB9F4F47E078AC7E14D5815E3F50000000049454E44AE426082}
      ShowHint = True
      OnClick = ImgNovoPacienteClick
    end
    object ImgNovoMedico: TImage
      Left = 367
      Top = 58
      Width = 26
      Height = 24
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
        000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
        0970485973000000B1000000B101C62D498D0000001974455874536F66747761
        7265007777772E696E6B73636170652E6F72679BEE3C1A000003C74944415448
        4BC5937F50D37518C74704735CA4633F026563FC683063B0091C0DBD13E710F7
        53E2044F0CFA030E83B290BC7288D222894C2C0DEA3CF0D0A98464F8E3483972
        2A481810D8A1469DA7FD90E2A2BA020B3D27BDFB7CBE7CA7D2E88FE15DBDEEDE
        B7E7FB3CEFE7FD7CFE19E77FC7CFC7274EE8C73D26E0F976DD2FDA23B378D636
        337C381C953CE091E1CD49F351B938668A682F32C07F981C51B376CF11F3661D
        B43EA9407142240C11F3FECC8F0D9B581B1B3E41EBE204394A340A8878BE8DAC
        DD73843CAEA3285E0E539212BD87CAB139CF824DB966F43496C3B45089F56426
        E271CFB276CFA107CC0A89F3D30365F8EBE281293A7FD0068B42EA7CD003A796
        47063B2F1CAE703B3070A412FA28E96DE239C3DA3D2652229A7D5D210BBC75B3
        AF1EC7DE2DC6C4C07E46B4BED5BF17F3654137A5A23943C4AB985CF1007F3FDF
        154FEB54635906CDD83F5FEF52965E339AB36CC18D393C5E3ABBE6115E443A55
        54C8355760E3F67568AA7AE1EE0132BB4A3C29AC77660489F8567B45C1280D3C
        BAAB182DEF6D60C2F76E5D3B26091294B0B607831C692DCA4AC1277556B4D56E
        C48BA47E4CE0EF20A387261D3367165183B7B7D7B91D8546D414A5317AFB3923
        1EF6F6A2075A88C4D43853B6107D280E8B1EDA98937A07A72B4045EBC070E530
        99ED22B253A3278470B9DCAAB9F3249DFC00C1EFB5F6C62BD1DA4C2CC97D152F
        651BB121C7006D6E1968CFDE74E4B7608974F4717954BF4024AA26BBD2C9887F
        2750161A3678B6FB8BF1B6733D88523C81A6E3AD30671722B36E10D2E84446B4
        36AD29C0CFE340DACA55CC6F47EFC0843246F58350289CCB66B9C3E70BAC1F7D
        7CCAF9D31F13485E9A82CEBECBB0A46790971EC5A3E26024E93319CD164BD0DA
        D18DFEC16FA054C5E1F467179823CD271CD02E4DAD65E3DC91854738AEFF3A8E
        AFBE1F41DEB3CF334B6FBE5383E36DEDD0E8CC88D5681143446BFA88058B7428
        DCDD8EF825266687EE262E5C74898D7327561D778986D297BF526A630ED4ED3F
        84FA86C3B06DDB89D5F9EB19956EADC28FA3B711976CC4B6F377A05D55889E8B
        57187FB26ED9081BE706DFB422FD3B6A3A71A60BB637B6330B0DCD2DD8F9FE1E
        7C3DF40B0C1939D0AFCC665E4B6735F51F60B13E1D25AF4F7AA9D63C93E754AB
        D52236730ABACA1DD563D4F4EDC80DE415AC6316AC5BCAF1F9E5AB4C6DCE2407
        9E5A7D376C3A5555EF86252D239FCDBC474868E85B8EAEBE69975C3AD9DE8D93
        1D3DD3CE5CA219CB8D966636F61E5299AC28343CA28B6AD36B15A52F97DACA5C
        DFBA54C3BEDE2FAF6587CB233B5D3D2AFA4DFB646EBFBF9F90A8A17FD0FF020E
        E76FF899905F20F748BF0000000049454E44AE426082}
      OnClick = ImgNovoMedicoClick
    end
    object ImgFechar2: TImage
      Left = 377
      Top = 5
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
      OnClick = ImgFechar2Click
    end
    object DBEditDatadeAtendimento: TDBEdit
      Left = 17
      Top = 111
      Width = 151
      Height = 21
      DataField = 'Dt_atendimento'
      DataSource = DSAtendimento
      TabOrder = 0
    end
    object DBEditProcedimento: TDBEdit
      Left = 210
      Top = 110
      Width = 151
      Height = 21
      DataField = 'Procedimento'
      DataSource = DSAtendimento
      TabOrder = 1
    end
    object CBNomePaciente: TDBLookupComboBox
      Left = 16
      Top = 62
      Width = 151
      Height = 21
      DataField = 'idpaciente'
      DataSource = DSAtendimento
      KeyField = 'idcliente'
      ListField = 'Nome'
      ListSource = DSListaPaciente
      TabOrder = 2
    end
    object CBNomeMedico: TDBLookupComboBox
      Left = 210
      Top = 62
      Width = 151
      Height = 21
      DataField = 'idmedico'
      DataSource = DSAtendimento
      KeyField = 'idmedico'
      ListField = 'Nome'
      ListSource = DSListaMedico
      TabOrder = 3
    end
    object BtnSalvarAtendimento: TButton
      Left = 16
      Top = 146
      Width = 151
      Height = 37
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtnSalvarAtendimentoClick
    end
    object BtnResetarAtendimento: TButton
      Left = 208
      Top = 146
      Width = 151
      Height = 37
      Caption = 'Resetar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BtnResetarAtendimentoClick
    end
  end
  object PnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 1209
    Height = 46
    Align = alTop
    Color = 3504127
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = 12615680
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object PnlAtendimento: TPanel
      Left = 41
      Top = 5
      Width = 156
      Height = 35
      Caption = 'Novo Atendimento'
      Color = 3504127
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = PnlAtendimentoClick
    end
  end
  object QryAtendimento: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    Parameters = <>
    SQL.Strings = (
      'select * from Atendimento'
      'where idatendimento = 0')
    Left = 1168
    Top = 55
    object QryAtendimentoidatendimento: TAutoIncField
      FieldName = 'idatendimento'
      ReadOnly = True
    end
    object QryAtendimentoidpaciente: TIntegerField
      FieldName = 'idpaciente'
    end
    object QryAtendimentoidmedico: TIntegerField
      FieldName = 'idmedico'
    end
    object QryAtendimentoDt_atendimento: TDateTimeField
      FieldName = 'Dt_atendimento'
      OnSetText = QryAtendimentoDt_atendimentoSetText
      EditMask = '!99/99/9999;1;_'
    end
    object QryAtendimentoProcedimento: TStringField
      FieldName = 'Procedimento'
      Size = 100
    end
  end
  object DSAtendimento: TDataSource
    DataSet = QryAtendimento
    Left = 1082
    Top = 54
  end
  object DSListaPaciente: TDataSource
    DataSet = QryListaPaciente
    Left = 1079
    Top = 107
  end
  object QryListaPaciente: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    Parameters = <>
    SQL.Strings = (
      'select * from Cliente')
    Left = 1080
    Top = 166
    object QryListaPacienteNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object QryListaPacienteSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object QryListaPacienteRua: TStringField
      FieldName = 'Rua'
      Size = 50
    end
    object QryListaPacienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object QryListaPacienteEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object QryListaPacienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object QryListaPacienteidcliente: TAutoIncField
      FieldName = 'idcliente'
      ReadOnly = True
    end
    object QryListaPacienteData_Nascimento: TDateTimeField
      FieldName = 'Data_Nascimento'
    end
  end
  object DSListaMedico: TDataSource
    DataSet = QryListaMedico
    Left = 1167
    Top = 106
  end
  object QryListaMedico: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    Parameters = <>
    SQL.Strings = (
      'select * from Medico')
    Left = 1167
    Top = 166
    object QryListaMedicoNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object QryListaMedicoSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object QryListaMedicoCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
    object QryListaMedicoidmedico: TAutoIncField
      FieldName = 'idmedico'
      ReadOnly = True
    end
  end
end
