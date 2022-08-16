object FrmPrincipal: TFrmPrincipal
  Left = 282
  Top = 142
  Width = 1305
  Height = 675
  Caption = 'FrmPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 33
    Top = 16
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Paciente1: TMenuItem
        Caption = 'Paciente'
        OnClick = Paciente1Click
      end
      object Medico: TMenuItem
        Caption = 'M'#233'dico'
        OnClick = MedicoClick
      end
    end
    object Atendimentos1: TMenuItem
      Caption = 'Atendimentos'
      object NovoAtendimento1: TMenuItem
        Caption = 'Novo Atendimento'
      end
      object ConsultarAtendimento1: TMenuItem
        Caption = 'Consultar Atendimento'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Paciente2: TMenuItem
        Caption = 'Paciente'
      end
      object Mdico2: TMenuItem
        Caption = 'M'#233'dico'
      end
      object Atendimento1: TMenuItem
        Caption = 'Atendimento'
      end
    end
  end
  object ADOConnectionCliente: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=dbcadastro_cliente;Data Source=LIGAET21' +
      '020004;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 1233
    Top = 8
  end
end
