object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 777
  ClientWidth = 1213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 30
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1207
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Contador: TLabel
      AlignWithMargins = True
      Left = 550
      Top = 10
      Width = 107
      Height = 30
      Margins.Left = 550
      Margins.Top = 10
      Margins.Right = 550
      Align = alTop
      Alignment = taCenter
      Caption = 'Contador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 86
    end
    object Panel3: TPanel
      Left = 0
      Top = 43
      Width = 1207
      Height = 80
      Margins.Left = 300
      Margins.Right = 300
      Align = alTop
      TabOrder = 0
      object Letra1: TButton
        Left = 0
        Top = 0
        Width = 81
        Height = 80
        TabOrder = 0
      end
      object Letra2: TButton
        Left = 87
        Top = 0
        Width = 81
        Height = 80
        TabOrder = 1
      end
      object Letra3: TButton
        Left = 174
        Top = 0
        Width = 81
        Height = 80
        TabOrder = 2
      end
      object Letra4: TButton
        Left = 261
        Top = 0
        Width = 81
        Height = 80
        TabOrder = 3
      end
      object Letra5: TButton
        Left = 348
        Top = 0
        Width = 81
        Height = 80
        TabOrder = 4
      end
      object Letra6: TButton
        Left = 435
        Top = 0
        Width = 81
        Height = 80
        TabOrder = 5
      end
    end
  end
  object PinelGoblal: TPanel
    Left = 0
    Top = 135
    Width = 1213
    Height = 642
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1213
      Height = 185
      Align = alTop
      TabOrder = 0
    end
  end
end
