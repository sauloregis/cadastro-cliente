object FrmPacientes: TFrmPacientes
  Left = 376
  Top = 205
  Align = alCustom
  BorderStyle = bsSingle
  Caption = 'cadastro-cliente'
  ClientHeight = 718
  ClientWidth = 1367
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 1367
    Height = 46
    Align = alTop
    Color = 12615680
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = 12615680
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object PnlClientes: TPanel
      Left = 41
      Top = 5
      Width = 116
      Height = 35
      Caption = 'Pacientes'
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
      Left = 166
      Top = 5
      Width = 116
      Height = 35
      Caption = 'Relat'#243'rios'
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
  object QuickRep1: TQuickRep
    Left = 321
    Top = 640
    Width = 794
    Height = 1123
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
      Width = 718
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
        1899.708333333333000000)
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 187
        Top = 4
        Width = 343
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          494.770833333333300000
          10.583333333333330000
          907.520833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio - Cadastro de Clientes'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
    end
    object QRBandDados: TQRBand
      Left = 38
      Top = 120
      Width = 718
      Height = 25
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
        66.145833333333330000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBNome: TQRDBText
        Left = 74
        Top = 5
        Width = 210
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          13.229166666666670000
          555.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQueryLista
        DataField = 'Nome'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBidcliente: TQRDBText
        Left = 1
        Top = 5
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
          2.645833333333333000
          13.229166666666670000
          129.645833333333300000)
        Alignment = taCenter
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
        Left = 312
        Top = 5
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
          825.500000000000000000
          13.229166666666670000
          275.166666666666700000)
        Alignment = taCenter
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
        Left = 657
        Top = 5
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1738.312500000000000000
          13.229166666666670000
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
      Top = 145
      Width = 718
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
        1899.708333333333000000)
      BandType = rbSummary
      object QRLabel2: TQRLabel
        Left = 301
        Top = 10
        Width = 126
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          796.395833333333300000
          26.458333333333330000
          333.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total de Clientes:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 13
      end
      object QRExpr1: TQRExpr
        Left = 455
        Top = 10
        Width = 56
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1203.854166666667000000
          26.458333333333330000
          148.166666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 13
      end
    end
    object QRBandColunas: TQRBand
      Left = 38
      Top = 80
      Width = 718
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
        1899.708333333333000000)
      BandType = rbColumnHeader
      object QRLabelID: TQRLabel
        Left = 20
        Top = 11
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
          29.104166666666670000
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
        Top = 11
        Width = 210
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          29.104166666666670000
          555.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
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
        Top = 11
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
          29.104166666666670000
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
        Top = 11
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
          29.104166666666670000
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
  object PnlConteudo: TPanel
    Left = 13
    Top = 62
    Width = 1191
    Height = 559
    TabOrder = 2
    Visible = False
    object PageContCadastro: TPageControl
      Left = 0
      Top = 0
      Width = 1224
      Height = 615
      ActivePage = TabSheet1
      Align = alCustom
      TabOrder = 0
      OnChange = PageContCadastroChange
      object TabSheet1: TTabSheet
        Caption = 'Consulta de Paciente'
        DesignSize = (
          1216
          587)
        object ImgFechar: TImage
          Left = 1156
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
          OnClick = ImgFecharClick
        end
        object DBGridCadastros: TDBGrid
          Left = 21
          Top = 105
          Width = 1139
          Height = 352
          DataSource = DSLista
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
              FieldName = 'idcliente'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 385
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sexo'
              Width = 42
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
              Width = 268
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cidade'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Estado'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CEP'
              Width = 92
              Visible = True
            end>
        end
        object BtnNovo: TBitBtn
          Left = 21
          Top = 472
          Width = 99
          Height = 40
          Caption = 'Novo'
          TabOrder = 1
          OnClick = BtnNovoClick
        end
        object GbxConsultaNome: TGroupBox
          Left = 21
          Top = 12
          Width = 519
          Height = 80
          Caption = 'Consultar Cadastro'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          object LblTipodeConsulta: TLabel
            Left = 8
            Top = 21
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
          object LblBuscar: TLabel
            Left = 165
            Top = 21
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
          object EdtConsultaNome: TEdit
            Left = 165
            Top = 37
            Width = 328
            Height = 21
            TabOrder = 0
            OnChange = EdtConsultaNomeChange
          end
          object CBoxTipodeConsulta: TComboBox
            Left = 11
            Top = 37
            Width = 145
            Height = 21
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 1
            Text = 'Nome'
            Items.Strings = (
              'idcliente'
              'Nome'
              'Sexo'
              'Data de Nascimento'
              'Rua'
              'Cidade'
              'Estado'
              'CEP')
          end
        end
        object BtnEditar: TBitBtn
          Left = 132
          Top = 472
          Width = 99
          Height = 40
          Caption = 'Editar'
          TabOrder = 3
          OnClick = BtnEditarClick
        end
        object BtnExcluir: TBitBtn
          Left = 246
          Top = 472
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
        Caption = 'Cadastro de Paciente'
        ImageIndex = 1
        DesignSize = (
          1216
          587)
        object Label1: TLabel
          Left = 546
          Top = -23
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit1
        end
        object ImgFechar2: TImage
          Left = 1156
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
          OnClick = ImgFecharClick
        end
        object GroupBox1: TGroupBox
          Left = 11
          Top = 9
          Width = 745
          Height = 229
          Caption = 'Cadastro de Paciente'
          TabOrder = 0
          object Label2: TLabel
            Left = 26
            Top = 29
            Width = 33
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEditNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 452
            Top = 27
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
            Left = 26
            Top = 72
            Width = 24
            Height = 13
            Caption = 'Rua'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 28
            Top = 116
            Width = 40
            Height = 13
            Caption = 'Cidade'
            FocusControl = DBEdit6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 265
            Top = 114
            Width = 40
            Height = 13
            Caption = 'Estado'
            FocusControl = DBEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 142
            Top = 116
            Width = 25
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEdit8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 521
            Top = 27
            Width = 116
            Height = 13
            Caption = 'Data de Nascimento'
            FocusControl = DBEditDataNascimento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
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
  end
  object ADOQueryLista: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
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
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'Data_Nascimento'
    end
  end
  object DSCliente: TDataSource
    DataSet = ADOQueryClientes
    Left = 971
    Top = 96
  end
  object ADOQueryClientes: TADOQuery
    Connection = FrmPrincipal.ADOConnectionCliente
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idcliente'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @IdCliente integer'
      ''
      'set @IdCliente = :idcliente'
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
      DisplayLabel = 'Data de Nascimento'
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
