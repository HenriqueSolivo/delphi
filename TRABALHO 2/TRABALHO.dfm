object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 836
  ClientWidth = 1270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object CADASTRO: TLabel
    Left = 96
    Top = 24
    Width = 193
    Height = 65
    Caption = 'Cadastro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = '@Malgun Gothic'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 8
    Top = 126
    Width = 369
    Height = 395
    TabOrder = 10
  end
  object Panel1: TPanel
    Left = 8
    Top = 25
    Width = 369
    Height = 80
    TabOrder = 9
  end
  object Tabela: TStringGrid
    Left = 408
    Top = 144
    Width = 825
    Height = 377
    ColCount = 6
    FixedCols = 0
    RowCount = 100
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
    TabOrder = 0
    ColWidths = (
      136
      132
      139
      127
      136
      124)
  end
  object Aniversario: TDateTimePicker
    Left = 24
    Top = 311
    Width = 337
    Height = 26
    Date = 45743.000000000000000000
    Time = 0.820766053242550700
    TabOrder = 1
  end
  object Telefone: TMaskEdit
    Left = 24
    Top = 264
    Width = 337
    Height = 23
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 2
    Text = '(  )     -    '
  end
  object Nome: TEdit
    Left = 24
    Top = 184
    Width = 337
    Height = 23
    TabOrder = 3
    TextHint = 'Nome'
    StyleName = 'Windows'
  end
  object Email: TEdit
    Left = 24
    Top = 224
    Width = 337
    Height = 23
    TabOrder = 4
    TextHint = 'Email'
    StyleName = 'Windows'
  end
  object Tipo: TComboBox
    Left = 24
    Top = 144
    Width = 337
    Height = 23
    ItemIndex = 0
    TabOrder = 5
    TextHint = 'Tipo'
    Items.Strings = (
      'Usuario'
      'Adiministrador')
  end
  object Button1: TButton
    Left = 24
    Top = 448
    Width = 337
    Height = 57
    Caption = 'Enviar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object senha: TEdit
    Left = 24
    Top = 352
    Width = 337
    Height = 23
    PasswordChar = '*'
    TabOrder = 7
    TextHint = 'Senha'
    StyleName = 'Windows'
  end
  object confirmaSenha: TEdit
    Left = 24
    Top = 392
    Width = 337
    Height = 23
    PasswordChar = '*'
    TabOrder = 8
    TextHint = 'Confirmar Senha'
    StyleName = 'Windows'
  end
end
