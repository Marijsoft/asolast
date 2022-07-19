object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Kg asoftis'
  ClientHeight = 210
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object Label1: TLabel
    AlignWithMargins = True
    Left = 4
    Top = 186
    Width = 303
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    Alignment = taCenter
    Caption = 'Coded by Marijuana'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 264
    ExplicitWidth = 139
  end
  object GroupBox1: TGroupBox
    Left = 20
    Top = 9
    Width = 271
    Height = 62
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Prodotti'
    TabOrder = 0
    object ComboBox1: TComboBox
      Left = 30
      Top = 22
      Width = 211
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 0
      TextHint = 'Seleziona prodotto...'
      OnChange = ComboBox1Change
    end
  end
  object Button1: TButton
    Left = 80
    Top = 106
    Width = 141
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Genera chiave'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 145
    Width = 302
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BevelOuter = bvLowered
    TabOrder = 2
    object Label2: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 292
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Alignment = taCenter
      WordWrap = True
      ExplicitLeft = 0
      ExplicitTop = 0
    end
  end
  object Edit1: TEdit
    Left = 20
    Top = 75
    Width = 271
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 3
    TextHint = 'Inserisci il nome da registrare...'
    Visible = False
  end
end
