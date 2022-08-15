object Form1: TForm1
  Left = 600
  Top = 225
  Width = 1185
  Height = 705
  HorzScrollBar.Position = 146
  Caption = 'cadastro-cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -152
    Top = 0
    Width = 1927
    Height = 46
    Color = 12615680
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = 12615680
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object PnlClientes: TPanel
      Left = 25
      Top = 5
      Width = 116
      Height = 35
      Caption = 'Clientes'
      Color = 12615680
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnConsultarClienteClick
    end
    object PnlRelatorio: TPanel
      Left = 150
      Top = 5
      Width = 116
      Height = 35
      Caption = 'Relat'#243'rio'
      Color = 12615680
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnExibirRelatorioClick
    end
  end
  object PageContCadastro: TPageControl
    Left = -141
    Top = 58
    Width = 1150
    Height = 599
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta de Cliente'
      object Image1: TImage
        Left = 1118
        Top = 3
        Width = 24
        Height = 24
        AutoSize = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
          000000180806000000E0773DF8000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC61050000000970485973000000CF000000CF0146B9714400
          00001974455874536F667477617265007777772E696E6B73636170652E6F7267
          9BEE3C1A0000012E49444154484BA595316EC23014402DD1C245BA7544765614
          67E9017218D8DA63D04EA55555016ABB949E8A01A7EA68FE8FF22B1359CECFF7
          932C8183DF23C116EAD79A555399A32B8BB55F2CAE5426E840173A1B5B2C31E0
          1A6B7C3B4AF39E13C1B5E8F8F759735250D90413E24844EEE12E9E95AF6FA7CE
          9A8FF002DCD5D6CFE7D7DDDA417C5D4F40FE1A3AE08B7FFBBB9B59F701796450
          4E48226C393126325A4E70226239918A64CB897844EF9A52BF85732239118B5C
          8E0C39D1453EFB727864876C39D23E73DB7F2C10A8F49E734E92C47FD020C23C
          8C51A2F2CAFCB84A7F8573A2486A2B72CE4912CE3E174738726274648C9C6047
          24726230922327921178F3145EC06D880BBAB56CDA486F0B43F4F1E24F5F2A27
          22919372B67880177F305E72E4043AD0854E67F5FD1929D85BDDF7CCAF350000
          000049454E44AE426082}
        OnClick = Image1Click
      end
      object DBGridCadastros: TDBGrid
        Left = 22
        Top = 88
        Width = 1108
        Height = 415
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
            FieldName = 'idcliente'
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
            FieldName = 'Data_Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Rua'
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end>
      end
      object BtnNovo: TBitBtn
        Left = 22
        Top = 524
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
        Color = clBtnFace
        ParentColor = False
        TabOrder = 2
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
        Left = 133
        Top = 524
        Width = 99
        Height = 40
        Caption = 'Editar'
        TabOrder = 3
        OnClick = BtnEditarClick
      end
      object BtnExcluir: TBitBtn
        Left = 247
        Top = 524
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
      Caption = 'Cadastro de Cliente'
      ImageIndex = 1
      object Label1: TLabel
        Left = 546
        Top = -23
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit1
      end
      object GroupBox1: TGroupBox
        Left = 11
        Top = 9
        Width = 745
        Height = 229
        Caption = 'Cadastro de Cliente'
        TabOrder = 0
        object Label2: TLabel
          Left = 26
          Top = 29
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEditNome
        end
        object Label4: TLabel
          Left = 452
          Top = 27
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label5: TLabel
          Left = 26
          Top = 72
          Width = 20
          Height = 13
          Caption = 'Rua'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 28
          Top = 116
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 265
          Top = 114
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 142
          Top = 116
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 521
          Top = 27
          Width = 97
          Height = 13
          Caption = 'Data de Nascimento'
          FocusControl = DBEditDataNascimento
        end
        object DBEditNome: TDBEdit
          Left = 26
          Top = 43
          Width = 404
          Height = 21
          DataField = 'Nome'
          DataSource = DSCliente
          TabOrder = 0
        end
        object DBComboBox1: TDBComboBox
          Left = 453
          Top = 42
          Width = 50
          Height = 21
          DataField = 'Sexo'
          DataSource = DSCliente
          ItemHeight = 13
          Items.Strings = (
            'M'
            'F')
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 26
          Top = 87
          Width = 691
          Height = 21
          DataField = 'Rua'
          DataSource = DSCliente
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 28
          Top = 132
          Width = 101
          Height = 21
          DataField = 'Cidade'
          DataSource = DSCliente
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 266
          Top = 130
          Width = 50
          Height = 21
          DataField = 'Estado'
          DataSource = DSCliente
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 141
          Top = 131
          Width = 108
          Height = 21
          DataField = 'CEP'
          DataSource = DSCliente
          TabOrder = 5
        end
        object BtnSalvar: TBitBtn
          Left = 27
          Top = 169
          Width = 99
          Height = 40
          Caption = 'Salvar'
          TabOrder = 6
          OnClick = BtnSalvarClick
        end
        object BtnCancelar: TBitBtn
          Left = 140
          Top = 169
          Width = 99
          Height = 40
          Caption = 'Cancelar'
          TabOrder = 7
          OnClick = BtnCancelarClick
        end
        object DBEditDataNascimento: TDBEdit
          Left = 520
          Top = 41
          Width = 100
          Height = 21
          DataField = 'Data_Nascimento'
          DataSource = DSCliente
          TabOrder = 8
        end
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = 631
    Top = 204
    Width = 667
    Height = 1010
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ADOQueryLista
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBandTitulo: TQRBand
      Left = 38
      Top = 38
      Width = 591
      Height = 42
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        111.125000000000000000
        1563.687500000000000000)
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 100
        Top = 4
        Width = 391
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          264.583333333333300000
          10.583333333333330000
          1034.520833333333000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio - Cadastro de Clientes'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
    end
    object QRBandDados: TQRBand
      Left = 38
      Top = 120
      Width = 591
      Height = 45
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBandDadosBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        119.062500000000000000
        1563.687500000000000000)
      BandType = rbDetail
      object QRDBNome: TQRDBText
        Left = 77
        Top = 17
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          44.979166666666670000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQueryLista
        DataField = 'Nome'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBidcliente: TQRDBText
        Left = 9
        Top = 17
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          44.979166666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQueryLista
        DataField = 'idcliente'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBDataNascimento: TQRDBText
        Left = 310
        Top = 17
        Width = 104
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          44.979166666666670000
          820.208333333333300000
          44.979166666666670000
          275.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQueryLista
        DataField = 'Data_Nascimento'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 656
        Top = 17
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1735.666666666667000000
          44.979166666666670000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQueryLista
        DataField = 'Cidade'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBandTotais: TQRBand
      Left = 38
      Top = 165
      Width = 591
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1563.687500000000000000)
      BandType = rbSummary
      object QRLabel2: TQRLabel
        Left = 287
        Top = 10
        Width = 155
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          759.354166666666700000
          26.458333333333330000
          410.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total de Clientes:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRExpr1: TQRExpr
        Left = 449
        Top = 10
        Width = 69
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1187.979166666667000000
          26.458333333333330000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 15
      end
    end
    object QRBandColunas: TQRBand
      Left = 38
      Top = 80
      Width = 591
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 7542042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        105.833333333333300000
        1563.687500000000000000)
      BandType = rbColumnHeader
      object QRLabelID: TQRLabel
        Left = 20
        Top = 9
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          23.812500000000000000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ID'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabelNome: TQRLabel
        Left = 74
        Top = 9
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          23.812500000000000000
          100.541666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabelDataNascimento: TQRLabel
        Left = 298
        Top = 9
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          788.458333333333300000
          23.812500000000000000
          338.666666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data de Nascimento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabelCidade: TQRLabel
        Left = 652
        Top = 9
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1725.083333333333000000
          23.812500000000000000
          121.708333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cidade'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object ADOQueryLista: TADOQuery
    Connection = ADOConnectionCliente
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      'idcliente,'
      'Nome,'
      'Sexo,'
      'cast (Data_Nascimento as datetime) as Data_Nascimento,'
      'Rua,'
      'Cidade,'
      'Estado,'
      'CEP'
      ''
      'from Cliente'
      'order by idcliente'
      ''
      '')
    Left = 882
    Top = 92
    object ADOQueryListaidcliente: TAutoIncField
      FieldName = 'idcliente'
      ReadOnly = True
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
    object ADOQueryListaData_Nascimento: TDateTimeField
      FieldName = 'Data_Nascimento'
    end
  end
  object DSCliente: TDataSource
    DataSet = ADOQueryClientes
    Left = 971
    Top = 96
  end
  object ADOConnectionCliente: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=dbcadastro_cliente;Data Source=LIGAET21' +
      '020004;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 740
    Top = 95
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
      'select'
      'idcliente,'
      'Nome,'
      'Sexo,'
      'cast (Data_Nascimento as datetime) as Data_Nascimento,'
      'Rua,'
      'Cidade,'
      'Estado,'
      'CEP'
      ''
      'from Cliente'
      'where Idcliente = @IdCliente'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1042
    Top = 93
    object ADOQueryClientesidcliente: TAutoIncField
      FieldName = 'idcliente'
      ReadOnly = True
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
    object ADOQueryClientesData_Nascimento: TDateTimeField
      FieldName = 'Data_Nascimento'
      OnSetText = ADOQueryClientesData_NascimentoSetText
      EditMask = '!99/99/9999;1;_'
    end
  end
  object DSLista: TDataSource
    DataSet = ADOQueryLista
    Left = 820
    Top = 94
  end
end
