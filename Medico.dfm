object FrmMedico: TFrmMedico
  Left = 596
  Top = 111
  Width = 1137
  Height = 699
  Caption = 'FrmMedico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 46
    Align = alTop
    Color = 9934592
    TabOrder = 0
    object PnlMedicos: TPanel
      Left = 41
      Top = 5
      Width = 116
      Height = 35
      Caption = 'M'#233'dicos'
      Color = 9934592
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object PnlConteudo: TPanel
    Left = 13
    Top = 50
    Width = 589
    Height = 506
    TabOrder = 1
    object PageCCadastroMedico: TPageControl
      Left = 0
      Top = 0
      Width = 1224
      Height = 615
      ActivePage = TabSheet2
      Align = alCustom
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Consulta de M'#233'dico'
        DesignSize = (
          1216
          587)
        object Image1: TImage
          Left = 1170
          Top = 12
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
        end
        object DBGridCadastros: TDBGrid
          Left = 21
          Top = 104
          Width = 546
          Height = 308
          DataSource = DSListaMedica
          FixedColor = clWhite
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Idmedico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sexo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CRM'
              Visible = True
            end>
        end
        object BtnNovoMedico: TBitBtn
          Left = 20
          Top = 425
          Width = 99
          Height = 40
          Caption = 'Novo'
          TabOrder = 1
          OnClick = BtnNovoMedicoClick
        end
        object GbxConsultaNome: TGroupBox
          Left = 21
          Top = 8
          Width = 510
          Height = 80
          Caption = 'Consultar por Nome'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          object LblBuscar: TLabel
            Left = 166
            Top = 26
            Width = 40
            Height = 13
            Caption = 'Buscar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblTipodeConsulta: TLabel
            Left = 8
            Top = 27
            Width = 97
            Height = 13
            Caption = 'Tipo de Consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdtConsultaNomeMedico: TEdit
            Left = 166
            Top = 45
            Width = 328
            Height = 21
            TabOrder = 0
            OnChange = EdtConsultaNomeMedicoChange
          end
          object CBoxTipodeConsulta: TComboBox
            Left = 11
            Top = 46
            Width = 145
            Height = 21
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 1
            Text = 'Nome'
            Items.Strings = (
              'Id Medico'
              'Nome'
              'Sexo'
              'CRM')
          end
        end
        object BtnEditarMedico: TBitBtn
          Left = 132
          Top = 425
          Width = 99
          Height = 40
          Caption = 'Editar'
          TabOrder = 3
          OnClick = BtnEditarMedicoClick
        end
        object BtnExcluir: TBitBtn
          Left = 245
          Top = 425
          Width = 99
          Height = 40
          Caption = 'Excluir'
          TabOrder = 4
          OnClick = BtnExcluirClick
        end
        object DBEdit1: TDBEdit
          Left = 546
          Top = -33
          Width = 1044
          Height = 21
          DataField = 'Nome'
          TabOrder = 5
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Cadastro M'#233'dico'
        ImageIndex = 1
        object Label1: TLabel
          Left = 546
          Top = -23
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit1
        end
        object GBoxCadastroMedico: TGroupBox
          Left = 11
          Top = 9
          Width = 420
          Height = 128
          Caption = 'Cadastro M'#233'dico'
          TabOrder = 0
          object Label3: TLabel
            Left = 19
            Top = 25
            Width = 33
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEditNomeMedico
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 23
            Top = 70
            Width = 29
            Height = 13
            Caption = 'Sexo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 87
            Top = 70
            Width = 28
            Height = 13
            Caption = 'CRM'
            FocusControl = DBEditCRM
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEditNomeMedico: TDBEdit
            Left = 21
            Top = 39
            Width = 381
            Height = 21
            DataField = 'Nome'
            DataSource = DSCadastroMedico
            TabOrder = 0
          end
          object DBEditCRM: TDBEdit
            Left = 87
            Top = 87
            Width = 134
            Height = 21
            DataField = 'CRM'
            DataSource = DSCadastroMedico
            TabOrder = 1
          end
          object DBcboxSexo: TDBComboBox
            Left = 21
            Top = 87
            Width = 62
            Height = 21
            DataField = 'Sexo'
            DataSource = DSCadastroMedico
            ItemHeight = 13
            Items.Strings = (
              'M'
              'F')
            TabOrder = 2
          end
        end
        object BtnCancelar: TBitBtn
          Left = 124
          Top = 145
          Width = 99
          Height = 40
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = BtnCancelarClick
        end
        object BtnSalvarMedico: TBitBtn
          Left = 11
          Top = 145
          Width = 99
          Height = 40
          Caption = 'Salvar'
          TabOrder = 2
          OnClick = BtnSalvarMedicoClick
        end
      end
    end
  end
  object DSListaMedica: TDataSource
    DataSet = QRYListaMedica
    Left = 234
    Top = 328
  end
  object DSCadastroMedico: TDataSource
    DataSet = QRYCadastroMedico
    Left = 660
    Top = 121
  end
  object QRYListaMedica: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    Parameters = <>
    SQL.Strings = (
      'select * from Medico')
    Left = 234
    Top = 275
    object QRYListaMedicaIdmedico: TIntegerField
      FieldName = 'Idmedico'
    end
    object QRYListaMedicaNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object QRYListaMedicaSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object QRYListaMedicaCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
  end
  object QRYCadastroMedico: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    Parameters = <>
    SQL.Strings = (
      'declare @Idmedico integer'
      ''
      'set @Idmedico = 1'
      ''
      'select * '
      'from Medico'
      ''
      'where Idmedico = @Idmedico'
      '')
    Left = 659
    Top = 79
    object QRYCadastroMedicoIdmedico: TIntegerField
      FieldName = 'Idmedico'
    end
    object QRYCadastroMedicoNome: TStringField
      FieldName = 'Nome'
      Size = 80
    end
    object QRYCadastroMedicoSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object QRYCadastroMedicoCRM: TStringField
      FieldName = 'CRM'
      Size = 10
    end
  end
end
